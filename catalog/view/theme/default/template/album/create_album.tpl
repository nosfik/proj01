<?php echo $header; ?>
<div id="content">
<?php echo $content_top; ?>
<div id="yellow_cont">
  <div class="crumbs">
    <div class="left"></div>
    <div class="dark">
      <a href="#">Личный кабинет</a>
    </div>
    <div class="darkEnd"></div>
    <div class="light">
      <a href="#">Выбираем новые фото</a>
    </div>
    <div class="lightEnd"></div>
    <div class="light2">Загружаем выбранные фото</div>
    <div class="light2End"></div>
  </div>
  <table border="0" cellspacing="0" cellpadding="5" id="order_step2_table">
    <tbody>
    	<?php foreach($images as $image) { ?>
      <tr>
        <td class="pic">
          <div class="picCont">
            <img src="<?php echo $this->url->link('album/upload/image', 'image='.$image['id'], 'SSL');?>">
          </div>
          <div class="frame"></div>
        </td>
        <td>
          <table border="0" cellspacing="0" cellpadding="0" class="text">
            <tbody>
              <tr>
                <td><?php echo $image['name'];?></td>
                <td width="20"> </td>
                <td><?php echo $image['size'];?> Kb</td>
              </tr>
            </tbody>
          </table>
        </td>
        <td class="del">
          <a onclick="deleteImage(<?php echo $image['id'];?>)">
            <img src="catalog/view/theme/default/image/blank.gif">
          </a>
        </td>
      </tr>
      <?php } ?>
    </tbody>
  </table>
  <div class="bigButton" onmouseover="$(this).addClass('hover');" onmouseout="$(this).removeClass('hover');">
    <a class="left" href="<?php echo $this -> url -> link('album/upload', '', 'SSL'); ?>">Добавить еще фото </a>
    <div class="right"></div>
  </div>
</div>
<div class="clear"></div>
<div id="order_step2_new_album_cont">
  Загружаем выбранные фото в новый альбом
        
  <div id="album">
    <input id="newAlbumName" type="text" value="Название альбома" onfocus="if (this.value=='Название альбома') this.value='';" onblur="if (this.value=='') this.value='Название альбома';" onkeypress="return pressed();">
  </div>
  
        или в уже существующий альбом
</div>
<div class="albumCont order_album" onmouseover="$(this).addClass('hover');" onmouseout="$(this).removeClass('hover');" onclick="$('.albumCont').removeClass('selected'); $(this).addClass('selected');">
  <div class="album"></div>
  <div class="picCont">
    <img src="catalog/view/theme/default/image/pic_for_test/Corbis-42-29243612.jpg">
  </div>
  <div class="text">
    <a>Наша семья</a>
    <span>Описание альбома созданное пользователем</span>
    Дата создания: 
    <b>17.12.2012</b>
    <br>
    
          Кол-во фотографий: 
    <b>6</b>
  </div>
</div>

<div style="margin-left:440px" class="bigButton" onmouseover="$(this).addClass('hover');" onmouseout="$(this).removeClass('hover');">
  <a class="left" onclick="uploadAlbum()">Начать загрузку</a>
  <div class="right"></div>
</div>

<script type="text/javascript">
  
  function deleteImage(id) {
    $.ajax({
        type: "post",
        url: "<?php echo $this->url->link('album/upload/delete', '', 'SSL');?>",
        data: 'id=' + id,
        dataType: "json",
        success: function(response) {
            if (!response.success) {
                alert("Проблемы на стороне сервера.");
            } else {
              window.location.reload();
            }
        },
        error: function(rs, e, a) {
          console.log(rs + "||" + e + "||" + a);
            alert(rs.responseText);
        }
    });
  }
  
  
  function uploadAlbum() {
    $.ajax({
        type: "post",
        url: "<?php echo $this->url->link('album/upload/createAlbum', '', 'SSL');?>",
        data: 'album_name=' + $('#newAlbumName').val() + '&album_id=0',
        dataType: "json",
        success: function(response) {
            if (!response.success) {
                alert("Проблемы на стороне сервера.");
            } else {
              console.log('hello');
              //window.location.reload();
            }
        },
        error: function(rs, e, a) {
          console.log(rs + "||" + e + "||" + a);
            alert(rs.responseText);
        }
    });
  }
  
</script>


<?php echo $content_bottom; ?></div>
<?php echo $footer; ?>