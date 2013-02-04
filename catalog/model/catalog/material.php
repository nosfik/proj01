<?php
class ModelCatalogMaterial extends Model {
  
  
    public function getMaterials($data = array()) {
    if ($data) {
      $sql = "SELECT * FROM " . DB_PREFIX . "material";
      
      $sort_data = array(
        'name',
        'sort_order'
      );  
      
      if (isset($data['sort']) && in_array($data['sort'], $sort_data)) {
        $sql .= " ORDER BY " . $data['sort']; 
      } else {
        $sql .= " ORDER BY name"; 
      }
      
      if (isset($data['order']) && ($data['order'] == 'DESC')) {
        $sql .= " DESC";
      } else {
        $sql .= " ASC";
      }
      
      $query = $this->db->query($sql);
      
      return $query->rows;
    } else {
      $material_data = $this->cache->get('material.' . (int)$this->config->get('config_store_id') . '.' . (int)$this->config->get('config_language_id'));
    
      if (!$material_data) {
        $query = $this->db->query("SELECT * FROM " . DB_PREFIX . "material ORDER BY name");
  
        $material_data = $query->rows;
      
        $this->cache->set('material.' . (int)$this->config->get('config_store_id') . '.' . (int)$this->config->get('config_language_id'), $material_data);
      }
     
      return $material_data;
    } 
  } 
  
  
}
?>