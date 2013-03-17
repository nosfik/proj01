<?php
class ModelMenuAboutus extends Model {
    
    public function getAboutUs() {
        $query = $this->db->query("SELECT * FROM aboutus as a left join aboutus_description as d ON a.aboutus_id = a.aboutus_id where d.language_id =".(int)$this->config->get('config_language_id')." AND a.aboutus_id = 1");
        return $query->row;
    }
   
}
?>