<?php 
class ModelAlbumOrder extends Model {
    
      
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
  
   
  public function getPhotos($photos, $customer_id) {
        
      $sql = "SELECT ap.* FROM " . DB_PREFIX . "album_photo as ap JOIN album as a ON a.album_id = ap.album_id  WHERE customer_id =".(int)$customer_id. " AND (";
              
      foreach ($photos as $photo) {
          $sql .= ' album_photo_id = '.$photo. ' OR';
      }
      $sql = substr($sql, 0, strlen($sql) - 2);
      
      $sql .= ')';
      $query = $this->db->query($sql);
      return $query->rows;
    
  }
  
  public function makeOrder($config) {
    
    $sql = "SELECT * FROM " . DB_PREFIX . "album WHERE customer_id =".$config['customer_id']." AND album_id=".(int)$config['album_id'];
    $query = $this->db->query($sql);
    if( $query->num_rows ) {
      $sql = "INSERT INTO " . DB_PREFIX . "album_order (`create_date`,`end_date`,`end_time`,`customer_id`,`album_id`) 
      VALUES (NOW(),'".$config['end_date']."','".$config['end_time']."', ".$config['customer_id'].", ".(int)$config['album_id'].")";
      $this->db->query($sql);
      return $this->db->getLastId();
    } else {
      return 0;
    }
  }
  
  public function addPhotoToOrder($config) {
      $sql = "INSERT INTO " . DB_PREFIX . "album_order_content (`album_order_id`, `album_photo_id`, `count`, `photo_name`,`album_photo_format_id`,`album_photo_paper_id`,`album_photo_printmode_id`,`color_correction`,`cut_photo`,`red_eye`, `white_border`) 
              VALUES(".(int)$config['album_order_id'].", ".(int)$config['photo_id'].", ".(int)$config['count'].", '".$this->db->escape($config['photo_name'])."', ".(int)$config['format'].", ".(int)$config['paper'].","
              .(int)$config['print_mode'].", ".(int)$config['color_correction'].", ".(int)$config['cut_photo'].", ".(int)$config['red_eye'].", ".(int)$config['white_border'].")";
      $this->db->query($sql);
  }
  
  
  public function getCustomerOrder($customer_id) {
    $sql = "SELECT ao.*, a.name, COUNT(aoc.album_order_content_id) as size FROM album_order as ao JOIN album as a ON a.album_id = ao.album_id LEFT JOIN album_order_content as aoc ON aoc.album_order_id = ao.album_order_id WHERE ao.customer_id = ".$customer_id." AND approved = 0 GROUP by album_order_id";
    $query = $this->db->query($sql);
    return $query->rows;
  }
  
  public function getTimeOrder() {
    $sql = "SELECT value FROM album_preferences WHERE name ='time_order'";
     $query = $this->db->query($sql);
     return $query->row['value'];
  }
  
  public function isPhotoBelongToCustomer($config) {
    $sql = "SELECT photo_name FROM " . DB_PREFIX . "album as a LEFT JOIN album_photo as ap ON a.album_id = ap.album_id 
    WHERE a.customer_id =".$config['customer_id']." AND a.album_id=".(int)$config['album_id']. " AND ap.album_photo_id=".$config['photo_id'];
    $query = $this->db->query($sql);
    return $query->row['photo_name'];
  }
  
  
  
}
?>