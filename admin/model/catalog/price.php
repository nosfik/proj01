<?php
class ModelCatalogPrice extends Model {
  
    public function getPrices($data = array()) {
      $sql = "SELECT *, CONCAT(`from`, ' - ', `to`) as name FROM " . DB_PREFIX . "price";
      
      $sort_data = array(
        'from',
        'to',
        'sort_order'
      );  
      
      if (isset($data['sort']) && in_array($data['sort'], $sort_data)) {
        $sql .= " ORDER BY `" . $data['sort'] ."`"; 
      } else {
        $sql .= " ORDER BY `from`"; 
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
  
  public function getTotalPrices() {
    $query = $this->db->query("SELECT COUNT(*) as total FROM " . DB_PREFIX . "price");
    return $query->row['total'];
  }
  public function getPrice($price_id) {
    $query = $this->db->query("SELECT * FROM " . DB_PREFIX . "price WHERE price_id = ".(int)$price_id);
    return $query->row;
  }
  
  public function deletePrice($price_id) {
    $query = $this->db->query("DELETE FROM " . DB_PREFIX . "price WHERE price_id = ".(int)$price_id);
  }
  
  public function editPrice($price_id, $data) {
    $query = $this->db->query("UPDATE " . DB_PREFIX . "price SET `from` = '".$this->db->escape($data['from'])."', `to` = '".$this->db->escape($data['to'])."', sort_order = '".(int)$data['sort_order']."'  WHERE price_id = ".(int)$price_id);
  }   
  
  public function addPrice($data) {
    $query = $this->db->query("INSERT INTO  " . DB_PREFIX . "price (`from`, `to`, `sort_order`) VALUES('".$this->db->escape($data['from'])."', '".$this->db->escape($data['to'])."', '".(int)$data['sort_order']."')");
  } 
  
}
?>