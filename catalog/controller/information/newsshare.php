<?php
class ControllerInformationNewsshare extends Controller {
 
	public function index() {
		$this->language->load('information/newsshare');
		$this->load->model('extension/newsshare');
	 
		$this->document->setTitle($this->language->get('heading_title')); 
	 
		$this->data['breadcrumbs'] = array();
		$this->data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/home'),
			'separator' => false
		);
		$this->data['breadcrumbs'][] = array(
			'text' => $this->language->get('heading_title'),
			'href' => $this->url->link('information/newsshare'),
			'separator' => $this->language->get('text_separator')
		);
		  
		$url = '';
			
		if (isset($this->request->get['page'])) {
			$page = $this->request->get['page'];
			$url .= '&page=' . $this->request->get['page'];
		} else { 
			$page = 1;
		}
		
		$data = array(
			'page' => $page,
			'limit' => 10,
			'start' => 10 * ($page - 1),
		);
		
		$total = $this->model_extension_newsshare->countNewsshare();
		
		$pagination = new Pagination();
		$pagination->total = $total;
		$pagination->page = $page;
		$pagination->limit = 10;
		$pagination->text = $this->language->get('text_pagination');
		$pagination->url = $this->url->link('extension/newsshare', $url . '&page={page}', 'SSL');
		
		$this->data['pagination'] = $pagination->render();
	 
		$this->data['heading_title'] = $this->language->get('heading_title');
		$this->data['text_title'] = $this->language->get('text_title');
		$this->data['text_description'] = $this->language->get('text_description');
		$this->data['text_date'] = $this->language->get('text_date');
		$this->data['text_view'] = $this->language->get('text_view');
	 
		$all_newsshare = $this->model_extension_newsshare->getAllNewsshare($data);
	 
		$this->data['all_newsshare'] = array();
	 
		foreach ($all_newsshare as $newsshare) {
			$this->data['all_newsshare'][] = array (
				'title' => $newsshare['title'],
				'description' => (strlen(strip_tags(html_entity_decode($newsshare['description']))) > 50 ? substr(strip_tags(html_entity_decode($newsshare['description'])), 0, 50) . '...' : strip_tags(html_entity_decode($newsshare['description']))),
				'view' => $this->url->link('information/newsshare/newsshare', 'newsshare_id=' . $newsshare['newsshare_id']),
				'date_added' => date('d M Y', strtotime($newsshare['date_added']))
			);
		}
	 
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/information/newsshare_list.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/information/newsshare_list.tpl';
		} else {
			$this->template = 'default/template/information/newsshare_list.tpl'; 
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
 
   public function newsshare() {
      $this->load->model('extension/newsshare');
      $this->language->load('information/newsshare');
 
      if (isset($this->request->get['newsshare_id']) && !empty($this->request->get['newsshare_id'])) {
         $newsshare_id = $this->request->get['newsshare_id'];
      } else {
         $newsshare_id = 0;
      }
 
      $newsshare = $this->model_extension_newsshare->getNewsshare($newsshare_id);
 
      $this->data['breadcrumbs'] = array();
      $this->data['breadcrumbs'][] = array(
         'text' => $this->language->get('text_home'),
         'href' => $this->url->link('common/home'),
         'separator' => false
      );
      $this->data['breadcrumbs'][] = array(
         'text' => $this->language->get('heading_title'),
         'href' => $this->url->link('information/newsshare'),
         'separator' => $this->language->get('text_separator')
      );
 
      if ($newsshare) {
         $this->data['breadcrumbs'][] = array(
            'text' => $newsshare['title'],
            'href' => $this->url->link('information/newsshare/newsshare', 'newsshare_id=' . $newsshare_id),
            'separator' => $this->language->get('text_separator')
         );
 
         $this->document->setTitle($newsshare['title']);
 
         $this->data['heading_title'] = $newsshare['title'];
         $this->data['description'] = html_entity_decode($newsshare['description']);
 
         if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/information/newsshare.tpl')) {
            $this->template = $this->config->get('config_template') . '/template/information/newsshare.tpl';
         } else {
            $this->template = 'default/template/information/newsshare.tpl';
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
      } else {
         $this->data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_error'),
            'href' => $this->url->link('information/newsshare', 'newsshare_id=' . $newsshare_id),
            'separator' => $this->language->get('text_separator')
         );
 
         $this->document->setTitle($this->language->get('text_error'));
 
         $this->data['heading_title'] = $this->language->get('text_error');
         $this->data['text_error'] = $this->language->get('text_error');
         $this->data['button_continue'] = $this->language->get('button_continue');
         $this->data['continue'] = $this->url->link('common/home');
 
         if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/error/not_found.tpl')) {
            $this->template = $this->config->get('config_template') . '/template/error/not_found.tpl';
         } else {
            $this->template = 'default/template/error/not_found.tpl';
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
}
?>