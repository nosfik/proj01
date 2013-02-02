<div id="blue">
  <div class="title">Акция</div>
    <?php foreach ($products as $product) { ?>
      <div class="itemCont"> 
        <?php if ($product['thumb']) { ?>
        <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a></div>
        <?php } ?>
        <div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
        <?php if ($product['price']) { ?>
        <div class="price">
         
          <?php if (!$product['special']) { ?>
           Цена : <?php echo $product['price']; ?>
          <?php } else { ?>
          <span class="price-old"> Цена : <?php echo $product['price']; ?></span> <span class="price-new"> Цена : <?php echo $product['special']; ?></span>
          <?php } ?>
        </div>
        <?php } ?>
        <?php if ($product['rating']) { ?>
        <div class="rating"><img src="catalog/view/theme/default/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" /></div>
        <?php } ?>
      </div>
      <?php } ?>
</div>




