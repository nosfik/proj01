<?php  
class ControllerAlbumContent extends Controller {
    
    public function delete() {
    	  if ($this->customer->isLogged()) {
		      header('Content-type: application/json');
		      $return['success'] = 'false'; 
					$this->load->model('album/content');
					
					if (isset($this->request->post['photos'])) {
		        $photos =  explode(',', $this->request->post['photos']) ;
		      } else { 
		        $photos = array();
		      }
					
					if (isset($this->request->post['album'])) {
						$album_id = $this->request->post['album'];
					} else {
						$album_id = 0;
					}
					
					$this->data['temp'] = array();
					
					$album_dir =  DIR_PHOTOS.'album_cus_'.$this->customer->getId().'/album_'.$album_id;
					foreach ($photos as $photo_id) {
						$photo_name = $this->model_album_content->deletePhotoByAlbum($photo_id, $album_id, $this->customer->getId());
			      if($photo_name != '' && is_dir($album_dir) && is_file($album_dir.'/'.$photo_name)) {
			         @unlink($album_dir.'/'.$photo_name);
			      }
						$return['success'] = 'true'; 
						$return['name'] = $this->data['temp'];
					}
					
		      echo json_encode($return);
		    }
		}

		public function rotate() {
			
		 if ($this->customer->isLogged()) {
		 	$return['success'] = 'false'; 
	      header('Content-type: application/json');
			 $this->load->model('album/content');
			 
				if (isset($this->request->post['photo_id'])) {
					$photo_id = $this->request->post['photo_id'];
				} else {
					$photo_id = 0;
				}
				
				if (isset($this->request->post['angle'])) {
					$angle = $this->request->post['angle'];
				} else {
					$angle = 0;
				}
				
				if (isset($this->request->post['album_id'])) {
					$album_id = $this->request->post['album_id'];
				} else {
					$album_id = 0;
				}
				
				$photo = $this->model_album_content->getPhotoByAlbum($photo_id, $album_id, $this->customer->getId());
				
				$name = $photo['photo_name'];
				$pathImage =  DIR_PHOTOS.'album_cus_'.$this->customer->getId().'/album_'.$album_id.'/'.$name;
				
				$tmp = explode('.', $name);
				$ext = strtolower($tmp[sizeof($tmp) - 1]);
				
				
				switch ($ext) {
					case 'png' : $image = imagecreatefrompng($pathImage); break;
					case 'gif' : $image = imagecreatefromgif($pathImage); break;
					case 'jpg' : 
					case 'jpeg' :  
					default: $image = imagecreatefromjpeg($pathImage); break;
				}
				
				$rotate = imagerotate($image, $angle, 0);
				
				
				switch ($ext) {
					case 'png' : imagepng($rotate, $pathImage); break;
					case 'gif' : imagegif($rotate, $pathImage); break;
					case 'jpg' : 
					case 'jpeg' :  
					default: imagejpeg($rotate, $pathImage); break;
				}

				imagedestroy($rotate);
				$return['success'] = 'true'; 
				
				echo json_encode($return);
			
		 }
			
		}


    public function edit() {
      
      if (!$this->customer->isLogged()) {
      if(isset($this->request->get['album_id'])){
         $this->session->data['redirect'] = $this->url->link('album/content', 'album_id='.$this->request->get['album_id'], 'SSL');
       } 
      $this->redirect($this->url->link('account/login', '', 'SSL')); 
    } else {
    	
			
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
			
			if($printmode && $paper && $red_eye && $white_border && $format && $cut && $color_correction) {
				header('Content-type: application/json');
				$return['success'] = 'false'; 
				$this->load->model('album/content');
				$albumDir = DIR_PHOTOS.'album_cus_'.$this->customer->getId().'/album_'.$album_id;
				$photoName = $this->model_album_content->getPhotoNameById($photo_id, $this->customer->getId());
				$photo_src = $albumDir. '/' . $photoName;
				
				
				$config = array(
          'album_id'           => $album_id,
          'color_correction'   => $color_correction,
          'cut_photo'          => $cut,
          'format'             => $format,
          'paper'              => $paper,
          'photo_id'           => $photo_id,
          'print_mode'         => $printmode,
          'red_eye'            => $red_eye,
          'white_border'       => $white_border,
          'customer_id'        => $this->customer->getId()
          );
					
				if($copy) {
					
					//echo $photoName;/
					$tmp = explode('.', $photoName);
					$arr_size = sizeof($tmp);
					$name = '';
					//print_r($tmp);
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
					//print_r($matches);
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
					$return['photo'] = $this->model_album_content->savePhotoCopyPreference($config);
					
				} else {
					$this->model_album_content->savePhotoPreference($config);
				}
				
				
				
					if($width && $height) {
						$return['frame'] = 'start'; 
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
				
				if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/album/edit.tpl')) {
        $this->template = $this->config->get('config_template') . '/template/album/edit.tpl';
      } else {
        $this->template = 'default/template/album/edit.tpl';
      }
      
      $this->data['customer_id'] = $this->customer->getId();
      $this->load->model('album/content');
      
      
      if(!$album_id ||  !$photo_id){
        $this->redirect($this->url->link('album/album', '', 'SSL')); 
      } else {
        $this->load->model('album/album');
        $this->load->model('album/content');
        $this->data['albumName'] = $this->model_album_album->getAlbumName($album_id, $this->customer->getId()); 
        $this->data['album_id'] = $album_id;
        $this->data['formats'] = $this->model_album_content->getFormats();
        $this->data['papers'] = $this->model_album_content->getPaperTypes();
				$this->data['printmodes'] = $this->model_album_content->getPrintModes();
				
        
        $this->data['album_id'] = $album_id;
				$this->data['photo_id'] = $photo_id;
        
        
      
        $albumDir = 'albums/album_cus_'.$this->customer->getId().'/album_'.$album_id;
        
        
        if(is_dir($albumDir)){
          $photo = $this->model_album_content->getPhotoByAlbum($photo_id, $album_id, $this->customer->getId());
          
          $this->data['photo'] = array (
            'id'                => $photo['album_photo_id'],
            'prev'							=> ( ($photo['prev'] == null) ? '' : $this->url->link('album/content/edit', 'album='.$album_id.'&photo='.$photo['prev'], 'SSL')),
            'next'							=> ( ($photo['next'] == null) ? '' : $this->url->link('album/content/edit', 'album='.$album_id.'&photo='.$photo['next'], 'SSL')),
            'name'              => $photo['photo_name'],
            'format'            => $photo['album_photo_format_id'],
            'paper'             => $photo['album_photo_paper_id'],
            'printmode'         => $photo['album_photo_printmode_id'],
            'color_correction'  => $photo['color_correction'],
            'cut'               => $photo['cut_photo'],
            'white_border'      => $photo['white_border'],
            'red_eye'           => $photo['red_eye'],
            'path'              => $albumDir.'/'.$photo['photo_name']
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
				
			}
			
			
			
			
			
			
			
      
      
        
      }
      
      
      
      
      
      
      
      
     
      
     

      
      
      
    }
      
    }
    
     public function index() {
    
     if (!$this->customer->isLogged()) {
      if(!isset($this->request->get['album_id'])){
         $this->session->data['redirect'] = $this->url->link('album/content', 'album_id='.$this->request->get['album_id'], 'SSL');
       } 
      $this->redirect($this->url->link('account/login', '', 'SSL')); 
    } else {
      
      if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/album/content.tpl')) {
        $this->template = $this->config->get('config_template') . '/template/album/content.tpl';
      } else {
        $this->template = 'default/template/album/content.tpl';
      }
      
      $this->data['customer_id'] = $this->customer->getId();
      $this->load->model('album/album');
			 $this->load->model('album/content');
       
      $this->data['formats'] = $this->model_album_content->getFormats();
      $this->data['papers'] = $this->model_album_content->getPaperTypes();
      $this->data['print_modes'] = $this->model_album_content->getPrintModes();
      
      if (isset($this->request->get['album_id'])) {
        $album_id = $this->request->get['album_id'];
      } else { 
        $album_id = 0;
      } 
			
			$this->data['album_id'] = $album_id;
			
			$this->data['albumName'] = $this->model_album_album->getAlbumName($album_id, $this->customer->getId()); 
      
      
      
      
      $this->data['photos'] = array();
      
			$albumDir = 'albums/album_cus_'.$this->customer->getId().'/album_'.$album_id;
      if(is_dir($albumDir)){
      	$photos = $this->model_album_content->getPhotosByAlbum($album_id, $this->customer->getId());
      	foreach($photos as $photo) {
	        	$this->data['photos'][] = array (
		          'id'            => $photo['album_photo_id'],
		          'path'          => $albumDir .'/'.$photo['photo_name'],
		          'name'					=> $photo['photo_name']
	      	);
      	}
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


    
}
?>