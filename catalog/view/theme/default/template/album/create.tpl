<?php echo $header; ?>
<div id="content">

<?php echo $content_top; ?>
<div id="yellow_cont">
  <div id="help_cont">
    <div id="help">
      <h3>Подсказка</h3>
      
            Нажмите на изображение, чтобы добавить фото в заказ.
            
      <div class="clear"></div>
      <div id="edit">
        <img src="i/flag.png">
      </div>
      <div class="text">— редактировать</div>
      <div id="del">
        <img src="i/flag.png">
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
    <div class="light">Создание нового альбома копия</div>
    <div class="lightEnd"></div>
  </div>
  
  <form method="post" action="<?php echo $this -> url -> link('album/create/create', '', 'SSL'); ?>" enctype="multipart/form-data">
  <table border="0" cellspacing="0" cellpadding="0" id="order_tab">
    <tbody>
      <tr>
        <td> Название альбома    <br> <input class="field" type="text" name="name"/>   </td>
        <td width="30"></td>
        <td> Комментарий к альбому  <br> <input class="field" type="text" name="description"/> </td>
        <td width="30"></td>
        <td> Обложка альбома  <br> <input class="field" type="file" name="photo"/>  </td>
      </tr>
    </tbody>
    <input type="submit" name="submit" id="create_submit" style="display:none"/>
    </form>
  </table>
  
  <div class="bigButton orderButton" onmouseover="$(this).addClass('hover');" onmouseout="$(this).removeClass('hover');">
    <a class="left" onclick="$('#create_submit').click()">Создать альбом</a>
    <div class="right"></div>
  </div>
</div>
<div id="white_cont">
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
      <div id="mess">Редактирование альбома "<span id="deleteContent"></span>"?</div>
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
  

  <div class="crumbs">
  <div class="left"></div>
  <div class="dark">Ваши фотоальбомы</div>
  <div class="darkEnd"></div>
</div>
  <div id="for_albums">
    
    <table>
    <tr>
    <?php for ($i = 0; $i < sizeof($albums); $i++) { 
        $album =  $albums[$i];
        if($i >=5  && $i % 5 == 0) { ?>
           </tr><tr>  
         <?php } ?>
         <td>
            <div class="albumCont" id="album_<?php echo $album["id"]?>">
              <div class="album"></div>
              <div class="picCont">
                <?php if($album['photo'] != '') { ?>
                <img id="album_cover" src="albums/album_cus_<?php echo $customer_id;?>/cover/<?php echo $album['photo'];?>"/>
                <?php } ?>
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
    $('#deleteContent').html(name);
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
              window.location = '<?php echo $this -> url -> link('album/album', '', 'SSL'); ?>';
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