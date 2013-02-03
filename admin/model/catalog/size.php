<?php
class ModelCatalogSize extends Model {
  
    public function getSizes($data = array()) {
      $sql = "SELECT *, CONCAT(`width`, 'X', `height`) as name FROM " . DB_PREFIX . "size";
      
      $sort_data = array(
        'width',
        'height',
        'sort_order'
      );  
      
      if (isset($data['sort']) && in_array($data['sort'], $sort_data)) {
        $sql .= " ORDER BY " . $data['sort']; 
      } else {
        $sql .= " ORDER BY sort_order"; 
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
  
  public function getTotalSizes() {
    $query = $this->db->query("SELECT COUNT(*) as total FROM " . DB_PREFIX . "size");
    return $query->row['total'];
  }
  public function getSize($size_id) {
    $query = $this->db->query("SELECT * FROM " . DB_PREFIX . "size WHERE size_id = ".(int)$size_id);
    return $query->row;
  }
  
  public function deleteSize($size_id) {
    $query = $this->db->query("DELETE FROM " . DB_PREFIX . "size WHERE size_id = ".(int)$size_id);
  }
  
  public function editSize($size_id, $data) {
    $query = $this->db->query("UPDATE " . DB_PREFIX . "size SET width = '".(int)$data['width']."', height = '".(int)$data['height']."', sort_order = '".(int)$data['sort_order']."'  WHERE size_id = ".(int)$size_id);
  }   
  
  public function addSize($data) {
    $query = $this->db->query("INSERT INTO  " . DB_PREFIX . "size (`width`, `height`, `sort_order`) VALUES('".(int)$data['width']."', '".(int)$data['height']."', '".(int)$data['sort_order']."')");
  } 
  
}
?>