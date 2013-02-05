<div class="box">
  
  <div class="crumbs">
  <div class="leftShop"></div>
  <div class="darkShop"><a href="<?php echo $this->url->link('product/category', 'all=1'); ?>">Магазин</a></div>
  <div class="darkEnd"></div>
  <div class="menu">
    <div class="cont">

        <?php foreach ($categories as $category) { ?>
          <?php if ($category['children']) { ?>
            <?php foreach ($category['children'] as $child) { ?>
              <?php if ($child['category_id'] == $child_id) { ?>
              <a href="<?php echo $child['href']; ?>" class="active"><?php echo $child['name']; ?></a>
              <?php } else { ?>
              <a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a>
              <?php } ?>
            <?php } ?>
          <?php } ?>
        <?php } ?>
    </div>
    <div class="menuEnd"></div>
  </div>
</div>
