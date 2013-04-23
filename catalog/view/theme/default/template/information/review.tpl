<?php echo $header; ?>
<div class="content-wrapper">
<div class="content">
  <div class="breadcrumb">
  	<div>
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
    </div>
  </div>
  <?php echo $content_top; ?>
  <?php echo $content_bottom; ?></div>
  
  </div>
<?php echo $footer; ?>