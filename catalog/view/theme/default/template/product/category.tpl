<?php echo $header; ?>
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
  <div style="margin-top:20px;" class="breadcrumb">
  	<div>
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
 	</div>
  </div>
  <h1><?php echo $heading_title; ?></h1>

 <!-- <div class="product-filter">
    <div class="limit"><b><?php echo $text_limit; ?></b>
      <select onchange="location = this.value;">
        <?php foreach ($limits as $limits) { ?>
        <?php if ($limits['value'] == $limit) { ?>
        <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
        <?php } else { ?>
        <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
        <?php } ?>
        <?php } ?>
      </select>
    </div>
    <div class="sort"><b><?php echo $text_sort; ?></b>
      <select onchange="location = this.value;">
        <?php foreach ($sorts as $sorts) { ?>
        <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
        <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
        <?php } else { ?>
        <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
        <?php } ?>
        <?php } ?>
      </select>
    </div>
  </div> -->
  
  <div class="right">
        <?php echo $filter;?>
        <div id="online-help">
            <a href="#"></a>
        </div>
    </div>
  <div class="left">
  <div class="dream-house">
  	
  	<ul class="menu-horizontal house-list">
  	<?php for ($i = 0; $i < count($products); $i++) { $product = $products[$i];	?>
  		
	    <?php if($i >= 3 && $i % 3 == 0) {?>
	    	</ul><ul style="margin-top:40px;" class="menu-horizontal house-list">
	    <?php } ?>
	    <li>
	    	
	    	<div class="house-item" onclick="location.href='<?php echo $product['href']; ?>'">
                    <div class="frame"></div>
                    <div style="width:228px; height:167px"><img height="167" width="228" src="<?php echo $product['thumb']; ?>"></div>
                    <?php if(!empty($product)) { ?>
                       <img height="68" width="68" class="house-tag" src="<?php echo $product['tag'];?>"> 
                    <?php } ?>
                    <p class="house-price"><?php echo $product['price'];?> <?php echo $product['currency'];?></p>
                    <a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
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
  <?php if ( !$products) { ?>
  <div class="content"><?php echo $text_empty; ?></div>
  <?php } ?>
  <div class="pagination"><?php echo $pagination; ?></div>
  
  <div style="margin-bottom:30px;margin-top:50px">
	  <p style="font-size:18px; color:#80634F"><?php echo $category_header;?></p> 
	  <br/>
	  <span style="color:#787878; "><?php echo $category_description;?></span>
  </div>
</div>  
<div style="clear:both"></div>
  
  
 
  <?php echo $content_bottom; ?></div>
  
  </div>
  <script>
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
            width: "1200px",  // this is the width for the content-slider
            height: "527px",  // this is the height for the content-slider
            duration: 400,  // time in miliseconds to transition one slide
            prev: ".jFlowPrev", // must be class, use . sign
            next: ".jFlowNext", // must be class, use . sign
            auto: false  
    });
    $(function(){
        $('#formTabs').tabs();
        $('#creditFormTabs').tabs({selected: 1});

        cuSel({
            changedEl:'#select-object-form select',
            visRows:6,
            scrollArrows:true
        });

        cuSel({
            changedEl:'#credit-calculation-form select',
            visRows:6,
            scrollArrows:true
        });


        $('#tab-header-area').click(function () {
            cuSel({
                changedEl:'#select-region-form select',
                visRows:6,
                scrollArrows:true
            });
        });

        $('#tab-hypothec').click(function () {
            cuSel({
                changedEl:'#hypothec-calculation-form select',
                visRows:6,
                scrollArrows:true
            });
        });
 		
 		
 		
 		$('#tab-hypothec').click(function(){
 			$('#MLCalcForm .panelItem, #mlcalcWidgetHolder .panelItem').toggle();
 		});
 		
 		$('#tab-credit').click(function(){
 			$('#MLCalcForm .panelItem, #mlcalcWidgetHolder .panelItem').toggle();
 		});
 		
 		
 		
 		$('#creditPrice').change(function(){
 			$('input[name=la]').val(this.value)
 		});
 		$('#creditTerms').change(function(){
 			$('input[name=lt]').val(this.value)
 		});
 		$('#creditPercent').change(function(){
 			$('input[name=ir]').val(this.value)
 		});
 		});
  </script>

<?php echo $footer; ?>