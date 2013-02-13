<?php 
class ModelAlbumAlbum extends Model {
	
	
	public function createCleanAlbum($album_name, $customer_id) {
    $sql = "INSERT INTO " . DB_PREFIX . "`album`(`name`,`creation_date`,`customer_id`) VALUES 
      ('".$this->db->escape($album_name)."',NOW(), ".(int)$customer_id.")";
    $query = $this->db->query($sql);
		return $this->db->getLastId();
  }
  
  public function createAlbum($data) {
    $sql = "INSERT INTO " . DB_PREFIX . "`album`(`name`, `description`, `photo`, `creation_date`,`customer_id`) VALUES 
      ('".$this->db->escape($data['name'])."', '".$this->db->escape($data['description'])."', '".$this->db->escape($data['photo'])."', NOW(), ".(int)$data['customer_id'].")";
    $query = $this->db->query($sql);
  }
	
	public function putPhotoInAlbum($albumId, $fileName) {
		$sql = "INSERT INTO " . DB_PREFIX . "`album_photo` (`album_id`, `creation_date`, `photo_name` ) VALUES 
      ('".$albumId."',NOW(), '".$this->db->escape($fileName)."')";
    $query = $this->db->query($sql);
	}
  
  public function getSizeAlbum($albumId, $customer_id) {
    $sql = "SELECT COUNT(*) as size FROM " . DB_PREFIX . "`album` as a JOIN album_photo as ap ON a.album_id = ap.album_id 
    WHERE album_id =".(int)$albumId." AND customer_id=".(int)$customer_id;
    $query = $this->db->query($sql);
    return $query->row['size'];
  }
  
  public function getAlbums($customer_id) {
    $sql = "SELECT a.`album_id`, a.`name`, a.`description`, a.`photo`, DATE(a.creation_date) as `date`, COUNT(ap.album_photo_id) as size 
            FROM " . DB_PREFIX . "`album` as a LEFT JOIN " . DB_PREFIX . "album_photo as ap ON a.album_id = ap.album_id WHERE a.customer_id =".$customer_id." GROUP BY a.`album_id`";
    $query = $this->db->query($sql);
    return $query->rows;
  }
  
  public function deleteAlbum($album_id, $customer_id) {
      $sql = "SELECT photo FROM " . DB_PREFIX . "album WHERE customer_id =".(int)$customer_id." AND album_id =".(int)$album_id;
      $query = $this->db->query($sql);
      
      if( $query->num_rows ) {
        $this->db->query("DELETE ap.* FROM " . DB_PREFIX . "album_photo as ap RIGHT JOIN " . DB_PREFIX . "album as a ON ap.album_id = a.album_id 
        WHERE a.customer_id =".(int)$customer_id." AND ap.album_id = ".(int)$album_id);
        $this->db->query("DELETE  FROM album WHERE customer_id = ".(int)$customer_id." AND album_id = ".(int)$album_id);
        return $query->row['photo'];
      } else {
        return "";
      }
      
  }
  
  public function editAlbum($data) {
    
    $return = '';
    
    $sql = "UPDATE " . DB_PREFIX . "`album` SET `name`='".$this->db->escape($data['name'])."', `description`='".$this->db->escape($data['description'])."'";
    if($data['photo'] != '') {
      $sql .=", `photo`='".$this->db->escape($data['photo'])."'"; 
      $cover_sql = "SELECT photo FROM " . DB_PREFIX . "album WHERE customer_id =".(int)$data['customer_id']." AND album_id =".(int)$data['album_id'];
      $query = $this->db->query($cover_sql);
      $return = $query->row['photo'];
    }
    $sql .=" WHERE `album_id`=".(int)$data['album_id']." AND customer_id=".(int)$data['customer_id'];
    $this->db->query($sql);
    
    return $return;
  }
  
  public function getPhotosByAlbum($album_id, $customer_id) {
        
      $sql = "SELECT ap.* FROM album_photo as ap JOIN album as a ON a.album_id = ap.album_id 
              WHERE a.album_id = ".(int)$album_id." AND customer_id =".(int)$customer_id;
      $query = $this->db->query($sql);
      return $query->rows;
    
  }
	
}


?>