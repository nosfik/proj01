<?php 
class ModelAlbumAlbum extends Model {
	
	
	public function createCleanAlbum($album_name, $customer_id) {
    $sql = "INSERT INTO " . DB_PREFIX . "`album`(`name`,`creation_date`,`customer_id`) VALUES 
      ('".$this->db->escape($album_name)."',NOW(), ".(int)$customer_id.")";
    $query = $this->db->query($sql);
		return $this->db->getLastId();
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
            FROM " . DB_PREFIX . "`album` as a LEFT JOIN album_photo as ap ON a.album_id = ap.album_id WHERE a.customer_id =".$customer_id." GROUP BY a.`album_id`";
    $query = $this->db->query($sql);
    return $query->rows;
  }
	
	
}


?>