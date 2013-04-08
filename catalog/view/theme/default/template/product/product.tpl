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


            <div style="float:left">


                <div id="gallery" class="ad-gallery" style="height:630px">
                    <div class="gal-controls" style="">
                        <table><tr>
                            <td><div onclick="" class="first"></div></td>
                            <td><div onclick="" class="prev"></div></td>
                            <td><div onclick="" class="play"></div></td>
                            <td><div onclick="" class="next"></div></td>
                            <td><div onclick="" class="last"></div></td>
                        </tr></table>
                    </div>

                    <div class="ad-image-wrapper"></div>
                    <div class="ad-controls">
                    </div>
                    <div class="ad-nav">
                        <div class="ad-thumbs">
                            <ul class="ad-thumb-list">
                            	<?php foreach ($images as $image) { ?>
									<li>thumb
	                                    <a href="<?php echo $image['popup'];?>">
	                                        <img src="<?php echo $image['thumb'];?>" class="image0">
	                                    </a>
                               		</li>
								<?php } ?>
                            </ul>
                        </div>
                    </div>
                </div>



            </div>

            <div style="padding-left: 650px;">
                <table cellspacing="3">
                    <tr><td><p class="header-description"><?php echo $name;?></p></td></tr>

                    <tr><td class="first-column"><table><tr><td class="table-header">Номер объекта</td><td class="table-value"><?php echo $number;?></td></tr></table></td></tr>
                    <tr><td class="second-column"><table><tr><td class="table-header">Цена</td><td class="table-value"><?php echo $price;?> <?php echo $currency;?></td></tr></table></td></tr>
                    <tr><td class="first-column"><table><tr><td class="table-header">Общая площадь</td><td class="table-value"><?php echo $area;?> м/кв</td></tr></table></td></tr>
                    
                    <?php if(isset($sales)) { ?>
                        <tr><td class="second-column"><table><tr><td class="table-header">Спален</td><td class="table-value"><?php echo $bedroom;?></td></tr></table></td></tr>
                        <tr><td class="first-column"><table><tr><td class="table-header">Ванных комнат</td><td class="table-value"><?php echo $bathroom;?></td></tr></table></td></tr>
                    <?php } ?>
                <?php 
                $tmp = 3;
                foreach ($options as $option) {
                   $css_class = ($tmp % 2 == 0) ? "second-column" : "first-column"; ?>
                	<tr><td class="<?php echo $css_class ?>"><table><tr><td class="table-header"><?php echo $option['header'] ?></td><td class="table-value"><?php echo $option['value'] ?></td></tr></table></td></tr>
                <?php $tmp++; ?>
                    
                <?php } ?>
                
                
                
                
                </table>

                <div class="contact-with-us">
                    <table><tr>
                        <td><a onclick="window.print()" class="item-print"></a></td>
                        <td><a href="mailto:<?php echo $mail;?>" class="item-mail"></a></td>
                        <td><a href="skype:<?php echo $skype;?>?call" class="item-skype"></a></td>
                    </tr></table>


                </div>



            </div>
            <div style="clear:left"></div>


            <div class="item-description">
                <p class="header2">[Описание] <?php echo $name;?></p>
                <div class="text2"> <?php echo $description;?></p>

            </div>


        </div>
        <?php echo $content_bottom; ?>
    </div>
    
    </div>

  
<script type="text/javascript"><!--
$('.colorbox').colorbox({
	overlayClose: true,
	opacity: 0.5
});


//--></script> 

<script type="text/javascript">
    $(function() {
        var galleries = $('.ad-gallery').adGallery();

        var play = false;
        $('#gallery .gal-controls .play').click(function() {

            if(play) {
                $('#gallery .ad-slideshow-stop').click();
                $('#gallery .gal-controls .play').css('background', 'url(catalog/view/theme/default/image/play.png) no-repeat 0 0')
                play = false;
            } else {
                $('#gallery .ad-slideshow-start').click();
                $('#gallery .gal-controls .play').css('background', 'url(catalog/view/theme/default/image/play.png) no-repeat -54px 0')
                play = true;
            }


        });
        
        $('.play').click();

        $('#gallery .gal-controls .next').click(function() {
            $('#gallery .ad-next').click();
        });

        $('#gallery .gal-controls .prev').click(function() {
            $('#gallery .ad-prev').click();
        });




    });
</script>

<script type="text/javascript"><!--
$('#review .pagination a').live('click', function() {
	$('#review').fadeOut('slow');
		
	$('#review').load(this.href);
	
	$('#review').fadeIn('slow');
	
	return false;
});			

//--></script> 
<script type="text/javascript"><!--
$('#tabs a').tabs();
//--></script> 
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-timepicker-addon.js"></script> 
<script type="text/javascript"><!--
if ($.browser.msie && $.browser.version == 6) {
	$('.date, .datetime, .time').bgIframe();
}

$('.date').datepicker({dateFormat: 'yy-mm-dd'});
$('.datetime').datetimepicker({
	dateFormat: 'yy-mm-dd',
	timeFormat: 'h:m'
});
$('.time').timepicker({timeFormat: 'h:m'});
//--></script> 
<?php echo $footer; ?>