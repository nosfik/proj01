<?php
class Cart {
	private $config;
	private $db;
	private $data = array();
  private $data_album = array();
	
  	public function __construct($registry) {
		$this->config = $registry->get('config');
		$this->customer = $registry->get('customer');
		$this->session = $registry->get('session');
		$this->db = $registry->get('db');
		$this->tax = $registry->get('tax');
		$this->weight = $registry->get('weight');

		if (!isset($this->session->data['cart']) || !is_array($this->session->data['cart'])) {
      		$this->session->data['cart'] = array();
    }
    
    if (!isset($this->session->data['cart_album']) || !is_array($this->session->data['cart_album'])) {
             $this->session->data['cart_album'] = array();
   }
   
	}
    
    
    public function getAlbums() {
      if (!$this->data_album) {
        
        $formats_query = $this->db->query("SELECT id, price FROM " . DB_PREFIX . "album_photo_format");
        $formats_result = $formats_query->rows;
        $formats = array();
        foreach ($formats_result as $format_result) {
            $formats[$format_result['id']] = $format_result['price'];
        }
        
        
        $papers_query = $this->db->query("SELECT id, percent FROM " . DB_PREFIX . "album_photo_paper");
        $papers_result = $papers_query->rows;
        $papers = array();
        foreach ($papers_result as $paper_result) {
            $papers[$paper_result['id']] = $paper_result['percent'];
        }
        
        
        foreach ($this->session->data['cart_album'] as $key => $value) {
         
          $key_arr = explode(':', $key);
          $album = $key_arr[0];
          $photos = explode(',', $key_arr[1]);
          $quantity = $key_arr[2];
          
          $preferences = array();
          $value_arr = explode(':', $value);
          foreach ($value_arr as $val) {
              $val_arr = explode('|', $val);
              $photo_id = $val_arr[0];
              $prefs_arr = explode(',', $val_arr[1]);
              $preferences[$photo_id] = array(
                 'album_photo_format_id'        => $prefs_arr[2],
                 'album_photo_paper_id'         => $prefs_arr[3],
                 'album_photo_printmode_id'     => $prefs_arr[4],
                 'color_correction'             => $prefs_arr[0],
                 'cut_photo'                    => $prefs_arr[1],
                 'white_border'                 => $prefs_arr[6],
                 'red_eye'                      => $prefs_arr[5]
              );
          }
          
          $price = 0;
          $photos_name_map = array();
         
          foreach($photos as $photo) {
                     
                     $album_query = $this->db->query("SELECT a.name as album_name, p.* FROM " . DB_PREFIX . "album_photo p LEFT JOIN album as a ON a.album_id = p.album_id WHERE p.album_photo_id=".$photo);
                     
                     $config['album_name'] = $album_query->row['album_name'];
                     $photos_name_map[$photo] = $album_query->row['photo_name'];
                     
                     $photo_price   = $formats[$preferences[$photo]['album_photo_format_id']];
                     $photo_percent  = $papers[$preferences[$photo]['album_photo_paper_id']];
                     
                     $price += round($photo_price + $photo_price * $photo_percent / 100, 2);

          }
         
          $this->customer->isLogged();
          $this->data_album[$key] = array(
                  'key'             => $key,
                  'photos'          => $photos,
                  'quantity'        => $quantity,
                  'album_name'      => $config['album_name'],
                  'album_id'        => $album,
                  'price'           => $price,
                  'photos_name_map' => $photos_name_map,
                  'preferences_map' => $preferences,
                  'preferences_str' => $value
            );
          
        }
      }
      
      return  $this->data_album;
    }

    public function getPhotosOrder() {
      
      $photos_res = array();
      $photos_name_map = array();
      $orders = $this->getAlbums();
      foreach ($orders as $order) {
        
        foreach ($order['photos'] as $photo) {
            $photos_res[]  = $photo;
        }
        foreach ($order['photos_name_map'] as $photo => $photo_name) {
            $photos_name_map[$photo]  =  $photo_name;
        }
      }
      
      $result = array();
      
      foreach ($photos_res as $photo) {
         $result[$photo] = $photos_name_map[$photo];
      }
      
      return $result;
      
    }
    
    
    
      
  	public function getProducts() {
		if (!$this->data) {
			foreach ($this->session->data['cart'] as $key => $quantity) {
				$product = explode(':', $key);
				$product_id = $product[0];
				$stock = true;
	
				// Options
				if (isset($product[1])) {
					$options = unserialize(base64_decode($product[1]));
				} else {
					$options = array();
				} 
				
				$product_query = $this->db->query("SELECT * FROM " . DB_PREFIX . "product p LEFT JOIN " . DB_PREFIX . "product_description pd ON (p.product_id = pd.product_id) WHERE p.product_id = '" . (int)$product_id . "' AND pd.language_id = '" . (int)$this->config->get('config_language_id') . "' AND p.date_available <= NOW() AND p.status = '1'");
				
				if ($product_query->num_rows) {
					$option_price = 0;
					$option_points = 0;
					$option_weight = 0;
	
					$option_data = array();
	
					foreach ($options as $product_option_id => $option_value) {
						$option_query = $this->db->query("SELECT po.product_option_id, po.option_id, od.name, o.type FROM " . DB_PREFIX . "product_option po LEFT JOIN `" . DB_PREFIX . "option` o ON (po.option_id = o.option_id) LEFT JOIN " . DB_PREFIX . "option_description od ON (o.option_id = od.option_id) WHERE po.product_option_id = '" . (int)$product_option_id . "' AND po.product_id = '" . (int)$product_id . "' AND od.language_id = '" . (int)$this->config->get('config_language_id') . "'");
						
						if ($option_query->num_rows) {
							if ($option_query->row['type'] == 'select' || $option_query->row['type'] == 'radio' || $option_query->row['type'] == 'image') {
								$option_value_query = $this->db->query("SELECT pov.option_value_id, ovd.name, pov.quantity, pov.subtract, pov.price, pov.price_prefix, pov.points, pov.points_prefix, pov.weight, pov.weight_prefix FROM " . DB_PREFIX . "product_option_value pov LEFT JOIN " . DB_PREFIX . "option_value ov ON (pov.option_value_id = ov.option_value_id) LEFT JOIN " . DB_PREFIX . "option_value_description ovd ON (ov.option_value_id = ovd.option_value_id) WHERE pov.product_option_value_id = '" . (int)$option_value . "' AND pov.product_option_id = '" . (int)$product_option_id . "' AND ovd.language_id = '" . (int)$this->config->get('config_language_id') . "'");
								
								if ($option_value_query->num_rows) {
									if ($option_value_query->row['price_prefix'] == '+') {
										$option_price += $option_value_query->row['price'];
									} elseif ($option_value_query->row['price_prefix'] == '-') {
										$option_price -= $option_value_query->row['price'];
									}
	
									if ($option_value_query->row['points_prefix'] == '+') {
										$option_points += $option_value_query->row['points'];
									} elseif ($option_value_query->row['points_prefix'] == '-') {
										$option_points -= $option_value_query->row['points'];
									}
																
									if ($option_value_query->row['weight_prefix'] == '+') {
										$option_weight += $option_value_query->row['weight'];
									} elseif ($option_value_query->row['weight_prefix'] == '-') {
										$option_weight -= $option_value_query->row['weight'];
									}
									
									if ($option_value_query->row['subtract'] && (!$option_value_query->row['quantity'] || ($option_value_query->row['quantity'] < $quantity))) {
										$stock = false;
									}
									
									$option_data[] = array(
										'product_option_id'       => $product_option_id,
										'product_option_value_id' => $option_value,
										'option_id'               => $option_query->row['option_id'],
										'option_value_id'         => $option_value_query->row['option_value_id'],
										'name'                    => $option_query->row['name'],
										'option_value'            => $option_value_query->row['name'],
										'type'                    => $option_query->row['type'],
										'quantity'                => $option_value_query->row['quantity'],
										'subtract'                => $option_value_query->row['subtract'],
										'price'                   => $option_value_query->row['price'],
										'price_prefix'            => $option_value_query->row['price_prefix'],
										'points'                  => $option_value_query->row['points'],
										'points_prefix'           => $option_value_query->row['points_prefix'],									
										'weight'                  => $option_value_query->row['weight'],
										'weight_prefix'           => $option_value_query->row['weight_prefix']
									);								
								}
							} elseif ($option_query->row['type'] == 'checkbox' && is_array($option_value)) {
								foreach ($option_value as $product_option_value_id) {
									$option_value_query = $this->db->query("SELECT pov.option_value_id, ovd.name, pov.quantity, pov.subtract, pov.price, pov.price_prefix, pov.points, pov.points_prefix, pov.weight, pov.weight_prefix FROM " . DB_PREFIX . "product_option_value pov LEFT JOIN " . DB_PREFIX . "option_value ov ON (pov.option_value_id = ov.option_value_id) LEFT JOIN " . DB_PREFIX . "option_value_description ovd ON (ov.option_value_id = ovd.option_value_id) WHERE pov.product_option_value_id = '" . (int)$product_option_value_id . "' AND pov.product_option_id = '" . (int)$product_option_id . "' AND ovd.language_id = '" . (int)$this->config->get('config_language_id') . "'");
									
									if ($option_value_query->num_rows) {
										if ($option_value_query->row['price_prefix'] == '+') {
											$option_price += $option_value_query->row['price'];
										} elseif ($option_value_query->row['price_prefix'] == '-') {
											$option_price -= $option_value_query->row['price'];
										}
	
										if ($option_value_query->row['points_prefix'] == '+') {
											$option_points += $option_value_query->row['points'];
										} elseif ($option_value_query->row['points_prefix'] == '-') {
											$option_points -= $option_value_query->row['points'];
										}
																	
										if ($option_value_query->row['weight_prefix'] == '+') {
											$option_weight += $option_value_query->row['weight'];
										} elseif ($option_value_query->row['weight_prefix'] == '-') {
											$option_weight -= $option_value_query->row['weight'];
										}
										
										if ($option_value_query->row['subtract'] && (!$option_value_query->row['quantity'] || ($option_value_query->row['quantity'] < $quantity))) {
											$stock = false;
										}
										
										$option_data[] = array(
											'product_option_id'       => $product_option_id,
											'product_option_value_id' => $product_option_value_id,
											'option_id'               => $option_query->row['option_id'],
											'option_value_id'         => $option_value_query->row['option_value_id'],
											'name'                    => $option_query->row['name'],
											'option_value'            => $option_value_query->row['name'],
											'type'                    => $option_query->row['type'],
											'quantity'                => $option_value_query->row['quantity'],
											'subtract'                => $option_value_query->row['subtract'],
											'price'                   => $option_value_query->row['price'],
											'price_prefix'            => $option_value_query->row['price_prefix'],
											'points'                  => $option_value_query->row['points'],
											'points_prefix'           => $option_value_query->row['points_prefix'],
											'weight'                  => $option_value_query->row['weight'],
											'weight_prefix'           => $option_value_query->row['weight_prefix']
										);								
									}
								}						
							} elseif ($option_query->row['type'] == 'text' || $option_query->row['type'] == 'textarea' || $option_query->row['type'] == 'file' || $option_query->row['type'] == 'date' || $option_query->row['type'] == 'datetime' || $option_query->row['type'] == 'time') {
								$option_data[] = array(
									'product_option_id'       => $product_option_id,
									'product_option_value_id' => '',
									'option_id'               => $option_query->row['option_id'],
									'option_value_id'         => '',
									'name'                    => $option_query->row['name'],
									'option_value'            => $option_value,
									'type'                    => $option_query->row['type'],
									'quantity'                => '',
									'subtract'                => '',
									'price'                   => '',
									'price_prefix'            => '',
									'points'                  => '',
									'points_prefix'           => '',								
									'weight'                  => '',
									'weight_prefix'           => ''
								);						
							}
						}
					} 
				
					if ($this->customer->isLogged()) {
						$customer_group_id = $this->customer->getCustomerGroupId();
					} else {
						$customer_group_id = $this->config->get('config_customer_group_id');
					}
					
					$price = $product_query->row['price'];
					
					// Product Discounts
					$discount_quantity = 0;
					
					foreach ($this->session->data['cart'] as $key_2 => $quantity_2) {
						$product_2 = explode(':', $key_2);
						
						if ($product_2[0] == $product_id) {
							$discount_quantity += $quantity_2;
						}
					}
					
					$product_discount_query = $this->db->query("SELECT price FROM " . DB_PREFIX . "product_discount WHERE product_id = '" . (int)$product_id . "' AND customer_group_id = '" . (int)$customer_group_id . "' AND quantity <= '" . (int)$discount_quantity . "' AND ((date_start = '0000-00-00' OR date_start < NOW()) AND (date_end = '0000-00-00' OR date_end > NOW())) ORDER BY quantity DESC, priority ASC, price ASC LIMIT 1");
					
					if ($product_discount_query->num_rows) {
						$price = $product_discount_query->row['price'];
					}
					
					// Product Specials
					$product_special_query = $this->db->query("SELECT price FROM " . DB_PREFIX . "product_special WHERE product_id = '" . (int)$product_id . "' AND customer_group_id = '" . (int)$customer_group_id . "' AND ((date_start = '0000-00-00' OR date_start < NOW()) AND (date_end = '0000-00-00' OR date_end > NOW())) ORDER BY priority ASC, price ASC LIMIT 1");
				
					if ($product_special_query->num_rows) {
						$price = $product_special_query->row['price'];
					}						
			
					// Reward Points
					$product_reward_query = $this->db->query("SELECT points FROM " . DB_PREFIX . "product_reward WHERE product_id = '" . (int)$product_id . "' AND customer_group_id = '" . (int)$customer_group_id . "'");
					
					if ($product_reward_query->num_rows) {	
						$reward = $product_reward_query->row['points'];
					} else {
						$reward = 0;
					}
					
					// Downloads		
					$download_data = array();     		
					
					$download_query = $this->db->query("SELECT * FROM " . DB_PREFIX . "product_to_download p2d LEFT JOIN " . DB_PREFIX . "download d ON (p2d.download_id = d.download_id) LEFT JOIN " . DB_PREFIX . "download_description dd ON (d.download_id = dd.download_id) WHERE p2d.product_id = '" . (int)$product_id . "' AND dd.language_id = '" . (int)$this->config->get('config_language_id') . "'");
				
					foreach ($download_query->rows as $download) {
						$download_data[] = array(
							'download_id' => $download['download_id'],
							'name'        => $download['name'],
							'filename'    => $download['filename'],
							'mask'        => $download['mask'],
							'remaining'   => $download['remaining']
						);
					}
					
					// Stock
					if (!$product_query->row['quantity'] || ($product_query->row['quantity'] < $quantity)) {
						$stock = false;
					}
					
					$this->data[$key] = array(
						'key'             => $key,
						'product_id'      => $product_query->row['product_id'],
						'name'            => $product_query->row['name'],
						'model'           => $product_query->row['model'],
						'shipping'        => $product_query->row['shipping'],
						'image'           => $product_query->row['image'],
						'option'          => $option_data,
						'download'        => $download_data,
						'quantity'        => $quantity,
						'minimum'         => $product_query->row['minimum'],
						'subtract'        => $product_query->row['subtract'],
						'stock'           => $stock,
						'price'           => ($price + $option_price),
						'total'           => ($price + $option_price) * $quantity,
						'reward'          => $reward * $quantity,
						'points'          => ($product_query->row['points'] ? ($product_query->row['points'] + $option_points) * $quantity : 0),
						'tax_class_id'    => $product_query->row['tax_class_id'],
						'weight'          => ($product_query->row['weight'] + $option_weight) * $quantity,
						'weight_class_id' => $product_query->row['weight_class_id'],
						'length'          => $product_query->row['length'],
						'width'           => $product_query->row['width'],
						'height'          => $product_query->row['height'],
						'length_class_id' => $product_query->row['length_class_id']					
					);
				} else {
					$this->remove($key);
				}
			}
		}
		
		return $this->data;
  	}
		  
  	public function add($product_id, $qty = 1, $option = array()) {
    	if (!$option) {
      		$key = (int)$product_id;
    	} else {
      		$key = (int)$product_id . ':' . base64_encode(serialize($option));
    	}
    	
		if ((int)$qty && ((int)$qty > 0)) {
    		if (!isset($this->session->data['cart'][$key])) {
      			$this->session->data['cart'][$key] = (int)$qty;
    		} else {
      			$this->session->data['cart'][$key] += (int)$qty;
    		}
		}
		
		$this->data = array();
  	}
    
    public function addAlbum($config, $photos,  $qty = 1, $force) {
      
      $key = $config['album_id']. ':' . implode(",", $photos) . ':' . $config['count'];
      
      $value = '';
      
      foreach ($photos as $photo) {
        $value .= $photo. '|';
        if($force) {
         $photo_query = $this->db->query("SELECT * FROM album_photo WHERE album_photo_id =".(int)$photo);
         $result = $photo_query->row;
         $result['color_correction'] = ($result['color_correction'] == 0) ? $config['color_correction'] : $result['color_correction'];
         $result['cut_photo'] = ($result['cut_photo'] == 0) ? $config['cut_photo'] : $result['cut_photo'];
         $result['album_photo_format_id'] = ($result['album_photo_format_id'] == 0) ? $config['format'] : $result['album_photo_format_id'];
         $result['album_photo_paper_id'] = ($result['album_photo_paper_id'] == 0) ? $config['paper'] : $result['album_photo_paper_id'];
         $result['album_photo_printmode_id'] = ($result['album_photo_printmode_id'] == 0) ? $config['print_mode'] : $result['album_photo_printmode_id'];
         $result['red_eye'] = ($result['red_eye'] == 0) ? $config['red_eye'] : $result['red_eye'];
         $result['white_border'] = ($result['white_border'] == 0) ? $config['white_border'] : $result['white_border'];
         
          $value .= $result['color_correction'].','.$result['cut_photo'].','. $result['album_photo_format_id'].','. $result['album_photo_paper_id'].','. $result['album_photo_printmode_id'].','. $result['red_eye'].','. $result['white_border'].':';
        } else {
          $value .= $config['color_correction'].','.$config['cut_photo'].','. $config['format'].','. $config['paper'].','. $config['print_mode'].','. $config['red_eye'].','. $config['white_border'].':';
        }
      }
      
      $value = substr($value, 0, strlen($value) - 1);
      
      $this->session->data['cart_album'][$key] = $value;
      $this->data_album = array();
    }

    public function updatePhotoPreference($key, $photo_id, $data) {
      if (isset($this->session->data['cart_album'][$key])) {
        $albums = $this->getAlbums();
        $currOrder = $albums[$key];
        $value = '';  
        foreach ($currOrder['photos'] as $photo) {
          $value .= $photo. '|';
          if($photo_id == $photo) {
            $value .= $data['color_correction'].','.$data['cut_photo'].','. $data['album_photo_format_id'].','. $data['album_photo_paper_id'].','. $data['album_photo_printmode_id'].','
            .$data['red_eye'].','. $data['white_border'].':';
          } else {
            $value .= $currOrder['preferences_map'][$photo]['color_correction'].','.$currOrder['preferences_map'][$photo]['cut_photo'].','. $currOrder['preferences_map'][$photo]['album_photo_format_id'].','
            . $currOrder['preferences_map'][$photo]['album_photo_paper_id'].','. $currOrder['preferences_map'][$photo]['album_photo_printmode_id'].','. $currOrder['preferences_map'][$photo]['red_eye'].','
            . $currOrder['preferences_map'][$photo]['white_border'].':';
          }
          
         }
        $value = substr($value, 0, strlen($value) - 1);
        $this->session->data['cart_album'][$key] = $value;
      }
      $this->data_album = array();
    }

    public function removePhotoInAlbum($key, $photo_id) {
      if (isset($this->session->data['cart_album'][$key])) {
        
        $albums = $this->getAlbums();
        $currOrder = $albums[$key];
        $config['album_id'] = $currOrder['album_id'];
        $config['count'] = $currOrder['quantity'];
        $photos = array();
        foreach ($currOrder['photos'] as $photo) {
          if($photo_id != $photo) {
            $photos[] = $photo;
          }
        }
        
        if(!empty($photos)) {
          
          $newKey = $config['album_id']. ':' . implode(",", $photos) . ':' . $config['count'];
          $value = '';  
          
          foreach ($photos as $photo) {
            $value .= $photo. '|';
              $value .= $currOrder['preferences_map'][$photo]['color_correction'].','.$currOrder['preferences_map'][$photo]['cut_photo'].','. $currOrder['preferences_map'][$photo]['album_photo_format_id'].','
              . $currOrder['preferences_map'][$photo]['album_photo_paper_id'].','. $currOrder['preferences_map'][$photo]['album_photo_printmode_id'].','. $currOrder['preferences_map'][$photo]['red_eye'].','
              . $currOrder['preferences_map'][$photo]['white_border'].':';
           }
          
           $value = substr($value, 0, strlen($value) - 1);
           $this->session->data['cart_album'][$newKey] = $value;
           $this->data_album = array();
          }

          $this->removeAlbum($key);
        
          return $newKey;

        } else {
          return '';
        }
        
        
      
   }

  	public function update($key, $qty) {
    	if ((int)$qty && ((int)$qty > 0)) {
      		$this->session->data['cart'][$key] = (int)$qty;
    	} else {
	  		$this->remove($key);
		}
		
		$this->data = array();
  	}
    
    public function updateAlbum($key, $qty) {
      if ((int)$qty && ((int)$qty > 0)) {
          $this->session->data['cart_album'][$key] = (int)$qty;
      } else {
        $this->remove($key);
    }
    
    $this->data_album = array();
    }

  	public function remove($key) {
  		if (isset($this->session->data['cart'][$key])) {
       		unset($this->session->data['cart'][$key]);
    	}
  		
  		$this->data = array();
	 }
    
   public function removeAlbum($key) {
      if (isset($this->session->data['cart_album'][$key])) {
          unset($this->session->data['cart_album'][$key]);
      }
      
      $this->data_album = array();
   }
   
   
	
  	public function clear() {
  		$this->session->data['cart'] = array();
      $this->session->data['cart_album'] = array();
  		$this->data = array();
      $this->data_album = array();
  	}
	
  	public function getWeight() {
		$weight = 0;
	
    	foreach ($this->getProducts() as $product) {
			if ($product['shipping']) {
      			$weight += $this->weight->convert($product['weight'], $product['weight_class_id'], $this->config->get('config_weight_class_id'));
			}
		}
	
		return $weight;
	}
	
  	public function getSubTotal() {
		$total = 0;
		
		foreach ($this->getProducts() as $product) {
			$total += $product['total'];
		}
    
		return $total;
  	}
    
    public function getSubTotalAlbum() {
      $total = 0;
      foreach ($this->getAlbums() as $album) {
        $total += $album['price'];
      }
		return $total;
    }
	
	public function getTaxes() {
		$tax_data = array();
		
		foreach ($this->getProducts() as $product) {
			if ($product['tax_class_id']) {
				$tax_rates = $this->tax->getRates($product['price'], $product['tax_class_id']);
				
				foreach ($tax_rates as $tax_rate) {
					if (!isset($tax_data[$tax_rate['tax_rate_id']])) {
						$tax_data[$tax_rate['tax_rate_id']] = ($tax_rate['amount'] * $product['quantity']);
					} else {
						$tax_data[$tax_rate['tax_rate_id']] += ($tax_rate['amount'] * $product['quantity']);
					}
				}
			}
		}
		
		return $tax_data;
  	}

  	public function getTotal() {
		$total = 0;
		
		foreach ($this->getProducts() as $product) {
			$total += $this->tax->calculate($product['price'], $product['tax_class_id'], $this->config->get('config_tax')) * $product['quantity'];
		}

		return $total;
  	}
	  	
  	public function countProducts() {
  		$product_total = 0;
  			
  		$products = $this->getProducts();
  			
  		foreach ($products as $product) {
  			$product_total += $product['quantity'];
  		}		
  					
  		return $product_total;
	 }
    
    public function countAlbums() {
      $album_total = 0;
        
      $albums = $this->getAlbums();
        
      foreach ($albums as $album) {
        $album_total++;
      }   
            
      return $album_total;
   }
	  
  	public function hasProducts() {
    	return count($this->session->data['cart']);
  	}
    
    public function hasAlbums() {
      return count($this->session->data['cart_album']);
    }
  
  	public function hasStock() {
		$stock = true;
		
		foreach ($this->getProducts() as $product) {
			if (!$product['stock']) {
	    		$stock = false;
			}
		}
		
    	return $stock;
  	}
  
  	public function hasShipping() {
		$shipping = false;
		
		foreach ($this->getProducts() as $product) {
	  		if ($product['shipping']) {
	    		$shipping = true;
				
				break;
	  		}		
		}
		
		
		return $shipping;
	}
	
  	public function hasDownload() {
		$download = false;
		
		foreach ($this->getProducts() as $product) {
	  		if ($product['download']) {
	    		$download = true;
				
				break;
	  		}		
		}
		
		return $download;
	}	
}
?>