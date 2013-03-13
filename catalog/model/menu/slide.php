<?php
class ModelMenuSlide extends Model {
    
    public function getSlideItems() {
        $query = $this->db->query("SELECT * FROM slide as m left join slide_description as d ON m.slide_id = d.slide_id where d.language_id =".(int)$this->config->get('config_language_id')." order by m.order asc");
        return $query->rows;
    }
   
}
?>