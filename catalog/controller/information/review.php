<?php 
class ControllerInformationReview extends Controller {
	private $error = array(); 
	    
  	public function index() {
		$this->language->load('information/review');

      	$this->data['breadcrumbs'] = array();

      	$this->data['breadcrumbs'][] = array(
        	'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home'),        	
        	'separator' => false
      	);

      	$this->data['breadcrumbs'][] = array(
        	'text'      => $this->language->get('heading_title'),
			'href'      => $this->url->link('information/review'),
        	'separator' => $this->language->get('text_separator')
      	);	
			
    	$this->data['heading_title'] = $this->language->get('heading_title');
		
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/information/review.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/information/review.tpl';
		} else {
			$this->template = 'default/template/information/review.tpl';
		}
		
		$this->children = array(
			'common/content_top',
			'common/content_bottom',
			'common/footer',
			'common/header'
		);
				
 		$this->response->setOutput($this->render());		
  	}

	

}
?>
