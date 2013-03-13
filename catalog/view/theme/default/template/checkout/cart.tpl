<?php echo $header; ?>
<div id="shop_cont">
<?php echo $content_top; ?>
<div id="left_collumn">
  <div id="top"></div>
  <?php echo $column_left; ?>
  <div id="bottom"/></div>

</div>
<div id="center">
  <div id="full_cart">
<?php if ($attention) { ?>
<div class="attention"><?php echo $attention; ?><img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>
<?php } ?>
<?php if ($success) { ?>
<div class="success"><?php echo $success; ?><img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>
<?php } ?>
<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?><img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>
<?php } ?>



  <div id="title">Корзина</div>

    <?php if ($weight) { ?>
    &nbsp;(<?php echo $weight; ?>)
    <?php } ?>
  <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
  <?php if($isLogged) { ?>  
    <div class="cart-info">
      <table>
        <thead>
          <tr>
              <td>Наименование</td>
              <td align="center">Фотографии</td>
              <td align="center">Копии</td>
              <td align="center">Сумма</td>
              <td align="center">Итого (грн)</td>
              <td> </td>
          </tr>
        </thead>
        <tbody>
          <?php foreach ($albums as $album) { ?>
            <tr>
              <td><a href="<?php echo $album['album_href']?>">Фотопечать "Альбом <?php echo $album['album_name'];?>"</a></td>
              <td align="center"><?php echo $album['count'];?></td>
              <td align="center"><?php echo $album['quantity'];?></td>
              <td align="center"><?php echo $album['price'];?></td>
              <td align="center"><?php echo $album['total'];?></td>
              <td align="center" class="del">
                  <a href="<?php echo $this->url->link('checkout/cart', 'removeAlbum='.$album['key']);?> "> <img src="catalog/view/theme/default/image/blank.gif">   </a>
              </td>
            </tr>
          <?php } ?>
        </tbody>
        </table>
      
    </div>
    
  <?php } ?>  
    
    
    
    <div class="cart-info">
      <table>
        <thead>
          <tr>
              <td colspan="2">Наименование</td>
               <td align="center">Количество</td>
              <td align="center">Цена (грн)</td>
             
              <td align="right">Итого (грн)</td>
              <td> </td>
          </tr>
        </thead>
        <tbody>
          <?php foreach ($products as $product) { ?>
          <tr>
            
              <td class="pic"><?php if ($product['thumb']) { ?>
                <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" /></a><?php } ?>
              </td>
              <td class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
              <?php if (!$product['stock']) { ?>
              <span class="stock">***</span>
              <?php } ?>
              <div>
                <?php foreach ($product['option'] as $option) { ?>
                - <small><?php echo $option['name']; ?>: <?php echo $option['value']; ?></small><br />
                <?php } ?>
              </div>
              <?php if ($product['reward']) { ?>
              <small><?php echo $product['reward']; ?></small>
              <?php } ?></td>
       <td style="text-align: center" class="quantity"><input type="text" name="quantity[<?php echo $product['key']; ?>]" value="<?php echo $product['quantity']; ?>" size="1" />
              &nbsp;
              <input type="image" src="catalog/view/theme/default/image/update.png" alt="<?php echo $button_update; ?>" title="<?php echo $button_update; ?>" />
        </td>
        <td class="price"><?php echo $product['price']; ?></td>
        <td style="padding-right: 25px;" class="total"><?php echo $product['total'];?></td>
        <td  align="center" class="del">
                  <a href="<?php echo $this->url->link('checkout/cart', 'remove='.$product['key']);?> ">
            <img src="catalog/view/theme/default/image/blank.gif">
          </a>
        </td>
        
           </tr>
          <?php } ?>
        </tbody>
      </table>
    </div>
  </form>
  
  
  <a style="margin:0 0 30px 20px" class="button" href="<?php echo $continue; ?>"><?php echo $button_shopping; ?></a>
  <a style="margin:0 0 30px 140px" class="button" href="<?php echo $checkout; ?>"><?php echo $button_checkout; ?> </a>
 <div class="cart-total">
      <?php foreach ($totals as $total) { ?>
        <div><b><?php echo $total['title']; ?> : <?php echo $total['text']; ?></b></div>
      <?php } ?>
  </div>
  <div class="clear"></div>
</div>
<!--
  <?php if ($coupon_status || $voucher_status || $reward_status || $shipping_status) { ?>
  <h2><?php echo $text_next; ?></h2>
  <div class="content">
    <p><?php echo $text_next_choice; ?></p>
    <table class="radio">
      <?php if ($coupon_status) { ?>
      <tr class="highlight">
        <td><?php if ($next == 'coupon') { ?>
          <input type="radio" name="next" value="coupon" id="use_coupon" checked="checked" />
          <?php } else { ?>
          <input type="radio" name="next" value="coupon" id="use_coupon" />
          <?php } ?></td>
        <td><label for="use_coupon"><?php echo $text_use_coupon; ?></label></td>
      </tr>
      <?php } ?>
      <?php if ($voucher_status) { ?>
      <tr class="highlight">
        <td><?php if ($next == 'voucher') { ?>
          <input type="radio" name="next" value="voucher" id="use_voucher" checked="checked" />
          <?php } else { ?>
          <input type="radio" name="next" value="voucher" id="use_voucher" />
          <?php } ?></td>
        <td><label for="use_voucher"><?php echo $text_use_voucher; ?></label></td>
      </tr>
      <?php } ?>
      <?php if ($reward_status) { ?>
      <tr class="highlight">
        <td><?php if ($next == 'reward') { ?>
          <input type="radio" name="next" value="reward" id="use_reward" checked="checked" />
          <?php } else { ?>
          <input type="radio" name="next" value="reward" id="use_reward" />
          <?php } ?></td>
        <td><label for="use_reward"><?php echo $text_use_reward; ?></label></td>
      </tr>
      <?php } ?>
      <?php if ($shipping_status) { ?>
      <tr class="highlight">
        <td><?php if ($next == 'shipping') { ?>
          <input type="radio" name="next" value="shipping" id="shipping_estimate" checked="checked" />
          <?php } else { ?>
          <input type="radio" name="next" value="shipping" id="shipping_estimate" />
          <?php } ?></td>
        <td><label for="shipping_estimate"><?php echo $text_shipping_estimate; ?></label></td>
      </tr>
      <?php } ?>
    </table>
  </div>
  <div class="cart-module">
    <div id="coupon" class="content" style="display: <?php echo ($next == 'coupon' ? 'block' : 'none'); ?>;">
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
        <?php echo $entry_coupon; ?>&nbsp;
        <input type="text" name="coupon" value="<?php echo $coupon; ?>" />
        <input type="hidden" name="next" value="coupon" />
        &nbsp;
        <input type="submit" value="<?php echo $button_coupon; ?>" class="button" />
      </form>
    </div>
    <div id="voucher" class="content" style="display: <?php echo ($next == 'voucher' ? 'block' : 'none'); ?>;">
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
        <?php echo $entry_voucher; ?>&nbsp;
        <input type="text" name="voucher" value="<?php echo $voucher; ?>" />
        <input type="hidden" name="next" value="voucher" />
        &nbsp;
        <input type="submit" value="<?php echo $button_voucher; ?>" class="button" />
      </form>
    </div>
    <div id="reward" class="content" style="display: <?php echo ($next == 'reward' ? 'block' : 'none'); ?>;">
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
        <?php echo $entry_reward; ?>&nbsp;
        <input type="text" name="reward" value="<?php echo $reward; ?>" />
        <input type="hidden" name="next" value="reward" />
        &nbsp;
        <input type="submit" value="<?php echo $button_reward; ?>" class="button" />
      </form>
    </div>
    <div id="shipping" class="content" style="display: <?php echo ($next == 'shipping' ? 'block' : 'none'); ?>;">
      <p><?php echo $text_shipping_detail; ?></p>
      <table>
        <tr>
          <td><span class="required">*</span> <?php echo $entry_country; ?></td>
          <td><select name="country_id">
              <option value=""><?php echo $text_select; ?></option>
              <?php foreach ($countries as $country) { ?>
              <?php if ($country['country_id'] == $country_id) { ?>
              <option value="<?php echo $country['country_id']; ?>" selected="selected"><?php echo $country['name']; ?></option>
              <?php } else { ?>
              <option value="<?php echo $country['country_id']; ?>"><?php echo $country['name']; ?></option>
              <?php } ?>
              <?php } ?>
            </select></td>
        </tr>
        <tr>
          <td><span class="required">*</span> <?php echo $entry_zone; ?></td>
          <td><select name="zone_id">
            </select></td>
        </tr>
        <tr>
          <td><span id="postcode-required" class="required">*</span> <?php echo $entry_postcode; ?></td>
          <td><input type="text" name="postcode" value="<?php echo $postcode; ?>" /></td>
        </tr>
      </table>
      <input type="button" value="<?php echo $button_quote; ?>" id="button-quote" class="button" />
    </div>
  </div>
  <?php } ?>
-->
 </div></div>
<script type="text/javascript"><!--
$('input[name=\'next\']').bind('change', function() {
  $('.cart-module > div').hide();
  
  $('#' + this.value).show();
});
//--></script>
<?php if ($shipping_status) { ?>
<script type="text/javascript"><!--
$('#button-quote').live('click', function() {
  $.ajax({
    url: 'index.php?route=checkout/cart/quote',
    type: 'post',
    data: 'country_id=' + $('select[name=\'country_id\']').val() + '&zone_id=' + $('select[name=\'zone_id\']').val() + '&postcode=' + encodeURIComponent($('input[name=\'postcode\']').val()),
    dataType: 'json',   
    beforeSend: function() {
      $('#button-quote').attr('disabled', true);
      $('#button-quote').after('<span class="wait">&nbsp;<img src="catalog/view/theme/default/image/loading.gif" alt="" /></span>');
    },
    complete: function() {
      $('#button-quote').attr('disabled', false);
      $('.wait').remove();
    },    
    success: function(json) {
      $('.success, .warning, .attention, .error').remove();     
            
      if (json['error']) {
        if (json['error']['warning']) {
          $('#notification').html('<div class="warning" style="display: none;">' + json['error']['warning'] + '<img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>');
          
          $('.warning').fadeIn('slow');
          
          $('html, body').animate({ scrollTop: 0 }, 'slow'); 
        } 
              
        if (json['error']['country']) {
          $('select[name=\'country_id\']').after('<span class="error">' + json['error']['country'] + '</span>');
        } 
        
        if (json['error']['zone']) {
          $('select[name=\'zone_id\']').after('<span class="error">' + json['error']['zone'] + '</span>');
        }
        
        if (json['error']['postcode']) {
          $('input[name=\'postcode\']').after('<span class="error">' + json['error']['postcode'] + '</span>');
        }         
      }
      
      if (json['shipping_method']) {
        html  = '<h2><?php echo $text_shipping_method; ?></h2>';
        html += '<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">';
        html += '  <table class="radio">';
        
        for (i in json['shipping_method']) {
          html += '<tr>';
          html += '  <td colspan="3"><b>' + json['shipping_method'][i]['title'] + '</b></td>';
          html += '</tr>';
        
          if (!json['shipping_method'][i]['error']) {
            for (j in json['shipping_method'][i]['quote']) {
              html += '<tr class="highlight">';
              
              if (json['shipping_method'][i]['quote'][j]['code'] == '<?php echo $shipping_method; ?>') {
                html += '<td><input type="radio" name="shipping_method" value="' + json['shipping_method'][i]['quote'][j]['code'] + '" id="' + json['shipping_method'][i]['quote'][j]['code'] + '" checked="checked" /></td>';
              } else {
                html += '<td><input type="radio" name="shipping_method" value="' + json['shipping_method'][i]['quote'][j]['code'] + '" id="' + json['shipping_method'][i]['quote'][j]['code'] + '" /></td>';
              }
                
              html += '  <td><label for="' + json['shipping_method'][i]['quote'][j]['code'] + '">' + json['shipping_method'][i]['quote'][j]['title'] + '</label></td>';
              html += '  <td style="text-align: right;"><label for="' + json['shipping_method'][i]['quote'][j]['code'] + '">' + json['shipping_method'][i]['quote'][j]['text'] + '</label></td>';
              html += '</tr>';
            }   
          } else {
            html += '<tr>';
            html += '  <td colspan="3"><div class="error">' + json['shipping_method'][i]['error'] + '</div></td>';
            html += '</tr>';            
          }
        }
        
        html += '  </table>';
        html += '  <br />';
        html += '  <input type="hidden" name="next" value="shipping" />';
        
        <?php if ($shipping_method) { ?>
        html += '  <input type="submit" value="<?php echo $button_shipping; ?>" id="button-shipping" class="button" />';  
        <?php } else { ?>
        html += '  <input type="submit" value="<?php echo $button_shipping; ?>" id="button-shipping" class="button" disabled="disabled" />';  
        <?php } ?>
              
        html += '</form>';
        
        $.colorbox({
          overlayClose: true,
          opacity: 0.5,
          width: '600px',
          height: '400px',
          href: false,
          html: html
        });
        
        $('input[name=\'shipping_method\']').bind('change', function() {
          $('#button-shipping').attr('disabled', false);
        });
      }
    }
  });
});
//--></script> 
<script type="text/javascript"><!--
$('select[name=\'country_id\']').bind('change', function() {
  $.ajax({
    url: 'index.php?route=checkout/cart/country&country_id=' + this.value,
    dataType: 'json',
    beforeSend: function() {
      $('select[name=\'country_id\']').after('<span class="wait">&nbsp;<img src="catalog/view/theme/default/image/loading.gif" alt="" /></span>');
    },
    complete: function() {
      $('.wait').remove();
    },      
    success: function(json) {
      if (json['postcode_required'] == '1') {
        $('#postcode-required').show();
      } else {
        $('#postcode-required').hide();
      }
      
      html = '<option value=""><?php echo $text_select; ?></option>';
      
      if (json['zone'] != '') {
        for (i = 0; i < json['zone'].length; i++) {
              html += '<option value="' + json['zone'][i]['zone_id'] + '"';
            
          if (json['zone'][i]['zone_id'] == '<?php echo $zone_id; ?>') {
                html += ' selected="selected"';
            }
  
            html += '>' + json['zone'][i]['name'] + '</option>';
        }
      } else {
        html += '<option value="0" selected="selected"><?php echo $text_none; ?></option>';
      }
      
      $('select[name=\'zone_id\']').html(html);
    },
    error: function(xhr, ajaxOptions, thrownError) {
      alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
    }
  });
});

$('select[name=\'country_id\']').trigger('change');
//--></script>
<?php } ?>
<?php echo $footer; ?>