<?php echo $header; ?>
<div id="content">
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <?php if ($error_warning) { ?>
  <div class="warning"><?php echo $error_warning; ?></div>
  <?php } ?>
  <div class="box">
    <div class="heading">
      <h1><img src="view/image/product.png" alt="" /> <?php echo $heading_title; ?></h1>
      <div class="buttons"><a onclick="$('#form').submit();" class="button"><?php echo $button_save; ?></a><a onclick="location = '<?php echo $cancel; ?>';" class="button"><?php echo $button_cancel; ?></a></div>
    </div>
    <div class="content">
      <div id="tabs" class="htabs"><a href="#tab-general"><?php echo $tab_general; ?></a><a href="#tab-data"><?php echo $tab_data; ?></a><a href="#tab-links"><?php echo $tab_links; ?></a><a href="#tab-option">Доп. поля</a><a href="#tab-image"><?php echo $tab_image; ?></a></div>
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
        <div id="tab-general">
          <div id="languages" class="htabs">
            <?php foreach ($languages as $language) { ?>
            <a href="#language<?php echo $language['language_id']; ?>"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a>
            <?php } ?>
          </div>
          <?php foreach ($languages as $language) { ?>
          <div id="language<?php echo $language['language_id']; ?>">
            <table class="form">
              <tr>
                <td><span class="required">*</span> <?php echo $entry_name; ?></td>
                <td><input type="text" name="product_description[<?php echo $language['language_id']; ?>][name]" maxlength="255" size="100" value="<?php echo isset($product_description[$language['language_id']]) ? $product_description[$language['language_id']]['name'] : ''; ?>" />
                  <?php if (isset($error_name[$language['language_id']])) { ?>
                  <span class="error"><?php echo $error_name[$language['language_id']]; ?></span>
                  <?php } ?></td>
              </tr>
              <tr>
                <td>Отопление</td>
                <td><input type="text" name="product_description[<?php echo $language['language_id']; ?>][heating]" maxlength="255" size="100" value="<?php echo isset($product_description[$language['language_id']]) ? $product_description[$language['language_id']]['heating'] : ''; ?>" /></td>
              </tr>
              <tr>
                <td><?php echo $entry_seo_h1; ?></td>
                <td><input type="text" name="product_description[<?php echo $language['language_id']; ?>][seo_h1]" maxlength="255" size="100" value="<?php echo isset($product_description[$language['language_id']]) ? $product_description[$language['language_id']]['seo_h1'] : ''; ?>" /></td>
              </tr>
              <tr>
                <td><?php echo $entry_seo_title; ?></td>
                <td><input type="text" name="product_description[<?php echo $language['language_id']; ?>][seo_title]" maxlength="255" size="100" value="<?php echo isset($product_description[$language['language_id']]) ? $product_description[$language['language_id']]['seo_title'] : ''; ?>" /></td>
              </tr>
              <tr>
                <td><?php echo $entry_meta_keyword; ?></td>
                <td><input type="text" name="product_description[<?php echo $language['language_id']; ?>][meta_keyword]" maxlength="255" size="100" value="<?php echo isset($product_description[$language['language_id']]) ? $product_description[$language['language_id']]['meta_keyword'] : ''; ?>" /></td>
              </tr>
              <tr>
                <td><?php echo $entry_meta_description; ?></td>
                <td><textarea name="product_description[<?php echo $language['language_id']; ?>][meta_description]" cols="100" rows="2"><?php echo isset($product_description[$language['language_id']]) ? $product_description[$language['language_id']]['meta_description'] : ''; ?></textarea></td>
              </tr>
              <tr>
                <td><?php echo $entry_description; ?></td>
                <td><textarea name="product_description[<?php echo $language['language_id']; ?>][description]" id="description<?php echo $language['language_id']; ?>"><?php echo isset($product_description[$language['language_id']]) ? $product_description[$language['language_id']]['description'] : ''; ?></textarea></td>
              </tr>
            </table>
          </div>
          <?php } ?>
        </div>
        <div id="tab-data">
          <table class="form">
            <tr>
              <td><span class="required">*</span>Номер</td>
              <td><input type="text" name="number" value="<?php echo $number; ?>" />
              	<input type="hidden" name="o_number" value="<?php echo $number; ?>" />
                <?php if ($error_number) { ?>
                <span class="error"><?php echo $error_number; ?></span>
                <?php } ?></td>
            </tr>
            <tr>
              <td>Площадь</td>
              <td><input type="text" name="area" value="<?php echo $area; ?>" /></td>
            </tr>
            <tr>
              <td>Количество Ванных комнат</td>
              <td><input type="text" name="bathroom" value="<?php echo $bathroom; ?>" /></td>
            </tr>
            <tr>
              <td>Количество спален</td>
              <td><input type="text" name="bedroom" value="<?php echo $bedroom; ?>" /></td>
            </tr>
            
            <tr>
              <td>Количество кондиционеров</td>
              <td><input type="text" name="air_cond" value="<?php echo $air_cond; ?>" /></td>
            </tr>
            <tr>
              <td>Количество басейнов</td>
              <td><input type="text" name="pool" value="<?php echo $pool; ?>" /></td>
            </tr>
            <tr>
              <td>Количество садов</td>
              <td><input type="text" name="garden" value="<?php echo $garden; ?>" /></td>
            </tr>
            <tr>
              <td>Количество кухонь</td>
              <td><input type="text" name="kitchen" value="<?php echo $kitchen; ?>" /></td>
            </tr>
            
            
            <tr>
              <td><?php echo $entry_zone; ?></td>
              <td>
              	<select onchange="getZones(this.value)" name="country">
                  <option value="0"><?php echo $text_none; ?></option>
                  <?php foreach ($countries as $country) { ?>
                  <?php if ($country['country_id'] == $country_id) { ?>
                  <option value="<?php echo $country['country_id']; ?>" selected="selected"><?php echo $country['name']; ?></option>
                  <?php } else { ?>
                  <option value="<?php echo $country['country_id']; ?>"><?php echo $country['name']; ?></option>
                  <?php } ?>
                  <?php } ?>
                </select>
              	<select id="zone" name="zone_id">
                  <option value="0"><?php echo $text_none; ?></option>
                  <?php if (!empty($zone_id)) { ?>
                  	<option selected="selected" value="<?php echo $zone_id; ?>"><?php echo $zone_name; ?></option>
                  <?php } ?>
                </select>
              	
            </tr>
            <tr>
              <td><?php echo $entry_product_currency; ?></td>
              <td><select name="product_currency_id">
                  <option value="0"><?php echo $text_none; ?></option>
                  <?php foreach ($currencies as $currency) { ?>
                  <?php if ($currency['product_currency_id'] == $product_currency_id) { ?>
                  <option value="<?php echo $currency['product_currency_id']; ?>" selected="selected"><?php echo $currency['name']; ?></option>
                  <?php } else { ?>
                  <option value="<?php echo $currency['product_currency_id']; ?>"><?php echo $currency['name']; ?></option>
                  <?php } ?>
                  <?php } ?>
                </select></td>
            </tr>
            <tr>
              <td><?php echo $entry_product_tag; ?></td>
              <td><select name="product_tag_id">
                  <option value="0"><?php echo $text_none; ?></option>
                  <?php foreach ($tags as $tag) { ?>
                  <?php if ($tag['product_tag_id'] == $product_tag_id) { ?>
                  <option value="<?php echo $tag['product_tag_id']; ?>" selected="selected"><?php echo $tag['name']; ?></option>
                  <?php } else { ?>
                  <option value="<?php echo $tag['product_tag_id']; ?>"><?php echo $tag['name']; ?></option>
                  <?php } ?>
                  <?php } ?>
                </select></td>
            </tr>
            <tr>
              <td><?php echo $entry_price; ?></td>
              <td><input type="text" name="price" value="<?php echo $price; ?>" /></td>
            </tr>
            <tr>
              <td><?php echo $entry_keyword; ?></td>
              <td><input type="text" name="keyword" value="<?php echo $keyword; ?>" /></td>
            </tr>
            <tr>
              <td><?php echo $entry_image; ?></td>
              <td><div class="image"><img src="<?php echo $thumb; ?>" alt="" id="thumb" /><br />
                  <input type="hidden" name="image" value="<?php echo $image; ?>" id="image" />
                  <a onclick="image_upload('image', 'thumb');"><?php echo $text_browse; ?></a>&nbsp;&nbsp;|&nbsp;&nbsp;<a onclick="$('#thumb').attr('src', '<?php echo $no_image; ?>'); $('#image').attr('value', '');"><?php echo $text_clear; ?></a></div></td>
            </tr>
            
            <tr>
              <td><?php echo $entry_status; ?></td>
              <td><select name="status">
                  <?php if ($status) { ?>
                  <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                  <option value="0"><?php echo $text_disabled; ?></option>
                  <?php } else { ?>
                  <option value="1"><?php echo $text_enabled; ?></option>
                  <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                  <?php } ?>
                </select></td>
            </tr>
            <tr>
              <td><?php echo $entry_sort_order; ?></td>
              <td><input type="text" name="sort_order" value="<?php echo $sort_order; ?>" size="2" /></td>
            </tr>
          </table>
        </div>
        
        <div id="tab-option">
          	<div id="languages_option" class="htabs">
            <?php foreach ($languages as $language) { ?>
            <a href="#language_option<?php echo $language['language_id']; ?>"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a>
            <?php } ?>
          </div>
          <?php foreach ($languages as $language) { ?>
	          <div id="language_option<?php echo $language['language_id']; ?>">
	            <table class="form">
	             
	              <!--<tr>
	                <td>Отопление</td>
	                <td><input type="text" name="product_option[<?php echo $language['language_id']; ?>][]" maxlength="255" size="100" value="<?php echo isset($product_description[$language['language_id']]) ? $product_description[$language['language_id']]['heating'] : ''; ?>" /><a onclick="$(this).parent().parent().remove()">Удалить</a></td>
	              </tr>-->
	            
	            </table>
	            
	            <table class="new-field">
	            	<tr>
	            		<th>Заголовок в админке</th>
	            		<th></th>
	            	</tr>
	            	<tr>
	            		<td><input type="text" id="new_option"/></td>
	            		
	            		<td align="right"><input type="button" onclick="addProductOption($('#new_option').val())" value="Добавить"/></td>
	            	</tr>
	            	
	            </table>
	          </div>
            <?php } ?>
        </div>
        
        <div id="tab-links">
          <table class="form">
          	
            <tr>
              <td><?php echo $entry_main_category; ?></td>
              <pre>
              </pre>
              <td><select name="main_category_id">
                <option value="0" selected="selected"><?php echo $text_none; ?></option>
                <?php foreach ($categories as $category) { ?>
                <?php if (!preg_match('/'.$sep.'/', $category['name']) && ($category['category_id'] != 10 && $category['category_id'] != 11)) {continue;} ?>
                <?php if ($category['category_id'] == $main_category_id) { ?>
                <option value="<?php echo $category['category_id']; ?>" selected="selected"><?php echo $category['name']; ?></option>
                <?php } else { ?>
                <option value="<?php echo $category['category_id']; ?>"><?php echo $category['name']; ?></option>
                <?php } ?>
                <?php } ?>
              </select></td>
            </tr>
          </table>
        </div>
        
        <div id="tab-image">
          <table id="images" class="list">
            <thead>
              <tr>
                <td class="left"><?php echo $entry_image; ?></td>
                <td class="right"><?php echo $entry_sort_order; ?></td>
                <td></td>
              </tr>
            </thead>
            <?php $image_row = 0; ?>
            <?php foreach ($product_images as $product_image) { ?>
            <tbody id="image-row<?php echo $image_row; ?>">
              <tr>
                <td class="left"><div class="image"><img src="<?php echo $product_image['thumb']; ?>" alt="" id="thumb<?php echo $image_row; ?>" />
                    <input type="hidden" name="product_image[<?php echo $image_row; ?>][image]" value="<?php echo $product_image['image']; ?>" id="image<?php echo $image_row; ?>" />
                    <br />
                    <a onclick="image_upload('image<?php echo $image_row; ?>', 'thumb<?php echo $image_row; ?>');"><?php echo $text_browse; ?></a>&nbsp;&nbsp;|&nbsp;&nbsp;<a onclick="$('#thumb<?php echo $image_row; ?>').attr('src', '<?php echo $no_image; ?>'); $('#image<?php echo $image_row; ?>').attr('value', '');"><?php echo $text_clear; ?></a></div></td>
                <td class="right"><input type="text" name="product_image[<?php echo $image_row; ?>][sort_order]" value="<?php echo $product_image['sort_order']; ?>" size="2" /></td>
                <td class="left"><a onclick="$('#image-row<?php echo $image_row; ?>').remove();" class="button"><?php echo $button_remove; ?></a></td>
              </tr>
            </tbody>
            <?php $image_row++; ?>
            <?php } ?>
            <tfoot>
              <tr>
                <td colspan="2"></td>
                <td class="left"><a onclick="addImage();" class="button"><?php echo $button_add_image; ?></a></td>
              </tr>
            </tfoot>
          </table>
        </div>
    
       
      </form>
    </div>
  </div>
</div>
<script type="text/javascript" src="view/javascript/ckeditor/ckeditor.js"></script> 
<script type="text/javascript"><!--
<?php foreach ($languages as $language) { ?>
CKEDITOR.replace('description<?php echo $language['language_id']; ?>', {
	filebrowserBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserImageBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserImageUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>'
});
<?php } ?>
//--></script> 
<script type="text/javascript"><!--
$('input[name=\'related\']').autocomplete({
	delay: 0,
	source: function(request, response) {
		$.ajax({
			url: 'index.php?route=catalog/product/autocomplete&token=<?php echo $token; ?>&filter_name=' +  encodeURIComponent(request.term),
			dataType: 'json',
			success: function(json) {		
				response($.map(json, function(item) {
					return {
						label: item.name,
						value: item.product_id
					}
				}));
			}
		});
		
	}, 
	select: function(event, ui) {
		$('#product-related' + ui.item.value).remove();
		
		$('#product-related').append('<div id="product-related' + ui.item.value + '">' + ui.item.label + '<img src="view/image/delete.png" /><input type="hidden" name="product_related[]" value="' + ui.item.value + '" /></div>');

		$('#product-related div:odd').attr('class', 'odd');
		$('#product-related div:even').attr('class', 'even');
				
		return false;
	},
	focus: function(event, ui) {
      return false;
	}
});

$('#product-related div img').live('click', function() {
	$(this).parent().remove();
	
	$('#product-related div:odd').attr('class', 'odd');
	$('#product-related div:even').attr('class', 'even');	
});
//--></script> 


<script type="text/javascript">
	
	function addProductOption(name){
		$('div [id^="language_option"]').each(function() {
			 var this_id = $(this).attr('id');
			 var lang_id = this_id.charAt( this_id.length-1 );
			 $(this).find('.form').append('<tr><td>'+name+'</td><td><input type="hidden" name="product_option' + lang_id + '[][\'key\']" value="'+name+'"/> Имя <input type="text" name="product_option' + lang_id + '[][\'header\']" maxlength="255" size="40"/> Значение<input type="text" name="product_option' + lang_id + '[][\'value\']" maxlength="255" size="40"/><a onclick="$(this).parent().parent().remove()">Удалить</a></td></tr>');
		});
	}
	
			
	
</script>

<script type="text/javascript"><!--
function getZones(country) {
	$.ajax({
        type: "post",
        url: 'index.php?route=catalog/product/zones&token=<?php echo $token; ?>',
        data: 'country=' + country,
        dataType: "json",
        success: function(aResponse) {
        	
        	var html = '<option value="0"><?php echo $text_none; ?></option>';
        	
        	for(var i = 0; i < aResponse.length; i++) {
        		var oResponse = aResponse[i];
        		html += '<option value="'+oResponse['zone_id']+'">'+oResponse['name']+'</option>';
        	}
        	$('#zone').html(html);
        }
     });
}
</script>
<script type="text/javascript"><!--
function image_upload(field, thumb) {
	$('#dialog').remove();
	
	$('#content').prepend('<div id="dialog" style="padding: 3px 0px 0px 0px;"><iframe src="index.php?route=common/filemanager&token=<?php echo $token; ?>&field=' + encodeURIComponent(field) + '" style="padding:0; margin: 0; display: block; width: 100%; height: 100%;" frameborder="no" scrolling="auto"></iframe></div>');
	
	$('#dialog').dialog({
		title: '<?php echo $text_image_manager; ?>',
		close: function (event, ui) {
			if ($('#' + field).attr('value')) {
				$.ajax({
					url: 'index.php?route=common/filemanager/image&token=<?php echo $token; ?>&image=' + encodeURIComponent($('#' + field).attr('value')),
					dataType: 'text',
					success: function(text) {
						$('#' + thumb).replaceWith('<img src="' + text + '" alt="" id="' + thumb + '" />');
					}
				});
			}
		},	
		bgiframe: false,
		width: 800,
		height: 400,
		resizable: false,
		modal: false
	});
};
//--></script> 
<script type="text/javascript"><!--
var image_row = <?php echo $image_row; ?>;

function addImage() {
    html  = '<tbody id="image-row' + image_row + '">';
	html += '  <tr>';
	html += '    <td class="left"><div class="image"><img src="<?php echo $no_image; ?>" alt="" id="thumb' + image_row + '" /><input type="hidden" name="product_image[' + image_row + '][image]" value="" id="image' + image_row + '" /><br /><a onclick="image_upload(\'image' + image_row + '\', \'thumb' + image_row + '\');"><?php echo $text_browse; ?></a>&nbsp;&nbsp;|&nbsp;&nbsp;<a onclick="$(\'#thumb' + image_row + '\').attr(\'src\', \'<?php echo $no_image; ?>\'); $(\'#image' + image_row + '\').attr(\'value\', \'\');"><?php echo $text_clear; ?></a></div></td>';
	html += '    <td class="right"><input type="text" name="product_image[' + image_row + '][sort_order]" value="" size="2" /></td>';
	html += '    <td class="left"><a onclick="$(\'#image-row' + image_row  + '\').remove();" class="button"><?php echo $button_remove; ?></a></td>';
	html += '  </tr>';
	html += '</tbody>';
	
	$('#images tfoot').before(html);
	
	image_row++;
}
//--></script> 
<script type="text/javascript" src="view/javascript/jquery/ui/jquery-ui-timepicker-addon.js"></script> 
<script type="text/javascript"><!--
$('.date').datepicker({dateFormat: 'yy-mm-dd'});
$('.datetime').datetimepicker({
	dateFormat: 'yy-mm-dd',
	timeFormat: 'h:m'
});
$('.time').timepicker({timeFormat: 'h:m'});
//--></script> 
<script type="text/javascript"><!--
$('#tabs a').tabs(); 
$('#languages a').tabs(); 
$('#languages_option a').tabs(); 
$('#vtab-option a').tabs();
//--></script> 
<?php echo $footer; ?>