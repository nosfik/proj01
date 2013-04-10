<?php echo $header; ?>
<div class="content-wrapper">
	
	
	
	
    <div class="content">
    <?php echo $content_top; ?>
  <div style="margin-top:20px;" class="breadcrumb">
  	<div>
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
 	</div>
  </div>
		
  <div>
  <div class="dream-house">
  	
  	<ul class="menu-horizontal house-list">
  	<?php for ($i = 0; $i < count($images); $i++) { $image = $images[$i];	?>
  		
	    <?php if($i >= 4 && $i % 4 == 0) {?>
	    	</ul><ul style="margin-top:40px;" class="menu-horizontal house-list">
	    <?php } ?>
	    <li>
	    	
	    	<div class="house-item" onclick="location.href='<?php echo $image['href']; ?>'">
                    <a href="<?php echo $image['href']; ?>"><div class="frame"></div></a>
                    <div style="width:228px; height:167px"><img height="167" width="228" src="<?php echo $image['image']; ?>"></div>
                </div>
	    	
	    </li>
    <?php } ?>
    </ul>
    
  </div>

  <div class="pagination"><?php echo $pagination; ?></div>
  

</div>  
<div style="clear:both"></div>
  
  
 
  <?php echo $content_bottom; ?></div>
  
  </div>
  

<?php echo $footer; ?>