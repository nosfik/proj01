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
<div class="right">
    <div id="formTabs">
        <ul>
            <li><a href="#housesTab" id="tab-header-house"></a></li>
            <li><a href="#areasTab" id="tab-header-area"></a></li>
        </ul>
        <div class="list-separator"></div>
        <div id="housesTab">
            <form id="select-object-form" action="index.php?route=product/search" method="get">
            	<input type="hidden" name="route" value="product/search"/>
            	<input type="hidden" name="parent" value="1"/>
                <table>
                    <tr class="row-separator">
                        <td>
                            <label for="objectNumber">Номер объекта</label>
                        </td>
                        <td>
                            <input type="text" name="filter_number" id="objectNumber"/>
                        </td>
                    </tr>
                    <tr class="row-separator">
                        <td colspan="2">
                            <label>Выберите город</label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <select name="filter_zone_id" id="city">
                            	<?php foreach ($zones as $zone) { ?>
                            		<option value="<?php echo $zone['id'];?>"><?php echo $zone['city'];?></option>
                            	<?php } ?>	
                            </select>
                        </td>
                    </tr>
                    <tr class="row-separator">
                        <td colspan="2">
                            <label>Вид недвижимости</label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <select name="filter_category_id" id="realtyType">
                            	<?php foreach ($categories as $category) { ?>
                            		<option value="<?php echo $category['id'];?>"><?php echo $category['name'];?></option>
                            	<?php } ?>	
                            </select>
                        </td>
                    </tr>
                    <tr class="row-separator">
                        <td colspan="2"><label>Количество спален</label></td>
                    </tr>
                    <tr>
                        <td>
                            <select id="selectBedroomFrom" name="filter_bedroom_l" class="fromTo">
                                <option value="0">От</option>
                                <?php foreach ($bedroom_l as $item) { ?>
                            		<option value="<?php echo $item;?>"><?php echo $item;?></option>
                            	<?php } ?>	
                            </select>
                        </td>
                        <td>
                            <select id="selectBedroomTo" name="filter_bedroom_h" class="fromTo">
                                <option value="0">До</option>
                                <?php foreach ($bedroom_h as $item) { ?>
                            		<option value="<?php echo $item;?>"><?php echo $item;?></option>
                            	<?php } ?>	
                            </select>
                        </td>
                    </tr>
                    <tr class="row-separator">
                        <td colspan="2"><label>Количество санузлов</label></td>
                    </tr>
                    <tr>
                        <td>
                            <select id="selectBathroomFrom" name="filter_bathroom_l" class="fromTo">
                                <option value="0">От</option>
                                 <?php foreach ($bathroom_l as $item) { ?>
                            		<option value="<?php echo $item;?>"><?php echo $item;?></option>
                            	<?php } ?>	
                            </select>
                        </td>
                        <td>
                            <select id="selectBathroomTo" name="filter_bathroom_h" class="fromTo">
                                <option value="0">До</option>
                                <?php foreach ($bathroom_h as $item) { ?>
                            		<option value="<?php echo $item;?>"><?php echo $item;?></option>
                            	<?php } ?>	
                            </select>
                        </td>
                    </tr>
                    <tr class="row-separator">
                        <td colspan="2"><label>Площадь</label></td>
                    </tr>
                    <tr>
                        <td>
                            <select id="selectAreaFrom" name="filter_area_l" class="fromTo">
                                <option value="0">От</option>
                                <?php foreach ($area_l as $item) { ?>
                            		<option value="<?php echo $item;?>"><?php echo $item;?></option>
                            	<?php } ?>	
                            </select>
                        </td>
                        <td>
                            <select id="selectAreaTo" name="filter_area_h" class="fromTo">
                                <option value="0">До</option>
                               <?php foreach ($area_h as $item) { ?>
                            		<option value="<?php echo $item;?>"><?php echo $item;?></option>
                            	<?php } ?>	
                            </select>
                        </td>
                    </tr>
                    <tr class="row-separator">
                        <td colspan="2"><label>Цена</label></td>
                    </tr>
                    <tr>
                        <td>
                            <select id="selectPriceFrom" name="filter_price_l" class="fromTo">
                                <option value="0">От</option>
                                <?php foreach ($price_l as $item) { ?>
                            		<option value="<?php echo $item;?>"><?php echo $item;?></option>
                            	<?php } ?>	
                            </select>
                        </td>
                        <td>
                            <select id="selectPriceTo" name="filter_price_h" class="fromTo">
                                <option value="0">До</option>
                                 <?php foreach ($price_h as $item) { ?>
                            		<option value="<?php echo $item;?>"><?php echo $item;?></option>
                            	<?php } ?>	
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td class="btn-container" colspan="2">
                            <input type="submit" value="найти" class="form-btn"/>
                        </td>
                    </tr>
                </table>
            </form>
        </div>
        <div id="areasTab">
            <form id="select-region-form" action="index.php" method="get">
            	<input type="hidden" name="route" value="product/search"/>
            	<input type="hidden" name="parent" value="2"/>
                <table>
                    <tr class="row-separator">
                        <td colspan="2">
                            <label>Номер объекта или название</label>
                        </td>
                    </tr>
                    <tr class="row-separator">
                        <td colspan="2">
                            <input type="text" name="filter_number" id="regionNumber" value="Номер или название объекта" onblur="if(this.value=='') this.value='Номер или название объекта';" onfocus="if(this.value=='Номер или название объекта') this.value='';"/>
                        </td>
                    </tr>
                    <tr class="row-separator">
                        <td colspan="2">
                            <label>Выберите город</label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <select name="regionCity" id="regionCity">
                               <?php foreach ($b_zones as $zone) { ?>
                            		<option value="<?php echo $zone['id'];?>"><?php echo $zone['city'];?></option>
                            	<?php } ?>	
                            </select>
                        </td>
                    </tr>
                    <tr class="row-separator">
                        <td colspan="2"><label>Площадь</label></td>
                    </tr>
                    <tr>
                        <td>
                            <select id="selectRegionAreaFrom" name="selectRegionAreaFrom" class="fromTo">
                                <option value="0">От</option>
                                <?php foreach ($b_area_l as $item) { ?>
                            		<option value="<?php echo $item;?>"><?php echo $item;?></option>
                            	<?php } ?>	
                            </select>
                        </td>
                        <td>
                            <select id="selectRegionAreaTo" name="selectRegionAreaTo" class="fromTo">
                                <option value="0">До</option>
                                <?php foreach ($b_area_h as $item) { ?>
                            		<option value="<?php echo $item;?>"><?php echo $item;?></option>
                            	<?php } ?>	
                            </select>
                        </td>
                    </tr>
                    <tr class="row-separator">
                        <td colspan="2"><label>Цена</label></td>
                    </tr>
                    <tr>
                        <td>
                            <select id="selectRegionPriceFrom" name="selectRegionPriceFrom" class="fromTo">
                                <option value="0">От</option>
                                <?php foreach ($b_price_l as $item) { ?>
                            		<option value="<?php echo $item;?>"><?php echo $item;?></option>
                            	<?php } ?>	
                            </select>
                        </td>
                        <td>
                            <select id="selectRegionPriceTo" name="selectRegionPriceTo" class="fromTo">
                                <option value="0">До</option>
                                <?php foreach ($b_price_h as $item) { ?>
                            		<option value="<?php echo $item;?>"><?php echo $item;?></option>
                            	<?php } ?>	
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td class="btn-container" colspan="2">
                            <input type="submit" value="найти" class="form-btn"/>
                        </td>
                    </tr>
                </table>
            </form>
        </div>
    </div>
</div>
<div class="left">
   <div class="dream-house">
  	<div class="build-dream-house-title"></div>
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
  
    <div class="dream-house">
  	<div class="interesting-proposal-title"></div>
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
    <div>
        <div onclick="location.href='<?php echo $about_us['url'];?>'" class="about-us-header"><img src="catalog/view/theme/default/image/about_us.png" alt="about_us"/></div>
        <div class="about-us-content">
            <div style=" background: url('<?php echo $about_us['image'];?>') no-repeat;" class="picture"></div>
            <div class="us_content">
                        <span><?php echo $about_us['short_text'];?></span>
                <br/>
                <a href="#">Подробнее</a>
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
        <div style="float:left;">
            <img src="catalog/view/theme/default/image/info.png" alt="info"/>
        </div>
    </div>
    <div style="clear:both;"></div>
    <ul id="mycarousel" class="jcarousel-skin-realty">
        
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
    $(function(){
        $('#formTabs').tabs();

        cuSel({
            changedEl: '#select-object-form select',
            visRows: 6,
            scrollArrows: true
        });

        $('#tab-header-area').click(function(){
            cuSel({
                changedEl: '#select-region-form select',
                visRows: 6,
                scrollArrows: true
            });
        });

            $(document).ready(function(){
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
                    //$(this).find('.arrow-left').css('background', 'url(images/arrows2.png) no-repeat 0 -14px');
                    $(this).find('span').css('color', '#ca9000');
                },
                function(){
                    $arrow = $(this).find('.arrow-left');
                    $span = $(this).find('span');
                    // $arrow.css('background', 'url(images/arrows2.png) no-repeat 0 0px');
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
                    // $arrow.css('background', 'url(images/arrows2.png) no-repeat -39px -14px');
                    $span.css('color', '#ca9000');
                },
                function(){
                    $arrow = $(this).find('.arrow-right');
                    $span = $(this).find('span');
                    //  $arrow.css('background', 'url(images/arrows2.png) no-repeat -39px 0px');
                    $span.css('color', '#363636');
                }
        );
        $('#con-right').click(function(){
            $('.jcarousel-next').click();
        });
    });
</script>
<?php echo $footer; ?>