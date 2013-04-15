<?php
class ModelSettingVideo extends Model {
    public function addVideo($data) {
        $this->db->query("INSERT INTO " . DB_PREFIX . "video (`href`,`order`)VALUES( '".$this->db->escape($data['href'])."', ".(int)$data['order'].")");
    }
    
    public function editVideo($video_id, $data) {
        $this->db->query("UPDATE " . DB_PREFIX . "video SET href = '". $this->db->escape($data['href']) ."', `order` = '" . (int)$data['order'] . "' WHERE video_id = '" . (int)$video_id . "'");
        
    }
    
    public function deleteVideo($video_id) {
        $this->db->query("DELETE FROM " . DB_PREFIX . "video WHERE video_id = '" . (int)$video_id . "'");
    }   
    
    public function getVideo($video_id) {
        $query = $this->db->query("SELECT DISTINCT * FROM " . DB_PREFIX . "video WHERE video_id = '" . (int)$video_id . "'");
        return $query->row;
    }
    
    public function getVideos($data = array()) {
            $sql = "SELECT * FROM video";
            
            $sort_data = array(
                'href',
                'order'
            );  
            
            if (isset($data['sort']) && in_array($data['sort'], $sort_data)) {
                $sql .= " ORDER BY " . $data['sort'];   
            } else {
                $sql .= " ORDER BY href";   
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
    
     


    public function getTotalVideos() {
        $query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "video");
        
        return $query->row['total'];
    }   
    
}
?>