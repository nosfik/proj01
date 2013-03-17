<?php
class ModelMenuHouse extends Model {
    
    public function getDreamHouse() {
        $query = $this->db->query("SELECT *, pd.name AS name, p.image, z.name as city, pt.image as tag, pc.value as currency FROM " . DB_PREFIX . "product p 
        LEFT JOIN " . DB_PREFIX . "product_description pd ON (p.product_id = pd.product_id)
        JOIN " . DB_PREFIX . "dreamhouse d ON (p.number = d.number) 
        LEFT JOIN " . DB_PREFIX . "zone z ON (p.zone_id = z.zone_id) 
		LEFT JOIN " . DB_PREFIX . "product_tag pt ON (p.product_tag_id = pt.product_tag_id) 
		LEFT JOIN " . DB_PREFIX . "product_currency pc ON (p.product_currency_id = pc.product_currency_id) 
		WHERE pd.language_id = '" . (int)$this->config->get('config_language_id') . "' AND p.status = '1'");
        
        return $query->rows;
    }
    
    public function getSuggestion() {
        $query = $this->db->query("SELECT *, pd.name AS name, p.image, z.name as city, pt.image as tag, pc.value as currency FROM " . DB_PREFIX . "product p 
        LEFT JOIN " . DB_PREFIX . "product_description pd ON (p.product_id = pd.product_id)
        JOIN " . DB_PREFIX . "suggestion s ON (p.number = s.number) 
          LEFT JOIN " . DB_PREFIX . "zone z ON (p.zone_id = z.zone_id) 
		LEFT JOIN " . DB_PREFIX . "product_tag pt ON (p.product_tag_id = pt.product_tag_id) 
		LEFT JOIN " . DB_PREFIX . "product_currency pc ON (p.product_currency_id = pc.product_currency_id) 
		WHERE pd.language_id = '" . (int)$this->config->get('config_language_id') . "' AND p.status = '1'");
        
        return $query->rows;
    }
   
}
?>