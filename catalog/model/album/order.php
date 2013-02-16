<?php 
class ModelAlbumContent extends Model {
    
      
  public function getPhotosByAlbum($album_id, $customer_id) {
        
      $sql = "SELECT ap.* FROM album_photo as ap JOIN album as a ON a.album_id = ap.album_id 
              WHERE a.album_id = ".(int)$album_id." AND customer_id =".(int)$customer_id;
      $query = $this->db->query($sql);
      return $query->rows;
    
  }
  
    
  public function deletePhotoByAlbum($photo_id, $album_id, $customer_id) {
        
      $sql = "SELECT ap.photo_name FROM " . DB_PREFIX . "album_photo as ap JOIN album as a ON a.album_id = ap.album_id WHERE a.customer_id =".(int)$customer_id." AND ap.album_photo_id = ".(int)$photo_id." AND a.album_id = ".(int)$album_id;
      $query = $this->db->query($sql);
      
      if( $query->num_rows ) {
        $this->db->query("DELETE ap.* FROM " . DB_PREFIX . "album_photo as ap RIGHT JOIN " . DB_PREFIX . "album as a ON ap.album_id = a.album_id 
        WHERE a.customer_id =".(int)$customer_id." AND ap.album_id = ".(int)$album_id. " AND ap.album_photo_id =".(int)$photo_id);
        return $query->row['photo_name'];
      } else {
        return "";
      }
    
  }
}
?>