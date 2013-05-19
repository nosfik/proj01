<?php 
class ControllerProductSearch extends Controller { 	
	public function index() { 
    	$this->language->load('product/search');
		
		$this->load->model('catalog/category');
		
		$this->load->model('catalog/product');
		
		$this->load->model('tool/image'); 
		
		$this->document->addScript('catalog/view/javascript/cusel.js');
		$this->document->addScript('catalog/view/javascript/jScrollPane.js');
        $this->document->addScript('catalog/view/javascript/jquery.mousewheel.js');
		$this->document->addStyle('catalog/view/theme/default/stylesheet/cusel.css');
		
		
		
		
		if (isset($this->request->get['filter_area_l'])) {
			$filter_area_l = $this->request->get['filter_area_l'];
		} else {
			$filter_area_l = 0;
		} 
		
		if (isset($this->request->get['filter_area_h'])) {
			$filter_area_h = $this->request->get['filter_area_h'];
		} else {
			$filter_area_h = 0;
		} 
		
		if (isset($this->request->get['filter_bathroom_l'])) {
			$filter_bathroom_l = $this->request->get['filter_bathroom_l'];
		} else {
			$filter_bathroom_l = 0;
		} 
		
		if (isset($this->request->get['filter_bathroom_h'])) {
			$filter_bathroom_h = $this->request->get['filter_bathroom_h'];
		} else {
			$filter_bathroom_h = 0;
		} 
		
		if (isset($this->request->get['filter_bedroom_h'])) {
			$filter_bedroom_h = $this->request->get['filter_bedroom_h'];
		} else {
			$filter_bedroom_h = 0;
		} 
		
		if (isset($this->request->get['filter_bedroom_l'])) {
			$filter_bedroom_l = $this->request->get['filter_bedroom_l'];
		} else {
			$filter_bedroom_l = 0;
		} 
		
		if (isset($this->request->get['filter_price_l'])) {
			$filter_price_l = $this->request->get['filter_price_l'];
		} else {
			$filter_price_l = 0;
		} 
		
		if (isset($this->request->get['filter_price_h'])) {
			$filter_price_h = $this->request->get['filter_price_h'];
		} else {
			$filter_price_h = 0;
		} 
				
		if (isset($this->request->get['filter_category_id'])) {
			$filter_category_id = $this->request->get['filter_category_id'];
		} else {
			$filter_category_id = 0;
		} 
		
		if (isset($this->request->get['filter_number'])) {
			$filter_number = $this->request->get['filter_number'];
			
			if($filter_number == 'Номер объекта или название') {
				$filter_number = 0;
			}
			
		} else {
			$filter_number = 0;
		} 
		
		if (isset($this->request->get['filter_zone_id'])) {
			$filter_zone_id = $this->request->get['filter_zone_id'];
		} else {
			$filter_zone_id = 0;
		} 
		
		if (isset($this->request->get['parent'])) {
			$parent = $this->request->get['parent'];
		} else {
			$parent = 0;
		}
		
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
		
		$this->load->model('menu/filter');
		
		//FILTER BUILDS
		$this->data['b_zones'] = $this->model_menu_filter->getZones(2);
		
		$areas = $this->model_menu_filter->getAreas(2);
		$this->data['b_area_l'] = $areas['l'];
		$this->data['b_area_h'] = $areas['h'];
		
		$prices = $this->model_menu_filter->getPrices(2);
		$this->data['b_price_l'] = $prices['l'];
		$this->data['b_price_h'] = $prices['h'];
		
		// FILTER SALES
		$this->data['zones'] = $this->model_menu_filter->getZones();
		$this->data['categories'] = $this->model_menu_filter->getCategories();
		
		$bedrooms = $this->model_menu_filter->getBedrooms();
		$this->data['bedroom_l'] = $bedrooms['l'];
		$this->data['bedroom_h'] = $bedrooms['h'];
		
		$bathrooms = $this->model_menu_filter->getBathrooms();
		$this->data['bathroom_l'] = $bathrooms['l'];
		$this->data['bathroom_h'] = $bathrooms['h'];
		
		
		$areas = $this->model_menu_filter->getAreas();
		$this->data['area_l'] = $areas['l'];
		$this->data['area_h'] = $areas['h'];
		
		$prices = $this->model_menu_filter->getPrices();
		$this->data['price_l'] = $prices['l'];
		$this->data['price_h'] = $prices['h'];
		
		$this->data['filter_area_l'] = $filter_area_l;
		$this->data['filter_area_h'] = $filter_area_h;
		$this->data['filter_bathroom_l'] = $filter_bathroom_l;
		$this->data['filter_bathroom_h'] = $filter_bathroom_h;
		$this->data['filter_bedroom_h'] = $filter_bedroom_h;
		$this->data['filter_bedroom_l'] = $filter_bedroom_l;
		$this->data['filter_price_l'] = $filter_price_l;
		$this->data['filter_price_h'] = $filter_price_h;
		$this->data['filter_category_id'] = $filter_category_id;
		$this->data['filter_number'] = $filter_number;
		$this->data['filter_zone_id'] = $filter_zone_id;
		$this->data['parent'] = $parent;

		$this->data['breadcrumbs'] = array();

   		$this->data['breadcrumbs'][] = array( 
       		'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home'),
      		'separator' => false
   		);
		
		$url = '';
		
		
		
		if (isset($this->request->get['filter_area_l'])) {
			$url .= '&filter_area_l=' . urlencode(html_entity_decode($this->request->get['filter_area_l'], ENT_QUOTES, 'UTF-8'));
		}
		if (isset($this->request->get['filter_area_h'])) {
			$url .= '&filter_area_h=' . urlencode(html_entity_decode($this->request->get['filter_area_h'], ENT_QUOTES, 'UTF-8'));
		}
		if (isset($this->request->get['filter_bathroom_l'])) {
			$url .= '&filter_bathroom_l=' . urlencode(html_entity_decode($this->request->get['filter_bathroom_l'], ENT_QUOTES, 'UTF-8'));
		}
		if (isset($this->request->get['filter_bathroom_h'])) {
			$url .= '&filter_bathroom_h=' . urlencode(html_entity_decode($this->request->get['filter_bathroom_h'], ENT_QUOTES, 'UTF-8'));
		}
		if (isset($this->request->get['filter_bedroom_h'])) {
			$url .= '&filter_area_l=' . urlencode(html_entity_decode($this->request->get['filter_bedroom_h'], ENT_QUOTES, 'UTF-8'));
		}
		if (isset($this->request->get['filter_bedroom_l'])) {
			$url .= '&filter_bedroom_l=' . urlencode(html_entity_decode($this->request->get['filter_bedroom_l'], ENT_QUOTES, 'UTF-8'));
		}
		if (isset($this->request->get['filter_price_l'])) {
			$url .= '&filter_price_l=' . urlencode(html_entity_decode($this->request->get['filter_price_l'], ENT_QUOTES, 'UTF-8'));
		}
		if (isset($this->request->get['filter_price_h'])) {
			$url .= '&filter_price_h=' . urlencode(html_entity_decode($this->request->get['filter_price_h'], ENT_QUOTES, 'UTF-8'));
		}
		if (isset($this->request->get['filter_category_id'])) {
			$url .= '&filter_category_id=' . $this->request->get['filter_category_id'];
		}
		if (isset($this->request->get['filter_zone_id'])) {
			$url .= '&filter_zone_id=' . $this->request->get['filter_zone_id'];
		}
		if (isset($this->request->get['filter_number'])) {
			$url .= '&filter_number=' . $this->request->get['filter_number'];
		}
		if (isset($this->request->get['parent'])) {
			$url .= '&parent=' . $this->request->get['parent'];
		}
		
		if (isset($this->request->get['sort'])) {
			$url .= '&sort=' . $this->request->get['sort'];
		}	

		if (isset($this->request->get['order'])) {
			$url .= '&order=' . $this->request->get['order'];
		}
				
		if (isset($this->request->get['page'])) {
			$url .= '&page=' . $this->request->get['page'];
		}	
		
		if (isset($this->request->get['limit'])) {
			$url .= '&limit=' . $this->request->get['limit'];
		}
						
   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('heading_title'),
			'href'      => $this->url->link('product/search', $url),
      		'separator' => $this->language->get('text_separator')
   		);
		
		
		
		$this->data['text_empty'] = $this->language->get('text_empty');
    	$this->data['text_critea'] = $this->language->get('text_critea');
    	$this->data['text_search'] = $this->language->get('text_search');
		$this->data['text_keyword'] = $this->language->get('text_keyword');
		$this->data['text_category'] = $this->language->get('text_category');
		$this->data['text_sub_category'] = $this->language->get('text_sub_category');
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
		
		$this->data['entry_search'] = $this->language->get('entry_search');
    	$this->data['entry_description'] = $this->language->get('entry_description');
		  
    	$this->data['button_search'] = $this->language->get('button_search');
		$this->data['button_cart'] = $this->language->get('button_cart');
		$this->data['button_wishlist'] = $this->language->get('button_wishlist');
		$this->data['button_compare'] = $this->language->get('button_compare');

		$this->data['compare'] = $this->url->link('product/compare');
		
		$this->load->model('catalog/category');
		
		$this->data['products'] = array();
		
		if (isset($this->request->get['filter_zone_id']) || isset($this->request->get['filter_category_id']) ||
		isset($this->request->get['filter_number']) ||
		isset($this->request->get['filter_area_l']) || isset($this->request->get['filter_area_h']) ||
		isset($this->request->get['filter_bathroom_l']) || isset($this->request->get['filter_bathroom_h']) ||
		isset($this->request->get['filter_bedroom_h']) || isset($this->request->get['filter_bedroom_l']) ||
		isset($this->request->get['filter_price_l']) || isset($this->request->get['filter_price_h']) ) {
			$data = array(
				'filter_area_l'        	=> $filter_area_l, 
				'filter_area_h'         => $filter_area_h, 
				'filter_bathroom_l'  	=> $filter_bathroom_l,
				'filter_bathroom_h'  	=> $filter_bathroom_h,
				'filter_bedroom_h'  	=> $filter_bedroom_h,
				'filter_bedroom_l'  	=> $filter_bedroom_l,
				'filter_price_l'  		=> $filter_price_l,
				'filter_price_h'  		=> $filter_price_h,
				'filter_category_id'  	=> $filter_category_id, 
				'filter_number' 		=> $filter_number, 
				'filter_zone_id'	 	=> $filter_zone_id, 
				'parent'				=> $parent,
				'sort'                => $sort,
				'order'               => $order,
				'start'               => ($page - 1) * $limit,
				'limit'               => $limit
			);
					
			$product_total = $this->model_catalog_product->getTotalProducts($data);
								
			$results = $this->model_catalog_product->getProducts($data);
					
			$results = $this->model_catalog_product->getProducts($data);
			
			foreach ($results as $result) {
				if ($result['image']) {
					$image = $this->model_tool_image->resize($result['image'], 228, 167, 3);
				} else {
					$image = false;
				}
				
								
				$this->data['products'][] = array(
				
				
					'product_id'  => $result['product_id'],
					'thumb'       => $image,
					'name'        => $result['name'],
					'currency'        => $result['currency'],
					'tag'        => 'image/'.$result['tag'],
					'price'       => $result['price'],
					'city'         	   => $result['city'],
					'number'           => $result['number'],
					'area'        	   => $result['area'],
					'bathroom'         => $result['bathroom'],
					'bedroom'          => $result['bedroom'],
					'href'        => $this->url->link('product/product',  'product_id=' . $result['product_id'])
				);
			}
					
			$url = '';
			
		if (isset($this->request->get['filter_area_l'])) {
			$url .= '&filter_area_l=' . urlencode(html_entity_decode($this->request->get['filter_area_l'], ENT_QUOTES, 'UTF-8'));
		}
		if (isset($this->request->get['filter_area_h'])) {
			$url .= '&filter_area_h=' . urlencode(html_entity_decode($this->request->get['filter_area_h'], ENT_QUOTES, 'UTF-8'));
		}
		if (isset($this->request->get['filter_bathroom_l'])) {
			$url .= '&filter_bathroom_l=' . urlencode(html_entity_decode($this->request->get['filter_bathroom_l'], ENT_QUOTES, 'UTF-8'));
		}
		if (isset($this->request->get['filter_bathroom_h'])) {
			$url .= '&filter_bathroom_h=' . urlencode(html_entity_decode($this->request->get['filter_bathroom_h'], ENT_QUOTES, 'UTF-8'));
		}
		if (isset($this->request->get['filter_bedroom_h'])) {
			$url .= '&filter_area_l=' . urlencode(html_entity_decode($this->request->get['filter_bedroom_h'], ENT_QUOTES, 'UTF-8'));
		}
		if (isset($this->request->get['filter_bedroom_l'])) {
			$url .= '&filter_bedroom_l=' . urlencode(html_entity_decode($this->request->get['filter_bedroom_l'], ENT_QUOTES, 'UTF-8'));
		}
		if (isset($this->request->get['filter_price_l'])) {
			$url .= '&filter_price_l=' . urlencode(html_entity_decode($this->request->get['filter_price_l'], ENT_QUOTES, 'UTF-8'));
		}
		if (isset($this->request->get['filter_price_h'])) {
			$url .= '&filter_price_h=' . urlencode(html_entity_decode($this->request->get['filter_price_h'], ENT_QUOTES, 'UTF-8'));
		}
		if (isset($this->request->get['filter_category_id'])) {
			$url .= '&filter_category_id=' . $this->request->get['filter_category_id'];
		}
		if (isset($this->request->get['filter_zone_id'])) {
			$url .= '&filter_zone_id=' . $this->request->get['filter_zone_id'];
		}
		if (isset($this->request->get['filter_number'])) {
			$url .= '&filter_number=' . $this->request->get['filter_number'];
		}
		if (isset($this->request->get['parent'])) {
			$url .= '&parent=' . $this->request->get['parent'];
		}
					
			if (isset($this->request->get['limit'])) {
				$url .= '&limit=' . $this->request->get['limit'];
			}
						
			$this->data['sorts'] = array();
			
			$this->data['sorts'][] = array(
				'text'  => $this->language->get('text_default'),
				'value' => 'p.sort_order-ASC',
				'href'  => $this->url->link('product/search', 'sort=p.sort_order&order=ASC' . $url)
			);
			
			$this->data['sorts'][] = array(
				'text'  => $this->language->get('text_name_asc'),
				'value' => 'pd.name-ASC',
				'href'  => $this->url->link('product/search', 'sort=pd.name&order=ASC' . $url)
			); 
	
			$this->data['sorts'][] = array(
				'text'  => $this->language->get('text_name_desc'),
				'value' => 'pd.name-DESC',
				'href'  => $this->url->link('product/search', 'sort=pd.name&order=DESC' . $url)
			);
	
			$this->data['sorts'][] = array(
				'text'  => $this->language->get('text_price_asc'),
				'value' => 'p.price-ASC',
				'href'  => $this->url->link('product/search', 'sort=p.price&order=ASC' . $url)
			); 
	
			$this->data['sorts'][] = array(
				'text'  => $this->language->get('text_price_desc'),
				'value' => 'p.price-DESC',
				'href'  => $this->url->link('product/search', 'sort=p.price&order=DESC' . $url)
			); 
			
			if ($this->config->get('config_review_status')) {
				$this->data['sorts'][] = array(
					'text'  => $this->language->get('text_rating_desc'),
					'value' => 'rating-DESC',
					'href'  => $this->url->link('product/search', 'sort=rating&order=DESC' . $url)
				); 
				
				$this->data['sorts'][] = array(
					'text'  => $this->language->get('text_rating_asc'),
					'value' => 'rating-ASC',
					'href'  => $this->url->link('product/search', 'sort=rating&order=ASC' . $url)
				);
			}
			
			$this->data['sorts'][] = array(
				'text'  => $this->language->get('text_model_asc'),
				'value' => 'p.model-ASC',
				'href'  => $this->url->link('product/search', 'sort=p.model&order=ASC' . $url)
			); 
	
			$this->data['sorts'][] = array(
				'text'  => $this->language->get('text_model_desc'),
				'value' => 'p.model-DESC',
				'href'  => $this->url->link('product/search', 'sort=p.model&order=DESC' . $url)
			);
	
			$url = '';
			
		if (isset($this->request->get['filter_area_l'])) {
			$url .= '&filter_area_l=' . urlencode(html_entity_decode($this->request->get['filter_area_l'], ENT_QUOTES, 'UTF-8'));
		}
		if (isset($this->request->get['filter_area_h'])) {
			$url .= '&filter_area_h=' . urlencode(html_entity_decode($this->request->get['filter_area_h'], ENT_QUOTES, 'UTF-8'));
		}
		if (isset($this->request->get['filter_bathroom_l'])) {
			$url .= '&filter_bathroom_l=' . urlencode(html_entity_decode($this->request->get['filter_bathroom_l'], ENT_QUOTES, 'UTF-8'));
		}
		if (isset($this->request->get['filter_bathroom_h'])) {
			$url .= '&filter_bathroom_h=' . urlencode(html_entity_decode($this->request->get['filter_bathroom_h'], ENT_QUOTES, 'UTF-8'));
		}
		if (isset($this->request->get['filter_bedroom_h'])) {
			$url .= '&filter_area_l=' . urlencode(html_entity_decode($this->request->get['filter_bedroom_h'], ENT_QUOTES, 'UTF-8'));
		}
		if (isset($this->request->get['filter_bedroom_l'])) {
			$url .= '&filter_bedroom_l=' . urlencode(html_entity_decode($this->request->get['filter_bedroom_l'], ENT_QUOTES, 'UTF-8'));
		}
		if (isset($this->request->get['filter_price_l'])) {
			$url .= '&filter_price_l=' . urlencode(html_entity_decode($this->request->get['filter_price_l'], ENT_QUOTES, 'UTF-8'));
		}
		if (isset($this->request->get['filter_price_h'])) {
			$url .= '&filter_price_h=' . urlencode(html_entity_decode($this->request->get['filter_price_h'], ENT_QUOTES, 'UTF-8'));
		}
		if (isset($this->request->get['filter_category_id'])) {
			$url .= '&filter_category_id=' . $this->request->get['filter_category_id'];
		}
		if (isset($this->request->get['filter_zone_id'])) {
			$url .= '&filter_zone_id=' . $this->request->get['filter_zone_id'];
		}
		if (isset($this->request->get['filter_number'])) {
			$url .= '&filter_number=' . $this->request->get['filter_number'];
		}
		if (isset($this->request->get['parent'])) {
			$url .= '&parent=' . $this->request->get['parent'];
		}
						
			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}	
	
			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}
			
			$this->data['limits'] = array();
			
			$this->data['limits'][] = array(
				'text'  => $this->config->get('config_catalog_limit'),
				'value' => $this->config->get('config_catalog_limit'),
				'href'  => $this->url->link('product/search', $url . '&limit=' . $this->config->get('config_catalog_limit'))
			);
						
			$this->data['limits'][] = array(
				'text'  => 25,
				'value' => 25,
				'href'  => $this->url->link('product/search', $url . '&limit=25')
			);
			
			$this->data['limits'][] = array(
				'text'  => 50,
				'value' => 50,
				'href'  => $this->url->link('product/search', $url . '&limit=50')
			);
	
			$this->data['limits'][] = array(
				'text'  => 75,
				'value' => 75,
				'href'  => $this->url->link('product/search', $url . '&limit=75')
			);
			
			$this->data['limits'][] = array(
				'text'  => 100,
				'value' => 100,
				'href'  => $this->url->link('product/search', $url . '&limit=100')
			);
					
			$url = '';
	
		if (isset($this->request->get['filter_area_l'])) {
			$url .= '&filter_area_l=' . urlencode(html_entity_decode($this->request->get['filter_area_l'], ENT_QUOTES, 'UTF-8'));
		}
		if (isset($this->request->get['filter_area_h'])) {
			$url .= '&filter_area_h=' . urlencode(html_entity_decode($this->request->get['filter_area_h'], ENT_QUOTES, 'UTF-8'));
		}
		if (isset($this->request->get['filter_bathroom_l'])) {
			$url .= '&filter_bathroom_l=' . urlencode(html_entity_decode($this->request->get['filter_bathroom_l'], ENT_QUOTES, 'UTF-8'));
		}
		if (isset($this->request->get['filter_bathroom_h'])) {
			$url .= '&filter_bathroom_h=' . urlencode(html_entity_decode($this->request->get['filter_bathroom_h'], ENT_QUOTES, 'UTF-8'));
		}
		if (isset($this->request->get['filter_bedroom_h'])) {
			$url .= '&filter_area_l=' . urlencode(html_entity_decode($this->request->get['filter_bedroom_h'], ENT_QUOTES, 'UTF-8'));
		}
		if (isset($this->request->get['filter_bedroom_l'])) {
			$url .= '&filter_bedroom_l=' . urlencode(html_entity_decode($this->request->get['filter_bedroom_l'], ENT_QUOTES, 'UTF-8'));
		}
		if (isset($this->request->get['filter_price_l'])) {
			$url .= '&filter_price_l=' . urlencode(html_entity_decode($this->request->get['filter_price_l'], ENT_QUOTES, 'UTF-8'));
		}
		if (isset($this->request->get['filter_price_h'])) {
			$url .= '&filter_price_h=' . urlencode(html_entity_decode($this->request->get['filter_price_h'], ENT_QUOTES, 'UTF-8'));
		}
		if (isset($this->request->get['filter_category_id'])) {
			$url .= '&filter_category_id=' . $this->request->get['filter_category_id'];
		}
		if (isset($this->request->get['filter_zone_id'])) {
			$url .= '&filter_zone_id=' . $this->request->get['filter_zone_id'];
		}
		if (isset($this->request->get['filter_number'])) {
			$url .= '&filter_number=' . $this->request->get['filter_number'];
		}
		if (isset($this->request->get['parent'])) {
			$url .= '&parent=' . $this->request->get['parent'];
		}
										
			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
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
			$pagination->url = $this->url->link('product/search', $url . '&page={page}');
			
			$this->data['pagination'] = $pagination->render();
		}	
		
		$this->data['filter_category_id'] = $filter_category_id;
		$this->data['filter_area_l'] =  $filter_area_l;
		$this->data['filter_area_h'] =  $filter_area_h; 
		$this->data['filter_bathroom_l'] = $filter_bathroom_l;
		$this->data['filter_bathroom_h'] = $filter_bathroom_h;
		$this->data['filter_bedroom_h'] = $filter_bedroom_h;
		$this->data['filter_bedroom_l'] = $filter_bedroom_l;
		$this->data['filter_price_l'] = $filter_price_l;
		$this->data['filter_price_h'] = $filter_price_h;
		$this->data['filter_category_id'] = $filter_category_id;
		$this->data['filter_number'] = $filter_number;
		$this->data['filter_zone_id'] = $filter_zone_id;
				
		$this->data['sort'] = $sort;
		$this->data['order'] = $order;
		$this->data['limit'] = $limit;
		
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/product/search.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/product/search.tpl';
		} else {
			$this->template = 'default/template/product/search.tpl';
		}
		
		$this->children = array(
			'common/filter',
			'common/content_top',
			'common/content_bottom',
			'common/footer',
			'common/header'
		);
				
		$this->response->setOutput($this->render());
  	}
}
?>