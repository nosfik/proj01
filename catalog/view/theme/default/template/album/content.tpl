<?php echo $header; ?>
<div id="content">
<?php echo $content_top; ?>

<input type="hidden" name="album" id="this_album_id" value="<?php echo $album_id?>"/> 
<div id="yellow_cont">
	
	<div id="dell_photo_window" class="del_window" style="display:none">
      <input type="hidden" name="photo" value=""/>  
      <input type="hidden" name="album" value=""/>  
      <div id="close">
        <a onclick="$('#dell_photo_window').fadeOut()">
          <img src="catalog/view/theme/default/image/blank.gif">
        </a>
      </div>
      <div id="mess">Удалить Фотографию "<span id="deleteContent"></span>"?</div>
      <div id="round_red">
        <div style="margin-left:80px; float:left" class="bigButton" onmouseover="$(this).addClass('hover');" onmouseout="$(this).removeClass('hover');">
          <a class="left" onclick="delete_album_approved()">Да, подтверждаю</a>
          <div class="right"></div>
        </div>
        <div style="margin-left:20px; float:left" class="bigButton" onmouseover="$(this).addClass('hover');" onmouseout="$(this).removeClass('hover');">
          <a class="left" onclick="$('#dell_photo_window').fadeOut()">Отменить удаление</a>
          <div class="right"></div>
        </div>
        <div class="clear"></div>
      </div>
  </div>
	
  <div id="help_cont">
    <div id="help">
      <h3>Подсказка</h3>
      
						Нажмите на изображение, что-бы добавить фото в заказ.
						
      <div class="clear"></div>
      <div id="edit">
        <img src="catalog/view/theme/default/image/flag.png">
      </div>
      <div class="text">— редактировать</div>
      <div id="del">
        <img src="catalog/view/theme/default/image/flag.png">
      </div>
      <div class="text">— удалить</div>
      <div class="clear"></div>
    </div>
    <div id="corner"></div>
  </div>
  <div class="crumbs">
    <div class="left"></div>
    <div class="dark">
      <a href="#">Личный кабинет</a>
    </div>
    <div class="darkEnd"></div>
    <div class="light">
      <a href="<?php echo $this -> url -> link('album/album', '', 'SSL'); ?>">Мои альбомы</a>
    </div>
    <div class="lightEnd"></div>
    <div class="light2"><?php echo $albumName;?></div>
    <div class="light2End"></div>
  </div>
  <div id="for_albums">
    <div id="order2_top_links">
      <div id="select">
        <a class="sel" onclick="checkAll(this)" >Выделить все</a>
         / 
        <a class="sel border" onclick="uncheckAll(this)">Отменить выделение</a>
      </div>
      <div id="back">
        <a href="<?php echo $this -> url -> link('album/album', '', 'SSL'); ?>">Назад к альбомам</a>
      </div>
      <div id="del">
        <a onclick="deleteAllChecked()">Удалить выбранные фото</a>
      </div>
      <div class="clear"></div>
    </div>
 
 
    
 <table id="photos-list"><tr>
 <?php 
 for ($i = 0; $i < sizeof($photos); $i++) { 
    $photo =  $photos[$i];
    if($i >=3  && $i % 3 == 0) { ?>
      </tr><tr>  
     <?php } ?>
     <td>
		     	<div class="photoCont">
		      <div class="picCont">
		        <div class="buttons">
		          <a href="<?php echo $this -> url -> link('album/content/edit', 'photo='.$photo['id'].'&album='.$album_id, 'SSL'); ?>" title="Редактировать альбом" class="edit">
		            <img src="catalog/view/theme/default/image/flag.png">
		          </a>
		          <a onclick="delete_photo( <?php echo $album_id?> , <?php echo $photo['id']?>, '<?php echo $photo['name']?>')" title="Удалить альбом" class="del">
		            <img src="catalog/view/theme/default/image/flag.png">
		          </a>
		        </div>
		        <div class="cor1"></div>
		        <div class="cor2"></div>
		        <div class="cor3"></div>
		        <div class="cor4"></div>
		        <img class="pic" src="<?php echo $photo['path']?>" />
		      </div>
		      <div class="clear"></div>
		      <div class="text">
		        <input type="checkbox" name="<?php echo $photo['id']?>" value="<?php echo $photo['id']?>">
		        	<?php echo $photo['name']?>
		      </div>
		    </div>
     </td>
     <?php } ?>
</tr>    
</table>

    <div class="clear"></div>
    
  </div>
  
  
</div>
<div id="green_cont">
  <form id="order_form">
   <input type="hidden" name="album_id" value="<?php echo $album_id;?>"/>
  <div id="step3_field_cont">
     <div class="apply-radio">
      <input type="radio" id="applyPhoto" name="apply" value="photo"/> 
      <label for="applyPhoto">Применить к выбранным настройки печати</label>
    </div>
    <div class="apply-radio">
      <input type="radio" id="applyCopy" name="apply" value="copy"/> 
      <label for="applyCopy">Применить к копиям настройки печати</label>
    </div>
    <div class="clear"></div>
    <div class="cont">Формат печати<br>
      <select name="format">
        <?php foreach ($formats as $format) { ?>
           <option value="<?php echo $format['id']?>"><?php echo $format['name']?></option>
        <?php } ?>
      </select>
    </div>
    <div class="cont">Тип бумаги<br>
      <select name="paper">
        <?php foreach ($papers as $paper) { ?>
           <option value="<?php echo $paper['id']?>"><?php echo $paper['name']?></option>
        <?php } ?>
      </select>
    </div>
    <div class="cont">Режим печати<br>
      <select name="print_mode">
        <?php foreach ($print_modes as $print_mode) { ?>
           <option value="<?php echo $print_mode['id']?>"><?php echo $print_mode['name']?></option>
        <?php } ?>
      </select>
    </div>
    <div class="cont">Число копий<br>
      <input type="text" id="photo_count" value="1" name="count">
      <div id="arrows"><a onclick="$('#photo_count').val(+$('#photo_count').val() + 1)"><img width="7" height="4" src="catalog/view/theme/default/image/top_arrow.gif"></a>
        <a onclick="if($('#photo_count').val() > 1){$('#photo_count').val(+$('#photo_count').val() - 1)}"><img width="7" height="4" src="catalog/view/theme/default/image/bottom_arrow.gif"></a></div>
    </div>
    <div class="cont">Цветокоррекция<br>
      <select name="color_correction">
        <option value="1">Не делать</option>
        <option value="2">Делать</option>
      </select>
    </div>
    <div class="cont">Обрезка<br>
      <select name="cut_photo">
        <option value="1">Без эффектов</option>
        <option value="2">С эффектами</option>
      </select>
    </div>
    <div class="cont">Белая рамка<br>
      <select name="white_border">
        <option value="1">Без рамки</option>
        <option value="2">С рамкой</option>
      </select>
    </div>
    <div class="cont">Красные глаза<br>
      <select name="red_eye">
        <option value="1">Не делать</option>
        <option value="2">Делать</option>
      </select>
    </div>
    <div class="clear"></div>
  </div>

  <div style="margin-left: 287px" onmouseout="$(this).removeClass('hover');" onmouseover="$(this).addClass('hover');" class="bigButton"><a onclick="aplly_photo(false)" class="left">Добавить выбранные фото в заказ печати</a>
    <div class="right"></div>
  </div>
  </form>
</div>
<script type="text/javascript">
	
	function checkAll(el){
		$('.sel').removeClass('border'); $(el).addClass('border');
		$('#photos-list input[type=checkbox]').attr("checked", true);
	}
	
	function uncheckAll(el){
		$('.sel').removeClass('border'); $(el).addClass('border');
		$('#photos-list input[type=checkbox]').attr("checked", false);
	}
	
	function deleteAllChecked() {
		var value = "";
		$('#photos-list input:checked').each(function(index, el){
				value += $(el).val() + ","
		});
		delete_photos(value.substr(0, value.length - 1));
	}
	
	
	
	 function delete_photo(album_id, id, name) {
    $('#dell_photo_window #deleteContent').html(name);
    $('#dell_photo_window input[name=photo]').val(id);
    $('#dell_photo_window').fadeIn();
  }
  
  function delete_album_approved() {
     delete_photos($('#dell_photo_window input[name=photo]').val());
  }
  
  function getParams() {
    
    var paramArray = $('#order_form').serializeArray();
    var photos = [];
    $('#photos-list input:checked').each(function(index, el){
      photos.push($(el).val());
    });
    paramArray.push({name : 'photos', value : photos.join()});
    var apply = ($('#order_form input[type=radio]:checked').val() == undefined) ? "" : $('#order_form input[type=radio]:checked').val();
    paramArray.push({name : 'apply', value : apply});
    var params = {};
    for(var i = 0; i < paramArray.length; i++) {
      params[paramArray[i]['name']] = paramArray[i]['value'];
    }
    
    return params;
  }
  
  
  
  
  
  
  
   function aplly_photo(){
    
    var params = getParams();
    
    if(params['photos'] == "") {
      
      alert('Нужно выбрать фото');
      
    } else {
      
      $.ajax({
        type: "post",
        url: "<?php echo $this->url->link('album/order/make', 'album_id='.$album_id, 'SSL');?>",
        data: params,
        dataType: "json",
        success: function(response) {
            if (!response.success) {
                alert("Проблемы на стороне сервера.");
            } else {
               window.location = '<?php echo $this -> url -> link('checkout/cart', '', 'SSL'); ?>';
            }
        },
        error: function(rs, e, a) {
          console.log(rs + "||" + e + "||" + a);
            alert(rs.responseText);
        }
    });
      
    }   
    
  }
  
  
  
  
  
  
  
  
  
  function delete_photos(photos) {
  	var album = $('#this_album_id').val();
  	 $.ajax({
        type: "post",
        url: "<?php echo $this->url->link('album/content/delete', '', 'SSL');?>",
        data: 'photos=' + photos + "&album="+album,
        dataType: "json",
        success: function(response) {
            if (!response.success) {
                alert("Проблемы на стороне сервера.");
            } else {
              if(response.order.length) {
                var msg = '';
                for(var i = 0; i < response.order.length; i++) {
                  msg += response.order[i] + ',';
                }
                msg = msg.substring(0, (msg.length - 1));
                
                if(response.order.length == 1) {
                  alert('Фотографию :' + msg + ' нельзя удалить, так как она находится в корзине');
                } else {
                  alert('Фотографии :' + msg + ' нельзя удалить, так как они находятся в корзине');
                }
                
              } else {
                location.reload();
              }
              
            	//location.reload();
              //window.location = '<?php echo $this -> url -> link('album/album', '', 'SSL'); ?>';
            }
        },
        error: function(rs, e, a) {
          console.log(rs + "||" + e + "||" + a);
            alert(rs.responseText);
        }
    });
  }
	
</script>







<?php echo $content_bottom; ?>
</div>

<?php echo $footer; ?>