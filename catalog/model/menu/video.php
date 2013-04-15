<?php
class ModelMenuVideo extends Model {
    
    public function getVideoItems() {
        $query = $this->db->query("SELECT * FROM video order by `order` asc");
        return $query->rows;
    }
   
}
?>