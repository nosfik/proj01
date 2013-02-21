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
  <div style="margin-left:280px" class="bigButton" onmouseover="$(this).addClass('hover');" onmouseout="$(this).removeClass('hover');">
    <a class="left" onclick="makeOrder()">Добавить выбранные фото в заказ печати</a>
    <div class="right"></div>
  </div>
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
	
	function makeOrder() {
    var order_array = [];
    $('#photos-list input:checked').each(function(index, el){
      order_array.push($(el).val());
    });
/*
    var cookie_order = ($.cookie("album_order")).split(",") ;
    
    if( cookie_order != null && cookie_order != '' ) {
      for(var i = 0; i < cookie_order.length; i++) {
        if(order_array.indexOf(cookie_order[i]) == -1) {
          order_array.push(cookie_order[i]);
        }
      }
      
      $.cookie("album_order", order_array.join(), { path: '/', expires: 1 });
    } else {
      $.cookie("album_order", photo, { path: '/', expires: 1 });
    }*/
    
    var album = $('#this_album_id').val();
    $.cookie("album_order", order_array.join(), { path: '/', expires: 1 });
    $.cookie("album_order_album", album, { path: '/', expires: 1 });
    window.location = '<?php echo $this -> url -> link('album/order', '', 'SSL'); ?>'
    
    
  }
	
	 function delete_photo(album_id, id, name) {
    $('#dell_photo_window #deleteContent').html(name);
    $('#dell_photo_window input[name=photo]').val(id);
    $('#dell_photo_window').fadeIn();
  }
  
  function delete_album_approved() {
     delete_photos($('#dell_photo_window input[name=photo]').val());
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
            	location.reload();
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