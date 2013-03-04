<?php
class ControllerAlbumOrder extends Controller {

  public function delete() {
    header('Content-type: application/json');
    $return['success'] = 'false';
    if (!($this -> customer -> isLogged() && $this -> cart -> hasAlbums())) {
      $this -> redirect($this -> url -> link('common/home', '', 'SSL'));
    } else {
       $return['success'] = 'false';

      if (isset($this -> request -> post['key'])) {
        $key = $this -> request -> post['key'];
      } else {
        $key = '';
      }

      if (isset($this -> request -> post['photo'])) {
        $photo_id = $this -> request -> post['photo'];
      } else {
        $photo_id = 0;
      }

      if ($photo_id && !empty($key)) {

        $newKey = $this -> cart -> removePhotoInAlbum($key, $photo_id);
        if ($newKey != '') {
          $return['success'] = 'true';
          $return['key'] = $newKey;
        }
       

      }
    }
   echo json_encode($return);
  }
  
  
  
  public function edit() {

    if (!$this -> customer -> isLogged() || !$this -> cart -> hasAlbums()) {
      //$this->session->data['redirect'] = $this->url->link('album/album', '', 'SSL');
      $this -> redirect($this -> url -> link('common/home', '', 'SSL'));
    } else {

      $this -> data['customer_id'] = $this -> customer -> getId();

      if (isset($this -> request -> get['key'])) {
        $key = $this -> request -> get['key'];
      } else {
        $key = '';
      }
      
      if (isset($this -> request -> get['photo'])) {
        $photo_id = $this -> request -> get['photo'];
      } else {
        $photo_id = 0;
      }
      
      if (isset($this->request->post['color_correction'])) {
        $color_correction = $this->request->post['color_correction'];
      } else { 
        $color_correction = 0;
      } 
      
      if (isset($this->request->post['cut'])) {
        $cut = $this->request->post['cut'];
      } else { 
        $cut = 0;
      } 
      
      if (isset($this->request->post['format'])) {
        $format = $this->request->post['format'];
      } else { 
        $format = 0;
      } 
      
      if (isset($this->request->post['x'])) {
        $img_x = $this->request->post['x'];
      } else { 
        $img_x = 0;
      } 
      
      if (isset($this->request->post['y'])) {
        $img_y = $this->request->post['y'];
      } else { 
        $img_y = 0;
      } 
      
      if (isset($this->request->post['width'])) {
        $width = $this->request->post['width'];
      } else { 
        $width = 0;
      } 
      
      if (isset($this->request->post['height'])) {
        $height = $this->request->post['height'];
      } else { 
        $height = 0;
      } 
      
      if (isset($this->request->post['copy'])) {
        $copy = $this->request->post['copy'];
      } else { 
        $copy = 0;
      } 
      
      if (isset($this->request->post['white_border'])) {
        $white_border = $this->request->post['white_border'];
      } else { 
        $white_border = 0;
      } 
      
      if (isset($this->request->post['red_eye'])) {
        $red_eye = $this->request->post['red_eye'];
      } else { 
        $red_eye = 0;
      } 
      
      if (isset($this->request->post['paper'])) {
        $paper = $this->request->post['paper'];
      } else { 
        $paper = 0;
      } 
      
      if (isset($this->request->post['printmode'])) {
        $printmode = $this->request->post['printmode'];
      } else { 
        $printmode = 0;
      } 
      
      if (isset($this->request->get['album'])) {
        $album_id = $this->request->get['album'];
      } else { 
        $album_id = 0;
      } 
      
      if (isset($this->request->get['photo'])) {
        $photo_id = $this->request->get['photo'];
      } else { 
        $photo_id = 0;
      } 
      
      if (isset($this->request->get['update'])) {
        $this->data['update'] = $this->request->get['update'];
      } else { 
        $this->data['update'] = 0;
      } 
      
      
      
      if($photo_id && !empty($key)) {
        
        
         $this->load->model('album/content');
         $orderAlbums = $this -> cart -> getAlbums();

         $currOrder = $orderAlbums[$key];
        
        if($printmode && $paper && $red_eye && $white_border && $format && $cut && $color_correction) {
          
          
          header('Content-type: application/json');
          $return['success'] = 'false'; 
          $return['update'] = 'false'; 
          $this->load->model('album/content');
          $albumDir = DIR_PHOTOS.'album_cus_'.$this->customer->getId().'/album_'.$currOrder['album_id'];
          $photoName = $currOrder['photos_name_map'][$photo_id];
          $photo_src = $albumDir. '/' . $photoName;
          
          
          $data = array(
            'color_correction'          => $color_correction,
            'cut_photo'                 => $cut,
            'album_photo_format_id'     => $format,
            'album_photo_paper_id'      => $paper,
            'album_photo_printmode_id'  => $printmode,
            'red_eye'                   => $red_eye,
            'white_border'              => $white_border
          );
          
          $this->cart->updatePhotoPreference($key, $photo_id, $data);
          
          
          if($width && $height) {
            $return['update'] = 'true'; 
            $tmp = explode('.', $photoName);
            $ext = strtolower($tmp[sizeof($tmp) - 1]);
            
            switch ($ext) {
              case 'png' : $img_r = imagecreatefrompng($photo_src); break;
              case 'gif' : $img_r = imagecreatefromgif($photo_src); break;
              case 'jpg' : 
              case 'jpeg' :  
              default: $img_r = imagecreatefromjpeg($photo_src); break;
            } 
            
            $targ_w = $width;
            $targ_h = $height;
            //list($targ_w, $targ_h) = getimagesize($photo_src);
            
            $dst_r = ImageCreateTrueColor( $targ_w, $targ_h );
          
            imagecopyresampled($dst_r,$img_r,0,0,$img_x,$img_y,$targ_w,$targ_h,$width,$height);
            
            if(isset($new_photo_path)){
              $photo_new_src = $new_photo_path;
            } else {
              $photo_new_src = $photo_src;
            }
            switch ($ext) {
              case 'png' : imagepng($dst_r, $photo_new_src); break;
              case 'gif' : imagegif($dst_r, $photo_new_src); break;
              case 'jpg' : 
              case 'jpeg' :  
              default: imagejpeg($dst_r, $photo_new_src); break;
            } 
          
            imagedestroy($dst_r);
            imagedestroy($img_r);
          } else {
            if(isset($new_photo_path)){
              copy($photo_src, $new_photo_path);
            }
          }
        
        
        $return['success'] = 'true';
        echo json_encode($return);
        
      } else {
        
            $this->data['formats'] = $this->model_album_content->getFormats();
            $this->data['papers'] = $this->model_album_content->getPaperTypes();
            $this->data['printmodes'] = $this->model_album_content->getPrintModes();
            $this->data['key'] = $key;
      
            
            $keyArr = array_search($photo_id, $currOrder['photos']);
            $lastKey = sizeof($currOrder['photos']) - 1;
            
            $nextPhoto = ($keyArr == $lastKey) ? '' : $this->url->link('album/order/edit', 'key='.$key.'&photo='.($currOrder['photos'][$keyArr + 1]), 'SSL') ; 
            $prevPhoto = ($keyArr == 0) ? '' : $this->url->link('album/order/edit', 'key='.$key.'&photo='.($currOrder['photos'][$keyArr - 1]), 'SSL') ; 
           
            $albumDir =  'albums/album_cus_'.$this->customer->getId().'/album_'.$currOrder['album_id'];
            $this->data['album_id'] = $currOrder['album_id'];
            $this->data['photo_id'] = $photo_id;
            $this->data['photo'] = array (
                  'id'                => $photo_id,
                  'prev'              => $prevPhoto,
                  'next'              => $nextPhoto,
                  'name'              => $currOrder['photos_name_map'][$photo_id],
                  'format'            => $currOrder['preferences_map'][$photo_id]['album_photo_format_id'],
                  'paper'             => $currOrder['preferences_map'][$photo_id]['album_photo_paper_id'],
                  'printmode'         => $currOrder['preferences_map'][$photo_id]['album_photo_printmode_id'],
                  'color_correction'  => $currOrder['preferences_map'][$photo_id]['color_correction'],
                  'cut'               => $currOrder['preferences_map'][$photo_id]['cut_photo'],
                  'white_border'      => $currOrder['preferences_map'][$photo_id]['white_border'],
                  'red_eye'           => $currOrder['preferences_map'][$photo_id]['red_eye'],
                  'path'              => $albumDir.'/'.$currOrder['photos_name_map'][$photo_id]
                );
      
            if (file_exists(DIR_TEMPLATE . $this -> config -> get('config_template') . '/template/album/order_photo_edit.tpl')) {
              $this -> template = $this -> config -> get('config_template') . '/template/album/order_photo_edit.tpl';
            } else {
              $this -> template = 'default/template/album/order_photo_edit.tpl';
            }
      
            $this -> children = array('common/column_right', 'common/content_top', 'common/content_bottom', 'common/footer', 'common/header');
      
            $this -> response -> setOutput($this -> render());
        }
      } else {
        $this -> redirect($this -> url -> link('common/home', '', 'SSL'));
      }

     
    }

  }


  public function index() {

    if (!$this -> customer -> isLogged() || !$this -> cart -> hasAlbums()) {
      //$this->session->data['redirect'] = $this->url->link('album/album', '', 'SSL');
      $this -> redirect($this -> url -> link('common/home', '', 'SSL'));
    } else {

      $this -> data['customer_id'] = $this -> customer -> getId();

      if (isset($this -> request -> get['key'])) {
        $key = $this -> request -> get['key'];
      } else {
        $key = '';
      }

      $orderAlbums = $this -> cart -> getAlbums();
      $currOrder = $orderAlbums[$key];
      $this->data['key'] = $key;

      $this -> data['photos'] = array();
      foreach ($currOrder['photos'] as $photo_id) {
        $this -> data['photos'][] = array('id' => $photo_id, 'path' => 'albums/album_cus_' . $this -> customer -> getId() . '/album_' . $currOrder['album_id'] . '/small_' . $currOrder['photos_name_map'][$photo_id], 'name' => $currOrder['photos_name_map'][$photo_id]);

      }

      if (file_exists(DIR_TEMPLATE . $this -> config -> get('config_template') . '/template/album/order.tpl')) {
        $this -> template = $this -> config -> get('config_template') . '/template/album/order.tpl';
      } else {
        $this -> template = 'default/template/album/order.tpl';
      }

      $this -> children = array('common/column_right', 'common/content_top', 'common/content_bottom', 'common/footer', 'common/header');

      $this -> response -> setOutput($this -> render());
    }

  }

  public function make() {
    if (!$this -> customer -> isLogged()) {
      $this -> redirect($this -> url -> link('account/login', '', 'SSL'));
    } else {

      header('Content-type: application/json');
      $return['success'] = 'false';
      $this -> load -> model('album/order');
      $this -> load -> model('album/content');

      if (isset($this -> request -> post['album_id'])) {
        $album_id = $this -> request -> post['album_id'];
      } else {
        $album_id = 0;
      }
      if (isset($this -> request -> post['color_correction'])) {
        $color_correction = $this -> request -> post['color_correction'];
      } else {
        $color_correction = 0;
      }
      if (isset($this -> request -> post['apply'])) {
        $apply = $this -> request -> post['apply'];
      } else {
        $apply = "";
      }
      if (isset($this -> request -> post['cut_photo'])) {
        $cut_photo = $this -> request -> post['cut_photo'];
      } else {
        $cut_photo = 0;
      }
      if (isset($this -> request -> post['format'])) {
        $format = $this -> request -> post['format'];
      } else {
        $format = 0;
      }
      if (isset($this -> request -> post['paper'])) {
        $paper = $this -> request -> post['paper'];
      } else {
        $paper = 0;
      }
      if (isset($this -> request -> post['photos'])) {
        $photos = $this -> request -> post['photos'];
      } else {
        $photos = "";
      }
      if (isset($this -> request -> post['print_mode'])) {
        $print_mode = $this -> request -> post['print_mode'];
      } else {
        $print_mode = 0;
      }
      if (isset($this -> request -> post['red_eye'])) {
        $red_eye = $this -> request -> post['red_eye'];
      } else {
        $red_eye = 0;
      }
      if (isset($this -> request -> post['white_border'])) {
        $white_border = $this -> request -> post['white_border'];
      } else {
        $white_border = 0;
      }
      if (isset($this -> request -> post['count'])) {
        $count = $this -> request -> post['count'];
      } else {
        $count = 1;
      }

      if ($album_id != 0 && $photos != "") {

        $photos_array = explode(",", $photos);
        $orderTimeMinutes = $this -> model_album_order -> getTimeOrder();
        $orderDate = strtotime("+" . $orderTimeMinutes . " minutes");

        $config = array(
          'album_id' => $album_id, 
          'color_correction' => $color_correction, 
          'apply' => $apply, 
          'cut_photo' => $cut_photo, 
          'format' => $format, 
          'paper' => $paper, 
          'count' => $count, 
          'photos' => $photos, 
          'print_mode' => $print_mode, 
          'red_eye' => $red_eye, 
          'white_border' => $white_border, 
          'customer_id' => $this -> customer -> getId(), 
          'end_date' => date("Y-m-d", $orderDate), 
          'end_time' => date("H:i:s", $orderDate)
        );

        $photos_order = array();
        for ($i = 0; $i < sizeof($photos_array); $i++) {
          $config['photo_id'] = $photos_array[$i];
          
          $photo_name = $this -> model_album_order -> isPhotoBelongToCustomer($config);
          $config['photo_name'] = $photo_name;
          if ($photo_name != '') {
            if ($config['apply'] == 'photo') {
              $this -> model_album_content -> savePhotoPreference($config);
            } elseif ($config['apply'] == 'copy') {
              
              $albumDir = DIR_PHOTOS.'album_cus_'.$this->customer->getId().'/album_'.$config['album_id'].'/';
             
              $photo_src = $albumDir.$photo_name;
              $photo_small_src = $albumDir.'small_'.$photo_name;
              
              
              
              $tmp = explode('.', $photo_name);
              $arr_size = sizeof($tmp);
              $name = '';
              $ext = strtolower($tmp[$arr_size - 1]);
              for ($j = 0; $j < ($arr_size - 1); $j++) {
                $name .= $tmp[$j];
              }
              $pattern = '/(?<name>.+)(?<copy>_copy[0-9]+)$/';
              preg_match($pattern, $name, $matches);
              $searchName = (!empty($matches)) ? $matches['name'] : $name;
              $similar_photo_name = $this -> model_album_content -> getSimilarPhotoName($album_id, $this -> customer -> getId(), $searchName);
              if (!empty($similar_photo_name)) {

                $tmp = explode('.', $similar_photo_name);
                $arr_size = sizeof($tmp);
                $name = '';
                //print_r($tmp);
                $ext = strtolower($tmp[$arr_size - 1]);
                for ($j = 0; $j < ($arr_size - 1); $j++) {
                  $name .= $tmp[$j];
                }
              }

              preg_match($pattern, $name, $matches);
              if (!empty($matches)) {
                $oldName = $matches['name'];
                $copy = $matches['copy'];
                $count = str_replace('_copy', '', $copy);
                $count++;
                $name = $oldName . '_copy' . $count . '.' . $ext;
              } else {
                $name .= '_copy1' . '.' . $ext;
              }
              
              

              $new_photo_path = $albumDir . $name;
              $new_small_photo_path = $albumDir . 'small_' . $name;
              copy($photo_src, $new_photo_path);
              copy($photo_small_src, $new_small_photo_path);
              $config['photo_name'] = $name;
              $config['photo_id'] = $this -> model_album_content -> savePhotoCopyPreference($config);
            }
            $photos_order[] = $config['photo_id'];
          }
        }
        $return['success'] = 'true';
        if ($config['apply'] != 'photo' && $config['apply'] != 'copy') {
          $this -> cart -> addAlbum($config, $photos_order, sizeof($photos_order) - 1, 1);
        } else {
          $this -> cart -> addAlbum($config, $photos_order, sizeof($photos_order) - 1, 0);
        }

      }
    }
    echo json_encode($return);

  }

}
?>