<?php if (!isset($redirect)) { ?>
  
  
  <?php echo $header; ?>
<div id="content">

<?php echo $content_top; ?>
  
  
<div style="padding-top:50px">
  <div style="background-color: beige; margin: 0px auto; width: 998px; text-align: center; font-size: 17px; padding: 3px 10px;">Печатник</div>  
  <div class="checkout-product">
    <table>
      <thead>
        <tr>
          <td class="name">Альбом</td>
          <td class="quantity"><?php echo $column_quantity; ?></td>
          <td class="price"><?php echo $column_price; ?></td>
        </tr>
      </thead>
      <tbody>
        <?php foreach ($albums as $album) { ?>
        <tr>
          <td class="name"><a href="<?php echo $album['href']; ?>"><?php echo $album['album_name']; ?></a></td>
          <td class="quantity"><?php echo $album['quantity']; ?></td>
          <td class="price"><?php echo $album['price']; ?></td>
        </tr>
        <?php } ?>
    </table>
  </div>
  
  
  <div style="background-color: beige; margin: 0px auto; width: 998px; text-align: center; font-size: 17px; padding: 3px 10px;">Магазин</div>  
  <div class="checkout-product">
    <table>
      <thead>
        <tr>
          <td class="name"><?php echo $column_name; ?></td>
          <td class="model"><?php echo $column_model; ?></td>
          <td class="quantity"><?php echo $column_quantity; ?></td>
          <td class="price"><?php echo $column_price; ?></td>
          <td class="total"><?php echo $column_total; ?></td>
        </tr>
      </thead>
      <tbody>
        <?php foreach ($products as $product) { ?>
        <tr>
          <td class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
            <?php foreach ($product['option'] as $option) { ?>
            <br />
            &nbsp;<small> - <?php echo $option['name']; ?>: <?php echo $option['value']; ?></small>
            <?php } ?></td>
          <td class="model"><?php echo $product['model']; ?></td>
          <td class="quantity"><?php echo $product['quantity']; ?></td>
          <td class="price"><?php echo $product['price']; ?></td>
          <td class="total"><?php echo $product['total']; ?></td>
        </tr>
        <?php } ?>
        <?php foreach ($vouchers as $voucher) { ?>
        <tr>
          <td class="name"><?php echo $voucher['description']; ?></td>
          <td class="model"></td>
          <td class="quantity">1</td>
          <td class="price"><?php echo $voucher['amount']; ?></td>
          <td class="total"><?php echo $voucher['amount']; ?></td>
        </tr>
        <?php } ?>
      </tbody>
      <tfoot>
        <?php foreach ($totals as $total) { ?>
        <tr>
          <td colspan="4" class="price"><b><?php echo $total['title']; ?>:</b></td>
          <td class="total"><?php echo $total['text']; ?></td>
        </tr>
        <?php } ?>
      </tfoot>
    </table>
  </div>
  <div class="payment"><?php echo $payment; ?></div>
  
  <?php echo $content_bottom; ?>
  </div>
</div>
<?php } else { ?>
<script type="text/javascript"><!--
location = '<?php echo $redirect; ?>';
//--></script> 
<?php } ?>
<?php echo $footer; ?>