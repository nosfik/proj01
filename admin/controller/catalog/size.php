<?php    
class ControllerCatalogSize extends Controller { 
	private $error = array();
  
  	public function index() {
		$this->load->language('catalog/size');
		
		$this->document->setTitle($this->language->get('heading_title'));
		 
		$this->load->model('catalog/size');
		
    $this->getList();
  	}
  
  	public function insert() {
		$this->load->language('catalog/size');

    	$this->document->setTitle($this->language->get('heading_title'));
		
		$this->load->model('catalog/size');
			
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validateForm()) {
			$this->model_catalog_size->addsize($this->request->post);

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
			
			$this->redirect($this->url->link('catalog/size', 'token=' . $this->session->data['token'] . $url, 'SSL'));
		}
    
    	$this->getForm();
  	} 
   
  	public function update() {
		$this->load->language('catalog/size');

    	$this->document->setTitle($this->language->get('heading_title'));
		
		$this->load->model('catalog/size');
		
    	if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validateForm()) {
			$this->model_catalog_size->editsize($this->request->get['size_id'], $this->request->post);

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
			
			$this->redirect($this->url->link('catalog/size', 'token=' . $this->session->data['token'] . $url, 'SSL'));
		}
    
    	$this->getForm();
  	}   

  	public function delete() {
		$this->load->language('catalog/size');

    	$this->document->setTitle($this->language->get('heading_title'));
		
		$this->load->model('catalog/size');
			
    	if (isset($this->request->post['selected']) && $this->validateDelete()) {
			foreach ($this->request->post['selected'] as $size_id) {
				$this->model_catalog_size->deleteSize($size_id);
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
			
			$this->redirect($this->url->link('catalog/size', 'token=' . $this->session->data['token'] . $url, 'SSL'));
    	}
	
    	$this->getList();
  	}  
    
  	private function getList() {
		if (isset($this->request->get['sort'])) {
			$sort = $this->request->get['sort'];
		} else {
			$sort = 'width';
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
			'href'      => $this->url->link('catalog/size', 'token=' . $this->session->data['token'] . $url, 'SSL'),
      		'separator' => ' :: '
   		);
							
		$this->data['insert'] = $this->url->link('catalog/size/insert', 'token=' . $this->session->data['token'] . $url, 'SSL');
		$this->data['delete'] = $this->url->link('catalog/size/delete', 'token=' . $this->session->data['token'] . $url, 'SSL');	

		$this->data['sizes'] = array();

		$data = array(
			'sort'  => $sort,
			'order' => $order,
			'start' => ($page - 1) * $this->config->get('config_admin_limit'),
			'limit' => $this->config->get('config_admin_limit')
		);
		
		$size_total = $this->model_catalog_size->getTotalSizes();
	
		$results = $this->model_catalog_size->getSizes($data);
 
    	foreach ($results as $result) {
			$action = array();
			
			$action[] = array(
				'text' => $this->language->get('text_edit'),
				'href' => $this->url->link('catalog/size/update', 'token=' . $this->session->data['token'] . '&size_id=' . $result['size_id'] . $url, 'SSL')
			);
						
			$this->data['sizes'][] = array(
				'size_id' => $result['size_id'],
				'width'            => $result['width'],
				'height'            => $result['height'],
				'sort_order'      => $result['sort_order'],
				'selected'        => isset($this->request->post['selected']) && in_array($result['size_id'], $this->request->post['selected']),
				'action'          => $action
			);
		}	
	
		$this->data['heading_title'] = $this->language->get('heading_title');
		
		$this->data['text_no_results'] = $this->language->get('text_no_results');

		$this->data['column_width'] = $this->language->get('column_width');
    $this->data['column_height'] = $this->language->get('column_height');
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
		
		$this->data['sort_width'] = $this->url->link('catalog/size', 'token=' . $this->session->data['token'] . '&sort=width' . $url, 'SSL');
		$this->data['sort_height'] = $this->url->link('catalog/size', 'token=' . $this->session->data['token'] . '&sort=height' . $url, 'SSL');
		$this->data['sort_sort_order'] = $this->url->link('catalog/size', 'token=' . $this->session->data['token'] . '&sort=sort_order' . $url, 'SSL');
		
		$url = '';

		if (isset($this->request->get['sort'])) {
			$url .= '&sort=' . $this->request->get['sort'];
		}
												
		if (isset($this->request->get['order'])) {
			$url .= '&order=' . $this->request->get['order'];
		}

		$pagination = new Pagination();
		$pagination->total = $size_total;
		$pagination->page = $page;
		$pagination->limit = $this->config->get('config_admin_limit');
		$pagination->text = $this->language->get('text_pagination');
		$pagination->url = $this->url->link('catalog/size', 'token=' . $this->session->data['token'] . $url . '&page={page}', 'SSL');
			
		$this->data['pagination'] = $pagination->render();

		$this->data['sort'] = $sort;
		$this->data['order'] = $order;

		$this->template = 'catalog/size_list.tpl';
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
		$this->data['entry_width'] = $this->language->get('entry_width');
    $this->data['entry_height'] = $this->language->get('entry_height');
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

 		if (isset($this->error['width'])) {
			$this->data['error_width'] = $this->error['width'];
		} else {
			$this->data['error_width'] = '';
		}

    if (isset($this->error['height'])) {
      $this->data['error_height'] = $this->error['height'];
    } else {
      $this->data['error_height'] = '';
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
			'href'      => $this->url->link('catalog/size', 'token=' . $this->session->data['token'] . $url, 'SSL'),
      		'separator' => ' :: '
   		);
							
		if (!isset($this->request->get['size_id'])) {
			$this->data['action'] = $this->url->link('catalog/size/insert', 'token=' . $this->session->data['token'] . $url, 'SSL');
		} else {
			$this->data['action'] = $this->url->link('catalog/size/update', 'token=' . $this->session->data['token'] . '&size_id=' . $this->request->get['size_id'] . $url, 'SSL');
		}
		
		$this->data['cancel'] = $this->url->link('catalog/size', 'token=' . $this->session->data['token'] . $url, 'SSL');
	
    	if (isset($this->request->get['size_id']) && ($this->request->server['REQUEST_METHOD'] != 'POST')) {
      		$size_info = $this->model_catalog_size->getsize($this->request->get['size_id']);
    	}

		$this->data['token'] = $this->session->data['token'];

		$this->load->model('localisation/language');
		
		$this->data['languages'] = $this->model_localisation_language->getLanguages();

  	if (isset($this->request->post['width'])) {
    		$this->data['width'] = $this->request->post['width'];
  	} elseif (!empty($size_info)) {
			$this->data['width'] = $size_info['width'];
		} else {	
      $this->data['width'] = '';
    }
    
    if (isset($this->request->post['height'])) {
        $this->data['height'] = $this->request->post['height'];
    } elseif (!empty($size_info)) {
      $this->data['height'] = $size_info['height'];
    } else {  
      $this->data['height'] = '';
    }
		
		if (isset($this->request->post['sort_order'])) {
      		$this->data['sort_order'] = $this->request->post['sort_order'];
    	} elseif (!empty($size_info)) {
			$this->data['sort_order'] = $size_info['sort_order'];
		} else {
      		$this->data['sort_order'] = '';
    	}
		
		$this->template = 'catalog/size_form.tpl';
		$this->children = array(
			'common/header',
			'common/footer'
		);
				
		$this->response->setOutput($this->render());
	}  
	 
  	private function validateForm() {
    	if (!$this->user->hasPermission('modify', 'catalog/size')) {
      		$this->error['warning'] = $this->language->get('error_permission');
    	}

    	if (!is_numeric($this->request->post['width'])) {
      		$this->error['width'] = $this->language->get('error_width');
    	}
      if (!is_numeric($this->request->post['height'])) {
          $this->error['height'] = $this->language->get('error_height');
      }
		
		if (!$this->error) {
	  		return true;
		} else {
	  		return false;
		}
  	}    

  	private function validateDelete() {
    	if (!$this->user->hasPermission('modify', 'catalog/size')) {
			$this->error['warning'] = $this->language->get('error_permission');
    	}	
		
		$this->load->model('catalog/product');

		foreach ($this->request->post['selected'] as $size_id) {
  			$product_total = $this->model_catalog_product->getTotalProductsBysizeId($size_id);
    
			if ($product_total) {
	  			$this->error['warning'] = sprintf($this->language->get('error_product'), $product_total);	
			}	
	  	} 
		
		if (!$this->error) {
	  		return true;
		} else {
	  		return false;
		}  
  	}
}
?>