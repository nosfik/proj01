<?php  
class ControllerAlbumAlbum extends Controller {
  
  
  
  public function edit() {
    
     
     if ($this->customer->isLogged()) {
        $this->load->model('album/album');
       $upload_file = $this->request->files["cover"]["error"]  == UPLOAD_ERR_OK;
       
      $data = array(
        'name'        => $this->request->post['name'],
        'description' => $this->request->post['description'],
        'photo'       => ($upload_file) ? $this->request->files["cover"]["name"] : '',
        'album_id'    => $this->request->post['album_id'],
        'customer_id' => $this->customer->getId()
      );
      
      
      $oldCover = $this->model_album_album->editAlbum($data);
      
      
      if ($upload_file) {
          $tmp_name = $this->request->files["cover"]["tmp_name"];
          $name = $this->request->files["cover"]["name"];
          
          $coverDir = DIR_PHOTOS.'album_cus_'.$this->customer->getId().'/cover/';
          if(!is_dir($coverDir)){
            mkdir($coverDir);
          }
          move_uploaded_file($tmp_name, $coverDir.$name);
          
          if($oldCover != '' && $oldCover != $name && is_file($coverDir.$oldCover)) {
             @unlink($coverDir.$oldCover);
          }
          
      }
      
      $this->redirect($this->url->link('album/album', '', 'SSL')); 
     }
     
  }
  
  public function delete() {
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
    
     if (!$this->customer->isLogged()) {
      $this->session->data['redirect'] = $this->url->link('album/album', '', 'SSL');
      $this->redirect($this->url->link('account/login', '', 'SSL')); 
    } else {
      
      if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/album/album.tpl')) {
        $this->template = $this->config->get('config_template') . '/template/album/album.tpl';
      } else {
        $this->template = 'default/template/album/album.tpl';
      }
      
      $this->data['customer_id'] = $this->customer->getId();
      $this->data['album_cover'] = 'haha.jph';
     
      $this->load->model('album/album');
      
      $albums = $this->model_album_album->getAlbums($this->customer->getId());
      $this->data['albums'] = array();
      
      foreach($albums as $album) {
        
        
        $cover = ($album['photo'] == '') ? '' : 'albums/album_cus_'.$this->customer->getId().'/cover/'.$album['photo'];
        if(!is_file($cover)){
          $this->load->model('album/content');
          $photo_name =  $this->model_album_content->getPhotosByAlbumForCover($album['album_id'], $this->customer->getId());
          $cover = ($photo_name != '') ? 'albums/album_cus_'.$this->customer->getId().'/album_'.$album['album_id'].'/small_'.$photo_name : '';
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