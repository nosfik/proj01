<?php
class ModelExtensionNewsshare extends Model {	
	public function getNewsshare($id) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "newsshare n LEFT JOIN " . DB_PREFIX . "newsshare_description nd ON n.newsshare_id = nd.newsshare_id WHERE n.newsshare_id = '" . (int)$id . "' AND nd.language_id = '" . $this->config->get('config_language_id') . "'");
		
		return $query->row;
	}
 
	public function getAllNewsshare($data) {
		$sql = "SELECT * FROM " . DB_PREFIX . "newsshare n LEFT JOIN " . DB_PREFIX . "newsshare_description nd ON n.newsshare_id = nd.newsshare_id WHERE nd.language_id = '" . $this->config->get('config_language_id') . "' AND n.status = '1' ORDER BY date_added DESC";
		
		if (isset($data['start']) || isset($data['limit'])) {
			if ($data['start'] < 0) {
				$data['start'] = 0;
			}		
				if ($data['limit'] < 1) {
				$data['limit'] = 10;
			}	
		
			$sql .= " LIMIT " . (int)$data['start'] . "," . (int)$data['limit'];
		}	
		
		$query = $this->db->query($sql);
		
		return $query->rows;
	}
	
	public function countNewsshare() {
		$count = $this->db->query("SELECT * FROM " . DB_PREFIX . "newsshare");
	
		return $count->num_rows;
	}
}
?>