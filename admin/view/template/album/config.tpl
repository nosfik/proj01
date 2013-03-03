<?php echo $header; ?>
<div id="content">
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>

  <div class="box">
    <div class="heading">
      <h1><img src="view/image/shipping.png" alt="" /> <?php echo $heading_title; ?></h1>
      <div class="buttons"><a onclick="$('#form').submit();" class="button">Сохранить</a><a onclick="location = '<?php echo $cancel; ?>';" class="button">Отмена</a></div>
    </div>
    <div class="content">
      <span style="color:red"><?php if($err) { echo "Ошибка в заполнeнии данных";}?></span>
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
        <div id="tab-general">
          <table class="form">
            <tr>
              <td><span class="required">*</span> Интервал доставки</td>
              <td>
                <table>
                  <tr><td>Дата</td><td><input type="text" name="date" value="<?php echo $shipping_interval['date']; ?>" maxlength="255" size="20" /></td></tr>
                  <tr><td>Время начала</td><td><input type="text" name="start_time" value="<?php echo $shipping_interval['time_start']; ?>" maxlength="255" size="10" /></td></tr>
                  <tr><td>Время конца</td><td><input type="text" name="end_time" value="<?php echo $shipping_interval['time_end']; ?>" maxlength="255" size="10" /></td></tr>
                  
                </table>
                
                </td>
            </tr>
            <tr>
              <td><span class="required">*</span> Время заказа</td>
              <td><input type="text" name="time_order" value="<?php echo $time_order; ?>" maxlength="10" size="6" /> мин</td>
            </tr>
          </table>
        </div>
      </form>
    </div>
  </div>
</div>


<?php echo $footer; ?>