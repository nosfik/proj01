<?php
class ModelTotalAlbum extends Model {
  public function getTotal(&$total_data, &$total, &$taxes) {
    $this->load->language('total/total');
   
    $total_data[] = array(
      'code'       => 'total',
      'title'      => 'Печатник',
      'text'       => $this->currency->format(max(0, $total)),
      'value'      => max(0, $total),
      'sort_order' => 2
    );
  }
}
?>