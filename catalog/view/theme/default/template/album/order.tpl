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
    <div class="light2">Ваш заказ</div>
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
              <a href="#" title="Редактировать альбом" class="edit">
                <img src="catalog/view/theme/default/image/flag.png">
              </a>
              <a onclick="delete_photo( <?php echo $photo['id']?>, '<?php echo $photo['name']?>')" title="Удалить фото" class="del">
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
        <div id="step3_field_cont">
          <input type="checkbox">
          <span>Применить к выбранным настройки печати</span>
          <div class="clear"></div>
          <div class="cont">Формат печати<br>
            <select>
              <option>10x15</option>
              <option>15x20</option>
            </select>
          </div>
          <div class="cont">Тип бумаги<br>
            <select>
              <option>Глянцевая</option>
              <option>Матовая</option>
            </select>
          </div>
          <div class="cont">Режим печати<br>
            <select>
              <option>Без полей</option>
              <option>Матовая</option>
            </select>
          </div>
          <div class="cont">Число копий<br>
            <input type="text" value="1" name="">
            <div id="arrows"><a href="#"><img width="7" height="4" src="i/top_arrow.gif"></a><a href="#"><img width="7" height="4" src="i/bottom_arrow.gif"></a></div>
          </div>
          <div class="cont">Цветокоррекция<br>
            <select>
              <option>Делать</option>
              <option>Не делать</option>
            </select>
          </div>
          <div class="cont">Обрезка<br>
            <select>
              <option>Без эффектов</option>
              <option>С эффектами</option>
            </select>
          </div>
          <div class="cont">Белая рамка<br>
            <select>
              <option>Без рамки</option>
              <option>С рамкой</option>
            </select>
          </div>
          <div class="cont">Красные глаза<br>
            <select>
              <option>Не делать</option>
              <option>Делать</option>
            </select>
          </div>
          <div class="clear"></div>
        </div>
        <div onmouseout="$(this).removeClass('hover');" onmouseover="$(this).addClass('hover');" class="bigButton" style="margin-left:280px; float:left"><a href="#" class="left">Применить к копиям</a>
          <div class="right"></div>
        </div>
        <div onmouseout="$(this).removeClass('hover');" onmouseover="$(this).addClass('hover');" class="bigButton"><a href="#" class="left">Применить к выбранным</a>
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
  
  
   function delete_photo(id, name) {
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