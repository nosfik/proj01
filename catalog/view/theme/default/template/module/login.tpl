<?php if (!$this->customer->isLogged()) { ?>
              
<div class="box" id="login-module">
  <div class="title">Личный кабинет</div>
  <div>
	
	<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="module_login"> 
	<div class="inCont">
        <input  class="log" type="text" name="email"/>
    </div>
    <div class="inCont">
        <input class="reg" type="password" name="password"/>
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
  <div class="bigButton registration" onMouseOver="$(this).addClass('hover');" onMouseOut="$(this).removeClass('hover');">
        <a class="left" href="<?php echo $this -> url -> link('account/register', '', 'SSL'); ?>">Регистрация</a>
        <div class="right"></div>
    </div>
    <div class="clear"></div>
    <div id="reg_text">Пройдя регистрацию вы сможете создавать альбомы и загружать фотографии</div>
 </div>
 
 
    
<?php } ?>
