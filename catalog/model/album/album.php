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
	
	
}


?>