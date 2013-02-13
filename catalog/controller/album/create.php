<?php  
class ControllerAlbumCreate extends Controller {
  
   public function index() {
    
     if (!$this->customer->isLogged()) {
      $this->session->data['redirect'] = $this->url->link('album/create', '', 'SSL');
      $this->redirect($this->url->link('account/login', '', 'SSL')); 
    } else {
      
      if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/album/create.tpl')) {
        $this->template = $this->config->get('config_template') . '/template/album/create.tpl';
      } else {
        $this->template = 'default/template/album/create.tpl';
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

 public function create() {
     if ($this->customer->isLogged()) {
         $this->load->model('album/album');
         //$this->load->model('test/test');
         
          $upload_file = $this->request->files["photo"]["error"]  == UPLOAD_ERR_OK;
           
          $data = array(
            'name'        => $this->request->post['name'],
            'description' => $this->request->post['description'],
            'photo'       => ($upload_file) ? $this->request->files["photo"]["name"] : '',
            'customer_id' => $this->customer->getId()
          );
      
      
          $this->model_album_album->createAlbum($data);
      
      //$this->model_test_test->save(print_r($data, true).'uploaded_file ='.$upload_file);
          if ($upload_file) {
              $tmp_name = $this->request->files["photo"]["tmp_name"];
              $name = $this->request->files["photo"]["name"];
              move_uploaded_file($tmp_name, DIR_PHOTOS.'album_cus_'.$this->customer->getId().'/cover/'.$name);
          }
      
      $this->redirect($this->url->link('album/album', '', 'SSL')); 
     }
     
  }
    
}
?>