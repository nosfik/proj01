<?php
class ModelSettingAlbum extends Model {
  
  public function getLastOrderEndTime($customer_id) {
    $query = $this->db->query("SELECT album_end_date, album_end_time FROM `order` WHERE customer_id = ".$customer_id." AND album_end_date <> '0000-00-00' AND album_end_time <> '00:00:00' AND (order_status_id = 1 OR order_status_id = 2 OR order_status_id = 3 OR order_status_id = 14)  ORDER by order_id DESC LIMIT 1");   
    return $query->row;
  } 
  
  public function getShippingInterval() {
    $query = $this->db->query("SELECT * FROM " . DB_PREFIX . "album_preferences WHERE name='shipping_interval'");
    $ship_int = $query->row['value'];
    $data = explode('|', $ship_int);
    
    $data_array = array(
      'date'         => $data[0],
      'time_start'   => $data[1],
      'time_end'     => $data[2],
    );
    
    return $data_array;
  } 
}
?>