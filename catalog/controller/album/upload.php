<?php  
class ControllerAlbumUpload extends Controller {
  
  public function start() {
    if (!$this->customer->isLogged()) {
      $this->session->data['redirect'] = $this->url->link('album/upload/start', '', 'SSL');
      $this->redirect($this->url->link('account/login', '', 'SSL')); 
    } else {
      
      
      $this->load->model('album/upload');
      $images = $this->model_album_upload->getFilesId($this->customer->getId());
      
      $this->data['images'] = array();
      
      foreach($images as $image) {
        $this->data['images'][] = array (
          'id'    => $image['customer_temp_photo_id'],
          'name'  => $image['name'],
          'size'  => (int)( $image['size'] / 1024 )
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
  
  public function createAlbum() {
    header('Content-type: application/json');
    $return['success'] = 'false'; 
    if ($this->customer->isLogged() && isset($this->request->post['album_id']) && isset($this->request->post['album_name'])) {
       $this->load->model('album/upload');
       $files = $this->model_album_upload->getFiles($this->customer->getId());
       $album_id = (int)$this->request->post['album_id'];
       
       if($album_id == 0) { //CREATE ALBUM
          $newDir = DIR_PHOTOS.'album_new';
         file_put_contents($newDir.'/haha.txt', print_r($files, true));
          foreach ($files as $file) {
            // file_put_contents($newDir.'/haha.txt', $newDir.'/'.$file['name']);
              file_put_contents($newDir.'/'.$file['name'], $file['photo']);
          }
          $return['success'] = 'true'; 
       } else { // UPLOAD IN EXIST ALBUM
         
       }
       
    }
     echo json_encode($return);
  }
  

}
?>