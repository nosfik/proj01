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
    <div style="display:none;font-weight:normal;font-size:9px;font-family:Tahoma;padding:0;margin:0;border:0;text-align:center;background:transparent;color:#EEEEEE;width:150px;" class="mlcalc_d3d3LmFtb3J0aXphdGlvbi1jYWxjLmNvbQ== mlcalc_ua_VUEtODE4MzUxOC0x" id="mlcalcWidgetHolder">
	<script type="text/javascript">document.write(unescape("%3Cscript src='" + (document.location.protocol == 'https:' ? 'https://ssl.mlcalc.com' : 'http://cdn.mlcalc.com') + "/ru/widget-narrow.js' type='text/javascript'%3E%3C/script%3E"));</script>
	Powered by <a href="http://www.amortization-calc.com/" style="font-weight:normal;font-size:9px;font-family:Tahoma;color:#EEEEEE;text-decoration:none;" class="panelItem">Amortization Schedule</a> <a href="http://www.mlcalc.com/" style="font-weight:normal;font-size:9px;font-family:Tahoma;color:#EEEEEE;text-decoration:none;" class="panelItem secondaryLink">Auto Loan Calculator</a>
	</div>
    <div id="creditFormTabs">
        <ul>
            <li><a href="#hypothecTab" id="tab-hypothec"></a></li>
            <li><a href="#creditTab" id="tab-credit"></a></li>
        </ul>
        <div class="list-separator"></div>
        <div id="hypothecTab">
            <form id="hypothec-calculation-form">
                <table>
                    <tr class="row-separator">
                        <td>
                            <label for="realtyPrice">Цена недвижимости</label>
                        </td>
                        <td>
                            <div>
                            <input type="text" name="realtyPrice" id="realtyPrice" onchange="$('input[name=ma]').val(this.value)" value="300,000" class="textfield-small"/>
                            <span class="units">&euro;</span>
                                </div>
                        </td>
                    </tr>
                    <tr class="row-separator">
                        <td>
                            <label for="firstPayment">Начальный взнос</label>
                        </td>
                        <td>
                            <div>
                            <input type="text" name="firstPayment" value="10" id="firstPayment" onchange="$('input[name=dp]').val(this.value)" class="textfield-small"/>
                            <span class="units">%</span>
                                </div>
                        </td>
                    </tr>
                    <tr class="row-separator">
                        <td>
                            <label for="hypothecTerms">Сроки ипотеки</label>
                        </td>
                        <td>
                            <div>
                            <input type="text" name="hypothecTerms" value="30" id="hypothecTerms" onchange="$('input[name=mt]').val(this.value)" class="textfield-small"/>
                            <span class="units">лет</span>
                                </div>
                        </td>
                    </tr>
                    <tr class="row-separator">
                        <td>
                            <label for="percent">Процентная ставка</label>
                        </td>
                        <td>
                            <div>
                            <input type="text" name="percent" value="4.5" id="percent" onchange="$('input[name=ir]').val(this.value)" class="textfield-small"/>
                            <span class="units">%</span>
                                </div>
                        </td>
                    </tr>
                   
                    
                    
                    <tr class="row-separator">
                        <td>
                            <label for="tax">Налоги</label>
                        </td>
                        <td>
                            <div>
                            <input type="text" name="tax" value="3,000" onchange="$('input[name=pt]').val(this.value)" id="tax" class="textfield-small"/>
                            <span class="units">&euro;</span>
                                </div>
                        </td>
                    </tr>
                    <tr class="row-separator">
                        <td>
                            <label for="insurence">Страховка</label>
                        </td>
                        <td>
                            <div>
                            <input type="text" name="insurence" value="1,500" onchange="$('input[name=pi]').val(this.value)" id="insurence" class="textfield-small"/>
                            <span class="units">&euro;</span>
                                </div>
                        </td>
                    </tr>
                    <tr class="row-separator">
                        <td>
                            <label for="pmi">PMI</label>
                        </td>
                        <td>
                            <div>
                            <input type="text" name="pmi" value="0.52" id="pmi" onchange="$('input[name=mi]').val(this.value)" class="textfield-small"/>
                            <span class="units">%</span>
                                </div>
                        </td>
                    </tr>
                     <tr class="row-separator-small">
                        <td colspan="2"><label>Первый платеж</label></td>
                    </tr>
                    <tr>
                        <td>
                            <select onchange="$('select[name=sm]').val(this.value)" id="selectPaymentDateFrom" name="selectPaymentDateFrom" class="fromTo">
                               <option value="1">Январь</option>
                                <option value="2">Февраль</option>
                                <option value="3" selected="selected">Март</option>
                                <option value="4">Апрель</option>
                                <option value="5">Май</option>
                                <option value="6">Июнь</option>
                                <option value="7">Июль</option>
                                <option value="8">Август</option>
                                <option value="9">Сентябрь</option>
                                <option value="10">Октябрь</option>
                                <option value="11">Ноябрь</option>
                                <option value="12">Декабрь</option>
                            </select>
                        </td>
                        <td>
                            <select onchange="$('select[name=sy]').val(this.value)" id="selectPaymentDateTo" name="selectPaymentDateTo" class="fromTo">
                                 <option value="2013">2013</option>
                                <option value="2014">2014</option>
                                <option value="2015">2015</option>
                                <option value="2016">2016</option>
                                <option value="2017">2017</option>
                                <option value="2018">2018</option>
                                <option value="2019">2019</option>
                                <option value="2020">2020</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td class="btn-container" colspan="2">
                            <input type="button" onclick="$('#MLCalcFormMortgageForm .sbmButton').click()" value="посчитать" class="form-btn" style="padding: 0 5px;"/>
                        </td>
                    </tr>
                </table>
            </form>
        </div>
        <div id="creditTab">
            <form id="credit-calculation-form">
                <table>
                    <tr class="row-separator">
                        <td>
                            <label for="creditPrice">Размер кредита</label>
                        </td>
                        <td>
                            <div>
                            <input type="text" name="creditPrice" id="creditPrice" class="textfield-small" value="150,000"/>
                            <span class="units">&euro;</span>
                                </div>
                        </td>
                    </tr>
                    <tr class="row-separator">
                        <td>
                            <label for="creditTerms">Срок кредита</label>
                        </td>
                        <td>
                            <div>
                            <input type="text" name="creditTerms" id="creditTerms" class="textfield-small" value="15"/>
                            <span class="units">лет</span>
                                </div>
                        </td>
                    </tr>
                    <tr class="row-separator">
                        <td>
                            <label for="creditPercent">Процентная ставка</label>
                        </td>
                        <td>
                            <div>
                            <input type="text" name="creditPercent" id="creditPercent" class="textfield-small" value="4.5"/>
                            <span class="units">%</span>
                                </div>
                        </td>
                    </tr>
                    <tr class="row-separator-small">
                        <td colspan="2"><label>Первый платеж</label></td>
                    </tr>
                    <tr>
                        <td>
                            <select onchange="$('select[name=sm]').val(this.value)" id="selectCreditDateFrom" name="selectPaymentDateFrom" class="fromTo">
                                <option value="1">Январь</option>
                                <option value="2">Февраль</option>
                                <option value="3" selected="selected">Март</option>
                                <option value="4">Апрель</option>
                                <option value="5">Май</option>
                                <option value="6">Июнь</option>
                                <option value="7">Июль</option>
                                <option value="8">Август</option>
                                <option value="9">Сентябрь</option>
                                <option value="10">Октябрь</option>
                                <option value="11">Ноябрь</option>
                                <option value="12">Декабрь</option>
                            </select>
                        </td>
                        <td>
                            <select onchange="$('select[name=sy]').val(this.value)" id="selectCreditDateTo" name="selectPaymentDateTo" class="fromTo">
                                <option value="2013">2013</option>
                                <option value="2014">2014</option>
                                <option value="2015">2015</option>
                                <option value="2016">2016</option>
                                <option value="2017">2017</option>
                                <option value="2018">2018</option>
                                <option value="2019">2019</option>
                                <option value="2020">2020</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td class="btn-container" colspan="2">
                            <input type="button" onclick="$('.sbmButton').click()" value="посчитать" class="form-btn" style="padding: 0 5px;"/>
                        </td>
                    </tr>
                </table>
            </form>
        </div>
        </div>
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
        <div style="float:left;" class="useful-info-image-header"> </div>
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