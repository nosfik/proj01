<?php
class ModelExtensionNewsarticle extends Model {
	public function addNewsarticle($data) {
		$this->db->query("INSERT INTO " . DB_PREFIX . "newsarticle SET date_added = NOW(), status = '" . (int)$data['status'] . "'");
		
		$newsarticle_id = $this->db->getLastId();
		
		foreach ($data['newsarticle'] as $key => $value) {
			$this->db->query("INSERT INTO " . DB_PREFIX ."newsarticle_description SET newsarticle_id = '" . (int)$newsarticle_id . "', language_id = '" . (int)$key . "', title = '" . $this->db->escape($value['title']) . "', description = '" . $this->db->escape($value['description']) . "'");
		}
		
		if ($data['keyword']) {
			$this->db->query("INSERT INTO " . DB_PREFIX . "url_alias SET query = 'newsarticle_id=" . (int)$newsarticle_id . "', keyword = '" . $this->db->escape($data['keyword']) . "'");
		}
	}
	
	public function editNewsarticle($id, $data) {
		$this->db->query("UPDATE " . DB_PREFIX . "newsarticle SET status = '" . (int)$data['status'] . "' WHERE newsarticle_id = '" . (int)$id . "'");
		
		$this->db->query("DELETE FROM " . DB_PREFIX . "newsarticle_description WHERE newsarticle_id = '" . (int)$id. "'");
		
		foreach ($data['newsarticle'] as $key => $value) {
			$this->db->query("INSERT INTO " . DB_PREFIX ."newsarticle_description SET newsarticle_id = '" . (int)$id . "', language_id = '" . (int)$key . "', title = '" . $this->db->escape($value['title']) . "', description = '" . $this->db->escape($value['description']) . "'");
		}
		
		$this->db->query("DELETE FROM " . DB_PREFIX . "url_alias WHERE query = 'newsarticle_id=" . (int)$id. "'");
		
		if ($data['keyword']) {
			$this->db->query("INSERT INTO " . DB_PREFIX . "url_alias SET query = 'newsarticle_id=" . (int)$id . "', keyword = '" . $this->db->escape($data['keyword']) . "'");
		}
	}
	
	public function getNewsarticle($id) {
		$query = $this->db->query("SELECT DISTINCT *, (SELECT keyword FROM " . DB_PREFIX . "url_alias WHERE query = 'newsarticle_id=" . (int)$id . "') AS keyword FROM " . DB_PREFIX . "newsarticle WHERE newsarticle_id = '" . (int)$id . "'"); 
 
		if ($query->num_rows) {
			return $query->row;
		} else {
			return false;
		}
	}
   
	public function getNewsarticleDescription($id) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "newsarticle_description WHERE newsarticle_id = '" . (int)$id . "'"); 
		
		foreach ($query->rows as $result) {
			$newsarticle_description[$result['language_id']] = array(
				'title'       => $result['title'],
				'description' => $result['description']
			);
		}
		
		return $newsarticle_description;
	}
 
	public function getAllNewsarticle($data) {
		$sql = "SELECT * FROM " . DB_PREFIX . "newsarticle n LEFT JOIN " . DB_PREFIX . "newsarticle_description nd ON n.newsarticle_id = nd.newsarticle_id WHERE nd.language_id = '" . (int)$this->config->get('config_language_id') . "' ORDER BY date_added DESC";
		
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
   
	public function deleteNewsarticle($id) {
		$this->db->query("DELETE FROM " . DB_PREFIX . "newsarticle WHERE newsarticle_id = '" . (int)$id . "'");
		$this->db->query("DELETE FROM " . DB_PREFIX . "newsarticle_description WHERE newsarticle_id = '" . (int)$id . "'");
		$this->db->query("DELETE FROM " . DB_PREFIX . "url_alias WHERE query = 'newsarticle_id=" . (int)$id. "'");
	}
   
	public function countNewsarticle() {
		$count = $this->db->query("SELECT * FROM " . DB_PREFIX . "newsarticle");
	
		return $count->num_rows;
	}
}
?>