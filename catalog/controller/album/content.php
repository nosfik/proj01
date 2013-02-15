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
						$this->data['temp'][] = $photo_id."|".$album_id."|". $this->customer->getId();
			      if($photo_name != '' && is_dir($album_dir) && is_file($album_dir.'/'.$photo_name)) {
			         @unlink($album_dir.'/'.$photo_name);
			      }
						$return['success'] = 'true'; 
						$return['name'] = $this->data['temp'];
					}
					
		      echo json_encode($return);
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