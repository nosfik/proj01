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



<div id="order_step2_new_album_cont" style="padding: 25px 15px 0;" class="albumCont order_album" onmouseover="$(this).addClass('hover');" onmouseout="$(this).removeClass('hover');" onclick="$('.albumCont').removeClass('selected'); $(this).addClass('selected');">
 <input type="hidden" name="album" value="0"/>
  Загружаем выбранные фото в новый альбом
  <div id="album" >
    <input id="newAlbumName" name="albumName" type="text" value="Название альбома" onfocus="if (this.value=='Название альбома') this.value='';" onblur="if (this.value=='') this.value='Название альбома';">
  </div>
  <div class="text">
или в уже существующий альбом
  </div>
</div>


<table>
<tr>
<?php for ($i = 0; $i < sizeof($albums); $i++) { 
    $album =  $albums[$i];
    if($i >= 4  && $i % 4 == 0) { ?>
       </tr><tr>  
     <?php } ?>
     <td>
<div class="albumCont order_album" onmouseover="$(this).addClass('hover');" onmouseout="$(this).removeClass('hover');" onclick="$('.albumCont').removeClass('selected'); $(this).addClass('selected');">
   <input type="hidden" name="album" value="<?php echo $album['id'];?>"/>
  <div class="album"></div>
  <div class="picCont">
    <img src="albums/album_cus_<?php echo $customer_id;?>/cover/<?php echo $album['photo'];?>">
  </div>
  <div class="text">
    <a><?php echo $album['name'];?></a>
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
    var album_id = $('.selected input[name="album"]').val();
    var album_name = '';
    if(album_id == 0){
      album_name = $('#order_step2_new_album_cont input[name="albumName"]').val();
    }
     
    $.ajax({
        type: "post",
        url: "<?php echo $this->url->link('album/upload/createAlbum', '', 'SSL');?>",
        data: 'album_name=' + album_name + '&album_id=' + album_id,
        dataType: "json",
        success: function(response) {
            if (!response.success) {
                alert("Проблемы на стороне сервера.");
            } else {
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


<?php echo $content_bottom; ?></div>
<?php echo $footer; ?>