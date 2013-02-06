
<div id="cart">
  <div>
    <a id="title_left" href="<?php echo $cart; ?>">Корзина</a>
    <div id="title_right"></div>
  </div>
  <div id="cart_text">

  Товаров : <span><?php echo $total_count;?></span><br>
  
  
          
  на сумму: <span><?php echo $total_sum;?></span>
</div>
</div>

<?php if ($products || $vouchers) { ?>
<div id="cartbutton" class="smallButton" onmouseover="$(this).addClass('hover');" onmouseout="$(this).removeClass('hover');">
  <a class="left" href="<?php echo $checkout; ?>">оформить заказ</a>
  <div class="right"></div>
</div>
<?php } ?>