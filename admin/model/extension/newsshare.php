<?php
class ModelExtensionNewsshare extends Model {
	public function addNewsshare($data, $file = array()) {
		$this->db->query("INSERT INTO " . DB_PREFIX . "newsshare SET date_added = NOW(), status = '" . (int)$data['status'] . "'");
		
		$newsshare_id = $this->db->getLastId();
		
		foreach ($data['newsshare'] as $key => $value) {
			
			if(empty($file)) {
				$this->db->query("INSERT INTO " . DB_PREFIX ."newsshare_description SET newsshare_id = '" . (int)$newsshare_id . "', language_id = '" . (int)$key . "', title = '" . $this->db->escape($value['title']) . "', description = '" . $this->db->escape($value['description']) . "'");
			} else {
				$this->db->query("INSERT INTO " . DB_PREFIX ."newsshare_description SET newsshare_id = '" . (int)$newsshare_id . "', image='".$file['image']."', image_name='".$file['name']."', language_id = '" . (int)$key . "', title = '" . $this->db->escape($value['title']) . "', description = '" . $this->db->escape($value['description']) . "'");
			}
			
		}
		
		if ($data['keyword']) {
			$this->db->query("INSERT INTO " . DB_PREFIX . "url_alias SET query = 'newsshare_id=" . (int)$newsshare_id . "', keyword = '" . $this->db->escape($data['keyword']) . "'");
		}
	}
	
	public function editNewsshare($id, $data, $file = array()) {
		$this->db->query("UPDATE " . DB_PREFIX . "newsshare SET status = '" . (int)$data['status'] . "' WHERE newsshare_id = '" . (int)$id . "'");
		
		$this->db->query("DELETE FROM " . DB_PREFIX . "newsshare_description WHERE newsshare_id = '" . (int)$id. "'");
		
		
		
		
		foreach ($data['newsshare'] as $key => $value) {
			if(empty($file)) {
				$this->db->query("INSERT INTO " . DB_PREFIX ."newsshare_description SET newsshare_id = '" . (int)$id . "', language_id = '" . (int)$key . "', title = '" . $this->db->escape($value['title']) . "', description = '" . $this->db->escape($value['description']) . "'");
			} else {
				$this->db->query("INSERT INTO " . DB_PREFIX ."newsshare_description SET newsshare_id = '" . (int)$id . "', image='".$file['image']."', image_name='".$file['name']."', language_id = '" . (int)$key . "', title = '" . $this->db->escape($value['title']) . "', description = '" . $this->db->escape($value['description']) . "'");
			}
			
		}
		
		$this->db->query("DELETE FROM " . DB_PREFIX . "url_alias WHERE query = 'newsshare_id=" . (int)$id. "'");
		
		if ($data['keyword']) {
			$this->db->query("INSERT INTO " . DB_PREFIX . "url_alias SET query = 'newsshare_id=" . (int)$id . "', keyword = '" . $this->db->escape($data['keyword']) . "'");
		}
	}
	
	public function getNewsshare($id) {
		$query = $this->db->query("SELECT DISTINCT *, (SELECT keyword FROM " . DB_PREFIX . "url_alias WHERE query = 'newsshare_id=" . (int)$id . "') AS keyword FROM " . DB_PREFIX . "newsshare WHERE newsshare_id = '" . (int)$id . "'"); 
 
		if ($query->num_rows) {
			return $query->row;
		} else {
			return false;
		}
	}
	
	
	
	public function getNewsshareDescriptionImage($id) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "newsshare_description WHERE newsshare_id = '" . (int)$id . "' LIMIT 1"); 
		
		$newsshare_description_image = array(
			'image'       => $query->row['image'],
			'image_name' => $query->row['image_name']
		);
		
		return $newsshare_description_image;
	}
	
   
	public function getNewsshareDescription($id) {
		$query = $this->db->query("SELECT title, description, language_id FROM " . DB_PREFIX . "newsshare_description WHERE newsshare_id = '" . (int)$id . "'"); 
		
		foreach ($query->rows as $result) {
			$newsshare_description[$result['language_id']] = array(
				'title'       => $result['title'],
				'description' => $result['description']
			);
		}
		
		return $newsshare_description;
	}
 
	public function getAllNewsshare($data) {
		$sql = "SELECT * FROM " . DB_PREFIX . "newsshare n LEFT JOIN " . DB_PREFIX . "newsshare_description nd ON n.newsshare_id = nd.newsshare_id WHERE nd.language_id = '" . (int)$this->config->get('config_language_id') . "' ORDER BY date_added DESC";
		
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
   
	public function deleteNewsshare($id) {
		$this->db->query("DELETE FROM " . DB_PREFIX . "newsshare WHERE newsshare_id = '" . (int)$id . "'");
		$this->db->query("DELETE FROM " . DB_PREFIX . "newsshare_description WHERE newsshare_id = '" . (int)$id . "'");
		$this->db->query("DELETE FROM " . DB_PREFIX . "url_alias WHERE query = 'newsshare_id=" . (int)$id. "'");
	}
   
	public function countNewsshare() {
		$count = $this->db->query("SELECT * FROM " . DB_PREFIX . "newsshare");
	
		return $count->num_rows;
	}
}
?>