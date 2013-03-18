<?php echo $header; ?>
<div class="content-wrapper">
    <div class="content">
    <?php echo $content_top; ?>
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>

  <div class="order">
      <div class="header"></div>
      <div class="form">
          <form>
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
                                      <input type="text" name="otherPeople" id="otherPeople"/>
                                  </td>
                              </tr>
                              <tr>
                                  <td>
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
                                  <td colspan="3">
                                      <p><label for="additionalInfo">Дополнительная информация:</label></p>
                                      <textarea id="additionalInfo" name="additionalInfo"></textarea>
                                  </td>
                              </tr>
                              <tr>
                                  <td style="padding: 0;">
                                      <p><label for="capchaField">Введите код с картинки:</label><span class="orange">*</span></p>
                                      <input type="text" name="capchaField" id="capchaField" style="float: left;"/>
                                  </td>
                                  <td style="padding: 0;">
                                      <p class="capcha-text" style="margin-top: 42px; padding: 0;">VERYGREATTEXT</p>
                                  </td>
                                  <td style="padding: 0;">
                                      <button id="createOrder"></button>
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
  </script>

<?php echo $footer; ?>