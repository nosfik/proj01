<?php 
class ControllerInformationVideo extends Controller {
	private $error = array(); 
	    
  	public function index() {
		$this->language->load('information/video');

      	$this->data['breadcrumbs'] = array();

      	$this->data['breadcrumbs'][] = array(
        	'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home'),        	
        	'separator' => false
      	);

      	$this->data['breadcrumbs'][] = array(
        	'text'      => $this->language->get('heading_title'),
			'href'      => $this->url->link('information/video'),
        	'separator' => $this->language->get('text_separator')
      	);	
			
    	$this->data['heading_title'] = $this->language->get('heading_title');
		
		
		$this->load->model('menu/video');

		$videos = $this->model_menu_video->getVideoItems();	
		$pattern1 = '/width="(.*?)"/';
		$pattern2 = '/height="(.*?)"/';
		$this->data['videos'] = array();
		foreach ($videos as $video) {
			$href = html_entity_decode($video['href']);
			preg_match($pattern1, $href, $matches1);
			preg_match($pattern2, $href, $matches2);
			$width = (count($matches1) > 1) ? $matches1[1] : 400;
			$height = (count($matches2) > 1) ? $matches2[1] : 400;
			$this->data['videos'][] = array(
				'width' => $width,
				'height' => $height,
				'href' => $href
			);
		}

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/information/video.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/information/video.tpl';
		} else {
			$this->template = 'default/template/information/video.tpl';
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
