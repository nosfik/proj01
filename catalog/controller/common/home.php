<?php  
class ControllerCommonHome extends Controller {
	public function index() {
		$this->document->setTitle($this->config->get('config_title'));
		$this->document->setDescription($this->config->get('config_meta_description'));

		$this->data['heading_title'] = $this->config->get('config_title');
        
        $this->document->addScript('catalog/view/javascript/slide-script.js');
        $this->document->addScript('catalog/view/javascript/jquery.jcarousel.js');
        $this->document->addScript('catalog/view/javascript/cusel.js');
        $this->document->addScript('catalog/view/javascript/jScrollPane.js');
        $this->document->addScript('catalog/view/javascript/jquery.mousewheel.js');
        
        $this->document->addStyle('catalog/view/theme/default/stylesheet/slide-styles.css');
        $this->document->addStyle('catalog/view/theme/default/stylesheet/carusel-skin.css');
        $this->document->addStyle('catalog/view/theme/default/stylesheet/cusel.css');
         
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