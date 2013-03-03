<?php
class ModelAlbumConfig extends Model {
  
    public function getPreferences() {
      $query = $this->db->query("SELECT * FROM " . DB_PREFIX . "album_preferences");
      $result = array();
      foreach ($query->rows as $row) {
          $result[$row['name']] = $row['value'];
      }
      return $result;
    }
    
    public function update($data) {
       $this->db->query("UPDATE " . DB_PREFIX . "album_preferences SET value = '".$this->db->escape($data['shipping_interval'])."' WHERE name='shipping_interval'");
       $this->db->query("UPDATE " . DB_PREFIX . "album_preferences SET value = '".$this->db->escape($data['time_order'])."' WHERE name='time_order'");
    }
  
}
?>