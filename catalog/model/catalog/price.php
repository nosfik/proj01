<?php
class ModelCatalogPrice extends Model {
  
  
    public function getPrices($data = array()) {
    if ($data) {
      $sql = "SELECT * FROM " . DB_PREFIX . "price";
      
      $sort_data = array(
        'from',
        'to',
        'sort_order'
      );  
      
      if (isset($data['sort']) && in_array($data['sort'], $sort_data)) {
        $sql .= " ORDER BY " . $data['sort']; 
      } else {
        $sql .= " ORDER BY `from`"; 
      }
      
      if (isset($data['order']) && ($data['order'] == 'DESC')) {
        $sql .= " DESC";
      } else {
        $sql .= " ASC";
      }
      
      $query = $this->db->query($sql);
      
      return $query->rows;
    } else {
      $price_data = $this->cache->get('price.' . (int)$this->config->get('config_store_id') . '.' . (int)$this->config->get('config_language_id'));
    
      if (!$price_data) {
        $query = $this->db->query("SELECT * FROM " . DB_PREFIX . "price ORDER BY `from`");
  
        $price_data = $query->rows;
      
        $this->cache->set('price.' . (int)$this->config->get('config_store_id') . '.' . (int)$this->config->get('config_language_id'), $price_data);
      }
     
      return $price_data;
    } 
  } 
  
  
}
?>