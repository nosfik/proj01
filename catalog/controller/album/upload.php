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
      
      if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/album/image.tpl')) {
        $this->template = $this->config->get('config_template') . '/template/album/image.tpl';
      } else {
        $this->template = 'default/template/album/image.tpl';
      }
      
      $this->load->model('album/upload');
      $image = $this->model_album_upload->getFile($this->customer->getId(), $this->request->get['image']);
      
      $name = $image['name'];
      $photo = $image['photo'];
      
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
      if (in_array($fileParts['extension'],$fileTypes)) {
        $tempFileSize = filesize($tempFile);
        
        $fp      = fopen($tempFile, 'r');
        $content = fread($fp, $tempFileSize);
        $content = addslashes($content);
        fclose($fp);
        $data = array(
          'customer_id' => $customer_id,
          'name' => $_FILES['Filedata']['name'],
          'size' => $tempFileSize,
          'photo' => $content
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
  

}
?>