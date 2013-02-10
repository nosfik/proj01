<?php echo $header; ?>
<div id="content">
<?php print_r($images); ?>
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
      <tr>
        <td class="pic">
          <div class="picCont">
            <img src="catalog/view/theme/default/image/pic_for_test/42-20065116.jpg">
          </div>
          <div class="frame"></div>
        </td>
        <td>
          <table border="0" cellspacing="0" cellpadding="0" class="text">
            <tbody>
              <tr>
                <td>Изображение_1.jpg</td>
                <td width="20"> </td>
                <td>3276 Kb</td>
              </tr>
            </tbody>
          </table>
        </td>
        <td class="del">
          <a href="#">
            <img src="catalog/view/theme/default/image/blank.gif">
          </a>
        </td>
      </tr>
      <tr>
        <td class="pic">
          <div class="picCont">
            <img src="catalog/view/theme/default/image/pic_for_test/42-24321621.jpg">
          </div>
          <div class="frame"></div>
        </td>
        <td>
          <table border="0" cellspacing="0" cellpadding="0" class="text">
            <tbody>
              <tr>
                <td>Изображение_1.jpg</td>
                <td width="20"> </td>
                <td>3276 Kb</td>
              </tr>
            </tbody>
          </table>
        </td>
        <td class="del">
          <a href="#">
            <img src="catalog/view/theme/default/image/blank.gif">
          </a>
        </td>
      </tr>
      <tr>
        <td class="pic">
          <div class="picCont">
            <img src="catalog/view/theme/default/image/pic_for_test/Corbis-42-29243612.jpg">
          </div>
          <div class="frame"></div>
        </td>
        <td>
          <table border="0" cellspacing="0" cellpadding="0" class="text">
            <tbody>
              <tr>
                <td>Изображение_1.jpg</td>
                <td width="20"> </td>
                <td>3276 Kb</td>
              </tr>
            </tbody>
          </table>
        </td>
        <td class="del">
          <a href="#">
            <img src="catalog/view/theme/default/image/blank.gif">
          </a>
        </td>
      </tr>
      <tr>
        <td class="pic">
          <div class="picCont">
            <img src="catalog/view/theme/default/image/pic_for_test/Corbis-42-29965284.jpg">
          </div>
          <div class="frame"></div>
        </td>
        <td>
          <table border="0" cellspacing="0" cellpadding="0" class="text">
            <tbody>
              <tr>
                <td>Изображение_1.jpg</td>
                <td width="20"> </td>
                <td>3276 Kb</td>
              </tr>
            </tbody>
          </table>
        </td>
        <td class="del">
          <a href="#">
            <img src="catalog/view/theme/default/image/blank.gif">
          </a>
        </td>
      </tr>
      <tr>
        <td class="pic">
          <div class="picCont">
            <img src="catalog/view/theme/default/image/pic_for_test/Corbis-42-30541751.jpg">
          </div>
          <div class="frame"></div>
        </td>
        <td>
          <table border="0" cellspacing="0" cellpadding="0" class="text">
            <tbody>
              <tr>
                <td>Изображение_1.jpg</td>
                <td width="20"> </td>
                <td>3276 Kb</td>
              </tr>
            </tbody>
          </table>
        </td>
        <td class="del">
          <a href="#">
            <img src="catalog/view/theme/default/image/blank.gif">
          </a>
        </td>
      </tr>
      <tr>
        <td class="pic">
          <div class="picCont">
            <img src="catalog/view/theme/default/image/pic_for_test/pic1.jpg">
          </div>
          <div class="frame"></div>
        </td>
        <td>
          <table border="0" cellspacing="0" cellpadding="0" class="text">
            <tbody>
              <tr>
                <td>Изображение_1.jpg</td>
                <td width="20"> </td>
                <td>3276 Kb</td>
              </tr>
            </tbody>
          </table>
        </td>
        <td class="del">
          <a href="#">
            <img src="catalog/view/theme/default/image/blank.gif">
          </a>
        </td>
      </tr>
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
    <input type="text" value="Название альбома" onfocus="if (this.value=='Название альбома') this.value='';" onblur="if (this.value=='') this.value='Название альбома';" onkeypress="return pressed();">
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






<?php echo $content_bottom; ?></div>
<?php echo $footer; ?>