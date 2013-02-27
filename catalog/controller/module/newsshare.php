<?php  
class ControllerModuleNewsshare extends Controller {
	protected function index() {
		$this->language->load('module/newsshare');
		$this->load->model('extension/newsshare');
		
		$data = array(
			'page' => 1,
			'limit' => 1,
			'start' => 0,
		);
	 
		$this->data['heading_title'] = $this->language->get('heading_title');
	 
		$all_newsshare = $this->model_extension_newsshare->getAllNewsshare($data);
	 
		$this->data['all_newsshare'] = array();
	 
		foreach ($all_newsshare as $newsshare) {
			$this->data['all_newsshare'][] = array (
				'title' => $newsshare['title'],
				'image_src' => $this->url->link('information/newsshare/image', 'newsshare_id=' . $newsshare['newsshare_id']),
				'description' => (strlen(strip_tags(html_entity_decode($newsshare['description']))) > 200 ? substr(strip_tags(html_entity_decode($newsshare['description'])), 0, 200) . '...' : strip_tags(html_entity_decode($newsshare['description']))),
				'view' => $this->url->link('information/newsshare/newsshare', 'newsshare_id=' . $newsshare['newsshare_id']),
				'date_added' => date('d.m.Y', strtotime($newsshare['date_added']))
			);
		}
	 
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/newsshare.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/module/newsshare.tpl';
		} else {
			$this->template = 'default/template/module/newsshare.tpl'; 
		}
		
		$this->render();
	}
}
?>