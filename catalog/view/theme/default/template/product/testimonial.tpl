<?php echo $header; ?>
<div class="content-wrapper">
<div class="content">
  <div class="top">
    <div class="left"></div>
    <div class="right"></div>
    <div class="center">
      <h1><?php echo $heading_title; ?></h1>
    </div>
  </div>
  <div class="middle">

    <?php if ($testimonials) { ?>
    
      <?php foreach ($testimonials as $testimonial) { ?>
      <table class="content" width="100%" border=0>
      <tr>
         <td valign="top" style="text-align:left;" colspan="2"><b class="s-review"><?php echo $testimonial['title']; ?></b></td>
      </tr>
      <tr>
      	<td colspan="2" style="text-align:left;">
                <?php echo $testimonial['description']; ?>
            </td>
      </tr>    

      <tr>
      	<td style="font-size: 0.9em; text-align: left;">&bull;&nbsp;<?php echo $testimonial['name'].' '.$testimonial['city'].' '.$testimonial['date_added']; ?></td>
		<td style="font-size: 0.9em; text-align: right;">
                <?php if ($testimonial['rating']) { ?>
                <?php echo $text_average; ?><br>
                  <img src="catalog/view/theme/default/image/stars-<?php echo $testimonial['rating'] . '.png'; ?>" style="margin-top: 2px;" />
                  <?php } ?>
             </td>
        </td>
      </tr>

	</table>
      <?php } ?>

    	<?php if ( isset($pagination)) { ?>
    		<div class="pagination"><?php echo $pagination;?></div>
    		
    		<div  align="right"><button type="submit" onclick="location.href='<?php echo $write_url;?>'" class="button-review"><?php echo $write; ?></button></div>
    	<?php }?>

    	<?php if (isset($showall_url)) { ?>
    		<div  align="right"><button type="submit" onclick="location.href='<?php echo $write_url;?>'" class="button-review"><?php echo $write; ?></button> &nbsp;
    		<button type="submit" onclick="location.href='<?php echo $showall_url;?>'" class="button-review"><?php echo $showall; ?></button></div>
    	<?php }?>
    <?php } ?>
  </div>
  <div class="bottom">
    <div class="left"></div>
    <div class="right"></div>
    <div class="center"></div>
  </div>
</div></div>
<?php echo $footer; ?> 