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
		
  <div>
  <div class="dream-house">
  	
  	<ul class="menu-horizontal house-list">
  	<?php for ($i = 0; $i < count($images); $i++) { $image = $images[$i];	?>
  		
	    <?php if($i >= 4 && $i % 4 == 0) {?>
	    	</ul><ul style="margin-top:40px;" class="menu-horizontal house-list">
	    <?php } ?>
	    <li>
	    	
	    	
	    	
	    	<div class="house-item" >
	    		
                    <a title="<a href='<?php echo $image['href']; ?>'><?php echo $image['name']; ?></a>" rel="example_group" href="<?php echo $image['image']; ?>" ><img height="167" width="228" src="<?php echo $image['image']; ?>"></a>
		<div class="frame" ></div>               
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

<script type="text/javascript">
		$(document).ready(function() {

			$("a[rel=example_group]").fancybox({
				'transitionIn'		: 'none',
				'transitionOut'		: 'none',
				'titlePosition' 	: 'over',
				'titleFormat'		: function(title, currentArray, currentIndex, currentOpts) {
					return '<span id="fancybox-title-over"> ' + (title.length ? ' &nbsp; ' + title : '') + '</span>';
				}
			});
			
			$('.frame').click(function(){
				$(this).parent().find('a').click();
			});
		});
	</script>

<?php echo $footer; ?>