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
    <div class="light">Выбираем новые фото</div>
    <div class="lightEnd"></div>
  </div>
  <input type="file" name="file_upload" id="file_upload" style="display:none"/>

</div>




<div id="white_cont">
  <div id="top_corr"></div>
  <div style="font-size:12px; color:#555; line-height:17px">
    Нажмите, пожалуйста, кнопку выше, и выберите все необходимые файлы на вашем компьютере. Выделяейте файлы при помощи мыши, или удерживая клавишу SHIFT. 
    <br>
    <br>
    
          Если ваши фото расположенны в разных папках, дождитесь загрузки предыдущих файлов, и нажмите кнопку "Добавить". Фотографии будут загружены в текущий альбом.
  </div>
</div>

<?php echo $content_bottom; ?></div>
<script type="text/javascript">
$(function() {
  $('#file_upload').uploadify({
    'swf'      : '/system/library/uploadify.swf',
    'uploader' : 'index.php?route=album/upload/add',
    'buttonText' : 'Выбрать фотографии для загрузки',
    'width'    : 257,
    'height'   : 45,
    'onQueueComplete' : function(file) {
            window.location = '<?php echo $this -> url -> link('album/upload/start', '', 'SSL'); ?>';
     },
    'formData' : {   'token' : '<?php echo $token;?>' }
  });
}); 
</script>
<?php echo $footer; ?>