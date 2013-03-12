<?php
class ModelAlbumUpload extends Model {
  
  public function saveFile($data = array()) {
    $sql = "INSERT INTO " . DB_PREFIX . "`customer_temp_photo` (`customer_id`, `name`, `photo`, `photo_small`, `size`) VALUES 
      (".(int)$data['customer_id'].",'".$this->db->escape($data['name'])."','".$data['photo']."', '".$data['photo_small']."', ".$data['size'].")";
    $query = $this->db->query($sql);
  }
  
  public function getFilesId($customer_id) {
    $sql = "SELECT customer_temp_photo_id, name, size FROM " . DB_PREFIX . "`customer_temp_photo` WHERE customer_id = ".(int)$customer_id;
     $query = $this->db->query($sql);
     return $query->rows;
  }
  
  public function getFiles($customer_id) {
     $sql = "SELECT photo, name, customer_temp_photo_id FROM " . DB_PREFIX . "`customer_temp_photo` WHERE customer_id = ".(int)$customer_id;
     $query = $this->db->query($sql);
     return $query->rows;
  }
  
  public function getFile($customer_id, $customer_temp_photo_id) {
     $sql = "SELECT photo, name FROM " . DB_PREFIX . "`customer_temp_photo` WHERE customer_id = ".(int)$customer_id." AND customer_temp_photo_id =".(int)$customer_temp_photo_id;
     $query = $this->db->query($sql);
     return $query->row;
  }
  
   public function getFileSmall($customer_id, $customer_temp_photo_id) {
     $sql = "SELECT photo_small as photo, name FROM " . DB_PREFIX . "`customer_temp_photo` WHERE customer_id = ".(int)$customer_id." AND customer_temp_photo_id =".(int)$customer_temp_photo_id;
     $query = $this->db->query($sql);
     return $query->row;
  }
  
  public function deleteFile($customer_id, $customer_temp_photo_id) {
     $sql = "DELETE FROM " . DB_PREFIX . "`customer_temp_photo` WHERE customer_id = ".(int)$customer_id." AND customer_temp_photo_id =".(int)$customer_temp_photo_id;
     $query = $this->db->query($sql);
  }
  
}
?>