<?php    
class ControllerCatalogAboutus extends Controller { 
	private $error = array();
  
  	public function index() {
		$this->load->language('catalog/aboutus');
		
		$this->document->setTitle($this->language->get('heading_title'));
		 
		$this->load->model('catalog/aboutus');
		
    	$this->getForm();
  	}
  
  	public function update() {
		$this->load->language('catalog/aboutus');

    	$this->document->setTitle($this->language->get('heading_title'));
		
		$this->load->model('catalog/aboutus');
		
    	if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validateForm()) {
			$this->model_catalog_aboutus->editAboutus(1, $this->request->post);

			$this->session->data['success'] = $this->language->get('text_success');

			$url = '';
			
			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			if (isset($this->request->get['page'])) {
				$url .= '&page=' . $this->request->get['page'];
			}
			
			$this->redirect($this->url->link('catalog/aboutus', 'token=' . $this->session->data['token'] . $url, 'SSL'));
		}
    
    	$this->getForm();
  	}   

  
  	private function getForm() {
    	$this->data['heading_title'] = $this->language->get('heading_title');

    	$this->data['text_enabled'] = $this->language->get('text_enabled');
    	$this->data['text_disabled'] = $this->language->get('text_disabled');
		$this->data['text_default'] = $this->language->get('text_default');
    	$this->data['text_image_manager'] = $this->language->get('text_image_manager');
		$this->data['text_browse'] = $this->language->get('text_browse');
		$this->data['text_clear'] = $this->language->get('text_clear');			
		$this->data['text_percent'] = $this->language->get('text_percent');
		$this->data['text_amount'] = $this->language->get('text_amount');
				
		$this->data['entry_name'] = $this->language->get('entry_name');
		$this->data['entry_store'] = $this->language->get('entry_store');
		$this->data['entry_keyword'] = $this->language->get('entry_keyword');
    	$this->data['entry_image'] = $this->language->get('entry_image');
		$this->data['entry_sort_order'] = $this->language->get('entry_sort_order');
		$this->data['entry_customer_group'] = $this->language->get('entry_customer_group');
		$this->data['entry_meta_keyword'] = $this->language->get('entry_meta_keyword');
		$this->data['entry_meta_description'] = $this->language->get('entry_meta_description');
		$this->data['entry_description'] = $this->language->get('entry_description');
		$this->data['entry_seo_title'] = $this->language->get('entry_seo_title');
		$this->data['entry_seo_h1'] = $this->language->get('entry_seo_h1');
		  
    	$this->data['button_save'] = $this->language->get('button_save');
    	$this->data['button_cancel'] = $this->language->get('button_cancel');
		
		$this->data['tab_general'] = $this->language->get('tab_general');
			  
 		if (isset($this->error['warning'])) {
			$this->data['error_warning'] = $this->error['warning'];
		} else {
			$this->data['error_warning'] = '';
		}

 		if (isset($this->error['name'])) {
			$this->data['error_name'] = $this->error['name'];
		} else {
			$this->data['error_name'] = '';
		}
		    
		$url = '';
			
		if (isset($this->request->get['sort'])) {
			$url .= '&sort=' . $this->request->get['sort'];
		}

		if (isset($this->request->get['order'])) {
			$url .= '&order=' . $this->request->get['order'];
		}
		
		if (isset($this->request->get['page'])) {
			$url .= '&page=' . $this->request->get['page'];
		}
		
  		$this->data['breadcrumbs'] = array();

   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => false
   		);

   		$this->data['breadcrumbs'][] = array(
       		'text'      => 'О нас',
			'href'      => $this->url->link('catalog/aboutus', 'token=' . $this->session->data['token'] . $url, 'SSL'),
      		'separator' => ' :: '
   		);
							
		$this->data['action'] = $this->url->link('catalog/aboutus/update', 'token=' . $this->session->data['token'] .  $url, 'SSL');
		
		$this->data['cancel'] = $this->url->link('catalog/aboutus', 'token=' . $this->session->data['token'] . $url, 'SSL');
	
    	if (($this->request->server['REQUEST_METHOD'] != 'POST')) {
      		$aboutus_info = $this->model_catalog_aboutus->getAboutus(1);
    	}

		$this->data['token'] = $this->session->data['token'];

		$this->load->model('localisation/language');
		
		$this->data['languages'] = $this->model_localisation_language->getLanguages();

		if (isset($this->request->post['aboutus_short_text'])) {
			$this->data['aboutus_short_text'] = $this->request->post['aboutus_short_text'];
		} elseif (!empty($aboutus_info)) {
			$this->data['aboutus_short_text'] = $this->model_catalog_aboutus->getAboutusDescriptions(1);
		} else {
			$this->data['aboutus_short_text'] = array();
		}


		if (isset($this->request->post['image'])) {
			$this->data['image'] = $this->request->post['image'];
		} elseif (!empty($aboutus_info)) {
			$this->data['image'] = $aboutus_info['image'];
		} else {
			$this->data['image'] = '';
		}
		
		if (isset($this->request->post['url'])) {
			$this->data['url'] = $this->request->post['url'];
		} elseif (!empty($aboutus_info)) {
			$this->data['url'] = $aboutus_info['url'];
		} else {
			$this->data['url'] = '';
		}
		
		$this->load->model('tool/image');

		if (isset($this->request->post['image']) && file_exists(DIR_IMAGE . $this->request->post['image'])) {
			$this->data['thumb'] = $this->model_tool_image->resize($this->request->post['image'], 100, 100);
		} elseif (!empty($aboutus_info) && $aboutus_info['image'] && file_exists(DIR_IMAGE . $aboutus_info['image'])) {
			$this->data['thumb'] = $this->model_tool_image->resize($aboutus_info['image'], 100, 100);
		} else {
			$this->data['thumb'] = $this->model_tool_image->resize('no_image.jpg', 100, 100);
		}
		
		$this->data['no_image'] = $this->model_tool_image->resize('no_image.jpg', 100, 100);
		
		$this->template = 'catalog/aboutus.tpl';
		$this->children = array(
			'common/header',
			'common/footer'
		);
				
		$this->response->setOutput($this->render());
	}  
	 
  	private function validateForm() {
    	if (!$this->user->hasPermission('modify', 'catalog/aboutus')) {
      		$this->error['warning'] = $this->language->get('error_permission');
    	}

		if (!$this->error) {
	  		return true;
		} else {
	  		return false;
		}
  	}    


}
?>