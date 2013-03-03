<?php 
class ControllerCheckoutConfirm extends Controller { 
	public function index() {
		$redirect = '';
    
    
    //validate
    
    $allGood = true;
    
    if( !(isset($this->request->post['address']) && $this->request->post['address'] != '') ){
       $allGood = false;
    }  else {
      $address = $this->request->post['address'];
    }
    if( !(isset($this->request->post['email']) && $this->request->post['email'] != '') ){
       $allGood = false;
    } else {
      $email = $this->request->post['email'];
    }
    if( !(isset($this->request->post['fio']) && $this->request->post['fio'] != '') ){
       $allGood = false;
    } else {
      $fio = $this->request->post['fio'];
    }
    if( !(isset($this->request->post['name']) && $this->request->post['name'] != '') ){
       $allGood = false;
    } else {
      $firstName = $this->request->post['name'];
    }
    if( !(isset($this->request->post['payment_method']) && $this->request->post['payment_method'] != '') ){
       $allGood = false;
    } else {
      $payment_method = $this->request->post['payment_method'];
    }
    if( !(isset($this->request->post['shipping_method']) && $this->request->post['shipping_method'] != '') ){
       $allGood = false;
    } else {
      $shipping_method = $this->request->post['shipping_method'];
    }
    if( !(isset($this->request->post['telephone']) && $this->request->post['telephone'] != '') ){
       $allGood = false;
    } else {
      $telephone = $this->request->post['telephone'];
    }
    
   $shipping_name =  $this->request->post['shipping_name'];
   $payment_name =  $this->request->post['payment_name'];
    
    
		
    if( $allGood && ($this->cart->hasProducts() || $this->cart->hasAlbums())) {
      
      if ($this->customer->isLogged() && isset($this->session->data['payment_address_id'])) {
        $payment_address = $this->model_account_address->getAddress($this->session->data['payment_address_id']); 
      } 
      
      
      $products = $this->cart->getProducts();
          foreach ($products as $product) {
            $product_total = 0;
              
            foreach ($products as $product_2) {
              if ($product_2['product_id'] == $product['product_id']) {
                $product_total += $product_2['quantity'];
              }
            }   
            
            if ($product['minimum'] > $product_total) {
              $redirect = $this->url->link('checkout/cart');
              
              break;
            }       
          }
          
          if($this->customer->isLogged()) {
            $albums = $this->cart->getAlbums();
            $totalAlbum = 0;
            foreach ($albums as $album) {
              $totalAlbum += ($album['price'] * $album['quantity']);
            }
          }
      
        if (!$redirect) {
          $total_data = array();
           if( $this->customer->isLogged() ) {
               $total = $totalAlbum;
            }   else  {
              $total = 0;
            }   
      
          $taxes = $this->cart->getTaxes();
           
          $this->load->model('setting/extension');
          
          $sort_order = array(); 
          
          $results = $this->model_setting_extension->getExtensions('total');
          
          foreach ($results as $key => $value) {
            $sort_order[$key] = $this->config->get($value['code'] . '_sort_order');
          }
          
          array_multisort($sort_order, SORT_ASC, $results);
          
          foreach ($results as $result) {
            if ($this->config->get($result['code'] . '_status') || ($this->customer->isLogged() && $result['code'] == 'album')) {
              $this->load->model('total/' . $result['code']);
        
              $this->{'model_total_' . $result['code']}->getTotal($total_data, $total, $taxes);
            }
          }
          
          $sort_order = array(); 
          
          foreach ($total_data as $key => $value) {
            $sort_order[$key] = $value['sort_order'];
          }
      
          array_multisort($sort_order, SORT_ASC, $total_data);
      
          $this->language->load('checkout/checkout');
          
          $data = array();
          
          $data['invoice_prefix'] = $this->config->get('config_invoice_prefix');
          $data['store_id'] = $this->config->get('config_store_id');
          $data['store_name'] = $this->config->get('config_name');
          
          if ($data['store_id']) {
            $data['store_url'] = $this->config->get('config_url');    
          } else {
            $data['store_url'] = HTTP_SERVER; 
          }
          
          if ($this->customer->isLogged()) {
            $data['customer_id'] = $this->customer->getId();
            $data['customer_group_id'] = $this->customer->getCustomerGroupId();
         
            
          } elseif (isset($this->session->data['guest'])) {
            $data['customer_id'] = 0;
            $data['customer_group_id'] = 1;
            //$payment_address = $this->session->data['guest']['payment'];
          }
             
            $data['firstname'] = $firstName;
            $data['lastname'] = '';
            $data['email'] = $email;
            $data['telephone'] = $telephone;
            $data['skype'] = ($this->customer->isLogged()) ? $this->customer->getSkype() : '';
            $data['fio'] = $fio;
          
          
          
       
          
          $data['payment_method'] = $payment_name;
          $data['payment_code'] = $payment_method;
          
          //echo "sess = ". print_r($this->session, true);
          
          if ($this->customer->isLogged()) {
             $this->load->model('account/address');
             $customer_address = $this->model_account_address->getFirstAddressByCustomer(); 
          }            
             
          
            $data['shipping_firstname'] = $firstName;
            $data['shipping_lastname'] = ($this->customer->isLogged()) ? $this->customer->getLastName() : '';
            $data['shipping_company'] = ''; 
            $data['shipping_address_1'] = $address;
            $data['shipping_address_2'] = '';
            
            $data['shipping_city'] = ($this->customer->isLogged()) ? $customer_address['city'] : '';
            $data['shipping_postcode'] = ($this->customer->isLogged()) ? $customer_address['postcode'] : '';
            $data['shipping_zone'] = ($this->customer->isLogged()) ? $customer_address['zone'] : '';
            $data['shipping_zone_id'] = ($this->customer->isLogged()) ? $customer_address['zone_id'] : '';
            $data['shipping_country'] = ($this->customer->isLogged()) ? $customer_address['country'] : '';
            $data['shipping_country_id'] = ($this->customer->isLogged()) ? $customer_address['country_id'] : '';
            $data['shipping_address_format'] = ($this->customer->isLogged()) ? $customer_address['address_format'] : '';
            
            $data['shipping_method'] = $shipping_name;
            $data['shipping_code'] = $shipping_method;
            
            
            
            $data['payment_firstname'] = '';
            $data['payment_lastname'] = '';
            $data['payment_company'] = '';
            $data['payment_company_id'] = '';
            $data['payment_city'] = '';
            $data['payment_tax_id'] = '';
            $data['payment_address_1'] = '';
            $data['payment_address_2'] = '';
            $data['payment_postcode'] = '';
            $data['payment_country'] = '';
            $data['payment_country_id'] = '';
            $data['payment_zone'] = '';
            $data['payment_zone_id'] = '';
            $data['payment_address_format'] = '';
            
            
          
          
          
          
          
          $album_data = array();
          
          if($this->customer->isLogged()) {
              $this -> load -> model('album/order');
              $orderTimeMinutes = $this -> model_album_order -> getTimeOrder();
              $orderDate = strtotime("+" . $orderTimeMinutes . " minutes");
              $data['end_date'] = date("Y-m-d", $orderDate);
              $data['end_time'] = date("H:i:s", $orderDate);
            
            foreach ($this->cart->getAlbums() as $album) {
            
              $album_data[] = array(
                 'photos'           => implode(",", $album['photos']),
                 'photos_arr'       => $album['photos'],
                 'quantity'         => $album['quantity'],
                 'album_id'         => $album['album_id'],
                 'preferences_map'  => $album['preferences_map'],
                 'photos_name_map'  => $album['photos_name_map']
               );
            }  
          } else {
            $data['end_date'] = '0000-00-00';
            $data['end_time'] = '00:00:00';
          }
          
          
          
          $data['albums'] = $album_data;      
          $product_data = array();
        
          foreach ($this->cart->getProducts() as $product) {
            $option_data = array();
      
            foreach ($product['option'] as $option) {
              if ($option['type'] != 'file') {
                $value = $option['option_value']; 
              } else {
                $value = $this->encryption->decrypt($option['option_value']);
              } 
              
              $option_data[] = array(
                'product_option_id'       => $option['product_option_id'],
                'product_option_value_id' => $option['product_option_value_id'],
                'option_id'               => $option['option_id'],
                'option_value_id'         => $option['option_value_id'],                   
                'name'                    => $option['name'],
                'value'                   => $value,
                'type'                    => $option['type']
              );          
            }
       
            $product_data[] = array(
              'product_id' => $product['product_id'],
              'name'       => $product['name'],
              'model'      => $product['model'],
              'option'     => $option_data,
              'download'   => $product['download'],
              'quantity'   => $product['quantity'],
              'subtract'   => $product['subtract'],
              'price'      => $product['price'],
              'total'      => $product['total'],
              'tax'        => $this->tax->getTax($product['price'], $product['tax_class_id']),
              'reward'     => $product['reward']
            ); 
          }
          
          // Gift Voucher
          $voucher_data = array();
          
          if (!empty($this->session->data['vouchers'])) {
            foreach ($this->session->data['vouchers'] as $voucher) {
              $voucher_data[] = array(
                'description'      => $voucher['description'],
                'code'             => substr(md5(mt_rand()), 0, 10),
                'to_name'          => $voucher['to_name'],
                'to_email'         => $voucher['to_email'],
                'from_name'        => $voucher['from_name'],
                'from_email'       => $voucher['from_email'],
                'voucher_theme_id' => $voucher['voucher_theme_id'],
                'message'          => $voucher['message'],            
                'amount'           => $voucher['amount']
              );
            }
          }  
                
          $data['products'] = $product_data;
          $data['vouchers'] = $voucher_data;
          $data['totals'] = $total_data;
          $data['comment'] = $this->request->post['comment'];
          $data['total'] = $total;
          
         /* if (isset($this->request->cookie['tracking'])) {
            $this->load->model('affiliate/affiliate');
            
            $affiliate_info = $this->model_affiliate_affiliate->getAffiliateByCode($this->request->cookie['tracking']);
            $subtotal = $this->cart->getSubTotal();
            
            if ($affiliate_info) {
              $data['affiliate_id'] = $affiliate_info['affiliate_id']; 
              $data['commission'] = ($subtotal / 100) * $affiliate_info['commission']; 
            } else {
              $data['affiliate_id'] = 0;
              $data['commission'] = 0;
            }
          } else {*/
            $data['affiliate_id'] = 0;
            $data['commission'] = 0;
         // }
          
          $data['language_id'] = $this->config->get('config_language_id');
          $data['currency_id'] = $this->currency->getId();
          $data['currency_code'] = $this->currency->getCode();
          $data['currency_value'] = $this->currency->getValue($this->currency->getCode());
          $data['ip'] = $this->request->server['REMOTE_ADDR'];
          
          if (!empty($this->request->server['HTTP_X_FORWARDED_FOR'])) {
            $data['forwarded_ip'] = $this->request->server['HTTP_X_FORWARDED_FOR']; 
          } elseif(!empty($this->request->server['HTTP_CLIENT_IP'])) {
            $data['forwarded_ip'] = $this->request->server['HTTP_CLIENT_IP']; 
          } else {
            $data['forwarded_ip'] = '';
          }
          
          if (isset($this->request->server['HTTP_USER_AGENT'])) {
            $data['user_agent'] = $this->request->server['HTTP_USER_AGENT'];  
          } else {
            $data['user_agent'] = '';
          }
          
          if (isset($this->request->server['HTTP_ACCEPT_LANGUAGE'])) {
            $data['accept_language'] = $this->request->server['HTTP_ACCEPT_LANGUAGE'];  
          } else {
            $data['accept_language'] = '';
          }
                
          $this->load->model('checkout/order');
          
          $this->session->data['order_id'] = $this->model_checkout_order->addOrder($data);
          
          $this->data['column_name'] = $this->language->get('column_name');
          $this->data['column_model'] = $this->language->get('column_model');
          $this->data['column_quantity'] = $this->language->get('column_quantity');
          $this->data['column_price'] = $this->language->get('column_price');
          $this->data['column_total'] = $this->language->get('column_total');
          
          $this->data['albums'] = array();
          
          
          foreach ($this->cart->getAlbums() as $album) {
            $this->data['albums'][] = array(
              'count'       => count($album['photos']),
              'quantity'    => $album['quantity'],
              'album_name'  => $album['album_name'],
              'href'        => $this->url->link('album/content', 'album_id=' . $album['album_id']),
              'price'       => $album['price'],
              'total'       => $this->currency->format($album['price'] * $album['quantity'])
            );
          }
          
          
          
          
          
          
          
          $this->data['products'] = array();
      
          foreach ($this->cart->getProducts() as $product) {
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
       
            $this->data['products'][] = array(
              'product_id' => $product['product_id'],
              'name'       => $product['name'],
              'model'      => $product['model'],
              'option'     => $option_data,
              'quantity'   => $product['quantity'],
              'subtract'   => $product['subtract'],
              'price'      => $this->currency->format($this->tax->calculate($product['price'], $product['tax_class_id'], $this->config->get('config_tax'))),
              'total'      => $this->currency->format($this->tax->calculate($product['price'], $product['tax_class_id'], $this->config->get('config_tax')) * $product['quantity']),
              'href'       => $this->url->link('product/product', 'product_id=' . $product['product_id'])
            ); 
          } 
          
          // Gift Voucher
          $this->data['vouchers'] = array();
          
          if (!empty($this->session->data['vouchers'])) {
            foreach ($this->session->data['vouchers'] as $voucher) {
              $this->data['vouchers'][] = array(
                'description' => $voucher['description'],
                'amount'      => $this->currency->format($voucher['amount'])
              );
            }
          }  
                
          $this->data['totals'] = $total_data;
      
          $this->data['payment'] = $this->getChild('payment/' . $payment_method);
          
          $this->children = array(
            'common/column_right',
            'common/content_top',
            'common/content_bottom',
            'common/footer',
            'common/header'
          );
          
            if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/checkout/confirm.tpl')) {
              $this->template = $this->config->get('config_template') . '/template/checkout/confirm.tpl';
            } else {
              $this->template = 'default/template/checkout/confirm.tpl';
            }
    } else {
      $this->data['redirect'] = $redirect;
    }   


    }
		
	
		
		$this->response->setOutput($this->render());	
  	}
}
?>