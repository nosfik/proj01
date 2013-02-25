<?php
class ModelExtensionNewsarticle extends Model {	
	public function getNewsarticle($id) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "newsarticle n LEFT JOIN " . DB_PREFIX . "newsarticle_description nd ON n.newsarticle_id = nd.newsarticle_id WHERE n.newsarticle_id = '" . (int)$id . "' AND nd.language_id = '" . $this->config->get('config_language_id') . "'");
		
		return $query->row;
	}
 
	public function getAllNewsarticle($data) {
		$sql = "SELECT * FROM " . DB_PREFIX . "newsarticle n LEFT JOIN " . DB_PREFIX . "newsarticle_description nd ON n.newsarticle_id = nd.newsarticle_id WHERE nd.language_id = '" . $this->config->get('config_language_id') . "' AND n.status = '1' ORDER BY date_added DESC";
		
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
	
	public function countNewsarticle() {
		$count = $this->db->query("SELECT * FROM " . DB_PREFIX . "newsarticle");
	
		return $count->num_rows;
	}
}
?>