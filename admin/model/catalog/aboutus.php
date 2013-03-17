<?php
class ModelCatalogAboutus extends Model {
	
	public function editAboutus($aboutus_id, $data) {
      	$this->db->query("UPDATE " . DB_PREFIX . "aboutus SET url = '" . $this->db->escape($data['url']) . "' WHERE aboutus_id = '" . (int)$aboutus_id . "'");

		if (isset($data['image'])) {
			$this->db->query("UPDATE " . DB_PREFIX . "aboutus SET image = '" . $this->db->escape(html_entity_decode($data['image'], ENT_QUOTES, 'UTF-8')) . "' WHERE aboutus_id = '" . (int)$aboutus_id . "'");
		}
		
		$this->db->query("DELETE FROM " . DB_PREFIX . "aboutus_description WHERE aboutus_id = '" . (int)$aboutus_id . "'");

		foreach ($data['aboutus_short_text'] as $language_id => $value) {
			$this->db->query("INSERT INTO " . DB_PREFIX . "aboutus_description SET aboutus_id = 1, language_id = '" . (int)$language_id . "', short_text = '" . $this->db->escape($value['short_text']) . "'");
		}
		
	}
	
	public function getAboutus($aboutus_id) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "aboutus WHERE aboutus_id = '" . (int)$aboutus_id . "'");
		
		return $query->row;
	}
	

	public function getAboutusDescriptions($aboutus_id) {
		$aboutus_description_data = array();
		
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "aboutus_description WHERE aboutus_id = '" . (int)$aboutus_id . "'");
		
		foreach ($query->rows as $result) {
			$aboutus_description_data[$result['language_id']] = array(
				'short_text'           => $result['short_text'],
			);
		}
		
		return $aboutus_description_data;
	}	
}
?>