<?php
class ModelMenuFilter extends Model {
    
    public function getZones($sales = 1) {
        $city = ((int)$this->config->get('config_language_id') == 1) ? 'z.name' : 'z.name_en';
        $query = $this->db->query("SELECT p.zone_id as id, ".$city." as city FROM product as p JOIN zone as z ON z.zone_id = p.zone_id 
		JOIN product_to_category as pc ON p.product_id = pc.product_id JOIN category as c ON c.category_id = pc.category_id WHERE c.parent_id = ".(int)$sales." GROUP BY p.zone_id Order by z.name");
        return $query->rows;
    }
	
	public function getCategories($sales = 1) {
        $query = $this->db->query("SELECT c.category_id as id, cd.name FROM " . DB_PREFIX . "category c 
		LEFT JOIN " . DB_PREFIX . "category_description cd ON (c.category_id = cd.category_id) WHERE c.parent_id = ".(int)$sales." AND cd.language_id = '" . (int)$this->config->get('config_language_id')."'");
        return $query->rows;
    }
	
	public function getBedrooms($sales = 1) {
		$query = $this->db->query("SELECT MAX(bedroom) as max, MIN(bedroom) as min, AVG(bedroom) as avg FROM product p JOIN product_to_category as pc ON p.product_id = pc.product_id JOIN category as c ON c.category_id = pc.category_id WHERE c.parent_id = ".(int)$sales);
        
        $low = array();
		$high = array();
        $avg_bedrooms = (int)$query->row['avg']; 
		for($i = $query->row['min']; $i <= $avg_bedrooms; $i++) {
			$low[] = $i;
		}
		for($i = $query->row['max']; $i >= $avg_bedrooms; $i--) {
			$high[] = $i;
		}
        
        
       return array('l' => $low, 'h' => $high);
	}
	public function getBathrooms($sales = 1) {
		$query = $this->db->query("SELECT MAX(bathroom) as max, MIN(bathroom) as min, AVG(bathroom) as avg FROM product p JOIN product_to_category as pc ON p.product_id = pc.product_id JOIN category as c ON c.category_id = pc.category_id WHERE c.parent_id = ".(int)$sales);
        
		$low = array();
		$high = array();
		
        $avg_bathrooms = (int)$query->row['avg']; 
		for($i = $query->row['min']; $i <= $avg_bathrooms; $i++) {
			$low[] = $i;
		}
		for($i = $query->row['max']; $i >= $avg_bathrooms; $i--) {
			$high[] = $i;
		}
        
        return array('l' => $low, 'h' => $high);
	}
	public function getAreas($sales = 1) {
		$query = $this->db->query("SELECT MAX(area) as max, MIN(area) as min, AVG(area) as avg FROM product p JOIN product_to_category as pc ON p.product_id = pc.product_id JOIN category as c ON c.category_id = pc.category_id WHERE c.parent_id = ".(int)$sales);
        
		$low = array();
		$high = array();
        $avg_areas = (int)$query->row['avg'];    
		$avg_diff = $avg_areas - $query->row['min'];
		
		$step_area = 10;
		if($avg_diff > 100 && $avg_diff < 500) {
			$step_area = 20;
		} elseif($avg_diff > 500) {
			$step_area = 50;
		}
		
		for($i = $query->row['min']; $i <= $avg_areas; $i += $step_area) {
			$low[] = $i;
		}
		for($i = $query->row['max']; $i >= $avg_areas; $i -= $step_area) {
			$high[] = $i;
		}
        
        
        
        return array('l' => $low, 'h' => $high);
        
	}
	public function getPrices($sales = 1) {
		$query = $this->db->query("SELECT MAX(price) as max, MIN(price) as min, AVG(price) as avg FROM product p JOIN product_to_category as pc ON p.product_id = pc.product_id JOIN category as c ON c.category_id = pc.category_id WHERE c.parent_id = ".(int)$sales);
        
        $low = array();
		$high = array();
        $avg_prices = (int)$query->row['avg'];    
		$avg_diff = $avg_prices - $query->row['min'];
		
		$step_price = 10;
		if($avg_diff > 100 && $avg_diff < 500) {
			$step_price = 20;
		} elseif($avg_diff > 500 && $avg_diff < 1000) {
			$step_price = 100;
		} elseif($avg_diff > 1000 && $avg_diff < 5000) {
			$step_price = 500;
		} elseif($avg_diff > 5000 && $avg_diff < 20000) {
			$step_price = 1000;
		} elseif($avg_diff > 20000 && $avg_diff < 100000) {
			$step_price = 5000;
		}  elseif($avg_diff > 100000) {
			$step_price = 20000;
		}
		
		for($i = $query->row['min']; $i <= $avg_prices; $i += $step_price) {
			$low[] = $i;
		}
		for($i = $query->row['max']; $i >= $avg_prices; $i -= $step_price) {
			$high[] = $i;
		}
        
        return array('l' => $low, 'h' => $high);
	}
   
}
?>