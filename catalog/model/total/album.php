<?php
class ModelTotalAlbum extends Model {
	
	public function getTotal(&$total_data, &$total, &$taxes) {
		$this->load->language('total/album');
		
		$album_total = $this->cart->getSubTotalAlbum();
		
		if (isset($this->session->data['vouchers']) && $this->session->data['vouchers']) {
			foreach ($this->session->data['vouchers'] as $voucher) {
				$album_total += $voucher['amount'];
			}
		}
		
		$total_data[] = array( 
			'code'       => 'album',
			'title'      => 'Печатник',
			'text'       => $this->currency->format($album_total),
			'value'      => $album_total,
			'sort_order' => $this->config->get('sub_total_sort_order')
		);
		
		$total += $album_total;
	}
	
}
?>