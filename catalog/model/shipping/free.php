<?php
class ModelShippingFree extends Model {
	function getQuote($address) {
		$this->load->language('shipping/free');
		
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "zone_to_geo_zone WHERE country_id = '" . (int)$address['country_id'] . "'");
	
		if (!$this->config->get('free_geo_zone_id')) {
			$status = true;
		} elseif ($query->num_rows) {
			$status = true;
		} else {
			$status = false;
		}
    
		if (($this->cart->getSubTotal() + $this->cart->getSubTotalAlbum()) < $this->config->get('free_total')) {
			$status = false;
		}
		
		$method_data = array();
	
		if ($status) {
			$quote_data = array();
			
      		$quote_data['free'] = array(
        		'code'         => 'free.free',
        		'title'        => $this->language->get('text_description'),
        		'cost'         => 0.00,
        		'tax_class_id' => 0,
				'text'         => $this->currency->format(0.00)
      		);

      		$method_data = array(
        		'code'       => 'free',
        		'title'      => $this->language->get('text_title'),
        		'quote'      => $quote_data,
				'sort_order' => $this->config->get('free_sort_order'),
        		'error'      => false
      		);
		}
	// print_r($method_data);
		return $method_data;
	}
}
?>