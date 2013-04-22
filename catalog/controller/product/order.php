<?php
class ControllerProductOrder extends Controller {
    
    public function success() {
        $this->language->load('product/order');
        $this->document->setTitle($this->language->get('heading_title'));
        $this->data['heading_title'] = $this->language->get('heading_title');
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
        
        if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/product/order_success.tpl')) {
            $this->template = $this->config->get('config_template') . '/template/product/order_success.tpl';
        } else {
            $this->template = 'default/template/product/order_success.tpl';
        }
        
        $this->children = array(
            'common/content_top',
            'common/content_bottom',
            'common/footer',
            'common/header'
        );

        $this->response->setOutput($this->render());
        
    }
    
	public function index() {

        $this->document->addScript('catalog/view/javascript/cusel.js');
        $this->document->addScript('catalog/view/javascript/jScrollPane.js');
        $this->document->addScript('catalog/view/javascript/jquery.mousewheel.js');
        $this->document->addStyle('catalog/view/theme/default/stylesheet/cusel.css');
		$this->language->load('product/order');
		$this->document->setTitle($this->language->get('heading_title'));
		$this->data['heading_title'] = $this->language->get('heading_title');
        
       if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
            $this->load->model('catalog/order');
            $this->model_catalog_order->addOrder($this->request->post);
            $this->redirect($this->url->link('product/order/success'));
        }
        
		
		if (isset($this->request->post['captcha'])) {
			$this->data['captcha'] = $this->request->post['captcha'];
		} else {
			$this->data['captcha'] = '';
		}	


        if (isset($this->request->post['customerName'])) {
            $this->data['customerName'] = $this->request->post['customerName'];
        } else {
            $this->data['customerName'] = '';
        }   
        
        if (isset($this->request->post['telephoneNumber'])) {
            $this->data['telephoneNumber'] = $this->request->post['telephoneNumber'];
        } else {
            $this->data['telephoneNumber'] = '';
        }   
        
        if (isset($this->request->post['email'])) {
            $this->data['email'] = $this->request->post['email'];
        } else {
            $this->data['email'] = '';
        }   
        
        if (isset($this->request->post['otherPeople'])) {
            $this->data['otherPeople'] = $this->request->post['otherPeople'];
        } else {
            $this->data['otherPeople'] = '';
        }   
        
        if (isset($this->request->post['services'])) {
            $this->data['services'] = $this->request->post['services'];
        } else {
            $this->data['services'] = '';
        }   
        
        if (isset($this->request->post['preferences'])) {
            $this->data['preferences'] = $this->request->post['preferences'];
        } else {
            $this->data['preferences'] = '';
        }  
        
        if (isset($this->request->post['questions'])) {
            $this->data['questions'] = $this->request->post['questions'];
        } else {
            $this->data['questions'] = '';
        }  
        
        if (isset($this->request->post['terms'])) {
            $this->data['terms'] = $this->request->post['terms'];
        } else {
            $this->data['terms'] = '';
        }  
        
        if (isset($this->request->post['additionalInfo'])) {
            $this->data['additionalInfo'] = $this->request->post['additionalInfo'];
        } else {
            $this->data['additionalInfo'] = '';
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
			'common/content_top',
			'common/content_bottom',
			'common/footer',
			'common/header'
		);

		$this->response->setOutput($this->render());
  	}


	private function validate() {
	    $error = true;
	   
        if ((utf8_strlen($this->request->post['customerName']) < 3) || (utf8_strlen($this->request->post['customerName']) > 32)) {
            $this->data['error_customerName'] = $this->language->get('error_customerName');
            $error = false;
        }
        
        if ((utf8_strlen($this->request->post['telephoneNumber']) < 3) || (utf8_strlen($this->request->post['telephoneNumber']) > 32)) {
            $this->data['error_telephoneNumber'] = $this->language->get('error_telephoneNumber');
            $error = false;
        }

        if (!preg_match('/^[^\@]+@.*\.[a-z]{2,6}$/i', $this->request->post['email'])) {
           $this->data['error_email'] = $this->language->get('error_email');
            $error = false;
        }

        if (empty($this->session->data['captcha']) || ($this->session->data['captcha'] != $this->request->post['captcha'])) {
           $this->data['error_captcha'] = $this->language->get('error_captcha');
           $error = false;
        }
        
        return $error;  
    }

    public function captcha() {
        $this->load->library('captcha');
        
        $captcha = new Captcha();
        
        $this->session->data['captcha'] = $captcha->getCode();
        
        $captcha->showImage();
    }   
}
?>