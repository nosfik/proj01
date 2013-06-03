<?php
class ControllerProductPhoto extends Controller {
	public function index() {
		
		
		$this->document->addScript('catalog/view/javascript/jquery.fancybox-1.3.4.pack.js');
		$this->document->addStyle('catalog/view/theme/default/stylesheet/jquery.fancybox-1.3.4.css');

		$this->language->load('product/photo');

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
		
		if (isset($this->request->get['page'])) {
			$page = $this->request->get['page'];
		} else { 
			$page = 1;
		}	
							
		if (isset($this->request->get['limit'])) {
			$limit = $this->request->get['limit'];
		} else {
			$limit = 16;
		}
		
		$this->load->model('catalog/product');	
		$this->load->model('tool/image');	
		$data = array(
			'start'   => ($page - 1) * $limit,
			'limit'   => $limit
		);
		
		$images = $this->model_catalog_product->getPhotos($data);
		
		$this->data['images'] = array();
		foreach ($images as $image) {
			$this->data['images'][] = array(
				'name' => $image['name'],
				'image' => $this->model_tool_image->resize($image['image'], 1000, 640, 2),
				'href' => $this->url->link('product/product', 'product_id='.$image['product_id'])
			);
			
		}
		
		$total_photo = $this->model_catalog_product->getTotalPhotos();
		
		$this->model_catalog_product->getPhotos($data);
		
		
		$pagination = new Pagination();
			$pagination->total = $total_photo;
			$pagination->page = $page;
			$pagination->limit = $limit;
			$pagination->text = $this->language->get('text_pagination');
			$pagination->url = $this->url->link('product/photo', '&page={page}');
		
			$this->data['pagination'] = $pagination->render();
		
			$this->data['limit'] = $limit;

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/product/photo.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/product/photo.tpl';
		} else {
			$this->template = 'default/template/product/photo.tpl';
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