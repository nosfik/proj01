<?php 
class ModelAlbumContent extends Model {
		
		  
  public function getPhotosByAlbum($album_id, $customer_id) {
        
      $sql = "SELECT ap.* FROM album_photo as ap JOIN album as a ON a.album_id = ap.album_id
              WHERE a.album_id = ".(int)$album_id." AND customer_id =".(int)$customer_id;
      $query = $this->db->query($sql);
      return $query->rows;
    
  }
  
  public function getPhotosByAlbumForCover($album_id, $customer_id) {
        
      $sql = "SELECT ap.photo_name FROM album_photo as ap JOIN album as a ON a.album_id = ap.album_id 
              WHERE a.album_id = ".(int)$album_id." AND customer_id =".(int)$customer_id." LIMIT 1";
      $query = $this->db->query($sql);
      $rows = $query->rows;
      if(!empty($rows)) {
        return $rows[0]['photo_name'];
      } else {
        return '';
      }
    
  }
	
	public function getSimilarPhotoName($album_id, $customer_id, $photo_name){
		$sql = "SELECT photo_name FROM album_photo as p JOIN album as a ON a.album_id = p.album_id WHERE photo_name LIKE '".$this->db->escape($photo_name)."_copy%' AND a.album_id = ".(int)$album_id."	AND a.customer_id = ".(int)$customer_id." ORDER by p.album_photo_id DESC LIMIT 1;";
		$query = $this->db->query($sql);
    if($query->num_rows) {
      return $query->row['photo_name'];
    } else {
      return '';
    }
		
	}
	
	public function getPhotoNameById($photo_id, $customer_id) {
		$sql = "SELECT ap.photo_name FROM album_photo as ap JOIN album as a ON a.album_id = ap.album_id 
              WHERE ap.album_photo_id = ".(int)$photo_id." AND customer_id =".(int)$customer_id;
    $query = $this->db->query($sql);
    return $query->row['photo_name'];
	}
  
  public function getPhotoByAlbum($photo_id, $album_id, $customer_id) {
        
      $sql = "SELECT ap.*, (SELECT ap1.album_photo_id FROM album_photo as ap1 JOIN album as a1 ON a1.album_id = ap1.album_id WHERE ap1.album_photo_id > ".(int)$photo_id." AND a1.album_id = ".(int)$album_id." AND a1.customer_id =".(int)$customer_id." ORDER BY ap1.album_photo_id LIMIT 1) as next, 
      (SELECT ap1.album_photo_id FROM album_photo as ap1 JOIN album as a1 ON a1.album_id = ap1.album_id WHERE ap1.album_photo_id < ".(int)$photo_id." AND a1.album_id = ".(int)$album_id." AND a1.customer_id =".(int)$customer_id." ORDER BY ap1.album_photo_id DESC LIMIT 1) as prev
       FROM album_photo as ap JOIN album as a ON a.album_id = ap.album_id WHERE ap.album_photo_id = ".(int)$photo_id." AND a.album_id = ".(int)$album_id." AND customer_id =".(int)$customer_id;
      $query = $this->db->query($sql);
      return $query->row;
    
  }
  
  public function savePhotoPreference($config) {
    $sql = "UPDATE " . DB_PREFIX . "`album_photo` as ap JOIN album as a ON a.album_id = ap.album_id SET `album_photo_format_id`=".(int)$config['format'].", `album_photo_paper_id`=".(int)$config['paper'].", 
    `album_photo_printmode_id`=".(int)$config['print_mode'].", `color_correction`=".(int)$config['color_correction'].", `cut_photo`=".(int)$config['cut_photo'].", `white_border`=".(int)$config['white_border'].", 
    `red_eye`=".(int)$config['red_eye']." WHERE `album_photo_id`=".(int)$config['photo_id']." AND customer_id =".(int)$config['customer_id'];
    $query = $this->db->query($sql);
  }
  
  public function savePhotoCopyPreference($config) {
     $sql = "SELECT ap.photo_name FROM " . DB_PREFIX . "album_photo as ap JOIN album as a ON a.album_id = ap.album_id WHERE a.customer_id =".(int)$config['customer_id']." 
     AND ap.album_photo_id = ".(int)$config['photo_id']." AND a.album_id = ".(int)$config['album_id'];
      $query = $this->db->query($sql);
      
      if( $query->num_rows ) {
        $sql = "INSERT INTO " . DB_PREFIX . "album_photo (`album_id`, `photo_name`, `creation_date`, `album_photo_format_id`, `album_photo_paper_id`, `album_photo_printmode_id`, `color_correction`, `cut_photo`, 
        `white_border`, `red_eye`) VALUES(".(int)$config['album_id'].", '".$this->db->escape($config['photo_name'])."', NOW(), ".(int)$config['format'].", ".(int)$config['paper'].", ".(int)$config['print_mode'].", 
        ".$config['color_correction'].", ".(int)$config['cut_photo'].", ".(int)$config['white_border'].", ".(int)$config['red_eye'].")";
        $this->db->query($sql);
        return $this->db->getLastId();
      } else {
        return 0;
      }
			
  }
  
  
  public function getFormats() {
    $sql = "SELECT * FROM " . DB_PREFIX . "album_photo_format";
    $query = $this->db->query($sql);
    return $query->rows;
  }
  
  public function getPaperTypes() {
     $sql = "SELECT * FROM " . DB_PREFIX . "album_photo_paper";
    $query = $this->db->query($sql);
    return $query->rows;
  }
  
   public function getPrintModes() {
    $sql = "SELECT * FROM " . DB_PREFIX . "album_photo_printmode";
    $query = $this->db->query($sql);
    return $query->rows;
  }
  
	  
  public function deletePhotoByAlbum($photo_id, $album_id, $customer_id) {
        
      $sql = "SELECT ap.photo_name, (SELECT COUNT(*) FROM album_photo as a1 WHERE photo_name = ap.photo_name) as count FROM " . DB_PREFIX . "album_photo as ap JOIN album as a ON a.album_id = ap.album_id WHERE a.customer_id =".(int)$customer_id." AND ap.album_photo_id = ".(int)$photo_id." AND a.album_id = ".(int)$album_id;
      $query = $this->db->query($sql);
      
      if( $query->num_rows ) {
        $this->db->query("DELETE ap.* FROM " . DB_PREFIX . "album_photo as ap RIGHT JOIN " . DB_PREFIX . "album as a ON ap.album_id = a.album_id 
        WHERE a.customer_id =".(int)$customer_id." AND ap.album_id = ".(int)$album_id. " AND ap.album_photo_id =".(int)$photo_id);
        return ($query->row['count'] == 1) ? $query->row['photo_name'] : '';
      } else {
        return "";
      }
    
  }
}
?>