<?php  
class ControllerProductShop extends Controller {
  public function index() { 
    
    $this->data['continue'] = $this->url->link('common/home');
    
    if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/product/shop.tpl')) {
      $this->template = $this->config->get('config_template') . '/template/product/shop.tpl';
    } else {
      $this->template = 'default/template/product/shop.tpl';
    }
    
    $this->children = array(
      'common/column_left',
      'common/column_right',
      'common/content_top',
      'common/content_bottom',
      'common/footer',
      'common/header'
    );
    
    $this->response->setOutput($this->render());
    }
  

}
?>