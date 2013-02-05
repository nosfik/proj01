<?php
class ModelCatalogSize extends Model {
  
  
    public function getsizes($data = array()) {
    if ($data) {
      $sql = "SELECT * FROM " . DB_PREFIX . "size";
      
      $sort_data = array(
        'width',
        'height',
        'sort_order'
      );  
      
      if (isset($data['sort']) && in_array($data['sort'], $sort_data)) {
        $sql .= " ORDER BY " . $data['sort']; 
      } else {
        $sql .= " ORDER BY width"; 
      }
      
      if (isset($data['order']) && ($data['order'] == 'DESC')) {
        $sql .= " DESC";
      } else {
        $sql .= " ASC";
      }
      
      $query = $this->db->query($sql);
      
      return $query->rows;
    } else {
      $size_data = $this->cache->get('size.' . (int)$this->config->get('config_store_id') . '.' . (int)$this->config->get('config_language_id'));
    
      if (!$size_data) {
        $query = $this->db->query("SELECT * FROM " . DB_PREFIX . "size ORDER BY sort_order");
  
        $size_data = $query->rows;
      
        $this->cache->set('size.' . (int)$this->config->get('config_store_id') . '.' . (int)$this->config->get('config_language_id'), $size_data);
      }
     
      return $size_data;
    } 
  } 
  
  
}
?>