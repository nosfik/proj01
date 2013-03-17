<?php
class ModelMenuFilter extends Model {
    
    public function getZones($sales = 1) {
        $query = $this->db->query("SELECT p.zone_id as id, z.name as city FROM product as p JOIN zone as z ON z.zone_id = p.zone_id 
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
        return $query->row;
	}
	public function getBathrooms($sales = 1) {
		$query = $this->db->query("SELECT MAX(bathroom) as max, MIN(bathroom) as min, AVG(bathroom) as avg FROM product p JOIN product_to_category as pc ON p.product_id = pc.product_id JOIN category as c ON c.category_id = pc.category_id WHERE c.parent_id = ".(int)$sales);
        return $query->row;
	}
	public function getAreas($sales = 1) {
		$query = $this->db->query("SELECT MAX(area) as max, MIN(area) as min, AVG(area) as avg FROM product p JOIN product_to_category as pc ON p.product_id = pc.product_id JOIN category as c ON c.category_id = pc.category_id WHERE c.parent_id = ".(int)$sales);
        return $query->row;
	}
	public function getPrices($sales = 1) {
		$query = $this->db->query("SELECT MAX(price) as max, MIN(price) as min, AVG(price) as avg FROM product p JOIN product_to_category as pc ON p.product_id = pc.product_id JOIN category as c ON c.category_id = pc.category_id WHERE c.parent_id = ".(int)$sales);
        return $query->row;
	}
   
}
?>