<?php echo $header; ?>

<div class="content-wrapper">

<div class="content">
    <?php echo $content_top; ?>
    <div class="breadcrumb">
  	<div>
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
	</div>
  </div>
<div class="right">
        <div style="margin-bottom:50px" id="formTabs">
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
                        	<?php if (!empty($filter_number)) { ?>
                        		<input type="text" name="filter_number" id="objectNumber" value="<?php echo $filter_number;?>"/>
                        		<?php } else { ?>
                        		<input type="text" name="filter_number" id="objectNumber"/>
                        	<?php } ?>
                            
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
                            		<?php if($zone['id'] == $filter_zone_id) { ?>
                            			<option value="<?php echo $zone['id'];?>" selected="selected"><?php echo $zone['city'];?></option>
                            		<?php } else { ?>
                            			<option value="<?php echo $zone['id'];?>"><?php echo $zone['city'];?></option>
                            		<?php } ?>
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
                            		<?php if($category['id'] == $filter_category_id) { ?>
                            			<option value="<?php echo $category['id'];?>"  selected="selected"><?php echo $category['name'];?></option>
                            		<?php } else { ?>
                            			<option value="<?php echo $category['id'];?>"><?php echo $category['name'];?></option>
                            		<?php } ?>
                            		
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
                                	<?php if($item == $filter_bedroom_l) { ?>
                                		<option value="<?php echo $item;?>" selected="selected"><?php echo $item;?></option>
                            		<?php } else { ?>
                            			<option value="<?php echo $item;?>"><?php echo $item;?></option>
                            		<?php } ?>
                            		
                            		
                            	<?php } ?>	
                            </select>
                        </td>
                        <td>
                            <select id="selectBedroomTo" name="filter_bedroom_h" class="fromTo">
                                <option value="0">До</option>
                                <?php foreach ($bedroom_h as $item) { ?>
                                	<?php if($item == $filter_bedroom_h) { ?>
                                		<option value="<?php echo $item;?>" selected="selected"><?php echo $item;?></option>
                            		<?php } else { ?>
                            			<option value="<?php echo $item;?>"><?php echo $item;?></option>
                            		<?php } ?>
                            		
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
                                 	<?php if($item == $filter_bathroom_l) { ?>
                                		<option value="<?php echo $item;?>" selected="selected"><?php echo $item;?></option>
                            		<?php } else { ?>
                            			<option value="<?php echo $item;?>"><?php echo $item;?></option>
                            		<?php } ?>
                            		
                            	<?php } ?>	
                            </select>
                        </td>
                        <td>
                            <select id="selectBathroomTo" name="filter_bathroom_h" class="fromTo">
                                <option value="0">До</option>
                                <?php foreach ($bathroom_h as $item) { ?>
                                	<?php if($item == $filter_bathroom_h) { ?>
                                		<option value="<?php echo $item;?>" selected="selected"><?php echo $item;?></option>
                            		<?php } else { ?>
                            			<option value="<?php echo $item;?>"><?php echo $item;?></option>
                            		<?php } ?>
                            		
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
                                	<?php if($item == $filter_area_l) { ?>
                                		<option value="<?php echo $item;?>" selected="selected"><?php echo $item;?></option>
                            		<?php } else { ?>
                            			<option value="<?php echo $item;?>"><?php echo $item;?></option>
                            		<?php } ?>
                            		
                            	<?php } ?>	
                            </select>
                        </td>
                        <td>
                            <select id="selectAreaTo" name="filter_area_h" class="fromTo">
                                <option value="0">До</option>
                               <?php foreach ($area_h as $item) { ?>
                               		<?php if($item == $filter_area_h) { ?>
                                		<option value="<?php echo $item;?>" selected="selected"><?php echo $item;?></option>
                            		<?php } else { ?>
                            			<option value="<?php echo $item;?>"><?php echo $item;?></option>
                            		<?php } ?>
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
                                	<?php if($item == $filter_price_l) { ?>
                                		<option value="<?php echo $item;?>" selected="selected"><?php echo $item;?></option>
                            		<?php } else { ?>
                            			<option value="<?php echo $item;?>"><?php echo $item;?></option>
                            		<?php } ?>
                            		
                            	<?php } ?>	
                            </select>
                        </td>
                        <td>
                            <select id="selectPriceTo" name="filter_price_h" class="fromTo">
                                <option value="0">До</option>
                                 <?php foreach ($price_h as $item) { ?>
                                 	<?php if($item == $filter_price_h) { ?>
                                		<option value="<?php echo $item;?>" selected="selected"><?php echo $item;?></option>
                            		<?php } else { ?>
                            			<option value="<?php echo $item;?>"><?php echo $item;?></option>
                            		<?php } ?>
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
                        	
                        		<?php if (!empty($filter_number)) { ?>
                        		<input type="text" name="filter_number" id="regionNumber" value="<?php echo $filter_number;?>"/>
                        		<?php } else { ?>
                        		<input type="text" name="filter_number" id="regionNumber" value="Номер или название объекта" onblur="if(this.value=='') this.value='Номер или название объекта';" onfocus="if(this.value=='Номер или название объекта') this.value='';"/>
                        	<?php } ?>
                        	
                            
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
                            		<?php if($zone['id'] == $filter_zone_id) { ?>
                            			<option value="<?php echo $zone['id'];?>" selected="selected"><?php echo $zone['city'];?></option>
                            		<?php } else { ?>
                            			<option value="<?php echo $zone['id'];?>"><?php echo $zone['city'];?></option>
                            		<?php } ?>
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
                            		<?php if($item == $filter_area_l) { ?>
                                		<option value="<?php echo $item;?>" selected="selected"><?php echo $item;?></option>
                            		<?php } else { ?>
                            			<option value="<?php echo $item;?>"><?php echo $item;?></option>
                            		<?php } ?>
                            	<?php } ?>	
                            </select>
                        </td>
                        <td>
                            <select id="selectRegionAreaTo" name="selectRegionAreaTo" class="fromTo">
                                <option value="0">До</option>
                                <?php foreach ($b_area_h as $item) { ?>
                            		<?php if($item == $filter_area_h) { ?>
                                		<option value="<?php echo $item;?>" selected="selected"><?php echo $item;?></option>
                            		<?php } else { ?>
                            			<option value="<?php echo $item;?>"><?php echo $item;?></option>
                            		<?php } ?>
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
                            		<?php if($item == $filter_price_l) { ?>
                                		<option value="<?php echo $item;?>" selected="selected"><?php echo $item;?></option>
                            		<?php } else { ?>
                            			<option value="<?php echo $item;?>"><?php echo $item;?></option>
                            		<?php } ?>
                            	<?php } ?>	
                            </select>
                        </td>
                        <td>
                            <select id="selectRegionPriceTo" name="selectRegionPriceTo" class="fromTo">
                                <option value="0">До</option>
                                <?php foreach ($b_price_h as $item) { ?>
                            		<?php if($item == $filter_price_h) { ?>
                                		<option value="<?php echo $item;?>" selected="selected"><?php echo $item;?></option>
                            		<?php } else { ?>
                            			<option value="<?php echo $item;?>"><?php echo $item;?></option>
                            		<?php } ?>
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
	
	  <?php if ($products) { ?>
  <!--<div class="product-filter">
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
  </div>-->
  
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
    	<?php if($parent == 2) { ?> 
    		$('#formTabs').tabs({selected:1});
    		
            cuSel({
                changedEl: '#select-region-form select',
                visRows: 6,
                scrollArrows: true
            });
        
	        $('#tab-header-house').click(function(){
	    		cuSel({
	            changedEl: '#select-object-form select',
	            visRows: 6,
	            scrollArrows: true
	       		 });
	       	 });

        
    	<?php } else { ?>
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
    	<?php } ?>
    			
        

        

       
    });
</script>
<?php echo $footer; ?>