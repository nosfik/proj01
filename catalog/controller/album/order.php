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
      
      
      if (isset($this->request->post['album'])) {
        $album_id = $this->request->post['album'];
      } else {
        $album_id = 0;
      }
       if (isset($this->request->post['color_correction'])) {
        $color_correction = $this->request->post['color_correction'];
      } else {
        $color_correction = 0;
      }
       if (isset($this->request->post['copy'])) {
        $copy = $this->request->post['copy'];
      } else {
        $copy = 0;
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
          'copy'               => $copy,
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
          
          
          $orderAlbum = $this->model_album_order->makeOrder($config);
          
          $config['album_order_id'] = $orderAlbum;
          
           if($orderAlbum) {
               $orderDir = DIR_ORDER_PHOTOS.'order_'.$orderAlbum;
               mkdir($orderDir);
               
               for($i = 0; $i < sizeof($photos_array); $i++) {
                 $config['photo_id'] = $photos_array[$i];
                 $photo_name = $this->model_album_order->isPhotoBelongToCustomer($config);
                 $config['photo_name'] = $photo_name;
                 if($photo_name != '') {
                    if($config['copy'] == 'false') {
                      $this->model_album_content->savePhotoPreference($config);
                    } else {
                      $config['photo_id'] = $this->model_album_content->savePhotoCopyPreference($config);
                    }
                    $this->model_album_order->addPhotoToOrder($config);
                    //copy(DIR_PHOTOS.'album_cus_'.$this->customer->getId().'/album_'.$config['album_id'].'/'.$photo_name, $orderDir.'/'.$photo_name);
                 }
             }
           }
          }
      }
      echo json_encode($return);
      
  }
  
  
  public function index() {
    
     if (!$this->customer->isLogged()) {
      if(!isset($this->request->get['album_id'])){
         $this->session->data['redirect'] = $this->url->link('album/content', 'album_id='.$this->request->get['album_id'], 'SSL');
       } 
      $this->redirect($this->url->link('account/login', '', 'SSL')); 
    } else {
      
      if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/album/order.tpl')) {
        $this->template = $this->config->get('config_template') . '/template/album/order.tpl';
      } else {
        $this->template = 'default/template/album/order.tpl';
      }
      
      $this->data['customer_id'] = $this->customer->getId();
      $this->load->model('album/order');
      $this->load->model('album/content');
      
      $this->data['formats'] = $this->model_album_content->getFormats();
      $this->data['papers'] = $this->model_album_content->getPaperTypes();
      $this->data['print_modes'] = $this->model_album_content->getPrintModes();
      
      
      $photo_arr = explode(',', $this->request->cookie["album_order"]);
      
      
      if (sizeof($photo_arr) > 0 && $photo_arr[0] != '') {
        $photos = $this->model_album_order->getPhotos($photo_arr, $this->customer->getId());
        $this->data['photos'] = array();
        
        foreach ($photos as $photo) {
          $this->data['photos'][] = array (
            'id'                => $photo['album_photo_id'],
            'name'              => $photo['photo_name'],
            'format'            => $photo['album_photo_format_id'],
            'paper'             => $photo['album_photo_paper_id'],
            'printMode'         => $photo['album_photo_printmode_id'],
            'color_correction'  => $photo['color_correction'],
            'cut'               => $photo['cut_photo'],
            'border'            => $photo['white_border'],
            'red_eye'           => $photo['red_eye'],
            'path'              => 'albums/album_cus_'.$this->customer->getId().'/album_'.$photo['album_id'].'/'.$photo['photo_name']
          );
        }
      
      $this->children = array(
        'common/column_right',
        'common/content_top',
        'common/content_bottom',
        'common/footer',
        'common/header'
      );
      
      $this->response->setOutput($this->render());
      } else {
        $this->redirect($this->url->link('album/album', '', 'SSL')); 
      }
      
    }
    
  }


      
}
?>