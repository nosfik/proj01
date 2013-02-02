<div class="featured">
<table border="0" cellspacing="0" cellpadding="0" class="titleTable">
  <tbody>
    <tr>
      <td class="line"> </td>
      <td width="10">
        <h2>Лучшие фотоальбомы</h2>
      </td>
      <td class="line"> </td>
    </tr>
  </tbody>
</table>

<table><tr>
 <?php 
 for ($i = 0; $i < sizeof($products); $i++) { 
    $product =  $products[$i];
    if($i >=5  && $i % 5 == 0) { ?>
      </tr><tr>  
     <?php } ?>
      <td class="item">
        <?php if ($product['thumb']) { ?>
        <div class="pic"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a></div>
        <?php } ?>
        <div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
        <?php if ($product['price']) { ?>
        <div class="price">
          <?php if (!$product['special']) { ?>
          Цена : <?php echo $product['price']; ?>
          <?php } else { ?>
          <span class="price-old">Цена : <?php echo $product['price']; ?></span> <span class="price-new">Цена : <?php echo $product['special']; ?></span>
          <?php } ?>
        </div>
        <?php } ?>
        <?php if ($product['rating']) { ?>
        <?php } ?>
      </td>
      <?php } ?>
      
</tr>    
</table>
  
</div>
