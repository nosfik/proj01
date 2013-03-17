<?php
class ModelMenuFilter extends Model {
    
    public function getZones() {
        $query = $this->db->query("SELECT p.zone_id as id, z.name as city FROM product as p JOIN zone as z ON z.zone_id = p.zone_id GROUP BY p.zone_id Order by z.name");
        return $query->rows;
    }
	
	public function getCategories() {
        $query = $this->db->query("SELECT c.category_id as id, cd.name FROM " . DB_PREFIX . "category c 
		LEFT JOIN " . DB_PREFIX . "category_description cd ON (c.category_id = cd.category_id) 
		WHERE cd.language_id = '" . (int)$this->config->get('config_language_id')."'");
        return $query->rows;
    }
	
	public function getBedrooms() {
		$query = $this->db->query("SELECT MAX(bedroom) as max, MIN(bedroom) as min FROM product");
        return $query->rows;
	}
	public function getBathrooms() {
		
	}
	public function getAreas() {
		
	}
	public function getPrices() {
		
	}
   
}
?>