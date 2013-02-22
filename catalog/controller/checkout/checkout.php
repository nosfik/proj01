<?php  
class ControllerCheckoutCheckout extends Controller { 
	public function index() {
		// Validate cart has products and has stock.
		if ((!$this->cart->hasProducts() && empty($this->session->data['vouchers'])) || (!$this->cart->hasStock() && !$this->config->get('config_stock_checkout'))) {
	  		$this->redirect($this->url->link('checkout/cart'));
    	}	
		
    
    
		// Validate minimum quantity requirments.			
		$products = $this->cart->getProducts();
				
		/*
		foreach ($products as $product) {
					$product_total = 0;
						
					foreach ($products as $product_2) {
						if ($product_2['product_id'] == $product['product_id']) {
							$product_total += $product_2['quantity'];
						}
					}		
					
					if ($product['minimum'] > $product_total) {
						$this->redirect($this->url->link('checkout/cart'));
					}				
				}*/
		
    
    
$this->load->model('tool/image');    
    
    
    $this->data['products'] = array();
    foreach ($products as $product) {
        $product_total = 0;
          
        foreach ($products as $product_2) {
          if ($product_2['product_id'] == $product['product_id']) {
            $product_total += $product_2['quantity'];
          }
        }     
        
        if ($product['minimum'] > $product_total) {
          $this->data['error_warning'] = sprintf($this->language->get('error_minimum'), $product['name'], $product['minimum']);
        }       
          
        if ($product['image']) {
          $image = $this->model_tool_image->resize($product['image'], $this->config->get('config_image_cart_width'), $this->config->get('config_image_cart_height'));
        } else {
          $image = '';
        }

        $option_data = array();

            foreach ($product['option'] as $option) {
          if ($option['type'] != 'file') {
            $value = $option['option_value']; 
          } else {
            $filename = $this->encryption->decrypt($option['option_value']);
            
            $value = utf8_substr($filename, 0, utf8_strrpos($filename, '.'));
          }
          
          $option_data[] = array(
            'name'  => $option['name'],
            'value' => (utf8_strlen($value) > 20 ? utf8_substr($value, 0, 20) . '..' : $value)
          );
            }
        
        // Display prices
        if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
          $price = $this->currency->format($this->tax->calculate($product['price'], $product['tax_class_id'], $this->config->get('config_tax')));
        } else {
          $price = false;
        }
        
        // Display prices
        if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
          $total = $this->currency->format($this->tax->calculate($product['price'], $product['tax_class_id'], $this->config->get('config_tax')) * $product['quantity']);
        } else {
          $total = false;
        }
        
        $this->data['products'][] = array(
            'key'      => $product['key'],
            'thumb'    => $image,
            'name'     => $product['name'],
            'model'    => $product['model'],
            'option'   => $option_data,
            'quantity' => $product['quantity'],
            'stock'    => $product['stock'] ? true : !(!$this->config->get('config_stock_checkout') || $this->config->get('config_stock_warning')),
            'reward'   => ($product['reward'] ? sprintf($this->language->get('text_points'), $product['reward']) : ''),
            'price'    => $price,
            'total'    => $total,
            'href'     => $this->url->link('product/product', 'product_id=' . $product['product_id']),
            'remove'   => $this->url->link('checkout/cart', 'remove=' . $product['key'])
        );
        
        
        
        
          }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    $this->load->model('account/address');
    
    if ($this->customer->isLogged() && isset($this->session->data['shipping_address_id'])) {          
      $shipping_address = $this->model_account_address->getAddress($this->session->data['shipping_address_id']);    
    } elseif (isset($this->session->data['guest'])) {
      $shipping_address = $this->session->data['guest']['shipping'];
    }
    
    if (empty($shipping_address)) {
    		$shipping_address = array(
				'country_id' => 220,
				'zone_id' => 3501
			);
		}
    $quote_data = array();
      
      $this->load->model('setting/extension');
      
      $results = $this->model_setting_extension->getExtensions('shipping');
      
      foreach ($results as $result) {
        if ($this->config->get($result['code'] . '_status')) {
          $this->load->model('shipping/' . $result['code']);
          
          $quote = $this->{'model_shipping_' . $result['code']}->getQuote($shipping_address); 
    
          if ($quote) {
            $quote_data[$result['code']] = array( 
              'title'      => $quote['title'],
              'quote'      => $quote['quote'], 
              'sort_order' => $quote['sort_order'],
              'error'      => $quote['error']
            );
          }
        }
      }
  
      $sort_order = array();
      
      foreach ($quote_data as $key => $value) {
        $sort_order[$key] = $value['sort_order'];
      }
  
      array_multisort($sort_order, SORT_ASC, $quote_data);
      
      $this->session->data['shipping_methods'] = $quote_data;
    


    
    
    if ($this->customer->isLogged() && isset($this->session->data['payment_address_id'])) {
      $payment_address = $this->model_account_address->getAddress($this->session->data['payment_address_id']);    
    } elseif (isset($this->session->data['guest'])) {
      $payment_address = $this->session->data['guest']['payment'];
    } 
    
    if (empty($payment_address)) {
    	
			$payment_address = array(
				'country_id' => 220,
				'zone_id' => 3501
			);
		}  
      // Totals
      $total_data = array();          
      $total = 0;
      $taxes = $this->cart->getTaxes();
      
      $this->load->model('setting/extension');
      
      $sort_order = array(); 
      
      $results = $this->model_setting_extension->getExtensions('total');
      
      foreach ($results as $key => $value) {
        $sort_order[$key] = $this->config->get($value['code'] . '_sort_order');
      }
      
      array_multisort($sort_order, SORT_ASC, $results);
      
      foreach ($results as $result) {
        if ($this->config->get($result['code'] . '_status')) {
          $this->load->model('total/' . $result['code']);
    
          $this->{'model_total_' . $result['code']}->getTotal($total_data, $total, $taxes);
        }
      }
      
      // Payment Methods
      $method_data = array();
      
      $this->load->model('setting/extension');
      
      $results = $this->model_setting_extension->getExtensions('payment');
  
      foreach ($results as $result) {
        if ($this->config->get($result['code'] . '_status')) {
          $this->load->model('payment/' . $result['code']);
          
          $method = $this->{'model_payment_' . $result['code']}->getMethod($payment_address, $total); 
          
          if ($method) {
            $method_data[$result['code']] = $method;
          }
        }
      }
             
      $sort_order = array(); 
      
      foreach ($method_data as $key => $value) {
        $sort_order[$key] = $value['sort_order'];
      }
  
      array_multisort($sort_order, SORT_ASC, $method_data);     
      
      $this->session->data['payment_methods'] = $method_data;     
    





  if (empty($this->session->data['payment_methods'])) {
      $this->data['error_warning'] = sprintf($this->language->get('error_no_payment'), $this->url->link('information/contact'));
    } else {
      $this->data['error_warning'] = '';
    } 

    if (isset($this->session->data['payment_methods'])) {
      $this->data['payment_methods'] = $this->session->data['payment_methods']; 
    } else {
      $this->data['payment_methods'] = array();
    }
    
    if (isset($this->session->data['payment_method']['code'])) {
      $this->data['code'] = $this->session->data['payment_method']['code'];
    } else {
      $this->data['code'] = '';
    }









   
    
    
    
    
    
    
    
    
		
		$clienForm = array(
			'name' 		=> '',
			'phone'		=> '',
			'mail'		=> '',
			'address' => '',
			'fio'			=> ''
		);
		
		if($this->customer->isLogged()){
			$address = $this->model_account_address->getAddress($this->customer->getAddressId());
			$clienForm['name'] = $this->customer->getFirstName();
			$clienForm['phone'] = $this->customer->getTelephone();
			$clienForm['mail'] = $this->customer->getEmail();
			$clienForm['address'] = $address['address_1'];
			$clienForm['fio'] = $this->customer->getLastName().' '.$this->customer->getFirstName();
		}
		
		$this->data['customer'] = $clienForm;
    if (isset($this->session->data['shipping_postcode'])) {
      $this->data['postcode'] = $this->session->data['shipping_postcode'];    
    } else {
      $this->data['postcode'] = '';
    }
        
    if (isset($this->session->data['shipping_country_id'])) {
      $this->data['country_id'] = $this->session->data['shipping_country_id'];    
    } else {
      $this->data['country_id'] = $this->config->get('config_country_id');
    }
        
    if (isset($this->session->data['shipping_zone_id'])) {
      $this->data['zone_id'] = $this->session->data['shipping_zone_id'];    
    } else {
      $this->data['zone_id'] = '';
    }
    
    








          
    $this->data['text_shipping_method'] = $this->language->get('text_shipping_method');
    $this->data['text_comments'] = $this->language->get('text_comments');
  
    $this->data['button_continue'] = $this->language->get('button_continue');
    
    if (empty($this->session->data['shipping_methods'])) {
      $this->data['error_warning'] = sprintf($this->language->get('error_no_shipping'), $this->url->link('information/contact'));
    } else {
      $this->data['error_warning'] = '';
    } 
          
    if (isset($this->session->data['shipping_methods'])) {
      $this->data['shipping_methods'] = $this->session->data['shipping_methods']; 
    } else {
      $this->data['shipping_methods'] = array();
    }
    
    if (isset($this->session->data['shipping_method']['code'])) {
      $this->data['code'] = $this->session->data['shipping_method']['code'];
    } else {
      $this->data['code'] = '';
    }
    
    if (isset($this->session->data['comment'])) {
      $this->data['comment'] = $this->session->data['comment'];
    } else {
      $this->data['comment'] = '';
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
				
		$this->language->load('checkout/checkout');
		
		$this->document->setTitle($this->language->get('heading_title')); 
		
		$this->data['breadcrumbs'] = array();

      	$this->data['breadcrumbs'][] = array(
        	'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home'),
        	'separator' => false
      	); 

      	$this->data['breadcrumbs'][] = array(
        	'text'      => $this->language->get('text_cart'),
			'href'      => $this->url->link('checkout/cart'),
        	'separator' => $this->language->get('text_separator')
      	);
		
      	$this->data['breadcrumbs'][] = array(
        	'text'      => $this->language->get('heading_title'),
			'href'      => $this->url->link('checkout/checkout', '', 'SSL'),
        	'separator' => $this->language->get('text_separator')
      	);
					
	    $this->data['heading_title'] = $this->language->get('heading_title');
		
		$this->data['text_checkout_option'] = $this->language->get('text_checkout_option');
		$this->data['text_checkout_account'] = $this->language->get('text_checkout_account');
		$this->data['text_checkout_payment_address'] = $this->language->get('text_checkout_payment_address');
		$this->data['text_checkout_shipping_address'] = $this->language->get('text_checkout_shipping_address');
		$this->data['text_checkout_shipping_method'] = $this->language->get('text_checkout_shipping_method');
		$this->data['text_checkout_payment_method'] = $this->language->get('text_checkout_payment_method');		
		$this->data['text_checkout_confirm'] = $this->language->get('text_checkout_confirm');
		$this->data['text_modify'] = $this->language->get('text_modify');
		
		$this->data['logged'] = $this->customer->isLogged();
		$this->data['shipping_required'] = $this->cart->hasShipping();	
		
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/checkout/checkout.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/checkout/checkout.tpl';
		} else {
			$this->template = 'default/template/checkout/checkout.tpl';
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
	
	public function country() {
		$json = array();
		
		$this->load->model('localisation/country');

    	$country_info = $this->model_localisation_country->getCountry($this->request->get['country_id']);
		
		if ($country_info) {
			$this->load->model('localisation/zone');

			$json = array(
				'country_id'        => $country_info['country_id'],
				'name'              => $country_info['name'],
				'iso_code_2'        => $country_info['iso_code_2'],
				'iso_code_3'        => $country_info['iso_code_3'],
				'address_format'    => $country_info['address_format'],
				'postcode_required' => $country_info['postcode_required'],
				'zone'              => $this->model_localisation_zone->getZonesByCountryId($this->request->get['country_id']),
				'status'            => $country_info['status']		
			);
		}
		
		$this->response->setOutput(json_encode($json));
	}
}
?>