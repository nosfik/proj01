<?php
class ModelSettingMenu extends Model {
	
	public function getMenuElements($data = array()) {
		$menu_data = $this->cache->get('menu');
		if (!$menu_data) {
			$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "menu ORDER BY sort_order ASC");
			$menu_data = $query->rows;
			$this->cache->set('menu', $menu_data);
		}
		return $menu_data;
	}	
}
?>