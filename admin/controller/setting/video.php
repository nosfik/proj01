<?php    
class ControllerSettingVideo extends Controller { 
    private $error = array();
  
    public function index() {
        $this->load->language('setting/video');
        
        $this->document->setTitle($this->language->get('heading_title'));
         
        $this->load->model('setting/video');
        
        $this->getList();
    }
  
    public function insert() {
        $this->load->language('setting/video');

        $this->document->setTitle($this->language->get('heading_title'));
        
        $this->load->model('setting/video');
            
        if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validateForm()) {
            $this->model_setting_video->addVideo($this->request->post);

            $this->session->data['success'] = $this->language->get('text_success');
            
            $url = '';
            
            if (isset($this->request->get['sort'])) {
                $url .= '&sort=' . $this->request->get['sort'];
            }

            if (isset($this->request->get['order'])) {
                $url .= '&order=' . $this->request->get['order'];
            }

            if (isset($this->request->get['page'])) {
                $url .= '&page=' . $this->request->get['page'];
            }
            
            $this->redirect($this->url->link('setting/video', 'token=' . $this->session->data['token'] . $url, 'SSL'));
        }
    
        $this->getForm();
    } 
   
    public function update() {
        $this->load->language('setting/video');

        $this->document->setTitle($this->language->get('heading_title'));
        
        $this->load->model('setting/video');
        
        if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validateForm()) {
            $this->model_setting_video->editVideo($this->request->get['video_id'], $this->request->post);

            $this->session->data['success'] = $this->language->get('text_success');

            $url = '';
            
            if (isset($this->request->get['sort'])) {
                $url .= '&sort=' . $this->request->get['sort'];
            }

            if (isset($this->request->get['order'])) {
                $url .= '&order=' . $this->request->get['order'];
            }

            if (isset($this->request->get['page'])) {
                $url .= '&page=' . $this->request->get['page'];
            }
            
            $this->redirect($this->url->link('setting/video', 'token=' . $this->session->data['token'] . $url, 'SSL'));
        }
    
        $this->getForm();
    }   

    public function delete() {
        $this->load->language('setting/video');

        $this->document->setTitle($this->language->get('heading_title'));
        
        $this->load->model('setting/video');
            
        if (isset($this->request->post['selected']) && $this->validateDelete()) {
            foreach ($this->request->post['selected'] as $video_id) {
                $this->model_setting_video->deleteVideo($video_id);
            }

            $this->session->data['success'] = $this->language->get('text_success');
            
            $url = '';
            
            if (isset($this->request->get['sort'])) {
                $url .= '&sort=' . $this->request->get['sort'];
            }

            if (isset($this->request->get['order'])) {
                $url .= '&order=' . $this->request->get['order'];
            }

            if (isset($this->request->get['page'])) {
                $url .= '&page=' . $this->request->get['page'];
            }
            
            $this->redirect($this->url->link('setting/video', 'token=' . $this->session->data['token'] . $url, 'SSL'));
        }
    
        $this->getList();
    }  
    
    private function getList() {
        if (isset($this->request->get['sort'])) {
            $sort = $this->request->get['sort'];
        } else {
            $sort = 'href';
        }
        
        if (isset($this->request->get['order'])) {
            $order = $this->request->get['order'];
        } else {
            $order = 'ASC';
        }
        
        if (isset($this->request->get['page'])) {
            $page = $this->request->get['page'];
        } else {
            $page = 1;
        }
                
        $url = '';
            
        if (isset($this->request->get['sort'])) {
            $url .= '&sort=' . $this->request->get['sort'];
        }

        if (isset($this->request->get['order'])) {
            $url .= '&order=' . $this->request->get['order'];
        }
        
        if (isset($this->request->get['page'])) {
            $url .= '&page=' . $this->request->get['page'];
        }

        $this->data['breadcrumbs'] = array();

        $this->data['breadcrumbs'][] = array(
            'text'      => $this->language->get('text_home'),
            'href'      => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),
            'separator' => false
        );

        $this->data['breadcrumbs'][] = array(
            'text'      => 'Видео',
            'href'      => $this->url->link('setting/video', 'token=' . $this->session->data['token'] . $url, 'SSL'),
            'separator' => ' :: '
        );
                            
        $this->data['insert'] = $this->url->link('setting/video/insert', 'token=' . $this->session->data['token'] . $url, 'SSL');
        $this->data['delete'] = $this->url->link('setting/video/delete', 'token=' . $this->session->data['token'] . $url, 'SSL');    

        $this->data['videos'] = array();

        $data = array(
            'sort'  => $sort,
            'order' => $order,
            'start' => ($page - 1) * $this->config->get('config_admin_limit'),
            'limit' => $this->config->get('config_admin_limit')
        );
        
        $video_total = $this->model_setting_video->getTotalVideos();
    
        $results = $this->model_setting_video->getVideos($data);
 
        foreach ($results as $result) {
            $action = array();
            
            $action[] = array(
                'text' => $this->language->get('text_edit'),
                'href' => $this->url->link('setting/video/update', 'token=' . $this->session->data['token'] . '&video_id=' . $result['video_id'] . $url, 'SSL')
            );
                        
            $this->data['videos'][] = array(
                'video_id'    => $result['video_id'],
                'href'            => $result['href'],
                'selected'        => isset($this->request->post['selected']) && in_array($result['video_id'], $this->request->post['selected']),
                'order'      => $result['order'],
                'action'          => $action
            );
        }   
    
        $this->data['heading_title'] = $this->language->get('heading_title');
        
        $this->data['text_no_results'] = $this->language->get('text_no_results');

        $this->data['column_href'] = $this->language->get('column_href');
        $this->data['column_sort_order'] = $this->language->get('column_sort_order');
        $this->data['column_action'] = $this->language->get('column_action');       
        
        $this->data['button_insert'] = $this->language->get('button_insert');
        $this->data['button_delete'] = $this->language->get('button_delete');
 
        if (isset($this->error['warning'])) {
            $this->data['error_warning'] = $this->error['warning'];
        } else {
            $this->data['error_warning'] = '';
        }
        
        if (isset($this->session->data['success'])) {
            $this->data['success'] = $this->session->data['success'];
        
            unset($this->session->data['success']);
        } else {
            $this->data['success'] = '';
        }

        $url = '';

        if ($order == 'ASC') {
            $url .= '&order=DESC';
        } else {
            $url .= '&order=ASC';
        }

        if (isset($this->request->get['page'])) {
            $url .= '&page=' . $this->request->get['page'];
        }
        
        $this->data['sort_href'] = $this->url->link('setting/video', 'token=' . $this->session->data['token'] . '&sort=href' . $url, 'SSL');
        $this->data['sort_sort_order'] = $this->url->link('setting/video', 'token=' . $this->session->data['token'] . '&sort=sort_order' . $url, 'SSL');
        
        $url = '';

        if (isset($this->request->get['sort'])) {
            $url .= '&sort=' . $this->request->get['sort'];
        }
                                                
        if (isset($this->request->get['order'])) {
            $url .= '&order=' . $this->request->get['order'];
        }

        $pagination = new Pagination();
        $pagination->total = $video_total;
        $pagination->page = $page;
        $pagination->limit = $this->config->get('config_admin_limit');
        $pagination->text = $this->language->get('text_pagination');
        $pagination->url = $this->url->link('setting/video', 'token=' . $this->session->data['token'] . $url . '&page={page}', 'SSL');
            
        $this->data['pagination'] = $pagination->render();

        $this->data['sort'] = $sort;
        $this->data['order'] = $order;

        $this->template = 'setting/video_list.tpl';
        $this->children = array(
            'common/header',
            'common/footer'
        );
                
        $this->response->setOutput($this->render());
    }
  
    private function getForm() {
        $this->data['heading_title'] = $this->language->get('heading_title');

        $this->data['text_enabled'] = $this->language->get('text_enabled');
        $this->data['text_disabled'] = $this->language->get('text_disabled');
        $this->data['text_default'] = $this->language->get('text_default');
        $this->data['text_image_manager'] = $this->language->get('text_image_manager');
        $this->data['text_browse'] = $this->language->get('text_browse');
        $this->data['text_clear'] = $this->language->get('text_clear');         
        $this->data['text_percent'] = $this->language->get('text_percent');
        $this->data['text_amount'] = $this->language->get('text_amount');
                
        $this->data['entry_href'] = $this->language->get('entry_href');
        $this->data['entry_store'] = $this->language->get('entry_store');
        $this->data['entry_keyword'] = $this->language->get('entry_keyword');
        $this->data['entry_image'] = $this->language->get('entry_image');
        $this->data['entry_sort_order'] = $this->language->get('entry_sort_order');
        $this->data['entry_customer_group'] = $this->language->get('entry_customer_group');
        $this->data['entry_meta_keyword'] = $this->language->get('entry_meta_keyword');
        $this->data['entry_meta_description'] = $this->language->get('entry_meta_description');
        $this->data['entry_description'] = $this->language->get('entry_description');
        $this->data['entry_seo_title'] = $this->language->get('entry_seo_title');
        $this->data['entry_seo_h1'] = $this->language->get('entry_seo_h1');
          
        $this->data['button_save'] = $this->language->get('button_save');
        $this->data['button_cancel'] = $this->language->get('button_cancel');
        
        $this->data['tab_general'] = $this->language->get('tab_general');
              
        if (isset($this->error['warning'])) {
            $this->data['error_warning'] = $this->error['warning'];
        } else {
            $this->data['error_warning'] = '';
        }

        if (isset($this->error['href'])) {
            $this->data['error_href'] = $this->error['href'];
        } else {
            $this->data['error_href'] = '';
        }
            
        $url = '';
            
        if (isset($this->request->get['sort'])) {
            $url .= '&sort=' . $this->request->get['sort'];
        }

        if (isset($this->request->get['order'])) {
            $url .= '&order=' . $this->request->get['order'];
        }
        
        if (isset($this->request->get['page'])) {
            $url .= '&page=' . $this->request->get['page'];
        }
        
        $this->data['breadcrumbs'] = array();

        $this->data['breadcrumbs'][] = array(
            'text'      => $this->language->get('text_home'),
            'href'      => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),
            'separator' => false
        );

        $this->data['breadcrumbs'][] = array(
            'text'      => 'Видео',
            'href'      => $this->url->link('setting/video', 'token=' . $this->session->data['token'] . $url, 'SSL'),
            'separator' => ' :: '
        );
                            
        if (!isset($this->request->get['video_id'])) {
            $this->data['action'] = $this->url->link('setting/video/insert', 'token=' . $this->session->data['token'] . $url, 'SSL');
        } else {
            $this->data['action'] = $this->url->link('setting/video/update', 'token=' . $this->session->data['token'] . '&video_id=' . $this->request->get['video_id'] . $url, 'SSL');
        }
        
        $this->data['cancel'] = $this->url->link('setting/video', 'token=' . $this->session->data['token'] . $url, 'SSL');
    
        if (isset($this->request->get['video_id']) && ($this->request->server['REQUEST_METHOD'] != 'POST')) {
            $video_info = $this->model_setting_video->getVideo($this->request->get['video_id']);
        }

        $this->data['token'] = $this->session->data['token'];


        if (isset($this->request->post['href'])) {
            $this->data['href'] = $this->request->post['href'];
        } elseif (!empty($video_info)) {
            $this->data['href'] = $video_info['href'];
        } else {    
            $this->data['href'] = '';
        }

        
        if (isset($this->request->post['order'])) {
            $this->data['order'] = $this->request->post['order'];
        } elseif (!empty($video_info)) {
            $this->data['order'] = $video_info['order'];
        } else {
            $this->data['order'] = '';
        }
        
        $this->template = 'setting/video_form.tpl';
        $this->children = array(
            'common/header',
            'common/footer'
        );
                
        $this->response->setOutput($this->render());
    }  
     
    private function validateForm() {
        if (!$this->user->hasPermission('modify', 'setting/video')) {
            $this->error['warning'] = $this->language->get('error_permission');
        }

        if ((utf8_strlen($this->request->post['href']) < 3) || (utf8_strlen($this->request->post['href']) > 1000)) {
            $this->error['href'] = $this->language->get('error_href');
        }
        
        if (!$this->error) {
            return true;
        } else {
            return false;
        }
    }    

    private function validateDelete() {
        if (!$this->user->hasPermission('modify', 'setting/video')) {
            $this->error['warning'] = $this->language->get('error_permission');
        }   
        
        
        if (!$this->error) {
            return true;
        } else {
            return false;
        }  
    }
}
?>