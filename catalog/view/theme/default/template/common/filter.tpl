    <div id="formTabs" style="height:576px">
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
                        <td style="line-height:24px">
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
                            <select name="filter_zone_id" id="city" onchange="$(this).parent().find('.cuselText').css('color', 'white')">
                                <option value="0"></option>
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
                            <select name="filter_category_id" id="realtyType" onchange="$(this).parent().find('.cuselText').css('color', 'white')">
                                <option value="0"></option>
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
                            <select id="selectBedroomFrom" name="filter_bedroom_l" class="fromTo" onchange="$(this).parent().find('.cuselText').css('color', 'white')">
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
                            <select id="selectBedroomTo" name="filter_bedroom_h" class="fromTo" onchange="$(this).parent().find('.cuselText').css('color', 'white')">
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
                            <select id="selectBathroomFrom" name="filter_bathroom_l" class="fromTo" onchange="$(this).parent().find('.cuselText').css('color', 'white')">
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
                            <select id="selectBathroomTo" name="filter_bathroom_h" class="fromTo" onchange="$(this).parent().find('.cuselText').css('color', 'white')">
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
                            <select id="selectAreaFrom" name="filter_area_l" class="fromTo" onchange="$(this).parent().find('.cuselText').css('color', 'white')">
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
                            <select id="selectAreaTo" name="filter_area_h" class="fromTo" onchange="$(this).parent().find('.cuselText').css('color', 'white')">
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
                            <select id="selectPriceFrom" name="filter_price_l" class="fromTo" onchange="$(this).parent().find('.cuselText').css('color', 'white')">
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
                            <select id="selectPriceTo" name="filter_price_h" class="fromTo" onchange="$(this).parent().find('.cuselText').css('color', 'white')">
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
                            <input style="font-family: Arial, Helvetica, sans-serif; font-size:12px;padding-right:16px;" type="submit" value="найти" class="form-btn"/>
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
                                <option value="0"></option>
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
                            <input type="submit" value="найти" style="font-family: Arial, Helvetica, sans-serif; font-size:12px;padding-right:16px;" class="form-btn" />
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
    <div id="creditFormTabs" style="height:368px">
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
                            <input type="button" style="font-family: Arial, Helvetica, sans-serif; font-size:12px;" onclick="$('#MLCalcFormMortgageForm .sbmButton').click()" value="посчитать" class="form-btn" />
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
                            <input type="button" style="font-family: Arial, Helvetica, sans-serif; font-size:12px;" onclick="$('.sbmButton').click()" value="посчитать" class="form-btn" />
                        </td>
                    </tr>
                </table>
            </form>
        </div>
        </div>
        

<script>
    
    
    
    
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
        
        
        
        
        
        //CALC
        
         $('#creditFormTabs input[type=text], #creditTab [id^=cuselFrame]').hover(
                function(){
                    console.log($(this).parent().parent().prev());
                   $(this).parent().parent().prev().css('color', '#e08c15'); 
                },
                function(){ 
                   $(this).parent().parent().prev().css('color', '#787878'); 
                }
        );
        
        
        $('#tab-hypothec').click(function(){
            
            $('#hypothecTab [id^=cuselFrame]').hover(
                function(){
                    console.log($(this).parent().parent().prev());
                   $(this).parent().parent().prev().css('color', '#e08c15'); 
                },
                function(){ 
                   $(this).parent().parent().prev().css('color', '#787878'); 
                }
        );
            
        });
        
        
        
        
        // FILTER
         $('#housesTab [id^=cuselFrame-]').hover(
                function(){
                   $(this).parent().parent().prev().css('color', '#e08c15'); 
                },
                function(){ 
                   $(this).parent().parent().prev().css('color', '#787878'); 
                }
        );
        
         $('#housesTab input[type=text]').hover(
                function(){
                   $(this).parent().prev().css('color', '#e08c15'); 
                },
                function(){ 
                   $(this).parent().prev().css('color', '#787878'); 
                }
        );
        $('#tab-header-area').click(function(){
            $('#areasTab [id^=cuselFrame-]').hover(
                function(){
                   $(this).parent().parent().prev().css('color', '#e08c15'); 
                },
                function(){ 
                   $(this).parent().parent().prev().css('color', '#787878'); 
                }
        );
        
         $('#areasTab #regionNumber').hover(
                function(){
                   $(this).parent().parent().prev().css('color', '#e08c15'); 
                },
                function(){ 
                   $(this).parent().parent().prev().css('color', '#787878'); 
                }
        );
        }); 
    });
    
    
    
    
    
</script>