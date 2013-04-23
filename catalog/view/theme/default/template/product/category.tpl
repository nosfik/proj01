<?php echo $header; ?>
<div class="content-wrapper">
	
	
	
	
    <div class="content" style="margin-top: 0">
    <?php echo $content_top; ?>
  <div style="margin-top:20px;" class="breadcrumb">
  	<div>
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
 	</div>
  </div>
  
  <?php if(isset($heading_picture)) { ?>
      <?php echo $heading_picture;?>
      <?php } else { ?>
          <h1><?php echo $heading_title; ?></h1>
      <?php } ?>
  

 <!-- <div class="product-filter">
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
    <div class="sort"><b><?php echo $text_sort; ?></b>
      <select onchange="location = this.value;">
        <?php foreach ($sorts as $sorts) { ?>
        <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
        <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
        <?php } else { ?>
        <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
        <?php } ?>
        <?php } ?>
      </select>
    </div>
  </div> -->
  
  <div class="right">
        <?php echo $filter;?>
         <div id="online-help">
            <a href="#">ОНЛАЙН ПОМОЩЬ</a>
        </div>
    </div>
  <div class="left">
  <div class="dream-house">
  	
  	<ul class="menu-horizontal house-list">
  	<?php for ($i = 0; $i < count($products); $i++) { $product = $products[$i];	?>
  		
	    <?php if($i >= 3 && $i % 3 == 0) {?>
	    	</ul><ul style="margin-top:40px;" class="menu-horizontal house-list">
	    <?php } ?>
	    <li>
	    	
	    	<div class="house-item" onclick="location.href='<?php echo $product['href']; ?>'">
                    <a href="<?php echo $product['href']; ?>"><div class="frame"></div></a>
                    <div style="width:228px; height:167px"><img height="167" width="228" src="<?php echo $product['thumb']; ?>"></div>
                    <?php if($product['tag'] != 'image/') { ?>
                       <img height="68" width="68" class="house-tag" src="<?php echo $product['tag'];?>"> 
                    <?php } ?>
                    <p class="house-price"><?php echo $product['price'];?> <?php echo $product['currency'];?></p>
                    <a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
                    <ul class="house-characteristics">
                        <li class="house-number"><?php echo $product['number']; ?></li>
                        <li class="house-placement"><?php echo $product['city']; ?></li>
                        <li class="house-bathroom"><?php echo $product['bathroom']; ?> санузлов</li>
                        <li class="house-area"><?php echo $product['area']; ?> м/кв</li>
                        <li class="house-bedroom"><?php echo $product['bedroom']; ?> спальни</li>
                    </ul>
                </div>
	    	
	    </li>
    <?php } ?>
    </ul>
    
  </div>
  <?php if ( !$products) { ?>
  <div class="content"><?php echo $text_empty; ?></div>
  <?php } ?>
  <div class="pagination"><?php echo $pagination; ?></div>
  
  <div style="margin-bottom:30px;margin-top:50px">
	  <p style="font-size:18px; color:#80634F"><?php echo $category_header;?></p> 
	  <br/>
	  <span style="color:#787878; "><?php echo $category_description;?></span>
  </div>
</div>  
<div style="clear:both"></div>
  
  
 
  <?php echo $content_bottom; ?></div>
  
  </div>
  

<?php echo $footer; ?>