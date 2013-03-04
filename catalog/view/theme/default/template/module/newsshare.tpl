<div id="news_block">
	<div class="block last">
	  <div class="title promo"></div>
	  <div class="text">
	    
	  	<?php foreach ($all_newsshare as $newsshare) { ?>
	  	  
	    <h3>
	      <a href="<?php echo $newsshare['view']; ?>"><?php echo $newsshare['title']; ?></a>
	    </h3>
	    <img src="<?php echo $newsshare['image_src']; ?>">
	     <?php echo $newsshare['description']; ?>
	    <br>
	    <?php } ?>
	    <div class="clear"></div>
	  </div>
	</div>
<div id="news_block">