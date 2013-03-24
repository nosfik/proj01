<?php   
class ControllerCommonFilter extends Controller {
    protected function index() {
        
        
        if (isset($this->request->get['parent'])) {
            $parent = $this->request->get['parent'];
        } else {
            $parent = 0;
        }
        
        if (isset($this->request->get['filter_area_l'])) {
            $filter_area_l = $this->request->get['filter_area_l'];
        } else {
            $filter_area_l = 0;
        } 
        
        if (isset($this->request->get['filter_area_h'])) {
            $filter_area_h = $this->request->get['filter_area_h'];
        } else {
            $filter_area_h = 0;
        } 
        
        if (isset($this->request->get['filter_bathroom_l'])) {
            $filter_bathroom_l = $this->request->get['filter_bathroom_l'];
        } else {
            $filter_bathroom_l = 0;
        } 
        
        if (isset($this->request->get['filter_bathroom_h'])) {
            $filter_bathroom_h = $this->request->get['filter_bathroom_h'];
        } else {
            $filter_bathroom_h = 0;
        } 
        
        if (isset($this->request->get['filter_bedroom_h'])) {
            $filter_bedroom_h = $this->request->get['filter_bedroom_h'];
        } else {
            $filter_bedroom_h = 0;
        } 
        
        if (isset($this->request->get['filter_bedroom_l'])) {
            $filter_bedroom_l = $this->request->get['filter_bedroom_l'];
        } else {
            $filter_bedroom_l = 0;
        } 
        
        if (isset($this->request->get['filter_price_l'])) {
            $filter_price_l = $this->request->get['filter_price_l'];
        } else {
            $filter_price_l = 0;
        } 
        
        if (isset($this->request->get['filter_price_h'])) {
            $filter_price_h = $this->request->get['filter_price_h'];
        } else {
            $filter_price_h = 0;
        } 
                
        if (isset($this->request->get['filter_category_id'])) {
            $filter_category_id = $this->request->get['filter_category_id'];
        } else {
            $filter_category_id = 0;
        } 
        
        if (isset($this->request->get['filter_number'])) {
            $filter_number = $this->request->get['filter_number'];
            
            if($filter_number == 'Номер объекта или название') {
                $filter_number = 0;
            }
            
        } else {
            $filter_number = 0;
        } 
        
        if (isset($this->request->get['filter_zone_id'])) {
            $filter_zone_id = $this->request->get['filter_zone_id'];
        } else {
            $filter_zone_id = 0;
        } 
        
        
        $this->data['filter_area_l'] = $filter_area_l;
        $this->data['filter_area_h'] = $filter_area_h;
        $this->data['filter_bathroom_l'] = $filter_bathroom_l;
        $this->data['filter_bathroom_h'] = $filter_bathroom_h;
        $this->data['filter_bedroom_h'] = $filter_bedroom_h;
        $this->data['filter_bedroom_l'] = $filter_bedroom_l;
        $this->data['filter_price_l'] = $filter_price_l;
        $this->data['filter_price_h'] = $filter_price_h;
        $this->data['filter_category_id'] = $filter_category_id;
        $this->data['filter_number'] = $filter_number;
        $this->data['filter_zone_id'] = $filter_zone_id;
        $this->data['parent'] = $parent;
        
                
        $this->load->model('menu/filter');
        
        //FILTER BUILDS
        $this->data['b_zones'] = $this->model_menu_filter->getZones(2);
        
        $areas = $this->model_menu_filter->getAreas(2);
        $this->data['b_area_l'] = $areas['l'];
        $this->data['b_area_h'] = $areas['h'];
        
        $prices = $this->model_menu_filter->getPrices(2);
        $this->data['b_price_l'] = $prices['l'];
        $this->data['b_price_h'] = $prices['h'];
        
        // FILTER SALES
        $this->data['zones'] = $this->model_menu_filter->getZones();
        $this->data['categories'] = $this->model_menu_filter->getCategories();
        
        $bedrooms = $this->model_menu_filter->getBedrooms();
        $this->data['bedroom_l'] = $bedrooms['l'];
        $this->data['bedroom_h'] = $bedrooms['h'];
        
        $bathrooms = $this->model_menu_filter->getBathrooms();
        $this->data['bathroom_l'] = $bathrooms['l'];
        $this->data['bathroom_h'] = $bathrooms['h'];
        
        
        $areas = $this->model_menu_filter->getAreas();
        $this->data['area_l'] = $areas['l'];
        $this->data['area_h'] = $areas['h'];
        
        $prices = $this->model_menu_filter->getPrices();
        $this->data['price_l'] = $prices['l'];
        $this->data['price_h'] = $prices['h'];
        
        if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/common/filter.tpl')) {
            $this->template = $this->config->get('config_template') . '/template/common/filter.tpl';
        } else {
            $this->template = 'default/template/common/filter.tpl';
        }
        
        $this->render();
            
    }
}
?>