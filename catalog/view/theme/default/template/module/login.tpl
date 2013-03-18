<?php if (!$this->customer->isLogged()) { ?>
              
<div class="box" id="login-module">
  <div class="title">Личный кабинет</div>
  <div>
	
	<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="module_login"> 
	<div class="inCont">
        <input  class="log" type="text"  value="Почта" onblur="if(this.value=='') this.value='Почта';" onfocus="if(this.value=='Почта') this.value='';" name="email"/>
    </div>
    <div class="inCont">
        <input class="reg" type="password" value="********" onblur="if(this.value=='') this.value='********';" onfocus="if(this.value=='********') this.value='';" name="password"/>
    </div>
    
    <div id="reg_cont">
        <div class="smallButton" onMouseOver="$(this).addClass('hover');" onMouseOut="$(this).removeClass('hover');">
            <a class="left" onclick="$('#module_login').submit();"><?php echo $button_login; ?></a>
            <div class="right"></div>
        </div>
        <a class="forgotPass" href="<?php echo $this -> url -> link('account/forgotten', '', 'SSL'); ?>">забыли пароль?</a>
    </div>
    <div class="clear"></div>
   

    </form>
  </div>
  <div class="sep"></div>
  
  <div id="registration-btn-wrapper" style="margin: 0px auto; width: 167px; height: 56px; padding-top: 5px;">
  <div class="bigButton registration" onMouseOver="$(this).addClass('hover');" onMouseOut="$(this).removeClass('hover');">
        <a class="left" href="<?php echo $this -> url -> link('account/register', '', 'SSL'); ?>">Регистрация</a>
        <div class="right"></div>
    </div>
    </div>
    <div class="clear"></div>
    <div id="reg_text">Пройдя регистрацию вы сможете создавать альбомы и загружать фотографии</div>
 </div>
 
 
    
<?php } else {?>
  
  <div class="box" id="login-module">
    <div class="title">Личный кабинет</div>
    <div class="log_cont">
      <div>Вы вошли как <a href="<?php echo $this -> url -> link('account/account', '', 'SSL'); ?>"><?php echo $this->customer->getFirstname();?></a></div>
       <ul>
          <li><a href="<?php echo $this -> url -> link('account/account', '', 'SSL'); ?>">Мои настройки</a></li>
          <li><a href="<?php echo $this -> url -> link('account/address', '', 'SSL'); ?>">Адрес для доставки</a></li>
          <li><a href="<?php echo $this -> url -> link('account/order', '', 'SSL'); ?>">История заказов</a></li>
          <li><a href="<?php echo $this -> url -> link('product/special', '', 'SSL'); ?>">Мои скидки</a></li>
          <li><a href="<?php echo $this -> url -> link('account/logout', '', 'SSL'); ?>">Выйти</a></li>
        </ul>
    </div>
    <div class="bigButton upl" onMouseOver="$(this).addClass('hover');" onMouseOut="$(this).removeClass('hover');"><a class="left" href="<?php echo $this -> url -> link('album/upload', '', 'SSL'); ?>">Загрузить фото</a>
          <div class="right"></div>
        </div>
        <div class="bigButton upl" onMouseOver="$(this).addClass('hover');" onMouseOut="$(this).removeClass('hover');"><a class="left" href="<?php echo $this -> url -> link('album/album', '', 'SSL'); ?>">Мои альбомы</a>
          <div class="right"></div>
        </div>
        <div class="clear"></div>
  
  </div>
<?php } ?>
