<?php
class ModelCatalogCurrency extends Model {
    
	public function addCurrency($data) {
      	$this->db->query("INSERT INTO " . DB_PREFIX . "product_currency SET name = '" . $this->db->escape($data['name']) . "', value = '". $this->db->escape($data['value']) ."'");
	}
	
	public function editCurrency($currency_id, $data) {
      	$this->db->query("UPDATE " . DB_PREFIX . "product_currency SET name = '" . $this->db->escape($data['name']) . "', value = '" . $data['value'] . "' WHERE product_currency_id = '" . (int)$currency_id . "'");

	}
	
	public function deleteCurrency($currency_id) {
		$this->db->query("DELETE FROM " . DB_PREFIX . "product_currency WHERE product_currency_id = '" . (int)$currency_id . "'");
	}	
	
	public function getCurrency($currency_id) {
		$query = $this->db->query("SELECT  * FROM " . DB_PREFIX . "product_currency WHERE product_currency_id = '" . (int)$currency_id . "'");
		return $query->row;
	}
	
	public function getCurrencys($data = array()) {
			$sql = "SELECT * FROM " . DB_PREFIX . "product_currency";
			
			$sort_data = array(
				'name'
			);	
			
			if (isset($data['sort']) && in_array($data['sort'], $sort_data)) {
				$sql .= " ORDER BY " . $data['sort'];	
			} else {
				$sql .= " ORDER BY name";	
			}
			
			if (isset($data['order']) && ($data['order'] == 'DESC')) {
				$sql .= " DESC";
			} else {
				$sql .= " ASC";
			}
			
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
	

	


	public function getTotalCurrencys() {
      	$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "product_currency");
		
		return $query->row['total'];
	}	

}
?>