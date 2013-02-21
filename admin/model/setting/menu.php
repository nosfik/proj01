<?php
class ModelSettingMenu extends Model {
  
    public function getMenuElements($data = array()) {
      $sql = "SELECT * FROM " . DB_PREFIX . "menu";
      
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
  
  public function getTotalMenuElements() {
    $query = $this->db->query("SELECT COUNT(*) as total FROM " . DB_PREFIX . "menu");
    return $query->row['total'];
  }
  public function getMenuElement($menu_id) {
    $query = $this->db->query("SELECT * FROM " . DB_PREFIX . "menu WHERE menu_id = ".(int)$menu_id);
    return $query->row;
  }
  
  public function deleteMenuElement($menu_id) {
    $query = $this->db->query("DELETE FROM " . DB_PREFIX . "menu WHERE menu_id = ".(int)$menu_id);
  }
  
  public function editMenuElement($menu_id, $data) {
    $query = $this->db->query("UPDATE " . DB_PREFIX . "menu SET name = '".$this->db->escape($data['name'])."', value = '".$this->db->escape($data['value'])."', sort_order = '".(int)$data['sort_order']."'  WHERE menu_id = ".(int)$menu_id);
  }   
  
  public function addMenuElement($data) {
    $query = $this->db->query("INSERT INTO  " . DB_PREFIX . "menu (`name`, `value`, `sort_order`) VALUES('".$this->db->escape($data['name'])."', '".$this->db->escape($data['value'])."',  '".(int)$data['sort_order']."')");
  } 
  
}
?>