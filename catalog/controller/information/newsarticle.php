<?php
class ControllerInformationNewsarticle extends Controller {
 
	public function index() {
		$this->language->load('information/newsarticle');
		$this->load->model('extension/newsarticle');
	 
		$this->document->setTitle($this->language->get('heading_title')); 
	 
		$this->data['breadcrumbs'] = array();
		$this->data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/home'),
			'separator' => false
		);
		$this->data['breadcrumbs'][] = array(
			'text' => $this->language->get('heading_title'),
			'href' => $this->url->link('information/newsarticle'),
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
		
		$total = $this->model_extension_newsarticle->countNewsarticle();
		
		$pagination = new Pagination();
		$pagination->total = $total;
		$pagination->page = $page;
		$pagination->limit = 10;
		$pagination->text = $this->language->get('text_pagination');
		$pagination->url = $this->url->link('extension/newsarticle', $url . '&page={page}', 'SSL');
		
		$this->data['pagination'] = $pagination->render();
	 
		$this->data['heading_title'] = $this->language->get('heading_title');
		$this->data['text_title'] = $this->language->get('text_title');
		$this->data['text_description'] = $this->language->get('text_description');
		$this->data['text_date'] = $this->language->get('text_date');
		$this->data['text_view'] = $this->language->get('text_view');
	 
		$all_newsarticle = $this->model_extension_newsarticle->getAllNewsarticle($data);
	 
		$this->data['all_newsarticle'] = array();
	 
		foreach ($all_newsarticle as $newsarticle) {
			$this->data['all_newsarticle'][] = array (
				'title' => $newsarticle['title'],
				'description' => (strlen(strip_tags(html_entity_decode($newsarticle['description']))) > 50 ? substr(strip_tags(html_entity_decode($newsarticle['description'])), 0, 50) . '...' : strip_tags(html_entity_decode($newsarticle['description']))),
				'view' => $this->url->link('information/newsarticle/newsarticle', 'newsarticle_id=' . $newsarticle['newsarticle_id']),
				'date_added' => date('d M Y', strtotime($newsarticle['date_added']))
			);
		}
	 
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/information/newsarticle_list.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/information/newsarticle_list.tpl';
		} else {
			$this->template = 'default/template/information/newsarticle_list.tpl'; 
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
 
   public function newsarticle() {
      $this->load->model('extension/newsarticle');
      $this->language->load('information/newsarticle');
 
      if (isset($this->request->get['newsarticle_id']) && !empty($this->request->get['newsarticle_id'])) {
         $newsarticle_id = $this->request->get['newsarticle_id'];
      } else {
         $newsarticle_id = 0;
      }
 
      $newsarticle = $this->model_extension_newsarticle->getNewsarticle($newsarticle_id);
 
      $this->data['breadcrumbs'] = array();
      $this->data['breadcrumbs'][] = array(
         'text' => $this->language->get('text_home'),
         'href' => $this->url->link('common/home'),
         'separator' => false
      );
      $this->data['breadcrumbs'][] = array(
         'text' => $this->language->get('heading_title'),
         'href' => $this->url->link('information/newsarticle'),
         'separator' => $this->language->get('text_separator')
      );
 
      if ($newsarticle) {
         $this->data['breadcrumbs'][] = array(
            'text' => $newsarticle['title'],
            'href' => $this->url->link('information/newsarticle/newsarticle', 'newsarticle_id=' . $newsarticle_id),
            'separator' => $this->language->get('text_separator')
         );
 
         $this->document->setTitle($newsarticle['title']);
 
         $this->data['heading_title'] = $newsarticle['title'];
         $this->data['description'] = html_entity_decode($newsarticle['description']);
 
         if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/information/newsarticle.tpl')) {
            $this->template = $this->config->get('config_template') . '/template/information/newsarticle.tpl';
         } else {
            $this->template = 'default/template/information/newsarticle.tpl';
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
            'href' => $this->url->link('information/newsarticle', 'newsarticle_id=' . $newsarticle_id),
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