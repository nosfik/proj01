<?php 
class ControllerInformationContact extends Controller {
	    
  	public function index() {
		$this->language->load('information/contact');
        
            if(isset($this->request->post['subject']) && isset($this->request->post['email']) && isset($this->request->post['name']) && isset($this->request->post['text']) ) {
                $mail = new Mail();
                $mail->protocol = $this->config->get('config_mail_protocol');
                $mail->parameter = $this->config->get('config_mail_parameter');
                $mail->hostname = $this->config->get('config_smtp_host');
                $mail->username = $this->config->get('config_smtp_username');
                $mail->password = $this->config->get('config_smtp_password');
                $mail->port = $this->config->get('config_smtp_port');
                $mail->timeout = $this->config->get('config_smtp_timeout');             
                $mail->setTo($this->config->get('config_email'));
                $mail->setFrom($this->request->post['email']);
                $mail->setSender($this->request->post['name']);
                $mail->setSubject(html_entity_decode($this->request->post['subject']));
                $mail->setText(strip_tags(html_entity_decode($this->request->post['text'], ENT_QUOTES, 'UTF-8')));
                $mail->send();
                $this->redirect($this->url->link('information/contact/success'));
            } else {
                   
            
                $this->redirect($this->url->link('information/information&information_id=11'));
            }

    }

    public function success() {
        $this->language->load('information/contact');

        $this->document->setTitle($this->language->get('heading_title')); 

        $this->data['breadcrumbs'] = array();

        $this->data['breadcrumbs'][] = array(
            'text'      => $this->language->get('text_home'),
            'href'      => $this->url->link('common/home'),
            'separator' => false
        );

        $this->data['breadcrumbs'][] = array(
            'text'      => $this->language->get('heading_title'),
            'href'      => $this->url->link('information/contact'),
            'separator' => $this->language->get('text_separator')
        );  
        
        $this->data['heading_title'] = $this->language->get('heading_title');

        $this->data['heading_title'] = "Сообщение успешно отправлено";

        $this->data['button_continue'] = $this->language->get('button_continue');

        $this->data['continue'] = $this->url->link('common/home');

        if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/common/success.tpl')) {
            $this->template = $this->config->get('config_template') . '/template/common/success.tpl';
        } else {
            $this->template = 'default/template/common/success.tpl';
        }
        
        $this->children = array(
            'common/content_top',
            'common/content_bottom',
            'common/footer',
            'common/header'
        );
                
        $this->response->setOutput($this->render()); 
    }
}
?>
