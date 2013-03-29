<?php echo $header; ?>
<script type="text/javascript">
mlcalc_default_calculator = 'loan';
mlcalc_currency_code = 'eur';
mlcalc_amortization = 'year_nc';
mlcalc_purchase_price = '300,000';
mlcalc_down_payment = '10';
mlcalc_mortgage_term = '30';
mlcalc_interest_rate = '4.5';
mlcalc_property_tax = '3,000';
mlcalc_property_insurance = '1,500';
mlcalc_pmi = '0.52';
mlcalc_loan_amount = '150,000';
mlcalc_loan_term = '15';
</script>
<div class="content-wrapper">

<div id="slider">
    <div id="slideshow">
    	 <div class="slider-shadow"></div>
   <span class="arrow previous jFlowPrev"></span>
        <span class="arrow next jFlowNext"></span>
       
 <div id="mySlides">
     
     
        <?php for($i = 0; $i < count($slide_items); $i++) { 
            $slide_item = $slide_items[$i];
            
            ?>
            
         <div class="bigslide">
          <a href="<?php echo $slide_item['url'];?> "><img src="<?php echo $slide_item['picture'];?>" width="1200px" height="527px" /></a>
          <span><?php echo $slide_item['text'];?> </span>
        </div>
            
       <?php } ?>

      </div>
      <div id="myController">
           <?php for($i = 0; $i < count($slide_items); $i++) {  ?>
               <span class="jFlowControl"></span>
               <?php } ?>
      </div>


</div>
</div>

<div class="content">
    <?php echo $content_top; ?>
<div class="right">
    
        <?php echo $filter;?>

        <div id="online-help">
            <a href="#"></a>
        </div>
    </div>
<div class="left">
   <div class="dream-house">
  	<div onclick="location.href='index.php?route=product/category&path=2'" class="build-dream-house-title-<?php echo $lang;?>"></div>
  	<ul class="menu-horizontal house-list">
  	<?php for ($i = 0; $i < count($dreamhouse_items); $i++) { $product = $dreamhouse_items[$i];	?>
  		
	    <?php if($i >= 3 && $i % 3 == 0) {?>
	    	</ul><ul class="menu-horizontal house-list">
	    <?php } ?>
	    <li>
	    	
	    	<div class="house-item" onclick="location.href='<?php echo $product['url']; ?>'">
                    <div class="frame"></div>
                    <div style="width:228px; height:167px"><img height="167" width="228" src="<?php echo $product['thumb']; ?>"></div>
                    <?php if(!empty($product)) { ?>
                       <img height="68" width="68" class="house-tag" src="image/<?php echo $product['tag'];?>"> 
                    <?php } ?>
                    <p class="house-price"><?php echo $product['price'];?> <?php echo $product['currency'];?></p>
                    <a href="<?php echo $product['url']; ?>"><?php echo $product['name']; ?></a>
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
  
    <div class="dream-house">
  	<div onclick="location.href='index.php?route=product/category&path=1'" class="interesting-proposal-title-<?php echo $lang;?>"></div>
  	<ul class="menu-horizontal house-list">
  	<?php for ($i = 0; $i < count($suggestion_items); $i++) { $product = $suggestion_items[$i];	?>
  		
	    <?php if($i >= 3 && $i % 3 == 0) {?>
	    	</ul><ul class="menu-horizontal house-list">
	    <?php } ?>
	    <li>
	    	
	    	<div class="house-item" onclick="location.href='<?php echo $product['url']; ?>'">
                    <div class="frame"></div>
                    <div style="width:228px; height:167px"><img height="167" width="228" src="<?php echo $product['thumb']; ?>"></div>
                    <?php if(!empty($product)) { ?>
                       <img height="68" width="68" class="house-tag" src="image/<?php echo $product['tag'];?>"> 
                    <?php } ?>
                    <p class="house-price"><?php echo $product['price'];?> <?php echo $product['currency'];?></p>
                    <a href="<?php echo $product['url']; ?>"><?php echo $product['name']; ?></a>
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
    <div style="margin-bottom:50px">
        <div onclick="location.href='index.php?route=information/information&information_id=4'" class="about-us-header-<?php echo $lang;?>"></div>
        <div class="about-us-content">
            <div style=" background: url('<?php echo $about_us['image'];?>') no-repeat;" class="picture"></div>
            <div class="us_content">
            	<table><tr><td> <span><?php echo $about_us['short_text'];?></span></td></tr><tr><td><a href="index.php?route=information/information&information_id=4">Подробнее</a></td></tr></table>
                
            </div>
            <div style="clear:left;"></div>
        </div>
    </div>
</div>
<div class="clear-right"></div>
<div class="useful-info">
    <div class="useful-info-header">
        <div class="controls" style="float:right">
            <table>
                <tr>
                    <td id="con-left">
                        <div class="arrow-left"></div>
                        <span>налево</span>
                    </td>
                    <td style="width:10px;"></td>
                    <td id="con-right">
                        <div class="arrow-right"></div>
                        <span>направо</span>
                    </td>
                </tr>
            </table>

        </div>
        <div style="float:left;" class="useful-info-header-<?php echo $lang;?>"> </div>
    </div>
    <div style="clear:both;"></div>
    <ul id="mycarousel" class="jcarousel-skin-realty" style="height:190px;">
        
        <?php foreach ($menu_items as $menu_item) { ?>
            
            <li>
                <div onclick="location.href = '<?php echo $menu_item['url'];?>'" class="j-item"><p><?php echo $menu_item['name'];?></p>
                    <div class="frame"><img src="<?php echo $menu_item['picture'];?>" width="218px" height="131px" alt=""/></div>
                </div>
            </li>
            
        <?php } ?>
        
    </ul>
</div>
</div>
</div>
<?php echo $content_bottom; ?>

<script type="text/javascript">

    function initFilter() {
         $('#formTabs [id^=cuselFrame-]').hover(
                function(){
                   $(this).parent().parent().prev().css('color', '#e08c15'); 
                },
                function(){ 
                   $(this).parent().parent().prev().css('color', '#787878'); 
                }
        );
        
         $('#formTabs input[type=text]').hover(
                function(){
                   $(this).parent().prev().css('color', '#e08c15'); 
                },
                function(){ 
                   $(this).parent().prev().css('color', '#787878'); 
                }
        );
    }

    
    
    
    $(function(){
        
        
        $('#slider').hover(
                function(){
                    $(this).find('.jFlowPrev, .jFlowNext').show(300);
                },
                function(){
                  $(this).find('.jFlowPrev, .jFlowNext').hide(300);
                }
        );
        

        $("#myController").jFlow({
            controller: ".jFlowControl", // must be class, use . sign
            slideWrapper : "#jFlowSlider", // must be id, use # sign
            slides: "#mySlides",  // the div where all your sliding divs are nested in
            selectedWrapper: "jFlowSelected",  // just pure text, no sign
            width: "1190px",  // this is the width for the content-slider
            height: "517px",  // this is the height for the content-slider
            duration: 400,  // time in miliseconds to transition one slide
            prev: ".jFlowPrev", // must be class, use . sign
            next: ".jFlowNext", // must be class, use . sign
            auto: false  
    });
        

        jQuery('#mycarousel').jcarousel({
            wrap: 'circular',
            start:1
        });


        $('.j-item').hover(
                function(){
                    $(this).find('p').css('color', '#864704');
                    $(this).find('.frame').css('background', 'url(catalog/view/theme/default/image/frame.png) no-repeat 0 0');
                },
                function(){
                    $(this).find('p').css('color', '#80634f');
                    $(this).find('.frame').css('background', 'url(catalog/view/theme/default/image/frame.png) no-repeat -229px 0');
                }
        );

        $('#con-left').hover(
                function(){
                    $(this).find('.arrow-left').css('background', 'url(catalog/view/theme/default/image/arrows2.png) no-repeat 0 -14px');
                    $(this).find('span').css('color', '#ca9000');
                },
                function(){
                    $arrow = $(this).find('.arrow-left');
                    $span = $(this).find('span');
                    $arrow.css('background', 'url(catalog/view/theme/default/image/arrows2.png) no-repeat 0 0px');
                    $span.css('color', '#363636');
                }
        );
        $('#con-left').click(function(){
            $('.jcarousel-prev').click();
        });

        $('#con-right').hover(
                function(){
                    $arrow = $(this).find('.arrow-right');
                    $span = $(this).find('span');
                    $arrow.css('background', 'url(catalog/view/theme/default/image/arrows2.png) no-repeat -39px -14px');
                    $span.css('color', '#ca9000');
                },
                function(){
                    $arrow = $(this).find('.arrow-right');
                    $span = $(this).find('span');
                    $arrow.css('background', 'url(catalog/view/theme/default/image/arrows2.png) no-repeat -39px 0px');
                    $span.css('color', '#363636');
                }
        );
        $('#con-right').click(function(){
            $('.jcarousel-next').click();
        });
        
    });
</script>

<!-- MORTGAGE LOAN CALCULATOR BEGIN -->

<?php echo $footer; ?>