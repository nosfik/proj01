<?php    
class ControllerCatalogPrice extends Controller { 
	private $error = array();
  
  	public function index() {
		$this->load->language('catalog/price');
		
		$this->document->setTitle($this->language->get('heading_title'));
		 
		$this->load->model('catalog/price');
		
    $this->getList();
  	}
  
  	public function insert() {
		$this->load->language('catalog/price');

    	$this->document->setTitle($this->language->get('heading_title'));
		
		$this->load->model('catalog/price');
			
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validateForm()) {
			$this->model_catalog_price->addPrice($this->request->post);

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
			
			$this->redirect($this->url->link('catalog/price', 'token=' . $this->session->data['token'] . $url, 'SSL'));
		}
    
    	$this->getForm();
  	} 
   
  	public function update() {
		$this->load->language('catalog/price');

    	$this->document->setTitle($this->language->get('heading_title'));
		
		$this->load->model('catalog/price');
		
    	if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validateForm()) {
			$this->model_catalog_price->editprice($this->request->get['price_id'], $this->request->post);

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
			
			$this->redirect($this->url->link('catalog/price', 'token=' . $this->session->data['token'] . $url, 'SSL'));
		}
    
    	$this->getForm();
  	}   

  	public function delete() {
		$this->load->language('catalog/price');

    	$this->document->setTitle($this->language->get('heading_title'));
		
		$this->load->model('catalog/price');
			
    	if (isset($this->request->post['selected']) && $this->validateDelete()) {
			foreach ($this->request->post['selected'] as $price_id) {
				$this->model_catalog_price->deletePrice($price_id);
			}

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
			
			$this->redirect($this->url->link('catalog/price', 'token=' . $this->session->data['token'] . $url, 'SSL'));
    	}
	
    	$this->getList();
  	}  
    
  	private function getList() {
		if (isset($this->request->get['sort'])) {
			$sort = $this->request->get['sort'];
		} else {
			$sort = 'from';
		}
		
		if (isset($this->request->get['order'])) {
			$order = $this->request->get['order'];
		} else {
			$order = 'ASC';
		}
		
		if (isset($this->request->get['page'])) {
			$page = $this->request->get['page'];
		} else {
			$page = 1;
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
       		'text'      => $this->language->get('heading_title'),
			'href'      => $this->url->link('catalog/price', 'token=' . $this->session->data['token'] . $url, 'SSL'),
      		'separator' => ' :: '
   		);
							
		$this->data['insert'] = $this->url->link('catalog/price/insert', 'token=' . $this->session->data['token'] . $url, 'SSL');
		$this->data['delete'] = $this->url->link('catalog/price/delete', 'token=' . $this->session->data['token'] . $url, 'SSL');	

		$this->data['prices'] = array();

		$data = array(
			'sort'  => $sort,
			'order' => $order,
			'start' => ($page - 1) * $this->config->get('config_admin_limit'),
			'limit' => $this->config->get('config_admin_limit')
		);
		
		$price_total = $this->model_catalog_price->getTotalPrices();
	
		$results = $this->model_catalog_price->getPrices($data);
 
    	foreach ($results as $result) {
			$action = array();
			
			$action[] = array(
				'text' => $this->language->get('text_edit'),
				'href' => $this->url->link('catalog/price/update', 'token=' . $this->session->data['token'] . '&price_id=' . $result['price_id'] . $url, 'SSL')
			);
						
			$this->data['prices'][] = array(
				'price_id' => $result['price_id'],
				'from'            => $result['from'],
				'to'            => $result['to'],
				'sort_order'      => $result['sort_order'],
				'selected'        => isset($this->request->post['selected']) && in_array($result['price_id'], $this->request->post['selected']),
				'action'          => $action
			);
		}	
	
		$this->data['heading_title'] = $this->language->get('heading_title');
		
		$this->data['text_no_results'] = $this->language->get('text_no_results');

		$this->data['column_from'] = $this->language->get('column_from');
    $this->data['column_to'] = $this->language->get('column_to');
		$this->data['column_sort_order'] = $this->language->get('column_sort_order');
		$this->data['column_action'] = $this->language->get('column_action');		
		
		$this->data['button_insert'] = $this->language->get('button_insert');
		$this->data['button_delete'] = $this->language->get('button_delete');
 
 		if (isset($this->error['warning'])) {
			$this->data['error_warning'] = $this->error['warning'];
		} else {
			$this->data['error_warning'] = '';
		}
		
		if (isset($this->session->data['success'])) {
			$this->data['success'] = $this->session->data['success'];
		
			unset($this->session->data['success']);
		} else {
			$this->data['success'] = '';
		}

		$url = '';

		if ($order == 'ASC') {
			$url .= '&order=DESC';
		} else {
			$url .= '&order=ASC';
		}

		if (isset($this->request->get['page'])) {
			$url .= '&page=' . $this->request->get['page'];
		}
		
		$this->data['sort_from'] = $this->url->link('catalog/price', 'token=' . $this->session->data['token'] . '&sort=from' . $url, 'SSL');
		$this->data['sort_to'] = $this->url->link('catalog/price', 'token=' . $this->session->data['token'] . '&sort=to' . $url, 'SSL');
		$this->data['sort_sort_order'] = $this->url->link('catalog/price', 'token=' . $this->session->data['token'] . '&sort=sort_order' . $url, 'SSL');
		
		$url = '';

		if (isset($this->request->get['sort'])) {
			$url .= '&sort=' . $this->request->get['sort'];
		}
												
		if (isset($this->request->get['order'])) {
			$url .= '&order=' . $this->request->get['order'];
		}

		$pagination = new Pagination();
		$pagination->total = $price_total;
		$pagination->page = $page;
		$pagination->limit = $this->config->get('config_admin_limit');
		$pagination->text = $this->language->get('text_pagination');
		$pagination->url = $this->url->link('catalog/price', 'token=' . $this->session->data['token'] . $url . '&page={page}', 'SSL');
			
		$this->data['pagination'] = $pagination->render();

		$this->data['sort'] = $sort;
		$this->data['order'] = $order;

		$this->template = 'catalog/price_list.tpl';
		$this->children = array(
			'common/header',
			'common/footer'
		);
				
		$this->response->setOutput($this->render());
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
				
		$this->data['entry_from'] = $this->language->get('entry_from');
    $this->data['entry_to'] = $this->language->get('entry_to');
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

 		if (isset($this->error['from'])) {
			$this->data['error_from'] = $this->error['from'];
		} else {
			$this->data['error_from'] = '';
		}

    if (isset($this->error['to'])) {
      $this->data['error_to'] = $this->error['to'];
    } else {
      $this->data['error_to'] = '';
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
       		'text'      => $this->language->get('heading_title'),
			'href'      => $this->url->link('catalog/price', 'token=' . $this->session->data['token'] . $url, 'SSL'),
      		'separator' => ' :: '
   		);
							
		if (!isset($this->request->get['price_id'])) {
			$this->data['action'] = $this->url->link('catalog/price/insert', 'token=' . $this->session->data['token'] . $url, 'SSL');
		} else {
			$this->data['action'] = $this->url->link('catalog/price/update', 'token=' . $this->session->data['token'] . '&price_id=' . $this->request->get['price_id'] . $url, 'SSL');
		}
		
		$this->data['cancel'] = $this->url->link('catalog/price', 'token=' . $this->session->data['token'] . $url, 'SSL');
	
    	if (isset($this->request->get['price_id']) && ($this->request->server['REQUEST_METHOD'] != 'POST')) {
      		$price_info = $this->model_catalog_price->getprice($this->request->get['price_id']);
    	}

		$this->data['token'] = $this->session->data['token'];

		$this->load->model('localisation/language');
		
		$this->data['languages'] = $this->model_localisation_language->getLanguages();

    if (isset($this->request->post['from'])) {
      $this->data['from'] = $this->request->post['from'];
    } elseif (!empty($price_info)) {
		  $this->data['from'] = $price_info['from'];
		} else {	
      $this->data['from'] = '';
    }
		

		if (isset($this->request->post['to'])) {
      $this->data['to'] = $this->request->post['to'];
    } elseif (!empty($price_info)) {
      $this->data['to'] = $price_info['to'];
    } else {  
      $this->data['to'] = '';
    }
	
		
		if (isset($this->request->post['sort_order'])) {
      		$this->data['sort_order'] = $this->request->post['sort_order'];
    	} elseif (!empty($price_info)) {
			$this->data['sort_order'] = $price_info['sort_order'];
		} else {
      		$this->data['sort_order'] = '';
    	}
		
		$this->template = 'catalog/price_form.tpl';
		$this->children = array(
			'common/header',
			'common/footer'
		);
				
		$this->response->setOutput($this->render());
	}  
	 
  	private function validateForm() {
    	if (!$this->user->hasPermission('modify', 'catalog/price')) {
      		$this->error['warning'] = $this->language->get('error_permission');
    	}
    	if (!is_numeric($this->request->post['from'])) {
      		$this->error['from'] = $this->language->get('error_from');
    	}
      if (!is_numeric($this->request->post['to'])) {
          $this->error['to'] = $this->language->get('error_to');
      }
		
		if (!$this->error) {
	  		return true;
		} else {
	  		return false;
		}
  	}    

  	private function validateDelete() {
    	if (!$this->user->hasPermission('modify', 'catalog/price')) {
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