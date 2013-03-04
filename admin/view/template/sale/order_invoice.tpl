<?php echo '<?xml version="1.0" encoding="UTF-8"?>' . "\n"; ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="<?php echo $direction; ?>" lang="<?php echo $language; ?>" xml:lang="<?php echo $language; ?>">
<head>
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<link rel="stylesheet" type="text/css" href="view/stylesheet/invoice.css" />
</head>
<body>
<?php foreach ($orders as $order) { ?>
<div style="page-break-after: always;">
  <h1><?php echo $text_invoice; ?></h1>
  <table class="store">
    <tr>
      <td><?php echo $order['store_name']; ?><br />
        <?php echo $order['store_address']; ?><br />
        <?php echo $text_telephone; ?> <?php echo $order['store_telephone']; ?><br />
        <?php if ($order['store_fax']) { ?>
        <?php echo $text_fax; ?> <?php echo $order['store_fax']; ?><br />
        <?php } ?>
        <?php echo $order['store_email']; ?><br />
        <?php echo $order['store_url']; ?></td>
      <td align="right" valign="top"><table>
          <tr>
            <td><b><?php echo $text_date_added; ?></b></td>
            <td><?php echo $order['date_added']; ?></td>
          </tr>
          <?php if ($order['invoice_no']) { ?>
          <tr>
            <td><b><?php echo $text_invoice_no; ?></b></td>
            <td><?php echo $order['invoice_no']; ?></td>
          </tr>
          <?php } ?>
          <tr>
            <td><b><?php echo $text_order_id; ?></b></td>
            <td><?php echo $order['order_id']; ?></td>
          </tr>
          <tr>
            <td><b><?php echo $text_payment_method; ?></b></td>
            <td><?php echo $order['payment_method']; ?></td>
          </tr>
          <?php if ($order['shipping_method']) { ?>
          <tr>
            <td><b><?php echo $text_shipping_method; ?></b></td>
            <td><?php echo $order['shipping_method']; ?></td>
          </tr>
          <?php } ?>
        </table></td>
    </tr>
  </table>
  <table class="address">
    <tr class="heading">
      <td width="100%"><b><?php echo $text_ship_to; ?></b></td>
    </tr>
    <tr>
  
      <td><?php echo $order['shipping_address']; ?></td>
    </tr>
  </table>
  <table class="product">
    <tr class="heading">
    	<td><b>Альбом</b></td>
      <td><b>Фото</b></td>
      <td><b>Копии</b></td>
      <td><b>Формат</b></td>
      <td><b>Тип фотобумаги</b></td>
      <td><b>Эффект</b></td>
      <td><b>Цветокоррекция</b></td>
      <td><b>Обрезка</b></td>
      <td><b>Белая рамка</b></td>
      <td><b>Красные глаза</b></td>
      <td><b>Цена</b></td>
              
    </tr>
    	<?php
		          	$success = '+';
		          	$no = '-';
          	?>
    <?php foreach ($order['album'] as $album) { ?>
    <tr>
      				<td ><?php echo $album['album_name']; ?></td>
              <td ><?php echo $album['photo_name']; ?></td>
              <td ><?php echo $album['quantity']; ?></td>
              <td ><?php echo $album['format']; ?></td>
              <td ><?php echo $album['paper']; ?></td>
              <td ><?php echo $album['print_mode']; ?></td>
              
              <td ><?php if ($album['color_correction'] == 2) {echo $success;} else {echo $no;} ?></td>
              <td ><?php if ($album['cut_photo'] == 2) {echo $success;} else {echo $no;} ?></td>
              <td ><?php if ($album['white_border'] == 2) {echo $success;} else {echo $no;} ?></td>
              <td ><?php if ($album['red_eye'] == 2) {echo $success;} else {echo $no;} ?></td>
              <td ><?php echo $album['price']; ?></td>
    </tr>
    <?php } ?>
   
   
  </table>
  <table class="product">
    <tr class="heading">
      <td><b><?php echo $column_product; ?></b></td>
      <td><b><?php echo $column_model; ?></b></td>
      <td align="right"><b><?php echo $column_quantity; ?></b></td>
      <td align="right"><b><?php echo $column_price; ?></b></td>
      <td align="right"><b><?php echo $column_total; ?></b></td>
    </tr>
    <?php foreach ($order['product'] as $product) { ?>
    <tr>
      <td><?php echo $product['name']; ?>
        <?php foreach ($product['option'] as $option) { ?>
        <br />
        &nbsp;<small> - <?php echo $option['name']; ?>: <?php echo $option['value']; ?></small>
        <?php } ?></td>
      <td><?php echo $product['model']; ?></td>
      <td align="right"><?php echo $product['quantity']; ?></td>
      <td align="right"><?php echo $product['price']; ?></td>
      <td align="right"><?php echo $product['total']; ?></td>
    </tr>
    <?php } ?>
    <?php foreach ($order['voucher'] as $voucher) { ?>
    <tr>
      <td align="left"><?php echo $voucher['description']; ?></td>
      <td align="left"></td>
      <td align="right">1</td>
      <td align="right"><?php echo $voucher['amount']; ?></td>
      <td align="right"><?php echo $voucher['amount']; ?></td>
    </tr>
    <?php } ?>
    <?php foreach ($order['total'] as $total) { ?>
    <tr>
      <td align="right" colspan="4"><b><?php echo $total['title']; ?>:</b></td>
      <td align="right"><?php echo $total['text']; ?></td>
    </tr>
    <?php } ?>
  </table>
  <?php if ($order['comment']) { ?>
  <table class="comment">
    <tr class="heading">
      <td><b><?php echo $column_comment; ?></b></td>
    </tr>
    <tr>
      <td><?php echo $order['comment']; ?></td>
    </tr>
  </table>
  <?php } ?>
</div>
<?php } ?>
</body>
</html>