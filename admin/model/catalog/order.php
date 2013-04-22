<?php
class ModelCatalogOrder extends Model {
    
	public function deleteOrder($order_id) {
		$this->db->query("DELETE FROM " . DB_PREFIX . "product_order WHERE product_order_id = '" . (int)$order_id . "'");
	}	
	
	public function getOrder($order_id) { 
		$query = $this->db->query("SELECT  * FROM " . DB_PREFIX . "product_order WHERE product_order_id = '" . (int)$order_id . "'");
        if($query->row['viewed'] == 0){
            $this->db->query("UPDATE " . DB_PREFIX . "product_order SET viewed = 1 WHERE product_order_id = '" . (int)$order_id . "'");
        }
		return $query->row;
	}
	
	public function getOrders($data = array()) {
			$sql = "SELECT * FROM " . DB_PREFIX . "product_order";
			
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
	
	public function getTotalOrders() {
      	$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "product_order");
		
		return $query->row['total'];
	}	

}
?>