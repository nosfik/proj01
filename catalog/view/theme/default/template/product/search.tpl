<?php echo $header; ?>

<div class="content-wrapper">

<div class="content">
    <?php echo $content_top; ?>
    <div class="breadcrumb">
  	<div>
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
	</div>
  </div>
<div class="right">
<?php echo $filter;?>
</div>
<div class="left" style="min-height: 1035px;">
	
	  <?php if ($products) { ?>
  <!--<div class="product-filter">
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
  </div>-->
  
  <div class="dream-house">
  	
  	<ul class="menu-horizontal house-list">
  	<?php for ($i = 0; $i < count($products); $i++) { $product = $products[$i];	?>
  		
	    <?php if($i >= 3 && $i % 3 == 0) {?>
	    	</ul><ul class="menu-horizontal house-list">
	    <?php } ?>
	    <li>
	    	
	    	<div class="house-item" onclick="location.href='<?php echo $product['href']; ?>'">
                    <a href="<?php echo $product['href']; ?>"><div class="frame"></div></a>
                    <div style="width:228px; height:167px"><img height="167" width="228" src="<?php echo $product['thumb']; ?>"></div>
                    <?php if(!empty($product)) { ?>
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
  
  
  
  <div class="pagination"><?php echo $pagination; ?></div>
  <?php } ?>

  
  
</div>
<div class="clear-right"></div>

</div>
</div>
<?php echo $content_bottom; ?>

<script type="text/javascript">
    $(function(){
    	<?php if($parent == 2) { ?> 
    		$('#formTabs').tabs({selected:1});
    		
            cuSel({
                changedEl: '#select-region-form select',
                visRows: 6,
                scrollArrows: true
            });
        
	        $('#tab-header-house').click(function(){
	    		cuSel({
	            changedEl: '#select-object-form select',
	            visRows: 6,
	            scrollArrows: true
	       		 });
	       	 });

        
    	<?php } else { ?>
    				$('#formTabs').tabs();	
    		
		    		cuSel({
			            changedEl: '#select-object-form select',
			            visRows: 6,
			            scrollArrows: true
			        });

			        $('#tab-header-area').click(function(){
			            cuSel({
			                changedEl: '#select-region-form select',
			                visRows: 6,
			                scrollArrows: true
			            });
			        });
    	<?php } ?>
    			
        

        

       
    });
</script>
<?php echo $footer; ?>