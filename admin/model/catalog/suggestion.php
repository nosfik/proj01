<?php
class ModelCatalogSuggestion extends Model {
    
	public function addSuggestion($data) {
      	$this->db->query("INSERT INTO " . DB_PREFIX . "suggestion SET sort_order = '" . (int)$data['sort_order'] . "', number = '". trim($this->db->escape($data['number'])) ."'");
	}
	
	public function editSuggestion($suggestion_id, $data) {
      	$this->db->query("UPDATE " . DB_PREFIX . "suggestion SET sort_order = '" . (int)$data['sort_order'] . "', number = '" . trim($data['number']) . "' WHERE suggestion_id = '" . (int)$suggestion_id . "'");

	}
	
	public function deleteSuggestion($suggestion_id) {
		$this->db->query("DELETE FROM " . DB_PREFIX . "suggestion WHERE suggestion_id = '" . (int)$suggestion_id . "'");
	}	
	
	public function getSuggestion($suggestion_id) {
		$query = $this->db->query("SELECT  * FROM " . DB_PREFIX . "suggestion WHERE suggestion_id = '" . (int)$suggestion_id . "'");
		return $query->row;
	}
	
	public function getSuggestions($data = array()) {
			$sql = "SELECT * FROM " . DB_PREFIX . "suggestion";
			
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
	

	


	public function getTotalSuggestions() {
      	$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "suggestion");
		
		return $query->row['total'];
	}	

}
?>