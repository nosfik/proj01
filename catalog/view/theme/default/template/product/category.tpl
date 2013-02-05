
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

    <div id="sort">
  <div class="left">Сортировка товара:</div>
  <div class="right">
    <select onchange="location = this.value" id="price-filter">
      <option value="<?php echo $price_def;?>">По цене</option>
      <?php foreach($prices as $price) {?>
        <?php if($price['id'] == $price_selected) {?>
          <option value="<?php echo $price['href'];?>" selected="selected"><?php echo $price['from'];?> - <?php echo $price['to'];?></option>
        <?php } else { ?>
           <option value="<?php echo $price['href'];?>"><?php echo $price['from'];?> - <?php echo $price['to'];?></option> 
        <?php } ?>
      <?php } ?>
    </select>
    <select onchange="location = this.value" id="manufacturer-filter">
      <option value="<?php echo $manufacturer_def;?>">По производителю</option>
      <?php foreach($manufacturers as $manufacturer) {?>
        <?php if($manufacturer['id'] == $manufacturer_selected) {?>
          <option value="<?php echo $manufacturer['href'];?>" selected="selected"><?php echo $manufacturer['name'];?></option>
        <?php } else { ?>
           <option value="<?php echo $manufacturer['href'];?>"><?php echo $manufacturer['name'];?></option> 
        <?php } ?>
      <?php } ?>
    </select>
    <select onchange="location = this.value" id="size-filter">
      <option value="<?php echo $size_def;?>">По размеру</option>
      <?php foreach($sizes as $size) {?>
        <?php if($size['id'] == $size_selected) {?>
          <option value="<?php echo $size['href'];?>" selected="selected"><?php echo $size['width'];?> X <?php echo $size['height'];?></option>
        <?php } else { ?>
           <option value="<?php echo $size['href'];?>"><?php echo $size['width'];?> X <?php echo $size['height'];?></option> 
        <?php } ?>
      <?php } ?>
    </select>
    <select onchange="location = this.value" id="material-filter">
      <option value="<?php echo $material_def;?>">По материалу</option>
      <?php foreach($materials as $material) {?>
        <?php if($material['id'] == $material_selected) {?>
          <option value="<?php echo $material['href'];?>" selected="selected"><?php echo $material['name'];?></option>
        <?php } else { ?>
           <option value="<?php echo $material['href'];?>"><?php echo $material['name'];?></option> 
        <?php } ?>
      <?php } ?>
    </select>
  </div>
  <div class="clear"></div>
</div>
  <?php if ($products) { ?>
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

  <?php } ?>
  <?php echo $content_bottom; ?></div>
  </div></div>

<?php echo $footer; ?>