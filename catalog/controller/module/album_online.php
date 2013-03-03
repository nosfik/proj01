<?php  
class ControllerModuleAlbumOnline extends Controller {
	protected function index($setting) {
		
		$this->load->model('setting/album');
     $this->data['logged'] = $this->customer->getId();
     
     if($this->customer->getId()) {
       
        $this->data['order_end_time'] = $this->model_setting_album->getLastOrderEndTime($this->customer->getId());
        $this->data['shipping_interval'] = $this->model_setting_album->getShippingInterval();
       
     }
    
		
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/album_online.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/module/album_online.tpl';
		} else {
			$this->template = 'default/template/module/album_online.tpl';
		}
		
		$this->render(); 
	}
}
?>