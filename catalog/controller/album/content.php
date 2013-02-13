<?php  
class ControllerAlbumContent extends Controller {
    
    
    
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
      
      if (isset($this->request->get['album_id'])) {
        $album_id = $this->request->get['album_id'];
      } else { 
        $album_id = 0;
      } 
      
      $photos = $this->model_album_album->getPhotosByAlbum($album_id, $this->customer->getId());
      
      
      $this->data['photos'] = array();
      
      foreach($photos as $photo) {
        $this->data['photos'][] = array (
          'id'            => $album['album_photo_id'],
          'name'          => $album['photo_name']
         );
      }

      $this->data['album_dir'] = DIR_PHOTOS.'album_cus_'.$this->customer->getId().'/album_'.$album_id;
      $this->data['album_dir_exist'] = is_dir($this->data['album_dir']);
      
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