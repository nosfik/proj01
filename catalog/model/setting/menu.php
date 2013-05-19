<?php
class ModelSettingMenu extends Model {
	
	public function getMenuElements($data = array()) {
			$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "menu ORDER BY sort_order ASC");
			$menu_data = $query->rows;
		return $menu_data;
	}	
}
?>