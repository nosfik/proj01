<?php  
class ControllerAlbumOrder extends Controller {
	
	
	 public function delete() {
	 	
		
		if (!$this->customer->isLogged() || !$this->cart->hasAlbums()) {
      //$this->session->data['redirect'] = $this->url->link('album/album', '', 'SSL');
      $this->redirect($this->url->link('common/home', '', 'SSL')); 
    } else {
    	header('Content-type: application/json');
      $return['success'] = 'false'; 
			
			if (isset($this->request->get['key'])) {
				$key = $this->request->get['key'];
			} else {
				$key = '';
			}
			
			if (isset($this->request->get['photo'])) {
				$photo_id = $this->request->get['photo'];
			} else {
				$photo_id = 0;
			}
			
			if($photo_id && !empty($key)){
				
				$orders = $this->cart->getAlbums();
				$currOrder = $orders[$key];
				if(!empty($currOrder)) {
					
					
					
					
					
				}
				
			}
			
			
		}
		
		
		
    if ($this->customer->isLogged()) {
      header('Content-type: application/json');
      $return['success'] = 'false'; 
      $this->load->model('album/album');
      $album_id = (int)$this->request->post['album_id'];
      $cover = $this->model_album_album->deleteAlbum($album_id, $this->customer->getId());
      $customer_dir =  DIR_PHOTOS.'album_cus_'.$this->customer->getId();
      
      $text = "cover = ".$cover. "\n". "dir = ".$customer_dir."/cover"." isdir = ".is_dir($customer_dir.'/cover')
      . "  file = ".$customer_dir.'/cover'.$cover. " is_file = ". is_file($customer_dir.'/cover'.$cover);
      if($cover != '' && is_dir($customer_dir.'/cover') && is_file($customer_dir.'/cover/'.$cover)) {
         @unlink($customer_dir.'/cover/'.$cover);
      }
      $albumDir = DIR_PHOTOS.'album_cus_'.$this->customer->getId().'/album_'.$album_id;
      if (is_dir($albumDir)) {
        $files = glob($albumDir."/*");
        if ($files) {
          foreach($files as $file) {
            @unlink($file);
          }
        }
         @rmdir($albumDir);
         $return['success'] = 'true'; 
      }
      echo json_encode($return);
    }
  }

	
	
	public function index() {
		
		
		if (!$this->customer->isLogged() || !$this->cart->hasAlbums()) {
      //$this->session->data['redirect'] = $this->url->link('album/album', '', 'SSL');
      $this->redirect($this->url->link('common/home', '', 'SSL')); 
    } else {
      
      
      $this->data['customer_id'] = $this->customer->getId();
      $this->load->model('album/album');
			$this->load->model('album/content');
			
			if (isset($this->request->get['key'])) {
				$key = $this->request->get['key'];
			} else {
				$key = '';
			}
				
			
			$orderAlbums = $this->cart->getAlbums();
			
			$currOrder = $orderAlbums[$key];
			
			$this->data['photos'] = array();
			foreach ($currOrder['photos'] as $photo_id) {
				$this->data['photos'][] = array(
					'id' 		=> $photo_id,
					'path' 	=> 'albums/album_cus_'.$this->customer->getId().'/album_'.$currOrder['album_id'].'/'.$currOrder['photos_name_map'][$photo_id],
					'name' 	=> $currOrder['photos_name_map'][$photo_id]
				
				);
				
				
			}
			
      if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/album/order.tpl')) {
        $this->template = $this->config->get('config_template') . '/template/album/order.tpl';
      } else {
        $this->template = 'default/template/album/order.tpl';
      }
      
      $this->children = array(
        'common/column_right',
        'common/content_top',
        'common/content_bottom',
        'common/footer',
        'common/header'
      );
      
      $this->response->setOutput($this->render());
    }
    
    
		
		
	}
  
  
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
                    	
											$tmp = explode('.', $photo_name);
											$arr_size = sizeof($tmp);
											$name = '';
											$ext = strtolower($tmp[$arr_size - 1]);
											for ($i = 0; $i < ($arr_size - 1) ; $i++) {
												$name .= $tmp[$i];
											}
											$pattern = '/(?<name>.+)(?<copy>_copy[0-9]+)$/';
											preg_match($pattern, $name, $matches);
											$searchName = (!empty($matches)) ? $matches['name'] : $name;
											$similar_photo_name = $this->model_album_content->getSimilarPhotoName($album_id, $this->customer->getId(), $searchName);
											if(!empty($similar_photo_name)) {
												
												$tmp = explode('.', $similar_photo_name);
												$arr_size = sizeof($tmp);
												$name = '';
												//print_r($tmp);
												$ext = strtolower($tmp[$arr_size - 1]);
												for ($i = 0; $i < ($arr_size - 1) ; $i++) {
													$name .= $tmp[$i];
												}
											}
											
											preg_match($pattern, $name, $matches);
											if(!empty($matches)){
											  $oldName = $matches['name'];
											  $copy = $matches['copy'];
											  $count = str_replace('_copy', '', $copy);
											  $count++; 
											  $name = $oldName . '_copy' . $count. '.' . $ext;
											} else {
											  $name .= '_copy1'. '.' .$ext;
											}
											
											$new_photo_path = $albumDir.'/'.$name;
										  copy($photo_src, $new_photo_path);
											$config['photo_name'] = $name;
											$config['photo_id'] = $this->model_album_content->savePhotoCopyPreference($config);
                    }
                    $photos_order[] = $config['photo_id']; 
                 }
             }
                $return['success'] = 'true'; 
                if($config['apply'] != 'photo' && $config['apply'] != 'copy') {
                  $this->cart->addAlbum($config,  $photos_order, sizeof($photos_order) - 1, 1);
                } else {
                  $this->cart->addAlbum($config,  $photos_order, sizeof($photos_order) - 1, 0);
                }
                
          } 
      }
      echo json_encode($return);
      
  }


      
}
?>