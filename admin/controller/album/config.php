<?php    
class ControllerAlbumConfig extends Controller { 
  private $error = array();
  
    public function index() {
      $this->load->language('album/config');
      
      $this->document->setTitle($this->language->get('heading_title'));
       
      $this->load->model('album/config');
      
      $this->data['breadcrumbs'] = array();

      $this->data['breadcrumbs'][] = array(
          'text'      => $this->language->get('text_home'),
          'href'      => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),
          'separator' => false
      );

      $this->data['breadcrumbs'][] = array(
          'text'      => $this->language->get('heading_title'),
          'href'      => $this->url->link('album/config', 'token=' . $this->session->data['token'] , 'SSL'),
          'separator' => ' :: '
      );
      
      $this->data['action'] = $this->url->link('album/config/update', 'token=' . $this->session->data['token'] , 'SSL');
      $this->data['heading_title'] = $this->language->get('heading_title');
      $this->data['cancel'] = $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL');
      
      if (isset($this->request->get['err'])) {
        $this->data['err'] =  1;
      } else {
         $this->data['err'] =  0;
      }
      
      $prefereces = $this->model_album_config->getPreferences();
      
      $ship_int = $prefereces['shipping_interval'];
      $data = explode('|', $ship_int);
      $data_array = array(
        'date'         => date('d.m.Y', strtotime($data[0])),
        'time_start'   => date('H:i', strtotime($data[1])),
        'time_end'     => date('H:i', strtotime($data[2])),
      );
      $this->data['shipping_interval'] = $data_array;
      
     $this->data['time_order'] = $prefereces['time_order'];
      
      $this->template = 'album/config.tpl';
      $this->children = array(
        'common/header',
        'common/footer'
      );
    
      $this->response->setOutput($this->render());
      
    
    }
  

   
    public function update() {
  
      if (isset($this->request->post['date'])) {
        $date =  $this->request->post['date'];
      } else {
        $date = '';
      }

      if (isset($this->request->post['start_time'])) {
        $start_time =  $this->request->post['start_time'];
      } else {
        $start_time = '';
      }
      
      if (isset($this->request->post['end_time'])) {
        $end_time =  $this->request->post['end_time'];
      } else {
        $end_time = '';
      }
      
      if (isset($this->request->post['time_order'])) {
        $time_order =  $this->request->post['time_order'];
      } else {
        $time_order = '';
      }
      
      
      $time =  strtotime($date);
      $pattern = '/^[0-2][0-9]:[0-5][0-9]$/i';
      
      if ($time && preg_match($pattern, $start_time) && preg_match($pattern, $end_time) && $time_order != '') {
        $this->load->model('album/config');
        $newformat = date('Y-m-d',$time);
        $data = array(
          'time_order'        => $time_order,
          'shipping_interval' => date('Y-m-d',$time) .'|'.$start_time.'|'.$end_time
        );
        $this->model_album_config->update($data);
        $this->redirect($this->url->link('album/config', 'token=' . $this->session->data['token'] , 'SSL'));
        
      } else {
        $this->redirect($this->url->link('album/config', 'token=' . $this->session->data['token'].'&err=1' , 'SSL'));
      }
      
      
      
      
      

      
    
    }   


  
  

}
?>