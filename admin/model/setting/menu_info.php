<?php
class ModelSettingMenuinfo extends Model {
    public function addMenuInfo($data) {
        
        $this->db->query("INSERT INTO " . DB_PREFIX . "menu_info (`url`,`order`,`name`)VALUES( '".$this->db->escape($data['url'])."', ".(int)$data['order'].", '".$this->db->escape($data['name'])."')");
        $menu_info_id = $this->db->getLastId();
        if (isset($data['picture'])) {
            $this->db->query("UPDATE " . DB_PREFIX . "menu_info SET picture = '" . $this->db->escape(html_entity_decode($data['picture'], ENT_QUOTES, 'UTF-8')) . "' WHERE menu_info_id = '" . (int)$menu_info_id . "'");
        }
        foreach ($data['menu_info_description'] as $language_id => $value) {
            $this->db->query("INSERT INTO " . DB_PREFIX . "menu_info_description SET menu_info_id = '" . (int)$menu_info_id . "',  language_id = '" . (int)$language_id . "', name = '" . $this->db->escape($value['name'])."'");
        }
                
    }
    
    public function editMenuInfo($menu_info_id, $data) {
        $this->db->query("UPDATE " . DB_PREFIX . "menu_info SET name = '".$this->db->escape($data['name']) ."',url = '". $this->db->escape($data['url']) ."', `order` = '" . (int)$data['order'] . "' WHERE menu_info_id = '" . (int)$menu_info_id . "'");
        if (isset($data['picture'])) {
            $this->db->query("UPDATE " . DB_PREFIX . "menu_info SET picture = '" . $this->db->escape(html_entity_decode($data['picture'], ENT_QUOTES, 'UTF-8')) . "' WHERE menu_info_id = '" . (int)$menu_info_id . "'");
        }
        $this->db->query("DELETE FROM " . DB_PREFIX . "menu_info_description WHERE menu_info_id = '" . (int)$menu_info_id . "'");
        foreach ($data['menu_info_description'] as $language_id => $value) {
            $this->db->query("INSERT INTO " . DB_PREFIX . "menu_info_description SET menu_info_id = '" . (int)$menu_info_id . "', language_id = '" . (int)$language_id . "', name = '" . $this->db->escape($value['name'])."'");
        }
        
    }
    
    public function deleteMenuInfo($menu_info_id) {
        $this->db->query("DELETE FROM " . DB_PREFIX . "menu_info WHERE menu_info_id = '" . (int)$menu_info_id . "'");
        $this->db->query("DELETE FROM " . DB_PREFIX . "menu_info_description WHERE menu_info_id = '" . (int)$menu_info_id . "'");
    }   
    
    public function getMenuInfo($menu_info_id) {
        $query = $this->db->query("SELECT DISTINCT * FROM " . DB_PREFIX . "menu_info WHERE menu_info_id = '" . (int)$menu_info_id . "'");
        
        return $query->row;
    }
    
    public function getMenuInfos($data = array()) {
            $sql = "SELECT * FROM menu_info";
            
            $sort_data = array(
                'name',
                'order'
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
    
     


    public function getTotalMenuInfos() {
        $query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "menu_info");
        
        return $query->row['total'];
    }   

    public function getMenuInfoDescriptions($menu_info_id) {
        $menu_info_description_data = array();
        
        $query = $this->db->query("SELECT * FROM " . DB_PREFIX . "menu_info_description WHERE menu_info_id = '" . (int)$menu_info_id . "'");
        
        foreach ($query->rows as $result) {
            $menu_info_description_data[$result['language_id']] = array(
                'name'        => $result['name']
            );
        }
        
        return $menu_info_description_data;
    }   
}
?>