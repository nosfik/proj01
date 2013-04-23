<?php echo $header; ?>
<div class="content-wrapper">
<div class="content" ><?php echo $content_top; ?>
	  <div class="breadcrumb">
	  	<div>
	      <?php foreach ($breadcrumbs as $breadcrumb) { ?>
	         <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
	      <?php } ?>
	   	</div>
	   </div>
    
   <h1><?php echo $heading_title; ?></h1>
   <div class='news-description'>
   	 <p><?php echo $description; ?></p>
   </div>
  
   <?php echo $content_bottom; ?>
</div>
</div>
<?php echo $footer; ?>