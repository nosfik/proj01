<?php if ($logged) { ?>

<div id="album_online">

<div class="title">Печатник онлайн</div>
<div class="log_cont">
  <span>Ваш заказ будет готов</span>
  <br>
          дата: <?php if(isset($order_end_time['album_end_date'])) {echo date('d.m.Y', strtotime($order_end_time['album_end_date']));} else {echo '-';}  ?>
  <br>
          время: <?php if(isset($order_end_time['album_end_time'])) {echo date('H:i', strtotime($order_end_time['album_end_time']));} else {echo '-';}  ?>
  <br>
  <br>
  <span>Ближайший интервал</span>
  <br>
          доставки
  <br>
          дата: <?php echo date('d.m.Y', strtotime($shipping_interval['date'])) ?>
  <br>
          время: <?php echo date('H:i', strtotime($shipping_interval['time_start']))?>-<?php echo date('H:i', strtotime($shipping_interval['time_end']))?>
  <br>
</div>

</div>
<?php } ?>