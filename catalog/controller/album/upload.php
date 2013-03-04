<?php  
class ControllerAlbumUpload extends Controller {
  
  public function start() {
    if (!$this->customer->isLogged()) {
      $this->session->data['redirect'] = $this->url->link('album/upload/start', '', 'SSL');
      $this->redirect($this->url->link('account/login', '', 'SSL')); 
    } else {
      
      
      $this->load->model('album/upload');
      $this->load->model('album/album');
      $this->data['customer_id'] = $this->customer->getId();
      
      
      $images = $this->model_album_upload->getFilesId($this->customer->getId());
      
      if(sizeof($images) == 0) {
        $this->redirect($this->url->link('album/upload', '', 'SSL')); 
      }
      
      $this->data['images'] = array();
      
      foreach($images as $image) {
        $this->data['images'][] = array (
          'id'    => $image['customer_temp_photo_id'],
          'name'  => $image['name'],
          'size'  => (int)( $image['size'] / 1024 )
          );
      }
      
      $albums = $this->model_album_album->getAlbums($this->customer->getId());
      $this->data['albums'] = array();
      
      foreach($albums as $album) {
        
        
        $cover = ($album['photo'] == '') ? '' : 'albums/album_cus_'.$this->customer->getId().'/cover/'.$album['photo'];
        if(!is_file($cover)){
          $this->load->model('album/content');
          $photo_name =  $this->model_album_content->getPhotosByAlbumForCover($album['album_id'], $this->customer->getId());
          $cover = ($photo_name != '') ? 'albums/album_cus_'.$this->customer->getId().'/album_'.$album['album_id'].'/'.$photo_name : '';
        }
        
        $this->data['albums'][] = array (
          'id'            => $album['album_id'],
          'name'          => $album['name'],
          'description'   => $album['description'],
          'photo'         => $album['photo'],
          'date'          => $album['date'],
          'size'          => $album['size'],
          'cover'         => $cover
         );
      }
      
      
      if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/album/create_album.tpl')) {
        $this->template = $this->config->get('config_template') . '/template/album/create_album.tpl';
      } else {
        $this->template = 'default/template/album/create_album.tpl';
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
  
   public function image() {
    if ($this->customer->isLogged() && isset($this->request->get['image'])) {
    	
			$this->load->model('album/upload');
      $image = $this->model_album_upload->getFile($this->customer->getId(), $this->request->get['image']);
      
      $name = $image['name'];
			$tmp = explode('.', $name);
			$ext = strtolower($tmp[sizeof($tmp) - 1]);
			
			switch ($ext) {
				case 'png' : $content_type = 'image/png'; break;
				case 'gif' : $content_type = 'image/gif'; break;
				case 'jpg' : 
				case 'jpeg' :  
				default: $content_type = 'image/jpeg'; break;
			}
			
			$this->data['content_type'] = $content_type;
			header('Content-type: '.$content_type);
			echo ($image['photo']);
    }
  }

  public function index() {
    
    if (!$this->customer->isLogged()) {
      $this->session->data['redirect'] = $this->url->link('album/upload', '', 'SSL');
      $this->redirect($this->url->link('account/login', '', 'SSL')); 
    } else {
      $this->document->addStyle('catalog/view/theme/default/stylesheet/uploadify.css');
      $this->document->addScript('catalog/view/javascript/jquery.uploadify-3.1.min.js');
      $this->data['token'] = $this->customer->getSecretToken();
      
      if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/album/upload.tpl')) {
        $this->template = $this->config->get('config_template') . '/template/album/upload.tpl';
      } else {
        $this->template = 'default/template/album/upload.tpl';
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

  public function add() {
      
    if ( (!empty($_FILES)) && $_POST['token']) {
      $customer_id = $this->customer->getCustomerIdByToken($_POST['token']);
      $msg = '';
      $tempFile = $_FILES['Filedata']['tmp_name'];
      // Validate the file type
      $fileTypes = array('jpg','jpeg','gif','png'); // File extensions
      $fileParts = pathinfo($_FILES['Filedata']['name']);
      $this->load->model('album/upload');
      if (in_array(strtolower($fileParts['extension']), $fileTypes)) {
        $tempFileSize = filesize($tempFile);
        $image = file_get_contents($tempFile); 
        $data = array(
          'customer_id' => $customer_id,
          'name' => $_FILES['Filedata']['name'],
          'size' => $tempFileSize,
          'photo' => addslashes($image)
        );
        $this->model_album_upload->saveFile($data);
        unlink($tempFile);
        $msg = '1';
      } else {
        $msg = 'Invalid file type.';
      }
     $this->response->setOutput($msg); 
    } 
    $this->response->setOutput('hello');
  }

  public function delete() {
    header('Content-type: application/json');
    $return['success'] = 'false'; 
    if ($this->customer->isLogged() && isset($this->request->post['id'])) {
       $this->load->model('album/upload');
       $this->model_album_upload->deleteFile($this->customer->getId(), $_POST['id']);
       $return['success'] = 'true'; 
    } 
    echo json_encode($return);
  }
  
  private function makeSmallCopy($newDir, $fileName) {
        $height_default = 110;
        $photo_file = $newDir.'/'.$fileName;
        $tmp = explode('.', $fileName);
        $ext = strtolower($tmp[sizeof($tmp) - 1]);
        
        switch ($ext) {
          case 'png' : $src = imagecreatefrompng($photo_file); break;
          case 'gif' : $src = imagecreatefromgif($photo_file); break;
          case 'jpg' : 
          case 'jpeg' :  
          default: $src = imagecreatefromjpeg($photo_file); break;
        }
        
        $size = getimagesize($photo_file);
        $photo_width = $size[0];
        $photo_height = $size[1];
        $koef = $photo_height/$height_default;
        $new_width = ceil ($photo_width / $koef);
        
        $dst = ImageCreateTrueColor ($new_width, $height_default);
        ImageCopyResampled ($dst, $src, 0, 0, 0, 0, $new_width, $height_default, $photo_width, $photo_height);
        switch ($ext) {
          case 'png' : imagepng($dst,  $newDir.'/small_'.$fileName); break;
          case 'gif' : imagegif($dst,  $newDir.'/small_'.$fileName); break;
          case 'jpg' : 
          case 'jpeg' :  
          default: imagejpeg($dst,  $newDir.'/small_'.$fileName); break;
        }
        
        imagedestroy($src);
  }

  private function translit($string) {
    
    $converter = array(
        'а' => 'a',   'б' => 'b',   'в' => 'v',
        'г' => 'g',   'д' => 'd',   'е' => 'e',
        'ё' => 'e',   'ж' => 'zh',  'з' => 'z',
        'и' => 'i',   'й' => 'y',   'к' => 'k',
        'л' => 'l',   'м' => 'm',   'н' => 'n',
        'о' => 'o',   'п' => 'p',   'р' => 'r',
        'с' => 's',   'т' => 't',   'у' => 'u',
        'ф' => 'f',   'х' => 'h',   'ц' => 'c',
        'ч' => 'ch',  'ш' => 'sh',  'щ' => 'sch',
        'ь' => "'",  'ы' => 'y',   'ъ' => "'",
        'э' => 'e',   'ю' => 'yu',  'я' => 'ya',
 
        'А' => 'A',   'Б' => 'B',   'В' => 'V',
        'Г' => 'G',   'Д' => 'D',   'Е' => 'E',
        'Ё' => 'E',   'Ж' => 'Zh',  'З' => 'Z',
        'И' => 'I',   'Й' => 'Y',   'К' => 'K',
        'Л' => 'L',   'М' => 'M',   'Н' => 'N',
        'О' => 'O',   'П' => 'P',   'Р' => 'R',
        'С' => 'S',   'Т' => 'T',   'У' => 'U',
        'Ф' => 'F',   'Х' => 'H',   'Ц' => 'C',
        'Ч' => 'Ch',  'Ш' => 'Sh',  'Щ' => 'Sch',
        'Ь' => "'",  'Ы' => 'Y',   'Ъ' => "'",
        'Э' => 'E',   'Ю' => 'Yu',  'Я' => 'Ya',
    );
    
    return strtr($string, $converter);
    
  }
  
  public function createAlbum() {
    header('Content-type: application/json; charset=utf-8');
    $return['success'] = 'false'; 
    if ($this->customer->isLogged() && isset($this->request->post['album_id']) && isset($this->request->post['album_name'])) {
    	 $custId = $this->customer->getId();
       $this->load->model('album/upload');
       $files = $this->model_album_upload->getFiles($custId);
       $album_id = (int)$this->request->post['album_id'];
			 $this->load->model('album/album');
			 $customer_dir =  DIR_PHOTOS.'album_cus_'.$custId;
       if($album_id == 0) { //CREATE ALBUM
       		
					if(!is_dir($customer_dir)) {
						mkdir($customer_dir);
					}
       		$newAlbumId = $this->model_album_album->createCleanAlbum($this->request->post['album_name'], $custId);
          $newDir = $customer_dir.'/'.'album_'.$newAlbumId;
					mkdir($newDir);
          foreach ($files as $file) {
              $file['name'] = $this->translit($file['name']);
              $photo_file = $newDir.'/'.$file['name'];
              file_put_contents($newDir.'/'.$file['name'], $file['photo']);
              
              $this->makeSmallCopy($newDir, $file['name']);
            
							$this->model_album_album->putPhotoInAlbum($newAlbumId, $file['name']);
							$this->model_album_upload->deleteFile($custId, $file['customer_temp_photo_id']);
          }
          $return['success'] = 'true'; 
       } else { // UPLOAD IN EXIST ALBUM
       	 $AlbumDir = $customer_dir.'/'.'album_'.$album_id;
				 if(!is_dir($AlbumDir)){
				   $return['error'] = 'Такого альбома не Существует';
				 	 echo json_encode($return);
					 return; 
				 }
         
         foreach ($files as $file) {
              $file['name'] = $this->translit($file['name']);
              file_put_contents($AlbumDir.'/'.$file['name'], $file['photo']);
              $this->makeSmallCopy($AlbumDir, $file['name']);
              $this->model_album_album->putPhotoInAlbum($album_id, $file['name']);
              $this->model_album_upload->deleteFile($custId, $file['customer_temp_photo_id']);
         }
         $return['success'] = 'true'; 
       }
    }
     echo json_encode($return);
  }
  

}
?>