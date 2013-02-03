<?php
class ModelCatalogMaterial extends Model {
  
    public function getMaterials($data = array()) {
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
      
      if (isset($data['start']) || isset($data['limit'])) {
        if ($data['start'] < 0) {
          $data['start'] = 0;
        }         

        if ($data['limit'] < 1) {
          $data['limit'] = 20;
        } 
      
        $sql .= " LIMIT " . (int)$data['start'] . "," . (int)$data['limit'];
      }       
      
      $query = $this->db->query($sql);
    
      return $query->rows;
  }
  
  public function getTotalMaterials() {
    $query = $this->db->query("SELECT COUNT(*) as total FROM " . DB_PREFIX . "material");
    return $query->row['total'];
  }
  public function getMaterial($material_id) {
    $query = $this->db->query("SELECT * FROM " . DB_PREFIX . "material WHERE material_id = ".(int)$material_id);
    return $query->row;
  }
  
  public function deleteMaterial($material_id) {
    $query = $this->db->query("DELETE FROM " . DB_PREFIX . "material WHERE material_id = ".(int)$material_id);
  }
  
  public function editMaterial($material_id, $data) {
    $query = $this->db->query("UPDATE " . DB_PREFIX . "material SET name = '".$this->db->escape($data['name'])."', sort_order = '".(int)$data['sort_order']."'  WHERE material_id = ".(int)$material_id);
  }   
  
  public function addMaterial($data) {
    $query = $this->db->query("INSERT INTO  " . DB_PREFIX . "material (`name`, `sort_order`) VALUES('".$this->db->escape($data['name'])."', '".(int)$data['sort_order']."')");
  } 
  
}
?>