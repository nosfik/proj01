<?php
class ModelCatalogProduct extends Model {
	public function updateViewed($product_id) {
		$this->db->query("UPDATE " . DB_PREFIX . "product SET viewed = (viewed + 1) WHERE product_id = '" . (int)$product_id . "'");
	}
	
	public function getProduct($product_id) {
		$city = ((int)$this->config->get('config_language_id') == 1) ? 'z.name' : 'z.name_en';
		$query = $this->db->query(
		"SELECT DISTINCT *, pd.name AS name, p.image, ".$city." as city, pt.image as tag, pc.value as currency FROM " . DB_PREFIX . "product p 
		LEFT JOIN " . DB_PREFIX . "zone z ON (p.zone_id = z.zone_id) 
		LEFT JOIN " . DB_PREFIX . "product_tag pt ON (p.product_tag_id = pt.product_tag_id) 
		LEFT JOIN " . DB_PREFIX . "product_currency pc ON (p.product_currency_id = pc.product_currency_id) 
		LEFT JOIN " . DB_PREFIX . "product_description pd ON (p.product_id = pd.product_id) 
		WHERE p.product_id = '" . (int)$product_id . "' AND pd.language_id = '" . (int)$this->config->get('config_language_id') . "' AND p.status = '1'");
		
		if ($query->num_rows) {
			return array(
				'seo_title'        => $query->row['seo_title'],
				'seo_h1'           => $query->row['seo_h1'],
				'product_id'       => $query->row['product_id'],
				'name'             => $query->row['name'],
				'description'      => $query->row['description'],
				'meta_description' => $query->row['meta_description'],
				'meta_keyword'     => $query->row['meta_keyword'],
				'city'         	   => $query->row['city'],
				'currency'         => $query->row['currency'],
				'number'           => $query->row['number'],
				'tag'              => $query->row['tag'],
				'area'        	   => $query->row['area'],
				'bathroom'         => $query->row['bathroom'],
				'bedroom'          => $query->row['bedroom'],
				'image'            => $query->row['image'],
				'price'            => $query->row['price'],
				'sort_order'       => $query->row['sort_order'],
				'status'           => $query->row['status'],
				'date_added'       => $query->row['date_added'],
				'date_modified'    => $query->row['date_modified'],
				'viewed'           => $query->row['viewed']
			);
		} else {
			return false;
		}
	}

    public function isProductSale($product_id) {
        
        $query = $this->db->query("SELECT main_category FROM product_to_category WHERE product_id =".(int)$product_id." LIMIT 1");
        
        return ($query->row['main_category'] == 1 || $query->row['main_category'] == 11);
        
    }
	
	public function getTotalPhotos() {
		$sql = "Select COUNT(*) as total FROM product WHERE status=1";
		$query = $this->db->query($sql);
		return $query->row['total'];
	}
	
	public function getPhotos($data = array()) {
		
		$sql = "Select p.product_id, p.image, pd.name FROM product as p LEFT JOIN " . DB_PREFIX . "product_description pd ON (p.product_id = pd.product_id) WHERE status=1 AND pd.language_id = '" . (int)$this->config->get('config_language_id') . "'";
		
		if (isset($data['start']) || isset($data['limit'])) {
			if ($data['start'] < 0) {
				$data['start'] = 0;
			}				

			if ($data['limit'] < 1) {
				$data['limit'] = 20;
			}	
		
			$sql .= " LIMIT " . (int)$data['start'] . "," . (int)$data['limit'];
		}
		
		$query = $this->db->query($sql);
		return $query->rows;
	}

	public function getProducts($data = array()) {	
		
		$cache = md5(http_build_query($data));
		
		$product_data = $this->cache->get('product.' . (int)$this->config->get('config_language_id') . '.' . $cache);
		
		if (!$product_data) {
			$sql = "SELECT p.product_id FROM " . DB_PREFIX . "product p LEFT JOIN " . DB_PREFIX . "product_description pd ON (p.product_id = pd.product_id)"; 
			
			if(isset($data['parent']) && $data['parent'] > 0) {
				$sql .= " LEFT JOIN " . DB_PREFIX . "product_to_category p2c ON (p.product_id = p2c.product_id) JOIN category as c ON p2c.category_id = c.category_id";
			} elseif (!empty($data['filter_category_id'])) {
				$sql .= " LEFT JOIN " . DB_PREFIX . "product_to_category p2c ON (p.product_id = p2c.product_id)";			
			}
			
			$sql .= " WHERE pd.language_id = '" . (int)$this->config->get('config_language_id') . "' AND p.status = '1' "; 
			
			
			if(isset($data['parent']) && $data['parent'] > 0) {
				$sql .= " AND c.parent_id = '" . (int)$data['parent'] . "'";
			}
			if (!empty($data['filter_category_id'])) {
				
				if($data['filter_category_id'] == 1 || $data['filter_category_id'] == 2) {
					
					$sql .= " AND p2c.main_category = '" . (int)$data['filter_category_id'] . "'";
					
				} else {
					$sql .= " AND p2c.category_id = '" . (int)$data['filter_category_id'] . "'";
				}
			}
			
			if (!empty($data['filter_number'])) {
					$sql .= " AND (p.number = '" . (int)$data['filter_number'] . "' OR  pd.name LIKE '%".$data['filter_number']."%')";
			}

			if (!empty($data['filter_zone_id'])) {
					$sql .= " AND p.zone_id = '" . (int)$data['filter_zone_id'] . "'";
				}
			
			if(isset($data['filter_area_l'])) {
				
				
				
				if ($data['filter_area_l'] > 0 && $data['filter_area_h'] > 0) {
				$sql .= " AND p.area BETWEEN '" . (float)$data['filter_area_l'] . "' AND '" . (float)$data['filter_area_h'] . "'";
			} elseif($data['filter_area_l'] > 0) {
				$sql .= " AND p.area >= '" . (float)$data['filter_area_l'] . "'";
			} elseif($data['filter_area_h'] > 0) {
				$sql .= " AND p.area <= '" . (float)$data['filter_area_h'] . "'";
			}
			
			if ($data['filter_bathroom_l'] > 0 && $data['filter_bathroom_h'] > 0) {
				$sql .= " AND p.bathroom BETWEEN '" . (float)$data['filter_bathroom_l'] . "' AND '" . (float)$data['filter_bathroom_h'] . "'";
			} elseif($data['filter_bathroom_l'] > 0) {
				$sql .= " AND p.bathroom >= '" . (float)$data['filter_bathroom_l'] . "'";
			} elseif($data['filter_bathroom_h'] > 0) {
				$sql .= " AND p.bathroom <= '" . (float)$data['filter_bathroom_h'] . "'";
			}
			
			if ($data['filter_bedroom_l'] > 0  && $data['filter_bedroom_h'] > 0) {
				$sql .= " AND p.bedroom BETWEEN '" . (int)$data['filter_bedroom_l'] . "' AND '" . (int)$data['filter_bedroom_h'] . "'";
			} elseif($data['filter_bedroom_l'] > 0) {
				$sql .= " AND p.bedroom >= '" . (int)$data['filter_bedroom_l'] . "'";
			} elseif($data['filter_bedroom_h'] > 0) {
				$sql .= " AND p.bedroom <= '" . (int)$data['filter_bedroom_h'] . "'";
			}
			
			if ($data['filter_price_l'] > 0 && $data['filter_price_h'] > 0) {
				$sql .= " AND p.price BETWEEN '" . (float)$data['filter_price_h'] . "' AND '" . (float)$data['filter_price_h'] . "'";
			} elseif($data['filter_price_l'] > 0) {
				$sql .= " AND p.price >= '" . (float)$data['filter_price_l'] . "'";
			} elseif($data['filter_price_h'] > 0) {
				$sql .= " AND p.price <= '" . (float)$data['filter_price_h'] . "'";
			}
			}
			
			$sql .= " GROUP BY p.product_id";
			
			$sort_data = array(
				'pd.name',
				'p.area',
				'p.price',
				'p.zone_id',
				'p.sort_order',
				'p.date_added'
			);	
			
			if (isset($data['sort']) && in_array($data['sort'], $sort_data)) {
				if ($data['sort'] == 'pd.name') {
					$sql .= " ORDER BY LCASE(" . $data['sort'] . ")";
				} else {
					$sql .= " ORDER BY " . $data['sort'];
				}
			} else {
				$sql .= " ORDER BY p.sort_order";	
			}
			
			if (isset($data['order']) && ($data['order'] == 'DESC')) {
				$sql .= " DESC, LCASE(pd.name) DESC";
			} else {
				$sql .= " ASC, LCASE(pd.name) ASC";
			}
		
			
			
			$product_data = array();
					
			$query = $this->db->query($sql);
		
			foreach ($query->rows as $result) {
				$product_data[$result['product_id']] = $this->getProduct($result['product_id']);
			}
			
			$this->cache->set('product.' . (int)$this->config->get('config_language_id') . '.' . $cache, $product_data);
		}
		
		return $product_data;
	}
		
	
	public function getPopularProducts($limit) {
		$product_data = array();
		
		$query = $this->db->query("SELECT p.product_id FROM " . DB_PREFIX . "product p WHERE p.status = '1' ORDER BY p.viewed, p.date_added DESC LIMIT " . (int)$limit);
		
		foreach ($query->rows as $result) { 		
			$product_data[$result['product_id']] = $this->getProduct($result['product_id']);
		}
					 	 		
		return $product_data;
	}

	public function getProductImages($product_id) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "product_image WHERE product_id = '" . (int)$product_id . "' ORDER BY sort_order ASC");

		return $query->rows;
	}
	
	public function getProductOptions($product_id) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "product_option WHERE product_id = '" . (int)$product_id . "' AND language_id = ".(int)$this->config->get('config_language_id'));
		return $query->rows;
	}
		
	public function getProductLayoutId($product_id) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "product_to_layout WHERE product_id = '" . (int)$product_id . "' AND store_id = '" . (int)$this->config->get('config_store_id') . "'");
		
		if ($query->num_rows) {
			return $query->row['layout_id'];
		} else {
			return  $this->config->get('config_layout_product');
		}
	}
	
	public function getCategories($product_id) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "product_to_category WHERE product_id = '" . (int)$product_id . "'");
		
		return $query->rows;
	}	
		
	public function getTotalProducts($data = array()) {
			
		$cache = md5(http_build_query($data));
		
		$product_data = $this->cache->get('product.total.' . (int)$this->config->get('config_language_id') . '.' . $cache);
		
		if (!$product_data) {
			$sql = "SELECT COUNT(DISTINCT p.product_id) AS total FROM " . DB_PREFIX . "product p LEFT JOIN " . DB_PREFIX . "product_description pd ON (p.product_id = pd.product_id)";
			
			
			if(isset($data['parent']) && $data['parent'] > 0) {
				$sql .= " LEFT JOIN " . DB_PREFIX . "product_to_category p2c ON (p.product_id = p2c.product_id) JOIN category as c ON p2c.category_id = c.category_id";
			} elseif (!empty($data['filter_category_id'])) {
				$sql .= " LEFT JOIN " . DB_PREFIX . "product_to_category p2c ON (p.product_id = p2c.product_id)";			
			}
			
			$sql .= " WHERE pd.language_id = '" . (int)$this->config->get('config_language_id') . "' AND p.status = '1' "; 
			
			
			if(isset($data['parent']) && $data['parent'] > 0) {
				$sql .= " AND c.parent_id = '" . (int)$data['parent'] . "'";
			}
			if (!empty($data['filter_category_id'])) {
				
				if($data['filter_category_id'] == 1 || $data['filter_category_id'] == 2) {
					
					$sql .= " AND p2c.main_category = '" . (int)$data['filter_category_id'] . "'";
					
				} else {
					$sql .= " AND p2c.category_id = '" . (int)$data['filter_category_id'] . "'";
				}
			}
			
			if (!empty($data['filter_number'])) {
					$sql .= " AND (p.number = '" . (int)$data['filter_number'] . "' OR  pd.name LIKE '%".$data['filter_number']."%')";
			}

			if (!empty($data['filter_zone_id'])) {
					$sql .= " AND p.zone_id = '" . (int)$data['filter_zone_id'] . "'";
				}
			
			if(isset($data['filter_area_l'])) {
				
				
				
				if ($data['filter_area_l'] > 0 && $data['filter_area_h'] > 0) {
				$sql .= " AND p.area BETWEEN '" . (float)$data['filter_area_l'] . "' AND '" . (float)$data['filter_area_h'] . "'";
			} elseif($data['filter_area_l'] > 0) {
				$sql .= " AND p.area >= '" . (float)$data['filter_area_l'] . "'";
			} elseif($data['filter_area_h'] > 0) {
				$sql .= " AND p.area <= '" . (float)$data['filter_area_h'] . "'";
			}
			
			if ($data['filter_bathroom_l'] > 0 && $data['filter_bathroom_h'] > 0) {
				$sql .= " AND p.bathroom BETWEEN '" . (float)$data['filter_bathroom_l'] . "' AND '" . (float)$data['filter_bathroom_h'] . "'";
			} elseif($data['filter_bathroom_l'] > 0) {
				$sql .= " AND p.bathroom >= '" . (float)$data['filter_bathroom_l'] . "'";
			} elseif($data['filter_bathroom_h'] > 0) {
				$sql .= " AND p.bathroom <= '" . (float)$data['filter_bathroom_h'] . "'";
			}
			
			if ($data['filter_bedroom_l'] > 0  && $data['filter_bedroom_h'] > 0) {
				$sql .= " AND p.bedroom BETWEEN '" . (int)$data['filter_bedroom_l'] . "' AND '" . (int)$data['filter_bedroom_h'] . "'";
			} elseif($data['filter_bedroom_l'] > 0) {
				$sql .= " AND p.bedroom >= '" . (int)$data['filter_bedroom_l'] . "'";
			} elseif($data['filter_bedroom_h'] > 0) {
				$sql .= " AND p.bedroom <= '" . (int)$data['filter_bedroom_h'] . "'";
			}
			
			if ($data['filter_price_l'] > 0 && $data['filter_price_h'] > 0) {
				$sql .= " AND p.price BETWEEN '" . (float)$data['filter_price_h'] . "' AND '" . (float)$data['filter_price_h'] . "'";
			} elseif($data['filter_price_l'] > 0) {
				$sql .= " AND p.price >= '" . (float)$data['filter_price_l'] . "'";
			} elseif($data['filter_price_h'] > 0) {
				$sql .= " AND p.price <= '" . (float)$data['filter_price_h'] . "'";
			}
			}
			
					
			
			
			
			$query = $this->db->query($sql);
			
			$product_data = $query->row['total']; 
			
			$this->cache->set('product.total.' . (int)$this->config->get('config_language_id') . '.' . $cache, $product_data);
		}
		
		return $product_data;
	}
			

}
?>