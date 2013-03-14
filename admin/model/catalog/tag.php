<?php
class ModelCatalogTag extends Model {
	public function addTag($data) {
      	$this->db->query("INSERT INTO " . DB_PREFIX . "product_tag SET name = '" . $this->db->escape($data['name']) . "'");
		
		$tag_id = $this->db->getLastId();

		if (isset($data['image'])) {
			$this->db->query("UPDATE " . DB_PREFIX . "product_tag SET image = '" . $this->db->escape(html_entity_decode($data['image'], ENT_QUOTES, 'UTF-8')) . "' WHERE product_tag_id = '" . (int)$tag_id . "'");
		}
		
	}
	
	public function editTag($tag_id, $data) {
      	$this->db->query("UPDATE " . DB_PREFIX . "product_tag SET name = '" . $this->db->escape($data['name']) . "' WHERE product_tag_id = '" . (int)$tag_id . "'");

		if (isset($data['image'])) {
			$this->db->query("UPDATE " . DB_PREFIX . "product_tag SET image = '" . $this->db->escape(html_entity_decode($data['image'], ENT_QUOTES, 'UTF-8')) . "' WHERE product_tag_id = '" . (int)$tag_id . "'");
		}
		
	}
	
	public function deleteTag($tag_id) {
		$this->db->query("DELETE FROM " . DB_PREFIX . "product_tag WHERE product_tag_id = '" . (int)$tag_id . "'");
			
		$this->cache->delete('tag');
	}	
	
	public function getTag($tag_id) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "product_tag WHERE product_tag_id = '" . (int)$tag_id . "'");
		
		return $query->row;
	}
	
	public function getTags($data = array()) {
			$sql = "SELECT * FROM " . DB_PREFIX . "product_tag";
			
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
	

	

	public function getTotalTags() {
      	$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "product_tag");
		
		return $query->row['total'];
	}	

}
?>