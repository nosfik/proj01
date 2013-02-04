
<?php echo $header; ?>
<div id="shop_cont">
  <?php echo $content_top; ?>
  <div id="left_collumn">
    <div id="top"></div>
    <?php echo $column_left; ?>
    <div id="bottom"/></div>
  </div>
  <div id="center">
  <div class="forFloat">
   
  <h1><?php echo $heading_title; ?></h1>
  <?php if ($thumb || $description) { ?>
  <div class="category-info">
    <?php if ($thumb) { ?>
    <div class="image"><img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" /></div>
    <?php } ?>
    <?php if ($description) { ?>
    <?php echo $description; ?>
    <?php } ?>
  </div>
  <?php } ?>
  <?php if ($categories) { ?>
  <h2><?php echo $text_refine; ?></h2>
  <div class="category-list">
    <?php if (count($categories) <= 5) { ?>
    <ul>
      <?php foreach ($categories as $category) { ?>
      <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
      <?php } ?>
    </ul>
    <?php } else { ?>
    <?php for ($i = 0; $i < count($categories);) { ?>
    <ul>
      <?php $j = $i + ceil(count($categories) / 4); ?>
      <?php for (; $i < $j; $i++) { ?>
      <?php if (isset($categories[$i])) { ?>
      <li><a href="<?php echo $categories[$i]['href']; ?>"><?php echo $categories[$i]['name']; ?></a></li>
      <?php } ?>
      <?php } ?>
    </ul>
    <?php } ?>
    <?php } ?>
  </div>
  <?php } ?>
  <?php if ($products) { ?>
    <div id="sort">
  <div class="left">Сортировка товара:</div>
  <div class="right">
    <select id="price-filter">
      <option value="0">По цене</option>
      <?php foreach($prices as $price) {?>
        <option value="<?php echo $price['id'];?>"><?php echo $price['from'];?> - <?php echo $price['to'];?></option>
      <?php } ?>
    </select>
    <select>
      <option>По производителю</option>
      <option>По цене </option>
    </select>
    <select>
      <option>По размеру</option>
      <option>По цене </option>
    </select>
    <select>
      <option>По материалу</option>
      <option>По цене </option>
    </select>
  </div>
  <div class="clear"></div>
</div>
  <div class="product-compare"><a href="<?php echo $compare; ?>" id="compare-total"><?php echo $text_compare; ?></a></div>
  <div class="product-list">
    <table><tr>
    <?php for ($i = 0; $i < sizeof($products); $i++) { 
    $product =  $products[$i];
    if($i >=5  && $i % 5 == 0) { ?>
      </tr><tr>  
     <?php } ?>
      <td class="item">
      <?php if ($product['thumb']) { ?>
      <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" /></a></div>
      <?php } ?>
      <div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
      <?php if ($product['price']) { ?>
      <div class="price">
        <?php if (!$product['special']) { ?>
        <?php echo $product['price']; ?>
        <?php } else { ?>
        <span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
        <?php } ?>
        <?php if ($product['tax']) { ?>
        <br />
        <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
        <?php } ?>
      </div>
      <?php } ?>
      <?php if ($product['rating']) { ?>
      <div class="rating"><img src="catalog/view/theme/default/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" /></div>
      <?php } ?>
      

      <div class="compare"><a onclick="addToCompare('<?php echo $product['product_id']; ?>');"><?php echo $button_compare; ?></a></div>
    </td>
    <?php } ?>
    </tr></table>
  </div>
  <div class="limit"><b><?php echo $text_limit; ?></b>
      <select onchange="location = this.value;">
        <?php foreach ($limits as $limits) { ?>
        <?php if ($limits['value'] == $limit) { ?>
        <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
        <?php } else { ?>
        <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
        <?php } ?>
        <?php } ?>
      </select>
    </div>
  <div class="pagination"><?php echo $pagination; ?></div>
  <?php } ?>
  <?php if (!$categories && !$products) { ?>
  <div class="content"><?php echo $text_empty; ?></div>
  <div class="buttons">
    <div class="right"><a href="<?php echo $continue; ?>" class="button"><?php echo $button_continue; ?></a></div>
  </div>
  <?php } ?>
  <?php echo $content_bottom; ?></div>
  </div></div>
  <script type="text/javascript"><!--
  var price = {};
    <?php foreach ($prices as $price) { ?>
    price[<?php echo $price['id'];?>] = '<?php echo $price['href'];?>';
    <?php } ?>
        
   $('#price-filter').change(function() {
     
    window.location = $('<div />').html(price[$(this).attr('value')]).text();
  });
  //--></script> 
<?php echo $footer; ?>