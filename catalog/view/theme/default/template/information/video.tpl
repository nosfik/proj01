<?php echo $header; ?>
<div class="content-wrapper">
<div class="content"><?php echo $content_top; ?>
  <div class="breadcrumb">
  	<div>
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
    </div>
  </div>

<?php foreach($videos as $video) { ?>
	<div class="video-youtube" style="width:<?php echo $video['width'];?>px; height:<?php echo $video['height'];?>px">
		<?php echo $video['href'];?>
		</div>
<?php } ?>
  
  <?php echo $content_bottom; ?></div>
  
  </div>
<?php echo $footer; ?>