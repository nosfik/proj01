<?php
class ControllerExtensionNewsarticle extends Controller {
	private $error = array();
	
	public function index() {
		$this->language->load('extension/newsarticle');
		$this->load->model('extension/newsarticle');
		
		$this->document->setTitle($this->language->get('heading_title'));
		
		$this->data['breadcrumbs'] = array();

   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => false
   		);

   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('heading_title'),
			'href'      => $this->url->link('extension/newsarticle', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => ' :: '
   		);
		
		if (isset($this->session->data['success'])) {
			$this->data['success'] = $this->session->data['success'];
		
			unset($this->session->data['success']);
		} else {
			$this->data['success'] = '';
		}

		if (isset($this->session->data['warning'])) {
			$this->data['error'] = $this->session->data['warning'];
		
			unset($this->session->data['warning']);
		} else {
			$this->data['error'] = '';
		}
		
		$url = '';
		
		if (isset($this->request->get['page'])) {
			$page = $this->request->get['page'];
			$url .= '&page=' . $this->request->get['page'];
		} else { 
			$page = 1;
		}
		
		$data = array(
			'page' => $page,
			'limit' => $this->config->get('config_admin_limit'),
			'start' => $this->config->get('config_admin_limit') * ($page - 1),
		);
		
		$total = $this->model_extension_newsarticle->countNewsarticle();
		
		$pagination = new Pagination();
		$pagination->total = $total;
		$pagination->page = $page;
		$pagination->limit = $this->config->get('config_admin_limit');
		$pagination->text = $this->language->get('text_pagination');
		$pagination->url = $this->url->link('extension/newsarticle', 'token=' . $this->session->data['token'] . $url . '&page={page}', 'SSL');
		
		$this->data['pagination'] = $pagination->render();
		
		$this->data['heading_title'] = $this->language->get('heading_title');
		
		$this->data['text_title'] = $this->language->get('text_title');
		$this->data['text_date'] = $this->language->get('text_date');
		$this->data['text_action'] = $this->language->get('text_action');
		$this->data['text_edit'] = $this->language->get('text_edit');
		
		$this->data['button_insert'] = $this->language->get('button_insert');
		$this->data['button_delete'] = $this->language->get('button_delete');
		
		$this->data['insert'] = $this->url->link('extension/newsarticle/insert', '&token=' . $this->session->data['token'], 'SSL');
		$this->data['delete'] = $this->url->link('extension/newsarticle/delete', 'token=' . $this->session->data['token'], 'SSL');
		
		$this->data['allnewsarticle'] = array();
		
		$allnewsarticle = $this->model_extension_newsarticle->getAllNewsarticle($data);
		
		foreach ($allnewsarticle as $newsarticle) {
			$this->data['allnewsarticle'][] = array (
				'newsarticle_id' => $newsarticle['newsarticle_id'],
				'title' => $newsarticle['title'],
				'date_added' => date('d M Y', strtotime($newsarticle['date_added'])),
				'edit' => $this->url->link('extension/newsarticle/edit', '&newsarticle_id=' . $newsarticle['newsarticle_id'] . '&token=' . $this->session->data['token'], 'SSL')
			);
		}
		
		$this->template = 'extension/newsarticle_list.tpl';
		$this->children = array(
			'common/header',
			'common/footer'
		);
				
		$this->response->setOutput($this->render());		
	}
	
	public function edit() {
		$this->language->load('extension/newsarticle');
		$this->load->model('extension/newsarticle');
		
		$this->document->setTitle($this->language->get('heading_title'));
		
		if (isset($this->session->data['warning'])) {
			$this->data['error'] = $this->session->data['warning'];
		
			unset($this->session->data['warning']);
		} else {
			$this->data['error'] = '';
		}
		
		if (!isset($this->request->get['newsarticle_id'])) {
			$this->redirect($this->url->link('extension/newsarticle', '&token=' . $this->session->data['token'], 'SSL'));
		}
		
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			$this->model_extension_newsarticle->editNewsarticle($this->request->get['newsarticle_id'], $this->request->post);		
			
			$this->session->data['success'] = $this->language->get('text_success');
						
			$this->redirect($this->url->link('extension/newsarticle', 'token=' . $this->session->data['token'], 'SSL'));
		}
		
		$this->data['breadcrumbs'] = array();

   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => false
   		);

   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('heading_title'),
			'href'      => $this->url->link('extension/newsarticle', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => ' :: '
   		);
		
		$this->data['action'] = $this->url->link('extension/newsarticle/edit', '&newsarticle_id=' . $this->request->get['newsarticle_id'] . '&token=' . $this->session->data['token'], 'SSL');
		$this->data['cancel'] = $this->url->link('extension/newsarticle', '&token=' . $this->session->data['token'], 'SSL');
		$this->data['token'] = $this->session->data['token'];
		
		$this->form();
	}
	
	public function insert() {
		$this->language->load('extension/newsarticle');
		$this->load->model('extension/newsarticle');
		
		$this->document->setTitle($this->language->get('heading_title'));
		
		if (isset($this->session->data['warning'])) {
			$this->data['error'] = $this->session->data['warning'];
		
			unset($this->session->data['warning']);
		} else {
			$this->data['error'] = '';
		}
		
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			$this->model_extension_newsarticle->addNewsarticle($this->request->post);		
			
			$this->session->data['success'] = $this->language->get('text_success');
						
			$this->redirect($this->url->link('extension/newsarticle', 'token=' . $this->session->data['token'], 'SSL'));
		}
		
		$this->data['breadcrumbs'] = array();

   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => false
   		);

   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('heading_title'),
			'href'      => $this->url->link('extension/newsarticle', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => ' :: '
   		);
		
		$this->data['action'] = $this->url->link('extension/newsarticle/insert', '&token=' . $this->session->data['token'], 'SSL');
		$this->data['cancel'] = $this->url->link('extension/newsarticle', '&token=' . $this->session->data['token'], 'SSL');
		$this->data['token'] = $this->session->data['token'];
		
		$this->form();
	}
	
	private function form() {
		$this->language->load('extension/newsarticle');
		$this->load->model('extension/newsarticle');
		$this->load->model('localisation/language');
		
		$this->data['heading_title'] = $this->language->get('heading_title');
		
		$this->data['text_title'] = $this->language->get('text_title');
		$this->data['text_description'] = $this->language->get('text_description');
		$this->data['text_status'] = $this->language->get('text_status');
		$this->data['text_keyword'] = $this->language->get('text_keyword');
		$this->data['text_enabled'] = $this->language->get('text_enabled');
		$this->data['text_disabled'] = $this->language->get('text_disabled');
		
		$this->data['button_submit'] = $this->language->get('button_submit');
		$this->data['button_cancel'] = $this->language->get('button_cancel');
		
		$this->data['languages'] = $this->model_localisation_language->getLanguages();
		
		if (isset($this->request->get['newsarticle_id'])) {
			$newsarticle = $this->model_extension_newsarticle->getNewsarticle($this->request->get['newsarticle_id']);
		} else {
			$newsarticle = '';
		}
		
		if (isset($this->request->post['newsarticle'])) {
			$this->data['newsarticle'] = $this->request->post['newsarticle'];
		} elseif (!empty($newsarticle)) {
			$this->data['newsarticle'] = $this->model_extension_newsarticle->getNewsarticleDescription($this->request->get['newsarticle_id']);
		} else {
			$this->data['newsarticle'] = '';
		}
		
		if (isset($this->request->post['keyword'])) {
			$this->data['keyword'] = $this->request->post['keyword'];
		} elseif (!empty($newsarticle)) {
			$this->data['keyword'] = $newsarticle['keyword'];
		} else {
			$this->data['keyword'] = '';
		}
		
		if (isset($this->request->post['status'])) {
			$this->data['status'] = $this->request->post['status'];
		} elseif (!empty($newsarticle)) {
			$this->data['status'] = $newsarticle['status'];
		} else {
			$this->data['status'] = '';
		}
		
		$this->template = 'extension/newsarticle_form.tpl';
		$this->children = array(
			'common/header',
			'common/footer'
		);
				
		$this->response->setOutput($this->render());
	}
	
	public function delete() {
		$this->language->load('extension/newsarticle');
		$this->load->model('extension/newsarticle');

		$this->document->setTitle($this->language->get('heading_title'));
		
		if (isset($this->request->post['selected']) && $this->validateDelete()) {
			foreach ($this->request->post['selected'] as $id) {
				$this->model_extension_newsarticle->deleteNewsarticle($id);
			}

			$this->session->data['success'] = $this->language->get('text_success');
		}
		
		$this->redirect($this->url->link('extension/newsarticle', 'token=' . $this->session->data['token'], 'SSL'));
	}
	
	private function validateDelete() {
		if (!$this->user->hasPermission('modify', 'extension/newsarticle')) {
			$this->error['warning'] = $this->language->get('error_permission');
			
			$this->session->data['warning'] = $this->language->get('error_permission');
		}
 
		if (!$this->error) {
			return true; 
		} else {
			return false;
		}
	}
	
	private function validate() {
		if (!$this->user->hasPermission('modify', 'extension/newsarticle')) {
			$this->error['warning'] = $this->language->get('error_permission');
			$this->session->data['warning'] = $this->language->get('error_permission');
		}
		
		if (!$this->error) {
			return true;
		} else {
			return false;
		}	
	}
}
?>