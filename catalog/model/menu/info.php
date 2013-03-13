<?php
class ModelMenuInfo extends Model {
    
    public function getMenuItems() {
        $query = $this->db->query("SELECT * FROM menu_info as m left join menu_info_description as d ON m.menu_info_id = d.menu_info_id where d.language_id =".(int)$this->config->get('config_language_id')." order by m.order asc");
        return $query->rows;
    }
   
}
?>