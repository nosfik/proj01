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
		
		$this->data['b_area_l'] = array();
		$this->data['b_area_h'] = array();
		$areas = $this->model_menu_filter->getAreas(2);
		$avg_areas = (int)$areas['avg'];    
		$avg_diff = $avg_areas - $areas['min'];
		
		$step_area = 10;
		if($avg_diff > 100 && $avg_diff < 500) {
			$step_area = 20;
		} elseif($avg_diff > 500) {
			$step_area = 50;
		}
		
		for($i = $areas['min']; $i <= $avg_areas; $i += $step_area) {
			$this->data['b_area_l'][] = $i;
		}
		for($i = $areas['max']; $i >= $avg_areas; $i -= $step_area) {
			$this->data['b_area_h'][] = $i;
		}
		
		
		$this->data['b_price_l'] = array();
		$this->data['b_price_h'] = array();
		$prices = $this->model_menu_filter->getPrices(2);
		$avg_prices = (int)$prices['avg'];    
		$avg_diff = $avg_prices - $prices['min'];
		
		$step_price = 10;
		if($avg_diff > 100 && $avg_diff < 500) {
			$step_price = 20;
		} elseif($avg_diff > 500 && $avg_diff < 1000) {
			$step_price = 100;
		} elseif($avg_diff > 1000 && $avg_diff < 5000) {
			$step_price = 500;
		} elseif($avg_diff > 5000 && $avg_diff < 20000) {
			$step_price = 1000;
		} elseif($avg_diff > 20000 && $avg_diff < 100000) {
			$step_price = 5000;
		}  elseif($avg_diff > 100000) {
			$step_price = 20000;
		}
		
		for($i = $prices['min']; $i <= $avg_prices; $i += $step_price) {
			$this->data['b_price_l'][] = $i;
		}
		for($i = $prices['max']; $i >= $avg_prices; $i -= $step_price) {
			$this->data['b_price_h'][] = $i;
		}
		
		
		
		
		
		
		
		// FILTER SALES
		$this->data['zones'] = $this->model_menu_filter->getZones();
		$this->data['categories'] = $this->model_menu_filter->getCategories();
		
		
		$this->data['bedroom_l'] = array();
		$this->data['bedroom_h'] = array();
		$bedrooms = $this->model_menu_filter->getBedrooms();
		$avg_bedrooms = (int)$bedrooms['avg']; 
		for($i = $bedrooms['min']; $i <= $avg_bedrooms; $i++) {
			$this->data['bedroom_l'][] = $i;
		}
		for($i = $bedrooms['max']; $i >= $avg_bedrooms; $i--) {
			$this->data['bedroom_h'][] = $i;
		}
		
		
		$this->data['bathroom_l'] = array();
		$this->data['bathroom_h'] = array();
		$bathrooms = $this->model_menu_filter->getBathrooms();
		$avg_bathrooms = (int)$bathrooms['avg']; 
		for($i = $bathrooms['min']; $i <= $avg_bathrooms; $i++) {
			$this->data['bathroom_l'][] = $i;
		}
		for($i = $bathrooms['max']; $i >= $avg_bathrooms; $i--) {
			$this->data['bathroom_h'][] = $i;
		}
		
		
		$this->data['area_l'] = array();
		$this->data['area_h'] = array();
		$areas = $this->model_menu_filter->getAreas();
		$avg_areas = (int)$areas['avg'];    
		$avg_diff = $avg_areas - $areas['min'];
		
		$step_area = 10;
		if($avg_diff > 100 && $avg_diff < 500) {
			$step_area = 20;
		} elseif($avg_diff > 500) {
			$step_area = 50;
		}
		
		for($i = $areas['min']; $i <= $avg_areas; $i += $step_area) {
			$this->data['area_l'][] = $i;
		}
		for($i = $areas['max']; $i >= $avg_areas; $i -= $step_area) {
			$this->data['area_h'][] = $i;
		}
		
		
		$this->data['price_l'] = array();
		$this->data['price_h'] = array();
		$prices = $this->model_menu_filter->getPrices();
		$avg_prices = (int)$prices['avg'];    
		$avg_diff = $avg_prices - $prices['min'];
		
		$step_price = 10;
		if($avg_diff > 100 && $avg_diff < 500) {
			$step_price = 20;
		} elseif($avg_diff > 500 && $avg_diff < 1000) {
			$step_price = 100;
		} elseif($avg_diff > 1000 && $avg_diff < 5000) {
			$step_price = 500;
		} elseif($avg_diff > 5000 && $avg_diff < 20000) {
			$step_price = 1000;
		} elseif($avg_diff > 20000 && $avg_diff < 100000) {
			$step_price = 5000;
		}  elseif($avg_diff > 100000) {
			$step_price = 20000;
		}
		
		for($i = $prices['min']; $i <= $avg_prices; $i += $step_price) {
			$this->data['price_l'][] = $i;
		}
		for($i = $prices['max']; $i >= $avg_prices; $i -= $step_price) {
			$this->data['price_h'][] = $i;
		}
		
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
			'common/column_left',
			'common/column_right',
			'common/content_top',
			'common/content_bottom',
			'common/footer',
			'common/header'
		);
										
		$this->response->setOutput($this->render());
	}
}
?>