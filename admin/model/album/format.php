<?php
class ModelAlbumFormat extends Model {
  
    public function getFormats($data = array()) {
      $sql = "SELECT * FROM " . DB_PREFIX . "album_photo_format";
      
      $sort_data = array(
        'name',
        'price',
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
  
  public function getTotalFormats() {
    $query = $this->db->query("SELECT COUNT(*) as total FROM " . DB_PREFIX . "album_photo_format");
    return $query->row['total'];
  }
  public function getFormat($format_id) {
    $query = $this->db->query("SELECT * FROM " . DB_PREFIX . "album_photo_format WHERE id = ".(int)$format_id);
    return $query->row;
  }
  
  public function deleteFormat($format_id) {
    $query = $this->db->query("DELETE FROM " . DB_PREFIX . "album_photo_format WHERE id = ".(int)$format_id);
  }
  
  public function editFormat($format_id, $data) {
    $query = $this->db->query("UPDATE " . DB_PREFIX . "album_photo_format SET name = '".$this->db->escape($data['name'])."', price = ".(double)$data['price'].", sort_order = '".(int)$data['sort_order']."'  WHERE id = ".(int)$format_id);
  }   
  
  public function addFormat($data) {
    $query = $this->db->query("INSERT INTO  " . DB_PREFIX . "album_photo_format (`name`, `price`, `sort_order`) VALUES('".$this->db->escape($data['name'])."', ".(double)$data['price'].", '".(int)$data['sort_order']."')");
  } 
  
}
?>