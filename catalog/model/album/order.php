<?php 
class ModelAlbumOrder extends Model {
  
  
  
  
  
  
  
  
  
  
  public function addOrder($data) {
    $this->db->query("INSERT INTO `" . DB_PREFIX . "order` SET 
    
    invoice_prefix = '" . $this->db->escape($data['invoice_prefix']) . "', 
    store_id = '" . (int)$data['store_id'] . "', 
    store_name = '" . $this->db->escape($data['store_name']) . "', 
    store_url = '" . $this->db->escape($data['store_url']) . "', 
    customer_id = '" . (int)$data['customer_id'] . "', 
    customer_group_id = '" . (int)$data['customer_group_id'] . "', 
    firstname = '" . $this->db->escape($data['firstname']) . "', 
    lastname = '" . $this->db->escape($data['lastname']) . "', 
    email = '" . $this->db->escape($data['email']) . "', 
    telephone = '" . $this->db->escape($data['telephone']) . "', 
    skype = '" . $this->db->escape($data['skype']) . "', 
    payment_firstname = '" . $this->db->escape($data['payment_firstname']) . "', 
    payment_lastname = '" . $this->db->escape($data['payment_lastname']) . "', 
    payment_company = '" . $this->db->escape($data['payment_company']) . "', 
    payment_company_id = '" . $this->db->escape($data['payment_company_id']) . "', 
    payment_tax_id = '" . $this->db->escape($data['payment_tax_id']) . "', 
    payment_address_1 = '" . $this->db->escape($data['payment_address_1']) . "', 
    payment_address_2 = '" . $this->db->escape($data['payment_address_2']) . "', 
    payment_city = '" . $this->db->escape($data['payment_city']) . "', 
    payment_postcode = '" . $this->db->escape($data['payment_postcode']) . "', 
    payment_country = '" . $this->db->escape($data['payment_country']) . "', 
    payment_country_id = '" . (int)$data['payment_country_id'] . "', 
    payment_zone = '" . $this->db->escape($data['payment_zone']) . "', 
    payment_zone_id = '" . (int)$data['payment_zone_id'] . "', 
    payment_address_format = '" . $this->db->escape($data['payment_address_format']) . "', 
    payment_method = '" . $this->db->escape($data['payment_method']) . "', 
    payment_code = '" . $this->db->escape($data['payment_code']) . "', 
    shipping_firstname = '" . $this->db->escape($data['shipping_firstname']) . "', 
    shipping_lastname = '" . $this->db->escape($data['shipping_lastname']) . "', 
    shipping_company = '" . $this->db->escape($data['shipping_company']) . "', 
    shipping_address_1 = '" . $this->db->escape($data['shipping_address_1']) . "', 
    shipping_address_2 = '" . $this->db->escape($data['shipping_address_2']) . "', 
    shipping_city = '" . $this->db->escape($data['shipping_city']) . "', 
    shipping_postcode = '" . $this->db->escape($data['shipping_postcode']) . "', 
    shipping_country = '" . $this->db->escape($data['shipping_country']) . "', 
    shipping_country_id = '" . (int)$data['shipping_country_id'] . "', 
    shipping_zone = '" . $this->db->escape($data['shipping_zone']) . "', 
    shipping_zone_id = '" . (int)$data['shipping_zone_id'] . "', 
    shipping_address_format = '" . $this->db->escape($data['shipping_address_format']) . "', 
    shipping_method = '" . $this->db->escape($data['shipping_method']) . "', 
    shipping_code = '" . $this->db->escape($data['shipping_code']) . "', 
    comment = '" . $this->db->escape($data['comment']) . "', 
    total = '" . (float)$data['total'] . "', 
    affiliate_id = '" . (int)$data['affiliate_id'] . "', 
    commission = '" . (float)$data['commission'] . "', 
    language_id = '" . (int)$data['language_id'] . "', 
    currency_id = '" . (int)$data['currency_id'] . "', 
    currency_code = '" . $this->db->escape($data['currency_code']) . "', 
    currency_value = '" . (float)$data['currency_value'] . "', 
    ip = '" . $this->db->escape($data['ip']) . "', 
    forwarded_ip = '" .  $this->db->escape($data['forwarded_ip']) . "', 
    user_agent = '" . $this->db->escape($data['user_agent']) . "', 
    accept_language = '" . $this->db->escape($data['accept_language']) . "', 
    date_added = NOW(), date_modified = NOW()");



    $order_id = $this->db->getLastId();

    foreach ($data['products'] as $product) { 
      $this->db->query("INSERT INTO " . DB_PREFIX . "order_product SET order_id = '" . (int)$order_id . "', product_id = '" . (int)$product['product_id'] . "', name = '" . $this->db->escape($product['name']) . "', model = '" . $this->db->escape($product['model']) . "', quantity = '" . (int)$product['quantity'] . "', price = '" . (float)$product['price'] . "', total = '" . (float)$product['total'] . "', tax = '" . (float)$product['tax'] . "', reward = '" . (int)$product['reward'] . "'");
 
      $order_product_id = $this->db->getLastId();

      foreach ($product['option'] as $option) {
        $this->db->query("INSERT INTO " . DB_PREFIX . "order_option SET order_id = '" . (int)$order_id . "', order_product_id = '" . (int)$order_product_id . "', product_option_id = '" . (int)$option['product_option_id'] . "', product_option_value_id = '" . (int)$option['product_option_value_id'] . "', name = '" . $this->db->escape($option['name']) . "', `value` = '" . $this->db->escape($option['value']) . "', `type` = '" . $this->db->escape($option['type']) . "'");
      }
        
      foreach ($product['download'] as $download) {
        $this->db->query("INSERT INTO " . DB_PREFIX . "order_download SET order_id = '" . (int)$order_id . "', order_product_id = '" . (int)$order_product_id . "', name = '" . $this->db->escape($download['name']) . "', filename = '" . $this->db->escape($download['filename']) . "', mask = '" . $this->db->escape($download['mask']) . "', remaining = '" . (int)($download['remaining'] * $product['quantity']) . "'");
      } 
    }
    
    foreach ($data['vouchers'] as $voucher) {
      $this->db->query("INSERT INTO " . DB_PREFIX . "order_voucher SET order_id = '" . (int)$order_id . "', description = '" . $this->db->escape($voucher['description']) . "', code = '" . $this->db->escape($voucher['code']) . "', from_name = '" . $this->db->escape($voucher['from_name']) . "', from_email = '" . $this->db->escape($voucher['from_email']) . "', to_name = '" . $this->db->escape($voucher['to_name']) . "', to_email = '" . $this->db->escape($voucher['to_email']) . "', voucher_theme_id = '" . (int)$voucher['voucher_theme_id'] . "', message = '" . $this->db->escape($voucher['message']) . "', amount = '" . (float)$voucher['amount'] . "'");
    }
      
    foreach ($data['totals'] as $total) {
      $this->db->query("INSERT INTO " . DB_PREFIX . "order_total SET order_id = '" . (int)$order_id . "', code = '" . $this->db->escape($total['code']) . "', title = '" . $this->db->escape($total['title']) . "', text = '" . $this->db->escape($total['text']) . "', `value` = '" . (float)$total['value'] . "', sort_order = '" . (int)$total['sort_order'] . "'");
    } 

    return $order_id;
  }
  
  
  
  
  
  
    
      
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