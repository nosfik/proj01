<?php
class ModelCatalogDreamHouse extends Model {
    
	public function addDreamHouse($data) {
      	$this->db->query("INSERT INTO " . DB_PREFIX . "dreamhouse SET sort_order = '" . (int)$data['sort_order'] . "', number = '". $this->db->escape($data['number']) ."'");
	}
	
	public function editDreamHouse($dreamhouse_id, $data) {
      	$this->db->query("UPDATE " . DB_PREFIX . "dreamhouse SET sort_order = '" . (int)$data['sort_order'] . "', number = '" . $data['number'] . "' WHERE dreamhouse_id = '" . (int)$dreamhouse_id . "'");

	}
	
	public function deleteDreamHouse($dreamhouse_id) {
		$this->db->query("DELETE FROM " . DB_PREFIX . "dreamhouse WHERE dreamhouse_id = '" . (int)$dreamhouse_id . "'");
	}	
	
	public function getDreamHouse($dreamhouse_id) {
		$query = $this->db->query("SELECT  * FROM " . DB_PREFIX . "dreamhouse WHERE dreamhouse_id = '" . (int)$dreamhouse_id . "'");
		return $query->row;
	}
	
	public function getDreamHouses($data = array()) {
			$sql = "SELECT * FROM " . DB_PREFIX . "dreamhouse";
			
			$sort_data = array(
				'number',
				'sort_order'
			);	
			
			if (isset($data['sort']) && in_array($data['sort'], $sort_data)) {
				$sql .= " ORDER BY " . $data['sort'];	
			} else {
				$sql .= " ORDER BY number";	
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
	

	


	public function getTotalDreamHouses() {
      	$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "dreamhouse");
		
		return $query->row['total'];
	}	

}
?>