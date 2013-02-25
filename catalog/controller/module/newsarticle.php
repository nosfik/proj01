<?php  
class ControllerModuleNewsarticle extends Controller {
	protected function index() {
		$this->language->load('module/newsarticle');
		$this->load->model('extension/newsarticle');
		
		$data = array(
			'page' => 1,
			'limit' => 2,
			'start' => 0,
		);
	 
		$this->data['heading_title'] = $this->language->get('heading_title');
	 
		$all_newsarticle = $this->model_extension_newsarticle->getAllNewsarticle($data);
	 
		$this->data['all_newsarticle'] = array();
	 
		foreach ($all_newsarticle as $newsarticle) {
			$this->data['all_newsarticle'][] = array (
				'title' => $newsarticle['title'],
				'description' => (strlen(strip_tags(html_entity_decode($newsarticle['description']))) > 170 ? substr(strip_tags(html_entity_decode($newsarticle['description'])), 0, 170) . '...' : strip_tags(html_entity_decode($newsarticle['description']))),
				'view' => $this->url->link('information/newsarticle/newsarticle', 'newsarticle_id=' . $newsarticle['newsarticle_id']),
				'date_added' => date('d.m.Y', strtotime($newsarticle['date_added']))
			);
		}
	 
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/newsarticle.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/module/newsarticle.tpl';
		} else {
			$this->template = 'default/template/module/newsarticle.tpl'; 
		}
		
		$this->render();
	}
}
?>