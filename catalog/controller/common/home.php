<?php  
class ControllerCommonHome extends Controller {
	public function index() {
		$this->document->setTitle($this->config->get('config_title'));
		$this->document->setDescription($this->config->get('config_meta_description'));

		$this->data['heading_title'] = $this->config->get('config_title');
        
        $this->document->addScript('catalog/view/javascript/jflow.plus.js');
        $this->document->addScript('catalog/view/javascript/jquery.jcarousel.js');
        $this->document->addScript('catalog/view/javascript/cusel.js');
        $this->document->addScript('catalog/view/javascript/jScrollPane.js');
        $this->document->addScript('catalog/view/javascript/jquery.mousewheel.js');
        
        $this->document->addStyle('catalog/view/theme/default/stylesheet/jflow.style.css');
        $this->document->addStyle('catalog/view/theme/default/stylesheet/carusel-skin.css');
        $this->document->addStyle('catalog/view/theme/default/stylesheet/cusel.css');
        
        
        $this->data['lang'] = $this->config->get('config_language_id') == 1 ? 'ru' : 'en';
        $this->load->model('menu/info');
        $menu_list = $this->model_menu_info->getMenuItems();
        
        $this->data['menu_items'] = array();
        $this->data['slide_items'] = array();
		$this->data['dreamhouse_items'] = array();
        $this->data['suggestion_items'] = array();
		
        foreach ($menu_list as $menu) {
            $this->data['menu_items'][] = array(
                'name'      => $menu['name'],
                'picture'   => 'image/'.$menu['picture'],
                'url'       => HTTP_SERVER . $menu['url']
            );
        }
        
        $this->load->model('menu/slide');
        
        $slide_list = $this->model_menu_slide->getSlideItems();
        foreach ($slide_list as $slide) {
            $this->data['slide_items'][] = array(
                'text'      => html_entity_decode($slide['text']),
                'picture'   => 'image/'.$slide['picture'],
                'url'       => HTTP_SERVER . $slide['url']
            );
        }
        
		$this->load->model('menu/house');
		$dreamhouse_list = $this->model_menu_house->getDreamHouse();
		
		foreach ($dreamhouse_list as $dreamhouse) {
            $this->data['dreamhouse_items'][] = array(
                'name'             => $dreamhouse['name'],
				'city'         	   => $dreamhouse['city'],
				'pool'         	   => $dreamhouse['pool'],
				'garden'           => $dreamhouse['garden'],
				'currency'         => $dreamhouse['currency'],
				'number'           => $dreamhouse['number'],
				'tag'              => $dreamhouse['tag'],
				'area'        	   => $dreamhouse['area'],
				'bathroom'         => $dreamhouse['bathroom'],
				'bedroom'          => $dreamhouse['bedroom'],
				'thumb'            => $dreamhouse['image'],
				'price'            => $dreamhouse['price'],
                'url'       	=> $this->url->link('product/product', 'product_id=' . $dreamhouse['product_id'])
            );
        }
		
		
		$suggestion_list = $this->model_menu_house->getSuggestion();
		
		foreach ($suggestion_list as $suggestion) {
            $this->data['suggestion_items'][] = array(
                'name'             => $suggestion['name'],
				'city'         	   => $suggestion['city'],
				'pool'         	   => $suggestion['pool'],
				'garden'           => $suggestion['garden'],
				'currency'         => $suggestion['currency'],
				'number'           => $suggestion['number'],
				'tag'              => $suggestion['tag'],
				'area'        	   => $suggestion['area'],
				'bathroom'         => $suggestion['bathroom'],
				'bedroom'          => $suggestion['bedroom'],
				'thumb'            => $suggestion['image'],
				'price'            => $suggestion['price'],
                'url'       	=> $this->url->link('product/product', 'product_id=' . $suggestion['product_id'])
            );
        }


		$this->load->model('menu/aboutus');
		$about_us_info = $this->model_menu_aboutus->getAboutUs();
		
		
		
		$this->load->model('menu/filter');
		
		//FILTER BUILDS
		$this->data['b_zones'] = $this->model_menu_filter->getZones(2);
		
		$areas = $this->model_menu_filter->getAreas(2);
		$this->data['b_area_l'] = $areas['l'];
		$this->data['b_area_h'] = $areas['h'];
		
		$prices = $this->model_menu_filter->getPrices(2);
		$this->data['b_price_l'] = $prices['l'];
		$this->data['b_price_h'] = $prices['h'];
		
		// FILTER SALES
		$this->data['zones'] = $this->model_menu_filter->getZones();
		$this->data['categories'] = $this->model_menu_filter->getCategories();
		
		$bedrooms = $this->model_menu_filter->getBedrooms();
		$this->data['bedroom_l'] = $bedrooms['l'];
		$this->data['bedroom_h'] = $bedrooms['h'];
		
		$bathrooms = $this->model_menu_filter->getBathrooms();
		$this->data['bathroom_l'] = $bathrooms['l'];
		$this->data['bathroom_h'] = $bathrooms['h'];
		
		
		$areas = $this->model_menu_filter->getAreas();
		$this->data['area_l'] = $areas['l'];
		$this->data['area_h'] = $areas['h'];
		
		$prices = $this->model_menu_filter->getPrices();
		$this->data['price_l'] = $prices['l'];
		$this->data['price_h'] = $prices['h'];
		
		$this->load->model('tool/image');

		$this->data['about_us'] = array(
			'url' => HTTPS_SERVER .  $about_us_info['url'],
			'short_text' => html_entity_decode($about_us_info['short_text'])
		);
		
		if ( file_exists(DIR_IMAGE . $about_us_info['image'])) {
			$this->data['about_us']['image'] = $this->model_tool_image->resize($about_us_info['image'], 273, 200);
		}
		
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/common/home.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/common/home.tpl';
		} else {
			$this->template = 'default/template/common/home.tpl';
		}
		
		$this->children = array(
			'common/filter',
			'common/content_top',
			'common/content_bottom',
			'common/footer',
			'common/header'
		);
										
		$this->response->setOutput($this->render());
	}
}
?>