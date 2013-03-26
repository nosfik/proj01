<?php echo $header; ?>
<div class="content-wrapper">
    <div class="content">
    <?php echo $content_top; ?>
  <div class="breadcrumb">
  	<div>
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
	</div>
  </div>
  
  

  <div class="order">
      <div class="header"></div>
      <div class="form">
          <form onSubmit="return validate()" method="post">
              <table class="main">
                  <tr>
                      <td class="input-column">
                          <table class="column">
                              <tr>
                                  <td>
                                      <p><label for="customerName">Ф.И.О или Ваше имя для сообщения:</label><span class="orange">*</span></p>
                                      <input type="text" name="customerName" id="customerName"/>
                                  </td>
                              </tr>
                              <tr>
                                  <td>
                                      <p><label for="telephoneNumber">Номера телефонов:</label><span class="orange">*</span></p>
                                      <input type="text" name="telephoneNumber" id="telephoneNumber"/>
                                  </td>
                              </tr>
                              <tr>
                                  <td>
                                      <p><label for="email">Эл. почта (E-Mail):</label><span class="orange">*</span></p>
                                      <input type="text" name="email" id="email"/>
                                  </td>
                              </tr>
                              <tr>
                                  <td>
                                      <p><label for="otherPeople">Другие лица от клиента и их контакты:</label></p>
                                      <input type="text" name="otherPeople" id="otherPeople"/>
                                  </td>
                              </tr>
                              <tr>
                                  <td>
                                      <p><label for="services">Интересующее направление наших услуг:</label></p>
                                      <select id="services" name="services" class="">
                                          <option value="0">Услуга 1</option>
                                          <option value="1">Услуга 2</option>
                                          <option value="2">Услуга 3</option>
                                          <option value="3">Услуга 4</option>
                                          <option value="4">Услуга 5</option>
                                          <option value="5">Услуга 6</option>
                                          <option value="6">Услуга 7</option>
                                      </select>
                                  </td>
                              </tr>
                              <tr>
                                  <td style="height: 20px;">
                                      <span class="orange">*</span><span>Поля обязательные для заполнения</span>
                                  </td>
                              </tr>
                          </table>
                      </td>
                      <td class="textarea-column">
                          <table class="column">
                              <tr>
                                  <td colspan="3">
                                      <p><label for="preferences">Как можно более подробно укажите Ваше пожелание:</label></p>
                                      <textarea id="preferences" name="preferences"></textarea>
                                  </td>
                              </tr>
                              <tr>
                                  <td colspan="3">
                                      <p><label for="questions">Как можно более подробно укажите интересующие Вас вопросы:</label></p>
                                      <textarea id="questions" name="questions"></textarea>
                                  </td>
                              </tr>
                              <tr>
                                  <td colspan="3">
                                      <p><label for="terms">Желаемый срок и даты:</label></p>
                                      <textarea id="terms" name="terms"></textarea>
                                  </td>
                              </tr>
                              <tr>
                                  <td colspan="3" style="height: 130px;">
                                      <p><label for="additionalInfo">Дополнительная информация:</label></p>
                                      <textarea id="additionalInfo" name="additionalInfo"></textarea>
                                  </td>
                              </tr>
                              <tr>
                                  <td style="padding: 0 0 0 30px;height: 75px;">
                                      <p><label for="capchaField">Введите код с картинки:</label><span class="orange">*</span></p>
                                      <input type="text" name="capchaField" id="capchaField" style="float: left;"/>
                                  </td>
                                  <td style="padding: 0;height: 75px;">
                                      <p class="capcha-text" style="margin-top: 42px; padding: 0;"><img style=" margin-left: -40px; margin-top: -11px; width: 120px;"src="index.php?route=product/order/captcha" alt="" />
    </p>
                                  </td>
                                  <td style="padding: 0;height: 75px;">
                                      <button id="createOrder" style="margin-right: -3px;"></button>
                                  </td>
                              </tr>
                          </table>
                      </td>
                  </tr>
              </table>
          </form>
      </div>
  </div>

  <?php echo $content_bottom; ?></div>

  </div>
  <script>
  function validate() {
  	var allPerfect = true;
  	var regexp = /\S+@\S+\.\S+/;
  	if($('#customerName').val() == '') {
  		$('#customerName').css('border', '1px solid red');
  		allPerfect = false;
  	} else {
  		$('#customerName').css('border', '');
  	}
  	
  	if($('#telephoneNumber').val() == '') {
  		$('#telephoneNumber').css('border', '1px solid red');
  		allPerfect = false;
  	} else {
  		$('#telephoneNumber').css('border', '');
  	}
  	
  	if(!regexp.test($('#email').val())) {
  		$('#email').css('border', '1px solid red');
  		allPerfect = false;
  	} else {
  		$('#email').css('border', '');
  	}
	if($('#capchaField').val() == '') {
  		$('#capchaField').css('border', '1px solid red');
  		allPerfect = false;
  	} else {
  		$('#capchaField').css('border', '');
  	}
	  	
  	return allPerfect;
  }
      $(function(){
          cuSel({
              changedEl: '#services',
              visRows: 6,
              scrollArrows: true
          });

          $('.order .form .column input')
                  .focus(function(){
                      $(this).addClass('input-focus');
                  })
                  .blur(function(){
                      $(this).removeClass('input-focus');
                  });

          $('.order .form .column textarea')
                  .focus(function(){
                      $(this).addClass('textarea-focus');
                  })
                  .blur(function(){
                      $(this).removeClass('textarea-focus');
                  });

          $('#capchaField')
                  .focus(function(){
                      $(this).addClass('capcha-focus');
                  })
                  .blur(function(){
                      $(this).removeClass('capcha-focus');
                  });
      });

  </script>

<?php echo $footer; ?>