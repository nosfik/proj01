<?php  
class ControllerAlbumAlbum extends Controller {
  
  public function delete() {
    if ($this->customer->isLogged()) {
      
      $this->load->model('album/album');
      $this->model_album_album->deleteAlbum($this->request->post['album_id'], $this->customer->getId());
      
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
      $this->load->model('album/album');
      
      $albums = $this->model_album_album->getAlbums($this->customer->getId());
      $this->data['albums'] = array();
      
      foreach($albums as $album) {
        $this->data['albums'][] = array (
          'id'            => $album['album_id'],
          'name'          => $album['name'],
          'description'   => $album['description'],
          'photo'         => $album['photo'],
          'date'          => $album['date'],
          'size'          => $album['size'] 
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