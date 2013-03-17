<?php echo $header; ?>

<div class="content-wrapper">

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
            <form id="select-object-form">
                <table>
                    <tr class="row-separator">
                        <td>
                            <label for="objectNumber">Номер объекта</label>
                        </td>
                        <td>
                            <input type="text" name="objectNumber" id="objectNumber"/>
                        </td>
                    </tr>
                    <tr class="row-separator">
                        <td colspan="2">
                            <label>Выберите город</label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <select name="city" id="city">
                                <option value="1">Киев</option>
                                <option value="2">Львов</option>
                                <option value="3">Житомир</option>
                                <option value="4">Донецк</option>
                                <option value="5">Днепропетровск</option>
                                <option value="6">Полтава</option>
                                <option value="7">Алушта</option>
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
                            <select name="realtyType" id="realtyType">
                                <option value="1">Вилла</option>
                                <option value="2">Гараж</option>
                                <option value="3">Подсобка</option>
                                <option value="3">Квартира</option>
                                <option value="3">Паркоместо</option>
                                <option value="3">Дача</option>
                            </select>
                        </td>
                    </tr>
                    <tr class="row-separator">
                        <td colspan="2"><label>Количество спален</label></td>
                    </tr>
                    <tr>
                        <td>
                            <select id="selectBedroomFrom" name="selectBathroomFrom" class="fromTo">
                                <option value="0">От</option>
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                                <option value="6">6</option>
                                <option value="7">7</option>
                            </select>
                        </td>
                        <td>
                            <select id="selectBedroomTo" name="selectBathroomTo" class="fromTo">
                                <option value="0">До</option>
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                                <option value="6">6</option>
                                <option value="7">7</option>
                            </select>
                        </td>
                    </tr>
                    <tr class="row-separator">
                        <td colspan="2"><label>Количество санузлов</label></td>
                    </tr>
                    <tr>
                        <td>
                            <select id="selectBathroomFrom" name="selectBathroomFrom" class="fromTo">
                                <option value="0">От</option>
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                                <option value="6">6</option>
                                <option value="7">7</option>
                            </select>
                        </td>
                        <td>
                            <select id="selectBathroomTo" name="selectBathroomTo" class="fromTo">
                                <option value="0">До</option>
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                                <option value="6">6</option>
                                <option value="7">7</option>
                            </select>
                        </td>
                    </tr>
                    <tr class="row-separator">
                        <td colspan="2"><label>Площадь</label></td>
                    </tr>
                    <tr>
                        <td>
                            <select id="selectAreaFrom" name="selectAreaFrom" class="fromTo">
                                <option value="0">От</option>
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                                <option value="6">6</option>
                                <option value="7">7</option>
                            </select>
                        </td>
                        <td>
                            <select id="selectAreaTo" name="selectAreaTo" class="fromTo">
                                <option value="0">До</option>
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                                <option value="6">6</option>
                                <option value="7">7</option>
                            </select>
                        </td>
                    </tr>
                    <tr class="row-separator">
                        <td colspan="2"><label>Цена</label></td>
                    </tr>
                    <tr>
                        <td>
                            <select id="selectPriceFrom" name="selectPriceFrom" class="fromTo">
                                <option value="0">От</option>
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                                <option value="6">6</option>
                                <option value="7">7</option>
                            </select>
                        </td>
                        <td>
                            <select id="selectPriceTo" name="selectPriceTo" class="fromTo">
                                <option value="0">До</option>
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                                <option value="6">6</option>
                                <option value="7">7</option>
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
            <form id="select-region-form">
                <table>
                    <tr class="row-separator">
                        <td colspan="2">
                            <label>Номер объекта или название</label>
                        </td>
                    </tr>
                    <tr class="row-separator">
                        <td colspan="2">
                            <input type="text" name="regionNumber" id="regionNumber" value="Номер или название объекта" onblur="if(this.value=='') this.value='Номер или название объекта';" onfocus="if(this.value=='Ромер или название объекта') this.value='';"/>
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
                                <option value="1">Киев</option>
                                <option value="2">Львов</option>
                                <option value="3">Житомир</option>
                                <option value="4">Донецк</option>
                                <option value="5">Днепропетровск</option>
                                <option value="6">Полтава</option>
                                <option value="7">Алушта</option>
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
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                                <option value="6">6</option>
                                <option value="7">7</option>
                            </select>
                        </td>
                        <td>
                            <select id="selectRegionAreaTo" name="selectRegionAreaTo" class="fromTo">
                                <option value="0">До</option>
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                                <option value="6">6</option>
                                <option value="7">7</option>
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
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                                <option value="6">6</option>
                                <option value="7">7</option>
                            </select>
                        </td>
                        <td>
                            <select id="selectRegionPriceTo" name="selectRegionPriceTo" class="fromTo">
                                <option value="0">До</option>
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                                <option value="6">6</option>
                                <option value="7">7</option>
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
	
	  <?php if ($products) { ?>
  <div class="product-filter">
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
  </div>
  
  <div class="dream-house">
  	
  	<ul class="menu-horizontal house-list">
  	<?php for ($i = 0; $i < count($products); $i++) { $product = $products[$i];	?>
  		
	    <?php if($i >= 4 && $i % 4 == 0) {?>
	    	</ul><ul class="menu-horizontal house-list">
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
  
  
  
  <div class="pagination"><?php echo $pagination; ?></div>
  <?php } ?>

  
  
</div>
<div class="clear-right"></div>

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

       
    });
</script>
<?php echo $footer; ?>