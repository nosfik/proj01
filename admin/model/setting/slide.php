<?php
class ModelSettingSlide extends Model {
    public function addSlide($data) {
        
        $this->db->query("INSERT INTO " . DB_PREFIX . "slide (`url`,`order`,`name`)VALUES( '".$this->db->escape($data['url'])."', ".(int)$data['order'].", '".$this->db->escape($data['name'])."')");
        $slide_id = $this->db->getLastId();
        if (isset($data['picture'])) {
            $this->db->query("UPDATE " . DB_PREFIX . "slide SET picture = '" . $this->db->escape(html_entity_decode($data['picture'], ENT_QUOTES, 'UTF-8')) . "' WHERE slide_id = '" . (int)$slide_id . "'");
        }
        foreach ($data['slide_description'] as $language_id => $value) {
            $this->db->query("INSERT INTO " . DB_PREFIX . "slide_description SET slide_id = '" . (int)$slide_id . "',  language_id = '" . (int)$language_id . "', text = '" . $this->db->escape($value['text'])."'");
        }
                
    }
    
    public function editSlide($slide_id, $data) {
        $this->db->query("UPDATE " . DB_PREFIX . "slide SET name = '".$this->db->escape($data['name']) ."',url = '". $this->db->escape($data['url']) ."', `order` = '" . (int)$data['order'] . "' WHERE slide_id = '" . (int)$slide_id . "'");
        if (isset($data['picture'])) {
            $this->db->query("UPDATE " . DB_PREFIX . "slide SET picture = '" . $this->db->escape(html_entity_decode($data['picture'], ENT_QUOTES, 'UTF-8')) . "' WHERE slide_id = '" . (int)$slide_id . "'");
        }
        $this->db->query("DELETE FROM " . DB_PREFIX . "slide_description WHERE slide_id = '" . (int)$slide_id . "'");
        foreach ($data['slide_description'] as $language_id => $value) {
            $this->db->query("INSERT INTO " . DB_PREFIX . "slide_description SET slide_id = '" . (int)$slide_id . "', language_id = '" . (int)$language_id . "', text = '" . $this->db->escape($value['text'])."'");
        }
        
    }
    
    public function deleteSlide($slide_id) {
        $this->db->query("DELETE FROM " . DB_PREFIX . "slide WHERE slide_id = '" . (int)$slide_id . "'");
        $this->db->query("DELETE FROM " . DB_PREFIX . "slide_description WHERE slide_id = '" . (int)$slide_id . "'");
    }   
    
    public function getSlide($slide_id) {
        $query = $this->db->query("SELECT DISTINCT * FROM " . DB_PREFIX . "slide WHERE slide_id = '" . (int)$slide_id . "'");
        return $query->row;
    }
    
    public function getSlides($data = array()) {
            $sql = "SELECT * FROM slide";
            
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
    
     


    public function getTotalSlides() {
        $query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "slide");
        
        return $query->row['total'];
    }   

    public function getSlideDescriptions($slide_id) {
        $slide_description_data = array();
        
        $query = $this->db->query("SELECT * FROM " . DB_PREFIX . "slide_description WHERE slide_id = '" . (int)$slide_id . "'");
        
        foreach ($query->rows as $result) {
            $slide_description_data[$result['language_id']] = array(
                'text'        => $result['text']
            );
        }
        
        return $slide_description_data;
    }   
}
?>