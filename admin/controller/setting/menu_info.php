<?php    
class ControllerSettingMenuInfo extends Controller { 
    private $error = array();
  
    public function index() {
        $this->load->language('setting/menu_info');
        
        $this->document->setTitle($this->language->get('heading_title'));
         
        $this->load->model('setting/menu_info');
        
        $this->getList();
    }
  
    public function insert() {
        $this->load->language('setting/menu_info');

        $this->document->setTitle($this->language->get('heading_title'));
        
        $this->load->model('setting/menu_info');
            
        if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validateForm()) {
            $this->model_setting_menu_info->addMenuInfo($this->request->post);

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
            
            $this->redirect($this->url->link('setting/menu_info', 'token=' . $this->session->data['token'] . $url, 'SSL'));
        }
    
        $this->getForm();
    } 
   
    public function update() {
        $this->load->language('setting/menu_info');

        $this->document->setTitle($this->language->get('heading_title'));
        
        $this->load->model('setting/menu_info');
        
        if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validateForm()) {
            $this->model_setting_menu_info->editMenuInfo($this->request->get['menu_info_id'], $this->request->post);

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
            
            $this->redirect($this->url->link('setting/menu_info', 'token=' . $this->session->data['token'] . $url, 'SSL'));
        }
    
        $this->getForm();
    }   

    public function delete() {
        $this->load->language('setting/menu_info');

        $this->document->setTitle($this->language->get('heading_title'));
        
        $this->load->model('setting/menu_info');
            
        if (isset($this->request->post['selected']) && $this->validateDelete()) {
            foreach ($this->request->post['selected'] as $menu_info_id) {
                $this->model_setting_menu_info->deleteMenuInfo($menu_info_id);
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
            
            $this->redirect($this->url->link('setting/menu_info', 'token=' . $this->session->data['token'] . $url, 'SSL'));
        }
    
        $this->getList();
    }  
    
    private function getList() {
        if (isset($this->request->get['sort'])) {
            $sort = $this->request->get['sort'];
        } else {
            $sort = 'name';
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
            'text'      => 'Полезная информация',
            'href'      => $this->url->link('setting/menu_info', 'token=' . $this->session->data['token'] . $url, 'SSL'),
            'separator' => ' :: '
        );
                            
        $this->data['insert'] = $this->url->link('setting/menu_info/insert', 'token=' . $this->session->data['token'] . $url, 'SSL');
        $this->data['delete'] = $this->url->link('setting/menu_info/delete', 'token=' . $this->session->data['token'] . $url, 'SSL');    

        $this->data['menu_infos'] = array();

        $data = array(
            'sort'  => $sort,
            'order' => $order,
            'start' => ($page - 1) * $this->config->get('config_admin_limit'),
            'limit' => $this->config->get('config_admin_limit')
        );
        
        $menu_info_total = $this->model_setting_menu_info->getTotalMenuInfos();
    
        $results = $this->model_setting_menu_info->getMenuInfos($data);
 
        foreach ($results as $result) {
            $action = array();
            
            $action[] = array(
                'text' => $this->language->get('text_edit'),
                'href' => $this->url->link('setting/menu_info/update', 'token=' . $this->session->data['token'] . '&menu_info_id=' . $result['menu_info_id'] . $url, 'SSL')
            );
                        
            $this->data['menu_infos'][] = array(
                'menu_info_id'    => $result['menu_info_id'],
                'name'            => $result['name'],
                'selected'        => isset($this->request->post['selected']) && in_array($result['menu_info_id'], $this->request->post['selected']),
                'order'      => $result['order'],
                'action'          => $action
            );
        }   
    
        $this->data['heading_title'] = $this->language->get('heading_title');
        
        $this->data['text_no_results'] = $this->language->get('text_no_results');

        $this->data['column_name'] = $this->language->get('column_name');
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
        
        $this->data['sort_name'] = $this->url->link('setting/menu_info', 'token=' . $this->session->data['token'] . '&sort=name' . $url, 'SSL');
        $this->data['sort_sort_order'] = $this->url->link('setting/menu_info', 'token=' . $this->session->data['token'] . '&sort=sort_order' . $url, 'SSL');
        
        $url = '';

        if (isset($this->request->get['sort'])) {
            $url .= '&sort=' . $this->request->get['sort'];
        }
                                                
        if (isset($this->request->get['order'])) {
            $url .= '&order=' . $this->request->get['order'];
        }

        $pagination = new Pagination();
        $pagination->total = $menu_info_total;
        $pagination->page = $page;
        $pagination->limit = $this->config->get('config_admin_limit');
        $pagination->text = $this->language->get('text_pagination');
        $pagination->url = $this->url->link('setting/menu_info', 'token=' . $this->session->data['token'] . $url . '&page={page}', 'SSL');
            
        $this->data['pagination'] = $pagination->render();

        $this->data['sort'] = $sort;
        $this->data['order'] = $order;

        $this->template = 'setting/menu_info_list.tpl';
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
                
        $this->data['entry_name'] = $this->language->get('entry_name');
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

        if (isset($this->error['name'])) {
            $this->data['error_name'] = $this->error['name'];
        } else {
            $this->data['error_name'] = '';
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
            'text'      => 'Полезная информация',
            'href'      => $this->url->link('setting/menu_info', 'token=' . $this->session->data['token'] . $url, 'SSL'),
            'separator' => ' :: '
        );
                            
        if (!isset($this->request->get['menu_info_id'])) {
            $this->data['action'] = $this->url->link('setting/menu_info/insert', 'token=' . $this->session->data['token'] . $url, 'SSL');
        } else {
            $this->data['action'] = $this->url->link('setting/menu_info/update', 'token=' . $this->session->data['token'] . '&menu_info_id=' . $this->request->get['menu_info_id'] . $url, 'SSL');
        }
        
        $this->data['cancel'] = $this->url->link('setting/menu_info', 'token=' . $this->session->data['token'] . $url, 'SSL');
    
        if (isset($this->request->get['menu_info_id']) && ($this->request->server['REQUEST_METHOD'] != 'POST')) {
            $menu_info_info = $this->model_setting_menu_info->getMenuInfo($this->request->get['menu_info_id']);
        }

        $this->data['token'] = $this->session->data['token'];

        $this->load->model('localisation/language');
        
        $this->data['languages'] = $this->model_localisation_language->getLanguages();

        if (isset($this->request->post['menu_info_description'])) {
            $this->data['menu_info_description'] = $this->request->post['menu_info_description'];
        } elseif (!empty($menu_info_info)) {
            $this->data['menu_info_description'] = $this->model_setting_menu_info->getMenuInfoDescriptions($this->request->get['menu_info_id']);
        } else {
            $this->data['menu_info_description'] = array();
        }

        if (isset($this->request->post['name'])) {
            $this->data['name'] = $this->request->post['name'];
        } elseif (!empty($menu_info_info)) {
            $this->data['name'] = $menu_info_info['name'];
        } else {    
            $this->data['name'] = '';
        }
        
         if (isset($this->request->post['url'])) {
            $this->data['url'] = $this->request->post['url'];
        } elseif (!empty($menu_info_info)) {
            $this->data['url'] = $menu_info_info['url'];
        } else {    
            $this->data['url'] = '';
        }

         if (isset($this->request->post['picture'])) {
            $this->data['picture'] = $this->request->post['picture'];
        } elseif (!empty($menu_info_info)) {
            $this->data['picture'] = $menu_info_info['picture'];
        } else {    
            $this->data['picture'] = '';
        }
        
        $this->load->model('tool/image');
        if (isset($this->request->post['picture']) && file_exists(DIR_IMAGE . $this->request->post['picture'])) {
            $this->data['thumb'] = $this->model_tool_image->resize($this->request->post['picture'], 100, 100);
        } elseif (!empty($menu_info_info) && $menu_info_info['picture'] && file_exists(DIR_IMAGE . $menu_info_info['picture'])) {
            $this->data['thumb'] = $this->model_tool_image->resize($menu_info_info['picture'], 100, 100);
        } else {
            $this->data['thumb'] = $this->model_tool_image->resize('no_image.jpg', 100, 100);
        }
        
        $this->data['no_image'] = $this->model_tool_image->resize('no_image.jpg', 100, 100);
        
        
        if (isset($this->request->post['order'])) {
            $this->data['order'] = $this->request->post['order'];
        } elseif (!empty($menu_info_info)) {
            $this->data['order'] = $menu_info_info['order'];
        } else {
            $this->data['order'] = '';
        }
        
        $this->template = 'setting/menu_info_form.tpl';
        $this->children = array(
            'common/header',
            'common/footer'
        );
                
        $this->response->setOutput($this->render());
    }  
     
    private function validateForm() {
        if (!$this->user->hasPermission('modify', 'setting/menu_info')) {
            $this->error['warning'] = $this->language->get('error_permission');
        }

        if ((utf8_strlen($this->request->post['name']) < 3) || (utf8_strlen($this->request->post['name']) > 64)) {
            $this->error['name'] = $this->language->get('error_name');
        }
        
        if (!$this->error) {
            return true;
        } else {
            return false;
        }
    }    

    private function validateDelete() {
        if (!$this->user->hasPermission('modify', 'setting/menu_info')) {
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