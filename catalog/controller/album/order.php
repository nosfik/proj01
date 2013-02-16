<?php  
class ControllerAlbumOrder extends Controller {
  
  
  
  public function index() {
    
     if (!$this->customer->isLogged()) {
      if(!isset($this->request->get['album_id'])){
         $this->session->data['redirect'] = $this->url->link('album/content', 'album_id='.$this->request->get['album_id'], 'SSL');
       } 
      $this->redirect($this->url->link('account/login', '', 'SSL')); 
    } else {
      
      if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/album/order.tpl')) {
        $this->template = $this->config->get('config_template') . '/template/album/order.tpl';
      } else {
        $this->template = 'default/template/album/order.tpl';
      }
      
      $this->data['customer_id'] = $this->customer->getId();
      $this->load->model('album/album');
       $this->load->model('album/content');
      
    
   
      
      
      $this->data['photos'] = array();
      

      
      
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