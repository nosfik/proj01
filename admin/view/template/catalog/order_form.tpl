<?php echo $header; ?>
<div id="content">
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>

  <div class="box">
    <div class="heading">
      <h1><img src="view/image/shipping.png" alt="" /> Заявка</h1>
      <div class="buttons"><a onclick="$('#form').submit();" class="button"><?php echo $button_save; ?></a><a onclick="location = '<?php echo $cancel; ?>';" class="button"><?php echo $button_cancel; ?></a></div>
    </div>
    
   
    <div class="content">
      <div id="tabs" class="htabs"><a href="#tab-general"><?php echo $tab_general; ?></a></div>
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
        <div id="tab-general">
            <h2>Заявка</h2>
          <table class="form">
            <tr>
              <td>Имя</td>
              <td><?php echo $name; ?></td>
            </tr>
            
            <tr>
              <td>Телефон</td>
              <td><?php echo $phone; ?></td>
            </tr>
            
            <tr>
              <td>Почта</td>
              <td><?php echo $mail; ?></td>
            </tr>
            
            <tr>
              <td>Другие лица от клиента и их контакты</td>
              <td><?php echo $peoples; ?></td>
            </tr>
            
            <tr>
              <td>Услуга</td>
              <td><?php echo $service; ?></td>
            </tr>
            
            <tr>
              <td>Пожелания</td>
              <td><?php echo $wish; ?></td>
            </tr>
            <tr>
              <td>Вопросы</td>
              <td><?php echo $question; ?></td>
            </tr>
            <tr>
              <td>Желаемый срок и даты</td>
              <td><?php echo $term; ?></td>
            </tr>
            <tr>
              <td>Доп. инфо</td>
              <td><?php echo $other_info; ?></td>
            </tr>
            
       
          </table>
         
        </div>
      </form>
    </div>
  </div>
</div>
<?php echo $footer; ?>