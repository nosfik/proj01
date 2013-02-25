<div class="box">
  <div class="box-heading"><?php echo $heading_title; ?></div>
  <div class="box-content">
      <?php foreach ($all_newsshare as $newsshare) { ?>
	    <div style="margin-bottom:10px; padding-bottom: 5px; border-bottom:1px solid #eee;">
		  <a href="<?php echo $newsshare['view']; ?>"><?php echo $newsshare['title']; ?></a><span style="float:right;"><?php echo $newsshare['date_added']; ?></span><br />
		  <?php echo $newsshare['description']; ?>
		</div>
	  <?php } ?>
  </div>
</div>
