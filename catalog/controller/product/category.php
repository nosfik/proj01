<?php 
class ControllerProductCategory extends Controller {  
	public function index() { 
		$this->language->load('product/category');
		$this->load->model('catalog/category');
		$this->load->model('catalog/product');
    $this->load->model('catalog/material');
    $this->load->model('catalog/size');
    $this->load->model('catalog/price');
    $this->load->model('catalog/manufacturer');
		$this->load->model('tool/image'); 
		
		if (isset($this->request->get['sort'])) {
			$sort = $this->request->get['sort'];
		} else {
			$sort = 'p.sort_order';
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
							
		if (isset($this->request->get['limit'])) {
			$limit = $this->request->get['limit'];
		} else {
			$limit = $this->config->get('config_catalog_limit');
		}
    
    if (isset($this->request->get['price'])) {
       $this->data['price_selected'] = $this->request->get['price'];
     } else {
       $this->data['price_selected'] = 0;
     }
     if (isset($this->request->get['material'])) {
       $this->data['material_selected'] = $this->request->get['material'];
     } else {
       $this->data['material_selected'] = 0;
     }
     if (isset($this->request->get['manufacturer'])) {
       $this->data['manufacturer_selected'] = $this->request->get['manufacturer'];
     } else {
       $this->data['manufacturer_selected'] = 0;
     }
     if (isset($this->request->get['size'])) {
       $this->data['size_selected'] = $this->request->get['size'];
     } else {
       $this->data['size_selected'] = 0;
     }
				
		$this->data['breadcrumbs'] = array();

   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home'),
       		'separator' => false
   		);	
		
		
		
		
		
		
		
		
		
		if (isset($this->request->get['all'])) {
			$category_id = -1;
			$category_info = 0;
		} elseif (isset($this->request->get['path'])) {
			$path = '';
		
			$parts = explode('_', (string)$this->request->get['path']);
		
			foreach ($parts as $path_id) {
				if (!$path) {
					$path = (int)$path_id;
				} else {
					$path .= '_' . (int)$path_id;
				}
									
				$category_info = $this->model_catalog_category->getCategory($path_id);
				
				if ($category_info) {
	       			$this->data['breadcrumbs'][] = array(
   	    				'text'      => $category_info['name'],
						'href'      => $this->url->link('product/category', 'path=' . $path),
        				'separator' => $this->language->get('text_separator')
        			);
				}
			}		
		
			$category_id = (int)array_pop($parts);
			$category_info = $this->model_catalog_category->getCategory($category_id);
		} else {
			$category_id = 0;
			$category_info = $this->model_catalog_category->getCategory($category_id);
		}
		
		$allProduct = ($category_id == -1);
			
	 	if ($allProduct || $category_info) {
			if ($category_info['seo_title']) {
		  		$this->document->setTitle($category_info['seo_title']);
			} else {
		  		$this->document->setTitle($category_info['name']);
			}

			$this->document->setDescription($category_info['meta_description']);
			$this->document->setKeywords($category_info['meta_keyword']);
			
			$this->data['seo_h1'] = $category_info['seo_h1'];

			$this->data['heading_title'] = $category_info['name'];
			
			$this->data['text_refine'] = $this->language->get('text_refine');
			$this->data['text_empty'] = $this->language->get('text_empty');			
			$this->data['text_quantity'] = $this->language->get('text_quantity');
			$this->data['text_manufacturer'] = $this->language->get('text_manufacturer');
			$this->data['text_model'] = $this->language->get('text_model');
			$this->data['text_price'] = $this->language->get('text_price');
			$this->data['text_tax'] = $this->language->get('text_tax');
			$this->data['text_points'] = $this->language->get('text_points');
			$this->data['text_compare'] = sprintf($this->language->get('text_compare'), (isset($this->session->data['compare']) ? count($this->session->data['compare']) : 0));
			$this->data['text_display'] = $this->language->get('text_display');
			$this->data['text_list'] = $this->language->get('text_list');
			$this->data['text_grid'] = $this->language->get('text_grid');
			$this->data['text_sort'] = $this->language->get('text_sort');
			$this->data['text_limit'] = $this->language->get('text_limit');
					
			$this->data['button_cart'] = $this->language->get('button_cart');
			$this->data['button_wishlist'] = $this->language->get('button_wishlist');
			$this->data['button_compare'] = $this->language->get('button_compare');
			$this->data['button_continue'] = $this->language->get('button_continue');
					
			if ($category_info['image']) {
				$this->data['thumb'] = $this->model_tool_image->resize($category_info['image'], $this->config->get('config_image_category_width'), $this->config->get('config_image_category_height'));
			} else {
				$this->data['thumb'] = '';
			}
									
			$this->data['description'] = html_entity_decode($category_info['description'], ENT_QUOTES, 'UTF-8');
			$this->data['compare'] = $this->url->link('product/compare');
			
			$url = '';
			
      if (isset($this->request->get['material'])) {
        $url .= '&material=' . $this->request->get['material'];
      }
      if (isset($this->request->get['size'])) {
        $url .= '&size=' . $this->request->get['size'];
      }
      if (isset($this->request->get['manufacturer'])) {
        $url .= '&manufacturer=' . $this->request->get['manufacturer'];
      }
      if (isset($this->request->get['price'])) {
        $url .= '&price=' . $this->request->get['price'];
      }
			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}	
			if (isset($this->request->get['limit'])) {
				$url .= '&limit=' . $this->request->get['limit'];
			}

			$this->data['categories'] = array();
			if(!$allProduct) {
				$results = $this->model_catalog_category->getCategories($category_id);
				foreach ($results as $result) {
					$data = array(
						'filter_category_id'  => $result['category_id'],
						'filter_sub_category' => true
					);
					
					$product_total = $this->model_catalog_product->getTotalProducts($data);				
					
					$this->data['categories'][] = array(
						'name'  => $result['name'] . ($this->config->get('config_product_count') ? ' (' . $product_total . ')' : ''),
						'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '_' . $result['category_id'] . $url)
					);
				}
				
				$data = array(
					'filter_category_id' => $category_id, 
					'material'           => $this->data['material_selected'],
          'size'               => $this->data['size_selected'],
          'price'              => $this->data['price_selected'],
          'manufacturer'       => $this->data['manufacturer_selected'],
					'start'              => ($page - 1) * $limit,
					'limit'              => $limit
				);
					
				$product_total = $this->model_catalog_product->getTotalProducts($data); 
				
				$results = $this->model_catalog_product->getProducts($data);
					
			} else {
				$data = array(
					'material' 		=> $this->data['material_selected'],
					'size'		 		=> $this->data['size_selected'],
					'price'		 		=> $this->data['price_selected'],
					'manufacturer'=> $this->data['manufacturer_selected'],
					'start'       => ($page - 1) * $limit,
					'limit'       => $limit
				);
				
				$product_total = $this->model_catalog_product->getTotalAllProducts($data);	
				$results = $this->model_catalog_product->getAllProducts($data);
			}
								
			
			
			
			
			$this->data['products'] = array();
			
			
			
			foreach ($results as $result) {
				if ($result['image']) {
					$image = $this->model_tool_image->resize($result['image'], $this->config->get('config_image_product_width'), $this->config->get('config_image_product_height'));
				} else {
					$image = false;
				}
				
				if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
					$price = $this->currency->format($this->tax->calculate($result['price'], $result['tax_class_id'], $this->config->get('config_tax')));
				} else {
					$price = false;
				}
				
				if ((float)$result['special']) {
					$special = $this->currency->format($this->tax->calculate($result['special'], $result['tax_class_id'], $this->config->get('config_tax')));
				} else {
					$special = false;
				}	
				
				if ($this->config->get('config_tax')) {
					$tax = $this->currency->format((float)$result['special'] ? $result['special'] : $result['price']);
				} else {
					$tax = false;
				}				
				
				if ($this->config->get('config_review_status')) {
					$rating = (int)$result['rating'];
				} else {
					$rating = false;
				}
        
        
        if($allProduct) {
          $href = $this->url->link('product/product', 'product_id=' . $result['product_id']);
        } else {
          $href = $this->url->link('product/product', 'path=' . $this->request->get['path'] . '&product_id=' . $result['product_id']);
        }
								
				$this->data['products'][] = array(
					'product_id'  => $result['product_id'],
					'thumb'       => $image,
					'name'        => $result['name'],
					'description' => utf8_substr(strip_tags(html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8')), 0, 100) . '..',
					'price'       => $price,
					'special'     => $special,
					'tax'         => $tax,
					'rating'      => $result['rating'],
					'reviews'     => sprintf($this->language->get('text_reviews'), (int)$result['reviews']),
					'href'        => $href
				);
			}
			
      
      
      
      
       
      
      
      
      
			$url = '';
	
			
      if (isset($this->request->get['material'])) {
        $url .= '&material=' . $this->request->get['material'];
      }
      if (isset($this->request->get['size'])) {
        $url .= '&size=' . $this->request->get['size'];
      }
      if (isset($this->request->get['manufacturer'])) {
        $url .= '&manufacturer=' . $this->request->get['manufacturer'];
      }
      if (isset($this->request->get['limit'])) {
        $url .= '&limit=' . $this->request->get['limit'];
      }
      if (isset($this->request->get['order'])) {
        $url .= '&order=' . $this->request->get['order'];
      }
      
      
      
      
		 if($allProduct) {
        $href = 'all=1';
     } else {
        $href = 'path=' . $this->request->get['path'];
     }
			
      
      /*
       * PRICES prices TODO
       */
       $this->data['prices'] = array();
       $prices = $this->model_catalog_price->getPrices();
       $this->data['price_def'] = $this->url->link('product/category', $href . $url . '&price=0');
       foreach ($prices as $price) {
         $this->data['prices'][] = array(
          'id'    => $price['price_id'],
          'from'  => $price['from'],
          'to'    => $price['to'],
          'href'  => $this->url->link('product/category', $href . $url . '&price='.$price['price_id'])
        );
       }
      
      
      $url = '';
  
      
      if (isset($this->request->get['material'])) {
        $url .= '&material=' . $this->request->get['material'];
      }
      if (isset($this->request->get['price'])) {
        $url .= '&price=' . $this->request->get['price'];
      }
      if (isset($this->request->get['manufacturer'])) {
        $url .= '&manufacturer=' . $this->request->get['manufacturer'];
      }
      if (isset($this->request->get['limit'])) {
        $url .= '&limit=' . $this->request->get['limit'];
      }
        
      if (isset($this->request->get['order'])) {
        $url .= '&order=' . $this->request->get['order'];
      }

       $this->data['sizes'] = array();
       $sizes = $this->model_catalog_size->getSizes();
       $this->data['size_def'] = $this->url->link('product/category', $href. $url . '&size=0');
       foreach ($sizes as $size) {
         $this->data['sizes'][] = array(
          'id'     => $size['size_id'],
          'width'  => $size['width'],
          'height' => $size['height'],
          'href'   => $this->url->link('product/category', $href . $url . '&size='.$size['size_id'])
        );
       }
      
      
      $url = '';
  
      if (isset($this->request->get['size'])) {
        $url .= '&size=' . $this->request->get['size'];
      }
      if (isset($this->request->get['price'])) {
        $url .= '&price=' . $this->request->get['price'];
      }
      if (isset($this->request->get['manufacturer'])) {
        $url .= '&manufacturer=' . $this->request->get['manufacturer'];
      }
      if (isset($this->request->get['limit'])) {
        $url .= '&limit=' . $this->request->get['limit'];
      }
        
      if (isset($this->request->get['order'])) {
        $url .= '&order=' . $this->request->get['order'];
      }

       $this->data['materials'] = array();
       $materials = $this->model_catalog_material->getMaterials();
       $this->data['material_def'] = $this->url->link('product/category', $href . $url . '&material=0');
       foreach ($materials as $material) {
         $this->data['materials'][] = array(
          'id'     => $material['material_id'],
          'name'  => $material['name'],
          'href'   => $this->url->link('product/category', $href . $url . '&material='.$material['material_id'])
        );
       }
       
      
      $url = '';
  
      if (isset($this->request->get['size'])) {
        $url .= '&size=' . $this->request->get['size'];
      }
      if (isset($this->request->get['price'])) {
        $url .= '&price=' . $this->request->get['price'];
      }
      if (isset($this->request->get['material'])) {
        $url .= '&material=' . $this->request->get['material'];
      }
      if (isset($this->request->get['limit'])) {
        $url .= '&limit=' . $this->request->get['limit'];
      }
      if (isset($this->request->get['order'])) {
        $url .= '&order=' . $this->request->get['order'];
      }

       $this->data['manufacturers'] = array();
       $manufacturers = $this->model_catalog_manufacturer->getManufacturers();
       $this->data['manufacturer_def'] = $this->url->link('product/category', $href . $url . '&manufacturer=0');
       foreach ($manufacturers as $manufacturer) {
         $this->data['manufacturers'][] = array(
          'id'     => $manufacturer['manufacturer_id'],
          'name'  => $manufacturer['name'],
          'href'   => $this->url->link('product/category', $href . $url . '&manufacturer='.$manufacturer['manufacturer_id'])
        );
       }
      
      
      
      
      
      
      
      
			$this->data['limits'] = array();

      $limits = array($this->config->get('config_catalog_limit'),25, 50, 75, 100);
      
      for($i = 0; $i < sizeof($limits); $i++) {
        $this->data['limits'][] = array(
          'text'  => $limits[$i],
          'value' => $limits[$i],
          'href'  => $this->url->link('product/category', $href . '&limit='.$limits[$i])
        );
      }
      			
			$url = '';
	


			  if (isset($this->request->get['material'])) {
        $url .= '&material=' . $this->request->get['material'];
      }
      if (isset($this->request->get['size'])) {
        $url .= '&size=' . $this->request->get['size'];
      }
      if (isset($this->request->get['manufacturer'])) {
        $url .= '&manufacturer=' . $this->request->get['manufacturer'];
      }
      if (isset($this->request->get['price'])) {
        $url .= '&price=' . $this->request->get['price'];
      }
      if (isset($this->request->get['order'])) {
        $url .= '&order=' . $this->request->get['order'];
      } 
      if (isset($this->request->get['limit'])) {
        $url .= '&limit=' . $this->request->get['limit'];
      }
					
			$pagination = new Pagination();
			$pagination->total = $product_total;
			$pagination->page = $page;
			$pagination->limit = $limit;
			$pagination->text = $this->language->get('text_pagination');
			if($allProduct) {
				$pagination->url = $this->url->link('product/category', 'all=1&page={page}');
			} else {
				$pagination->url = $this->url->link('product/category', 'path=' . $this->request->get['path'] . $url . '&page={page}');
			}
			
		
			$this->data['pagination'] = $pagination->render();
		
			$this->data['order'] = $order;
			$this->data['limit'] = $limit;
		
			$this->data['continue'] = $this->url->link('common/home');

			if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/product/category.tpl')) {
				$this->template = $this->config->get('config_template') . '/template/product/category.tpl';
			} else {
				$this->template = 'default/template/product/category.tpl';
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
			$url = '';
			
			if (isset($this->request->get['path'])) {
				$url .= '&path=' . $this->request->get['path'];
			}
									
			if (isset($this->request->get['material'])) {
        $url .= '&material=' . $this->request->get['material'];
      }
      if (isset($this->request->get['size'])) {
        $url .= '&size=' . $this->request->get['size'];
      }
      if (isset($this->request->get['manufacturer'])) {
        $url .= '&manufacturer=' . $this->request->get['manufacturer'];
      }
      if (isset($this->request->get['price'])) {
        $url .= '&price=' . $this->request->get['price'];
      }
      if (isset($this->request->get['order'])) {
        $url .= '&order=' . $this->request->get['order'];
      } 
      if (isset($this->request->get['limit'])) {
        $url .= '&limit=' . $this->request->get['limit'];
      }
			if (isset($this->request->get['page'])) {
				$url .= '&page=' . $this->request->get['page'];
			}
						
			$this->data['breadcrumbs'][] = array(
				'text'      => $this->language->get('text_error'),
				'href'      => $this->url->link('product/category', $url),
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