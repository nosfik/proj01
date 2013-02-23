<?php  
class ControllerAlbumOrder extends Controller {
  
  
  public function make() {
    if (!$this->customer->isLogged()) {
      $this->redirect($this->url->link('account/login', '', 'SSL')); 
    } else {
      
      header('Content-type: application/json');
      $return['success'] = 'false'; 
      $this->load->model('album/order');
      $this->load->model('album/content');
      
     
      
      if (isset($this->request->post['album_id'])) {
        $album_id = $this->request->post['album_id'];
      } else {
        $album_id = 0;
      }
       if (isset($this->request->post['color_correction'])) {
        $color_correction = $this->request->post['color_correction'];
      } else {
        $color_correction = 0;
      }
       if (isset($this->request->post['apply'])) {
        $apply = $this->request->post['apply'];
      } else {
        $apply = "";
      }
       if (isset($this->request->post['cut_photo'])) {
        $cut_photo = $this->request->post['cut_photo'];
      } else {
        $cut_photo = 0;
      }
       if (isset($this->request->post['format'])) {
        $format = $this->request->post['format'];
      } else {
        $format = 0;
      }
       if (isset($this->request->post['paper'])) {
        $paper = $this->request->post['paper'];
      } else {
        $paper = 0;
      }
       if (isset($this->request->post['photos'])) {
        $photos = $this->request->post['photos'];
      } else {
        $photos = "";
      }
       if (isset($this->request->post['print_mode'])) {
        $print_mode = $this->request->post['print_mode'];
      } else {
        $print_mode = 0;
      }
      if (isset($this->request->post['red_eye'])) {
        $red_eye = $this->request->post['red_eye'];
      } else {
        $red_eye = 0;
      }
      if (isset($this->request->post['white_border'])) {
        $white_border = $this->request->post['white_border'];
      } else {
        $white_border = 0;
      }
      if (isset($this->request->post['count'])) {
        $count = $this->request->post['count'];
      } else {
        $count = 1;
      }
      
      if($album_id != 0 && $photos != "") {
        
        $photos_array = explode(",", $photos);
        $orderTimeMinutes = $this->model_album_order->getTimeOrder();
        $orderDate = strtotime("+".$orderTimeMinutes." minutes");

        $config = array(
          'album_id'           => $album_id,
          'color_correction'   => $color_correction,
          'apply'              => $apply,
          'cut_photo'          => $cut_photo,
          'format'             => $format,
          'paper'              => $paper,
          'count'              => $count,
          'photos'             => $photos,
          'print_mode'         => $print_mode,
          'red_eye'            => $red_eye,
          'white_border'       => $white_border,
          'customer_id'        => $this->customer->getId(),
          'end_date'           => date("Y-m-d", $orderDate),
          'end_time'           => date("H:i:s", $orderDate)
          );
          
          
          $photos_order = array();
               for($i = 0; $i < sizeof($photos_array); $i++) {
                 $config['photo_id'] = $photos_array[$i];
                 $photo_name = $this->model_album_order->isPhotoBelongToCustomer($config);
                 $config['photo_name'] = $photo_name;
                 if($photo_name != '') {
                    if($config['apply'] == 'photo') {
                      $this->model_album_content->savePhotoPreference($config);
                    } elseif($config['apply'] == 'copy') {
                      $config['photo_id'] = $this->model_album_content->savePhotoCopyPreference($config);
                    }
                    $photos_order[] = $config['photo_id']; 
                 }
             }
                $return['success'] = 'true'; 
                $this->cart->addAlbum($config, implode(",", $photos_order), sizeof($photos_order) - 1);
          } 
      }
      echo json_encode($return);
      
  }


      
}
?>