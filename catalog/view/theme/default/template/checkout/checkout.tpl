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
  
   <?php if($isLogged) { ?>  
    <div class="cart-info">
      <table>
        <thead>
          <tr>
              <td>Наименование</td>
               <td align="left">Количество</td>
              <td align="left">Итого (грн)</td>
              <td> </td>
          </tr>
        </thead>
        <tbody>
          <?php foreach ($albums as $album) { ?>
            <tr>
              <td><a href="<?php echo $album['album_href']?>">Фотопечать "Альбом <?php echo $album['album_name'];?>"</a></td>
              <td><?php echo $album['quantity'];?></td>
              <td><?php echo $album['price'];?></td>
              <td  class="del">
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
               <td align="left">Количество</td>
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
       <td class="quantity"><input type="text" name="quantity[<?php echo $product['key']; ?>]" value="<?php echo $product['quantity']; ?>" size="1" />
              &nbsp;
              <input type="image" src="catalog/view/theme/default/image/update.png" alt="<?php echo $button_update; ?>" title="<?php echo $button_update; ?>" />
        </td>
        <td class="price"><?php echo $product['price']; ?></td>
        <td class="total"><?php echo $product['total'];?></td>
        <td  class="del">
                  <a href="#">
            <img src="catalog/view/theme/default/image/blank.gif">
          </a>
        </td>
        
           </tr>
          <?php } ?>
        </tbody>
      </table>
    </div>









<form onsubmit="return makeSubmit()" method="post" action="<?php echo $this->url->link('checkout/confirm', '', 'SSL') ;?>">

<table border="0" cellspacing="0" cellpadding="0" id="order_table">
  <tr>
    <td>
      
      <table>
        <tr><td id="shipping_method_header" colspan="2" class="title">Способ доставки</td></tr>
        <input type="hidden" name="shipping_name" value=""/>
        <?php if ($shipping_methods) { ?>
          <?php foreach ($shipping_methods as $shipping_method) { ?>
              <?php if (!$shipping_method['error']) { ?>
              <?php foreach ($shipping_method['quote'] as $quote) { ?>
                <tr><td class="check"><input type="radio" data-name="<?php echo $shipping_method['title']; ?>" name="shipping_method" value="<?php echo $quote['code']; ?>" id="<?php echo $quote['code']; ?>"></td> <td width="300"><?php echo $shipping_method['title'];?><span><?php echo $quote['title']; ?></span></td></tr>
              <?php } ?>
             <?php } else { ?>
          <tr>
            <td colspan="2"><div class="error"><?php echo $shipping_method['error']; ?></div></td>
          </tr>
          <?php } ?>
          <?php } ?>
       <?php } ?>
      </table>
      
    </td>
    <td>
      
       <table>
        <tr><td id="payment_method_header" colspan="2" class="title">Способ оплаты</td></tr>
        <input type="hidden" name="payment_name" value=""/>
        <?php if ($payment_methods) { ?>
          <?php foreach ($payment_methods as $payment_method) { ?>
                <tr>  <td class="check"><input type="radio" data-name="<?php echo $payment_method['title']; ?>" name="payment_method" value="<?php echo $payment_method['code']; ?>" id="<?php echo $payment_method['code']; ?>"></td> 
                      <td width="300"><?php echo $payment_method['title'];?><span><?php echo $payment_method['title']; ?></span></td></tr>
          <?php } ?>
       <?php } ?>
      </table>
      
    </td>
    
  </tr>
  
</table>




<div id="yellow">
  <h2>Контактные данные для оформления счета</h2>
  
  <div class="coll">
    Имя получателя:
    <br>
    <input type="text" name="name" value="<?php echo $customer['name'];?>">
    <br>
              Телефон:
    <br>
    <input type="text" name="telephone" value="<?php echo $customer['phone'];?>">
    <br>
    
              E-mail: (для ослеживания состояния заказа)
    <br>
    <input type="text" name="email" value="<?php echo $customer['mail'];?>">
    <br>
    
              Адрес доставки:
    <br>
    <input type="text" name="address" value="<?php echo $customer['address'];?>">
    <br>
  </div>
  <div class="coll">
    ФИО плательщика:
    <br>
    <input type="text" name="fio" value="<?php echo $customer['fio'];?>">
    <br>
    
              Комментарии:
    <br>
    <textarea name="comment"></textarea>
  </div>
    <div class="clear"></div>
</div>
  
  

  <div> 
  <a style="margin:0 0 30px 20px" class="button" href="#">На главную</a>
  <a style="margin:0 0 30px 120px" class="button" onclick="$('#cart_form_submit').click()">Оформить заказ и получить счет </a>
  <input id="cart_form_submit" type="submit"  style="display:none"/>
   <div class="cart-total">
      <?php foreach ($totals as $total) { ?>
        <div><b><?php echo $total['title']; ?> : <?php echo $total['text']; ?></b></div>
      <?php } ?>
  </div>
  
   <div class="clear"></div>
  </div>
</div>

</form>





</div>
</div>


</div>
</div>
<script type="text/javascript"><!--
function makeSubmit() {
  
  var re = /\S+@\S+\.\S+/;
  
  var success = true;
  
	if(!$('input[name=shipping_method]:checked').length) {
		$('#shipping_method_header').css('background-color', 'red');
		success = false;
	} else {
		$('#shipping_method_header').css('background-color', 'white');
	}
	
	if(!$('input[name=payment_method]:checked').length) {
		$('#payment_method_header').css('background-color', 'red');
		success = false;
	} else {
		$('#payment_method_header').css('background-color', 'white');
	}
	
	
	if($('input[name=name]').val() == '') {
	  $('input[name=name]').css('border', '2px solid red');
	  success = false;
	} else {
	  $('input[name=name]').css('border', '');
	}
	
	if($('input[name=telephone]').val() == '') {
    $('input[name=telephone]').css('border', '2px solid red');
    success = false;
  } else {
    $('input[name=telephone]').css('border', '');
  }
  
  
  if(!re.test($('input[name=email]').val())) {
    $('input[name=email]').css('border', '2px solid red');
    success = false;
  } else {
    $('input[name=email]').css('border', '');
  }
  
  
  if($('input[name=address]').val() == '') {
    $('input[name=address]').css('border', '2px solid red');
    success = false;
  } else {
    $('input[name=address]').css('border', '');
  }
  
  if($('input[name=fio]').val() == '') {
    $('input[name=fio]').css('border', '2px solid red');
    success = false;
  } else {
    $('input[name=fio]').css('border', '');
  }
  
	
	
	
		
		return success;
}

$(function(){
  
  $('input[name=shipping_method]').change(function(el, e){
    $('input[name=shipping_name]').val($(this).attr('data-name'))
  })
  
  $('input[name=payment_method]').change(function(el, e){
    $('input[name=payment_name]').val($(this).attr('data-name'))
  })
  
});


//--></script> 
<?php echo $footer; ?>