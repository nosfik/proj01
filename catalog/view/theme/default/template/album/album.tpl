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
      <a class="left" href="#">Да, подтверждаю</a>
      <div class="right"></div>
    </div>
    <div style="margin-left:20px; float:left" class="bigButton" onmouseover="$(this).addClass('hover');" onmouseout="$(this).removeClass('hover');">
      <a class="left" onclick="$('#dell_album_window').fadeOut()">Отменить удаление</a>
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
    <div class="light">Мои фотоальбомы</div>
    <div class="lightEnd"></div>
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
            <div class="albumCont">
              <div class="album"></div>
              <div class="picCont">
                <?php if($album['photo'] != '') { ?>
                <img src="albums/album_cus_<?php echo $customer_id;?>/cover/<?php echo $album['photo'];?>">
                <?php } ?>
              </div>
              <div class="blick"></div>
              <div class="buttons">
                <a onclick="edit_album(<?php echo $album['id'];?>)" title="Редактировать альбом" class="edit">
                  <img src="catalog/view/theme/default/image/flag.png">
                </a>
                <a onclick="delete_album(<?php echo $album['id'];?>, '<?php echo $album['name'];?>')" title="Удалить альбом" class="del">
                  <img src="catalog/view/theme/default/image/flag.png">
                </a>
              </div>
              <div class="text">
                <a href="<?php echo $this -> url -> link('album/content', 'album_id='.$album['id'], 'SSL'); ?>"><?php echo $album['name'];?></a>
                <span><?php echo $album['description'];?></span>
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
    $('#dell_album_window input[name=album]').value(id);
    $('#dell_album_window').fadeIn();
  }
  
  function delete_album_approved(id, name) {
     var album_id = $('#dell_album_window input[name=album]').value();
     
     $.ajax({
        type: "post",
        url: "<?php echo $this->url->link('album/album/delete', '', 'SSL');?>",
        data: 'album_id=' + album_id,
        dataType: "json",
        success: function(response) {
            if (!response.success) {
                alert("Проблемы на стороне сервера.");
            } else {
              $('#dell_album_window input[name=album]').value('');
              $('#deleteContent').html('');
              console.log('hello');
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