<?php
class ModelAlbumPaper extends Model {
  
    public function getPapers($data = array()) {
      $sql = "SELECT * FROM " . DB_PREFIX . "album_photo_paper";
      
      $sort_data = array(
        'name',
        'percent',
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
  
  public function getTotalPapers() {
    $query = $this->db->query("SELECT COUNT(*) as total FROM " . DB_PREFIX . "album_photo_paper");
    return $query->row['total'];
  }
  public function getPaper($paper_id) {
    $query = $this->db->query("SELECT * FROM " . DB_PREFIX . "album_photo_paper WHERE id = ".(int)$paper_id);
    return $query->row;
  }
  
  public function deletePaper($paper_id) {
    $query = $this->db->query("DELETE FROM " . DB_PREFIX . "album_photo_paper WHERE id = ".(int)$paper_id);
  }
  
  public function editPaper($paper_id, $data) {
    $query = $this->db->query("UPDATE " . DB_PREFIX . "album_photo_paper SET name = '".$this->db->escape($data['name'])."', percent = ".(double)$data['percent'].", sort_order = '".(int)$data['sort_order']."'  WHERE id = ".(int)$paper_id);
  }   
  
  public function addPaper($data) {
    $query = $this->db->query("INSERT INTO  " . DB_PREFIX . "album_photo_paper (`name`, `percent`, `sort_order`) VALUES('".$this->db->escape($data['name'])."', ".(double)$data['percent'].", '".(int)$data['sort_order']."')");
  } 
  
}
?>