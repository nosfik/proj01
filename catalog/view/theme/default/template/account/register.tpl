<?php echo $header; ?>
<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?></div>
<?php } ?>
<div id="content">
  <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
  <div id="yellow_cont">
    <div class="crumbs">
      <div class="left"></div>
      <div class="dark">Регистрация</div>
      <div class="darkEnd"></div>
    </div>

    <div class="reg_collumn" style="margin-left:150px">
      <div style="height:220px">
        <h2>Вход</h2>
        <div class="reg_field">
          <p class="reg_p"><label for="reg_email">E-mail<span>*</span></label></p>
          <input class="input" type="text" id="reg_email" name="email" value="<?php echo $email; ?>"/>
          <?php if ($error_email) { ?>
            <span class="error"><?php echo $error_email; ?></span>
          <?php } ?>
        </div>
        <div class="reg_field">
          <p class="reg_p"><label for="reg_pass">Пароль<span>*</span></label></p>
          <input class="input" type="password" id="reg_pass" name="password" value="<?php echo $password; ?>"/>
          <?php if ($error_password) { ?>
            <span class="error"><?php echo $error_password; ?></span>
          <?php } ?>
        </div>
        <div class="reg_field">
          <p class="reg_p"><label for="reg_pass_rev">Подтвердите пароль<span>*</span></label></p>
          <input class="input" type="password" id="reg_pass_rev" name="confirm" value="<?php echo $confirm; ?>"/>
           <?php if ($error_confirm) { ?>
            <span class="error"><?php echo $error_confirm; ?></span>
            <?php } ?>
        </div>
      </div>
      <h2>Общая информация</h2>
      <div class="reg_field">
        <p class="reg_p"><label for="reg_name">Имя<span>*</span></label></p>
        <input class="input" type="text" id="reg_name" name="firstname" value="<?php echo $firstname;?>"/>
         <?php if ($error_firstname) { ?>
            <span class="error"><?php echo $error_firstname; ?></span>
         <?php } ?>
      </div>
      <div class="reg_field">
        <p class="reg_p"><label for="reg_surname">Фамилия<span>*</span></label></p>
        <input class="input" type="text" id="reg_surname" name="lastname" value="<?php echo $lastname;?>"/>
        <?php if ($error_lastname) { ?>
            <span class="error"><?php echo $error_lastname; ?></span>
        <?php } ?>
      </div>
      <div class="reg_field">
        <p class="reg_p"><label for="reg_phone">Телефон<span>*</span></label></p>
        <input class="input" type="text" id="reg_phone" name="telephone" value="<?php echo $telephone;?>"/>
        <?php if ($error_telephone) { ?>
          <span class="error"><?php echo $error_telephone; ?></span>
        <?php } ?>
      </div>
      <div class="reg_field">
        <p class="reg_p"><label for="reg_skype">Skype</label></p>
        <input class="input" type="text" id="reg_skype" name="skype" value="<?php echo $skype;?>"/>
      </div>
      <div class="reg_field" style="height:20px">
        <input type="checkbox" id="news" name="newsletter" value="1" <?php if ($newsletter) { ?> checked="checked"<?php } ?>/> <label for="news">Получать новости</label>
      </div>
      <div class="reg_field">
        <input type="checkbox" id="email_send" name="send_email" value="1" <?php if ($send_email) { ?> checked="checked"<?php } ?>/> <label for="email_send">Подключить e-mail оповещение</label>
      </div>
    </div>
      <div class="reg_collumn">
        <div style="height:220px">
          <h2>Адрес</h2>
          <div class="reg_field">
            <p class="reg_p"><label for="reg_city">Город<span>*</span></label></p>
            <input class="input" type="text" id="reg_city" name="city" value="<?php echo $city;?>"/>
            <?php if ($error_city) { ?>
            <span class="error"><?php echo $error_city; ?></span>
            <?php } ?>
          </div>
          <div class="reg_field">
            <p class="reg_p"><label for="reg_region">Область</label></p>
            <select class="input" id="reg_region" name="zone_id">
            </select>
            <?php if ($error_zone) { ?>
            <span class="error"><?php echo $error_zone; ?></span>
            <?php } ?>
          </div>
          <div class="reg_field">
            <p class="reg_p"><label for="reg_country">Страна<span>*</span></label></p>
            <select class="input" name="country_id" id="reg_country">
              <option value=""><?php echo $text_select; ?></option>
              <?php foreach ($countries as $country) { ?>
              <?php if ($country['country_id'] == $country_id) { ?>
              <option value="<?php echo $country['country_id']; ?>" selected="selected"><?php echo $country['name']; ?></option>
              <?php } else { ?>
              <option value="<?php echo $country['country_id']; ?>"><?php echo $country['name']; ?></option>
              <?php } ?>
              <?php } ?>
            </select>
            <?php if ($error_country) { ?>
            <span class="error"><?php echo $error_country; ?></span>
            <?php } ?>
          </div>
        </div>
        <h2>Доставка</h2>
         <div class="reg_field">
            <p class="reg_p"><label for="reg_transporter">Перевозчик и подходящий склад для доставки</label></p>
            <input class="input" type="text" id="reg_transporter" name="transporter" value="<?php echo $transporter;?>"/>
          </div>
          <div class="reg_field" style="height: 150px">
            <p class="reg_p"><label for="reg_note">Примечание</label></p>
            <textarea style="height: 110px" id="reg_note" name="note" ><?php echo $note;?></textarea>
          </div>
          <div class="reg_field">
            <div class="captcha">Код безопасности<br />
            	
              <div id="captcha-image"><img src="index.php?route=account/register/captcha" alt="captcha" /></div>
              <a onclick="$('#captcha-image img').attr('src', 'index.php?route=account/register/captcha' +'&_'+ new Date())">обновить код</a>
            </div>
            <div class="captcha">Введите код<br /><input type="text" name="captcha" /><br/>
              <?php if ($error_captcha) { ?>
                <span class="error"><?php echo $error_captcha; ?></span>
                <?php } ?>
            </div>
          </div>
       </div>
     </div>
     

      <div id="green_cont">
          <div style="margin-left:340px" class="bigButton" onMouseOver="$(this).addClass('hover');" onMouseOut="$(this).removeClass('hover');"><a class="left" onclick="$('#reg_submit_button').click()">Отправить заявку</a>
              <div class="right"></div>
          </div>
      </div>
      <input type="submit" style="display: none" id="reg_submit_button"/>
</form>
    
    
  
  <?php echo $content_bottom; ?></div>
<script type="text/javascript"><!--
$('input[name=\'customer_group_id\']:checked').live('change', function() {
	var customer_group = [];
	
<?php foreach ($customer_groups as $customer_group) { ?>
	customer_group[<?php echo $customer_group['customer_group_id']; ?>] = [];
	customer_group[<?php echo $customer_group['customer_group_id']; ?>]['company_id_display'] = '<?php echo $customer_group['company_id_display']; ?>';
	customer_group[<?php echo $customer_group['customer_group_id']; ?>]['company_id_required'] = '<?php echo $customer_group['company_id_required']; ?>';
	customer_group[<?php echo $customer_group['customer_group_id']; ?>]['tax_id_display'] = '<?php echo $customer_group['tax_id_display']; ?>';
	customer_group[<?php echo $customer_group['customer_group_id']; ?>]['tax_id_required'] = '<?php echo $customer_group['tax_id_required']; ?>';
<?php } ?>

	if (customer_group[this.value]) {
		if (customer_group[this.value]['company_id_display'] == '1') {
			$('#company-id-display').show();
		} else {
			$('#company-id-display').hide();
		}
		
		if (customer_group[this.value]['company_id_required'] == '1') {
			$('#company-id-required').show();
		} else {
			$('#company-id-required').hide();
		}
		
		if (customer_group[this.value]['tax_id_display'] == '1') {
			$('#tax-id-display').show();
		} else {
			$('#tax-id-display').hide();
		}
		
		if (customer_group[this.value]['tax_id_required'] == '1') {
			$('#tax-id-required').show();
		} else {
			$('#tax-id-required').hide();
		}	
	}
});

$('input[name=\'customer_group_id\']:checked').trigger('change');
//--></script>
<script type="text/javascript"><!--
$('select[name=\'country_id\']').bind('change', function() {
	$.ajax({
		url: 'index.php?route=account/register/country&country_id=' + this.value,
		dataType: 'json',
		beforeSend: function() {
			$('select[name=\'country_id\']').after('<span class="wait">&nbsp;<img src="catalog/view/theme/default/image/loading.gif" alt="" /></span>');
		},
		complete: function() {
			$('.wait').remove();
		},			
		success: function(json) {
			if (json['postcode_required'] == '1') {
				$('#postcode-required').show();
			} else {
				$('#postcode-required').hide();
			}
			
			html = '<option value=""><?php echo $text_select; ?></option>';
			
			if (json['zone'] != '') {
				for (i = 0; i < json['zone'].length; i++) {
        			html += '<option value="' + json['zone'][i]['zone_id'] + '"';
	    			
					if (json['zone'][i]['zone_id'] == '<?php echo $zone_id; ?>') {
	      				html += ' selected="selected"';
	    			}
	
	    			html += '>' + json['zone'][i]['name'] + '</option>';
				}
			} else {
				html += '<option value="0" selected="selected"><?php echo $text_none; ?></option>';
			}
			
			$('select[name=\'zone_id\']').html(html);
		},
		error: function(xhr, ajaxOptions, thrownError) {
			alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});
});

$('select[name=\'country_id\']').trigger('change');
//--></script>
<script type="text/javascript"><!--
//--></script>
<?php echo $footer; ?>