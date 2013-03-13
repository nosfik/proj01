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