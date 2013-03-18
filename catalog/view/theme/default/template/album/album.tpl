<?php echo $header; ?>
<div id="content">

<?php echo $content_top; ?>
<div id="yellow_cont">
  <div id="dell_album_window" style="display:none">
      <input type="hidden" name="album" value=""/>  
      <div id="close">
        <a onclick="$('#dell_album_window').fadeOut()">
          <img src="catalog/view/theme/default/image/blank.gif">
        </a>
      </div>
      <div id="mess">Удалить альбом "<span id="deleteContent"></span>"?</div>
      <div id="round_red">
        <div style="margin-left:80px; float:left" class="bigButton" onmouseover="$(this).addClass('hover');" onmouseout="$(this).removeClass('hover');">
          <a class="left" onclick="delete_album_approved()">Да, подтверждаю</a>
          <div class="right"></div>
        </div>
        <div style="margin-left:20px; float:left" class="bigButton" onmouseover="$(this).addClass('hover');" onmouseout="$(this).removeClass('hover');">
          <a class="left" onclick="$('#dell_album_window').fadeOut()">Отменить удаление</a>
          <div class="right"></div>
        </div>
        <div class="clear"></div>
      </div>
  </div>
  
    <div id="edit_album_window" style="display:none">
      <input type="hidden" name="album" value=""/>
    
      <div id="close">
        <a onclick="$('#edit_album_window').fadeOut()">
          <img src="catalog/view/theme/default/image/blank.gif">
        </a>
      </div>
      <div id="mess">Редактирование альбома "<span id="editContent"></span>"?</div>
      <form method="post" action="<?php echo $this -> url -> link('album/album/edit', '', 'SSL'); ?>" enctype="multipart/form-data">
       <input type="hidden" name="album_id" />
      <table style="margin:10px auto">
        <tr><td align="left" valign="center" style="padding-right:10px;">Название альбома</td><td align="left"><input type="text" class="field" name="name" value=""/> </td></tr>
        <tr><td align="left" valign="center">Комментарий к альбому</td><td align="left"><input type="text" class="field" name="description" value=""/>  </td></tr>
        <tr><td align="left" valign="center">Обложка альбома</td><td align="left"><input type="file" class="field" name="cover" value=""/>  </td></tr>
        <tr><td colspan="2"><img id="cover" src="" width="100px"/></td></tr>
      </table>
      <input type="submit" name="submit" id="edit_submit" style="display:none"/>
      </form>
       
      <div id="round_red">
        <div style="margin-left:80px; float:left" class="bigButton" onmouseover="$(this).addClass('hover');" onmouseout="$(this).removeClass('hover');">
          <a class="left" onclick="$('#edit_album_window').fadeOut()">Отмена</a>
          <div class="right"></div>
        </div>
        <div style="margin-left:20px; float:left" class="bigButton" onmouseover="$(this).addClass('hover');" onmouseout="$(this).removeClass('hover');">
          <a class="left" onclick="$('#edit_submit').click()">Применить</a>
          <div class="right"></div>
        </div>
        <div class="clear"></div>
      </div>
  </div>
  

  <div id="help_cont">
    <div id="help">
      <h3>Подсказка</h3>
      
            Нажмите на изображение, чтобы добавить фото в заказ.
            
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
    <div class="light">Мои фотоальбомы</div>
    <div class="lightEnd"></div>
  </div>
  <div id="for_albums">
    
    <table>
    <tr>
    <?php for ($i = 0; $i < sizeof($albums); $i++) { 
        $album =  $albums[$i];
        if($i >= 4  && $i % 4 == 0) { ?>
           </tr><tr>  
         <?php } ?>
         <td>
            <div class="albumCont" id="album_<?php echo $album["id"]?>">
              <div class="album"></div>
              <div class="picCont">
                <img id="album_cover" src="<?php echo $album['cover'];?>"/>
              </div>
              <div class="blick"></div>
              <div class="buttons">
                <a onclick="edit_album(<?php echo $album['id'];?>)" title="Редактировать альбом" class="edit">
                  <img src="catalog/view/theme/default/image/flag.png"/>
                </a>
                <a onclick="delete_album(<?php echo $album['id'];?>, '<?php echo $album['name'];?>')" title="Удалить альбом" class="del">
                  <img src="catalog/view/theme/default/image/flag.png"/>
                </a>
              </div>
              <div class="text">
                <a id="album_name" href="<?php echo $this -> url -> link('album/content', 'album_id='.$album['id'], 'SSL'); ?>"><?php echo $album['name'];?></a>
                <span id="album_description"><?php echo $album['description'];?></span>
                Дата создания: 
                <b><?php echo $album['date'];?></b>
                <br>
                      Кол-во фотографий: 
                <b><?php echo $album['size'];?></b>
              </div>
            </div>
 </td>
<?php } ?>
</tr>
</table>           
    
    
   
    <div class="clear"></div>
  </div>
</div>
<?php echo $content_bottom; ?>
</div>
<script type="text/javascript">
  function delete_album(id, name) {
    $('#dell_album_window #deleteContent').html(name);
    $('#dell_album_window input[name=album]').val(id);
    $('#dell_album_window').fadeIn();
  }
  
   function edit_album(id) {
    var $albumDiv = $("#album_" + id);
    var name = $albumDiv.find("#album_name").text();
    var description  = $albumDiv.find("#album_description").text();
    var photo  = $albumDiv.find("#album_cover").attr('src');
    
    var $ediWindow = $('#edit_album_window');
    $ediWindow.find('input[name=album_id]').val(id);
    $ediWindow.find('input[name=name]').val(name);
    $ediWindow.find('#editContent').html(name);
    $ediWindow.find('input[name=description]').val(description);
    $ediWindow.find('#cover').attr('src', photo);
    $('#edit_album_window').fadeIn();
  }
  
  function delete_album_approved() {
     var album_id = $('#dell_album_window input[name=album]').val();
     $.ajax({
        type: "post",
        url: "<?php echo $this->url->link('album/album/delete', '', 'SSL');?>",
        data: 'album_id=' + album_id,
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
                  alert('Фотографию :' + msg + ' с даного альбома нельзя удалить, так как она находится в корзине');
                } else {
                  alert('Фотографии :' + msg + ' с даного альбома нельзя удалить, так как они находятся в корзине');
                }
                
              } else {
                window.location = '<?php echo $this -> url -> link('album/album', '', 'SSL'); ?>';
              }
            	
            }
        },
        error: function(rs, e, a) {
          console.log(rs + "||" + e + "||" + a);
            alert(rs.responseText);
        }
    });
  }
</script>
<?php echo $footer; ?>