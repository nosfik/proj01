<?php
class ControllerProductOrder extends Controller {
	public function index() {

        $this->document->addScript('catalog/view/javascript/cusel.js');
        $this->document->addScript('catalog/view/javascript/jScrollPane.js');
        $this->document->addScript('catalog/view/javascript/jquery.mousewheel.js');

        $this->document->addStyle('catalog/view/theme/default/stylesheet/cusel.css');

		$this->language->load('product/order');



		$this->document->setTitle($this->language->get('heading_title'));

		$this->data['heading_title'] = $this->language->get('heading_title');
		
		if (isset($this->error['captcha'])) {
			$this->data['error_captcha'] = $this->error['captcha'];
		} else {
			$this->data['error_captcha'] = '';
		}	
		
		if (isset($this->request->post['captcha'])) {
			$this->data['captcha'] = $this->request->post['captcha'];
		} else {
			$this->data['captcha'] = '';
		}		


		$this->data['breadcrumbs'] = array();

      	$this->data['breadcrumbs'][] = array(
        	'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home'),
        	'separator' => false
      	);

		$this->data['breadcrumbs'][] = array(
			'text'      => $this->language->get('text_brand'),
			'href'      => $this->url->link('product/manufacturer'),
			'separator' => $this->language->get('text_separator')
		);


		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/product/order.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/product/order.tpl';
		} else {
			$this->template = 'default/template/product/order.tpl';
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


	public function captcha() {
		$this->load->library('captcha');
		
		$captcha = new Captcha();
		
		$this->session->data['captcha'] = $captcha->getCode();
		
		$captcha->showImage();
	}
}
?>