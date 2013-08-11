<? 
$root_path = $root_dir =  ''; 
require_once('inc/common.php');
ini('register','');
ini('logging','');
ini('r_successful','');
ini('act_user','');
ini('edt_contact','');
$errar = Array();
$path='users';
$sname='http://www.foto-book.com.ua/';

$root_path = $root_dir =  ''; 
require_once('inc/common.php');
ini('path','');
if ($path==='') {$path = $cfg['def_page'];}
ini('lng','');
if($lng==='') {
//  header("location: /rus/");
//  exit;
 $lng = 'rus';
 $ilng=1;
}elseif($lng<>'rus') { 
  header("location: /rus/");
  exit;
}else{
 $lng = 'rus';
 $ilng=1;
}
$act = preg_split('[/]',$path, -1, PREG_SPLIT_NO_EMPTY);

if($act[0]==''){ $act[0]=$cfg['def_page']; }

$act[0] = str_replace("\"","",$act[0]);
if (isset($act[1])) { $act[1] = (int) $act[1]; }else { $act[1] = 1; }

@include_once($root_path.'inc/class_users.php');
$usr = new Users;
$usr->init();


// loading all menu
$menu = $db->select('SELECT page_mname,page_type,page_d_file,page_login,page_id,page_version_id FROM '.MENU_TABLE.' WHERE page_is_visible=1 ORDER BY page_version_id,page_order_id');
$mg = array();
$m1 = array();
$m2 = array();
$m3 = array();
For($i=0;$i<count($menu);$i++) {
  if     ($menu[$i]['page_version_id']==1) { $mg[]=$menu[$i]; }
  elseif ($menu[$i]['page_version_id']==2) { $m1[]=$menu[$i]; }
  elseif ($menu[$i]['page_version_id']==3) { $m2[]=$menu[$i]; }
  elseif ($menu[$i]['page_version_id']==4) { $m3[]=$menu[$i]; }
}
require 'libs/Smarty.class.php';

$smarty = new Smarty;
$smarty->assign('mg',$mg);
$smarty->assign('m1',$m1);
$smarty->assign('m2',$m2);
$smarty->assign('m3',$m3);
$smarty->assign('cfg',$cfg);
$smarty->assign('turl',$_SERVER['REQUEST_URI']);

if(isset($_SESSION['log'])){
  $smarty->assign('sesslog',$_SESSION['log']);
  $smarty->assign('ulogin',$usr->UserLogin);
}else{ $smarty->assign('sesslog',''); }

function XMail( $from, $to, $subj, $text, $filename) {
  $un        = strtoupper(uniqid(time()));
  $head      = "From: $from\n";
  $head     .= "To: $to\n";
  $head     .= "Subject: $subj\n";
  $head     .= "X-Mailer: PHPMail Tool\n";
  $head     .= "Reply-To: $from\n";
  $head     .= "Mime-Version: 1.0\n";
  $head     .= "Content-Type:multipart/mixed;";
  $head     .= "boundary=\"----------".$un."\"\n\n";
  $zag       = "------------".$un."\nContent-Type:text/plain; charset=windows-1251\r\n";
  $zag      .= "Content-Transfer-Encoding: 8bit\n\n$text\n\n";
  For($i=0;$i<count($filename);$i++){
    $f         = fopen($filename[$i],"rb");
    $zag      .= "------------".$un."\n";
    $zag      .= "Content-Type: application/octet-stream;";
    $zag      .= "name=\"".basename($filename[$i])."\"\n";
    $zag      .= "Content-Transfer-Encoding:base64\n";
    $zag      .= "Content-Disposition:attachment;";
    $zag      .= "filename=\"".basename($filename[$i])."\"\n\n";
    $zag      .= chunk_split(base64_encode(fread($f,filesize($filename[$i]))))."\n";
  }
  return @mail("$to", "$subj", $zag, $head);
}

if ($register){
  ini('security_code','');   ini('login','');
  ini('pass1','');           ini('pass2','');
  ini('fname','');           ini('lname','');
  ini('email','');           ini('nphone','');
  ini('addres','');          ini('city','');
  ini('state','');           ini('zip','');
  ini('subscribed4news',''); ini('country','');
  ini('utype','');           ini('usite','');
  $utype = (int) $utype; if ($utype>7) $utype = 0;
  if ($subscribed4news=='on') { $dbn = '1'; $dv=' checked'; } Else { $dbn = '0'; $dv=''; }

  if($security_code) {
    if(isset($_SESSION['c_keystring']) && $_SESSION['c_keystring'] ==  $_POST['security_code']){
      //отправляем письмо по сохранении в базе
      $actCode = '';
      $CodeExists = 1;
      while ($CodeExists) {
        $actCode = genRndCode(16);
        $ex = $db->select('SELECT 1 FROM '.USRS_TABLE.' WHERE Activ_Code="'.mysql_Real_Escape_String($actCode).'"');
	$CodeExists = count($ex);
      }
      $ssu = $db->select('SELECT login FROM '.USRS_TABLE.' WHERE login="'.mysql_real_escape_string($login).'"');
      $sse = $db->select('SELECT login FROM '.USRS_TABLE.' WHERE e_mail="'.mysql_real_escape_string($email).'"');
      if (count($ssu)>0 || count($sse)>0) {
        if (count($ssu)>0) { $errar[] = 'Пользователь с таким логином уже существует.';
        }else{ $errar[] = 'Пользователь с таким E_mailом уже существует.'; }
      } else {
        $nid=$db->insert('INSERT INTO '.USRS_TABLE.' (login,cust_pass,e_mail,first_name,last_name,subs4news,phone,Addres,state,city,countryID,zip,Activ_Code,utype,usite) '.
        'VALUES ("'.mysql_real_escape_string($login).'","'.
        mysql_Real_escape_string(base64_encode($pass1)).'","'.
        mysql_real_escape_string($email).'","'.mysql_real_escape_string($fname).'","'.
        mysql_real_escape_string($lname).'","'.mysql_real_escape_string($dbn).'","'.
        mysql_real_escape_string($nphone).'","'.mysql_real_escape_string($addres).'","'.
        mysql_real_escape_string($state).'","'.mysql_real_escape_string($city).'","'.
        mysql_real_escape_string($country).'","'.mysql_real_escape_string($zip).'","'.
        mysql_real_escape_string($actCode).'","'.mysql_real_escape_string($utype).'","'.
        mysql_real_escape_string($usite).'")');

        if($nid){
          $strn = $db->select('SELECT country_name FROM '.CNT_TABLE.' WHERE countryID='.$country);
          if(count($strn)==1) { $sss = 'Страна : '.$strn[0][0]."\r\n"; } else { $sss=''; }

          $bm = 'Здравствуйте!'."\r\n"."\r\n".'Вы успешно зарегистрировались на сайте.'."\r\n".
          "\r\n".'Для активации Вашей учетной записи, пожалуйста, при входе в аккаунт введите ключ активации: '.$actCode."\r\n".
          'Или нажмите по следующей ссылке для автоматической активации Вашей учетной записи:'."\r\n".
          $sname.'rus/users/?act_user=1&act_code='.$actCode."\r\n".
          'Ваша регистрационная информация:'."\r\n".
          '  Логин  : '.$login."\r\n".'  Пароль : '.$pass1."\r\n".
          '  Имя : '.$fname."\r\n".'  Фамилия : '.$lname."\r\n".
          '  Email : '.$email."\r\n".'  Адрес : '."\r\n".$addres."\r\n".
          '  Город : '.$city."\r\n".'  Область : '.$state."\r\n".
          '  Почтовый индекс : '.$zip."\r\n".$sss.'С уважением';
          $files = array();
          if(@XMail($cfg['mail_site'],$email,'Подтверждение регистрации на сайте ',$bm,$files)) {
            header("location: ".$sname."rus/users/?r_successful=yes"); exit();
          } else { $errar[] = 'Произошла ошибка при создании пользователя.'."\n".'Попробуйте еще раз.'; }
        } else {   $errar[] = 'Произошла ошибка при создании пользователя.'."\n".'Попробуйте еще раз.'; }
      }
    } else { $errar[] = 'Вы ошиблись в секретном коде.'; }
  }

  $countr = $db->select('SELECT countryID,country_name,defc FROM '.CNT_TABLE.' ORDER BY 1');
  $cnt = '';
  if ($country){
    For ($i=0;$i<count($countr);$i++) {
      if ($countr[$i][0]==$country) { $cnt.="\n".'<option value="'.$countr[$i][0].'" selected>'.$countr[$i][1].'</option>';
      }else{ $cnt.="\n".'<option value="'.$countr[$i][0].'">'.$countr[$i][1].'</option>'; }
    }
  }else{
    For ($i=0;$i<count($countr);$i++) {
      if ($countr[$i][2]==1) { $cnt.="\n".'<option value="'.$countr[$i][0].'" selected>'.$countr[$i][1].'</option>';
      }else{ $cnt.="\n".'<option value="'.$countr[$i][0].'">'.$countr[$i][1].'</option>'; }
    }
  }
  $vtype = array('','молодожены','фотограф','дизайнер','дизайн-студия','фото-студия','фото-салон','дилер');
  $utp = ''; 
  For ($i=0;$i<count($vtype);$i++) {
    if ($i==$utype) { $utp.="\n".'<option value="'.$i.'" selected>'.$vtype[$i].'</option>';
    }else{ $utp.="\n".'<option value="'.$i.'">'.$vtype[$i].'</option>'; }
  }
  if(count($errar)) {
    $cont='<div align="center">'."\n".'<p class="m8" align="center"><font color="red">';
    For($j=0;$j<count($errar);$j++) $cont.=$errar[$j].'<br />';
    $cont.='</p></div>';    
  } else $cont='';
  $smarty->assign('login',DBaseString2Text($login));
  $smarty->assign('pass1',DBaseString2Text($pass1));
  $smarty->assign('pass2',DBaseString2Text($pass2));
  $smarty->assign('pass1',DBaseString2Text($pass1));
  $smarty->assign('fname',DBaseString2Text($fname));
  $smarty->assign('lname',DBaseString2Text($lname));
  $smarty->assign('nphone',DBaseString2Text($nphone));
  $smarty->assign('email',DBaseString2Text($email));
  $smarty->assign('addres',DBaseString2Text($addres));
  $smarty->assign('city',DBaseString2Text($city));
  $smarty->assign('state',DBaseString2Text($state));
  $smarty->assign('zip',DBaseString2Text($zip));
  $smarty->assign('usite',DBaseString2Text($usite));
  $smarty->assign('utp',$utp);
  $smarty->assign('zagol','Регистрационная форма');
  $smarty->assign('cnt',$cnt);

  $smarty->assign('content',$cont);
  $smarty->display('user.php'); exit;
}elseif($r_successful){
  $smarty->assign('zagol','Активация учетной записи');
  $smarty->assign('content','Регистрация прошла успешно!<br />
Сообщение с введенными данными отправлено Вам по электронной почте.<br />
Для активации учетной записи, пожалуйста, введите ключ активации, <br />отправленный Вам по электронной почте<br />'.
'<form method="get" action=""><input type="hidden" name="act_user" value="1"><input name="act_code" value="" type="text"><br />&nbsp;<br />
<input value="Активировать" type="submit">
</form>');
  $smarty->assign('turl',$_SERVER['REQUEST_URI']);

  $smarty->display('nind.php');
  exit;
}elseif($act_user){
 ini('act_code','');
 if($act_code) {
   $musr = $db->select('SELECT id, login, cust_pass FROM '.USRS_TABLE.' WHERE Activ_Code="'.mysql_real_escape_string($act_code).'" AND Activ_Code<>"" AND Activ_Code IS NOT NULL');
 } else {
   $musr = array();
 }
 if (count($musr)==1) {
   $db->query('UPDATE '.USRS_TABLE.' SET activ_code="" WHERE id="'.$musr[0]['id'].'"');
   if ($usr->regAuthenticate($musr[0]['login'],base64_decode($musr[0]['cust_pass']))){
     header("location: ".$sname."rus/"); exit();
   } else {
  $smarty->assign('zagolook','Активация учетной записи');
  $smarty->assign('cont','Неверный ключ активации<br />
Для активации учетной записи, пожалуйста, <br />введите ключ активации, отправленный Вам по электронной почте:'.
'<form method="get" action=""><input type="hidden" name="act_user" value="1"><input name="act_code" value="" type="text"><br />&nbsp;<br />
<input value="Активировать" type="submit">
</form>');
//  $smarty->assign('rnd_goods',rand_goods());

  $smarty->assign('turl',$_SERVER['REQUEST_URI']);

  $smarty->display('nind.php');
  exit;

   }
 } else {
  $smarty->assign('zagol','Активация учетной записи');
  $smarty->assign('content','Неверный ключ активации<br />
Для активации учетной записи, пожалуйста, <br />введите ключ активации, отправленный Вам по электронной почте:'.
'<form method="get" action=""><input type="hidden" name="act_user" value="1"><input name="act_code" value="" type="text"><br />&nbsp;<br />
<input value="Активировать" type="submit">
</form>');
  $smarty->assign('turl',$_SERVER['REQUEST_URI']);

  $smarty->display('nind.php');
  exit;
 }
}elseif($logging) {
  $cont ='';
  ini('forpassw','');
  if($forpassw) {
    $sps = $db->select('SELECT login, cust_pass, e_mail FROM '.USRS_TABLE.' WHERE (Login="'.mysql_real_escape_string($forpassw).
    '" OR E_mail="'.mysql_real_escape_string($forpassw).'") AND (Activ_Code="" OR Activ_Code IS NULL)');
    if(count($sps)==1){

      if($sps[0]['e_mail']) {
    $bm = 'Здравствуйте!'."\r\n"."\r\n".''."\r\n".
"\r\n".
'  Ваш логин  : '.$sps[0]['login']."\r\n"."\r\n".
'  Ваш пароль : '.base64_decode($sps[0]['cust_pass'])."\r\n"."\r\n".
'С уважением';

        $files = array();

        if(@XMail($cfg['mail_site'],$sps[0]['e_mail'],'Восстановление доступа к сайту ',$bm,$files)) {
          $cont.='<b>Ваш пароль был отправлен Вам по электронной почте</b><br />'; 
        }
      }else {$cont.='<font color="red">Пользователь не найден в базе данных ('.$forpassw.')!</font><br />'; }
    } else {$cont.='<font color="red">Пользователь не найден в базе данных ('.$forpassw.')!</font><br />'; }
  }else{ 

  $cont .= '

<SCRIPT LANGUAGE="JavaScript">
<!--
function gei(a){return document.getElementById(a);}
//-->
</SCRIPT>

<div id="right_column"><!--NEW-->
		<h2>Забыли пароль?</h2>
		<div style="margin: -10px 0pt 20px;">Пожалуйста, введите Ваш логин или адрес электронной почты:</div>
		<table cellpadding="20" cellspacing="1">
<form method="post" action="" id="reg" name="reg">
			<tbody><tr>
				<td><input style="width: 250px; height: 22px; float: left; margin: 0pt 20px 0pt 150px;" type="text" name="forpassw" value="'.$forpassw.'">
				<div class="" id="rez_button" onmouseover="$(this).addClass(\'hover\');" onmouseout="$(this).removeClass(\'hover\');" onclick="gei(\'reg\').submit();">
			<div id="left">Отправить</div>
			<div id="right"></div>
		</div></td>
			</tr>
		</tbody></table>
</form>
		<!--NEW END--> 
	</div>';
  }
/*
  $cont.='Забыли пароль?</u> Пожалуйста, введите Ваш логин или адрес электронной почты:'.
'<form method="post" action=""><input name="forpassw" value="'.$forpassw.'" type="text" maxlength="64"><br />&nbsp;<br />
<input value="Ok" type="submit">
</form>';
  $smarty->assign('zagol','Восстановление доступа');*/
  $smarty->assign('content',$cont);
  $smarty->assign('turl',$_SERVER['REQUEST_URI']);

  $smarty->display('nind.php');
  exit;
}elseif($edt_contact){
  if (!isset($_SESSION['log'])){ header('location: /rus/'.$cfg['def_page']); exit; }
  if($_SESSION['log']=='') Exit;
  ini('save_contact','');
  if($save_contact){
    ini('login','');   ini('pass1','');
    ini('pass2','');   ini('fname','');
    ini('lname','');   ini('nphone','');
    ini('addres','');  ini('mylo','');
    ini('city','');    ini('state','');
    ini('zip','');     ini('subscribed4news','');
    ini('country',''); ini('usite','');
    ini('utype','');   $utype = (int) $utype; if ($utype>7) $utype = 0;
    if ($subscribed4news=='on') { $dbn = '1'; $dv=' checked'; } Else { $dbn = '0'; $dv=''; }

    if($login<>$_SESSION['log']) {
      $ssu = $db->select('SELECT login FROM '.USRS_TABLE.' WHERE login="'.mysql_real_escape_string($login).'"');
      if (count($ssu)>0) { $errar[] = 'Пользователь с таким логином уже существует.'; }
    }
    $sid = $db->select('SELECT id FROM '.USRS_TABLE.' WHERE login="'.mysql_real_escape_string($_SESSION['log']).'"');
    if(count($sid)<>1) Exit;
    if (count($errar)==0) {
      if($db->query('UPDATE '.USRS_TABLE.' SET login="'.mysql_real_escape_string($login).
        '",cust_pass="'.mysql_Real_escape_string(base64_encode($pass1)).
        '",first_name="'.mysql_real_escape_string($fname).
        '",last_name="'.mysql_real_escape_string($lname).
        '",subs4news="'.$dbn.'",phone="'.mysql_real_escape_string($nphone).
        '",Addres="'.mysql_real_escape_string($addres).
        '",state="'.mysql_real_escape_string($state).
        '",city="'.mysql_real_escape_string($city).
        '",countryID="'.mysql_real_escape_string($country).
        '",zip="'.mysql_real_escape_string($zip).
        '",utype="'.mysql_real_escape_string($utype).
        '",usite="'.mysql_real_escape_string($usite).'" WHERE id="'.$sid[0][0].'"')) {
        $_SESSION['log'] = $login;
        $_SESSION['pass'] = base64_encode($pass1);
        $cont = 'Данные были сохранены.';
        $smarty->assign('content',$cont);
        $smarty->assign('turl',$_SERVER['REQUEST_URI']);
        $smarty->display('nind.php'); exit;
      } else { $errar[] = 'Ошибка сохранения контактных данных.';  }
    }
  } Else {
    $data = $db->select('SELECT * FROM '.USRS_TABLE.' WHERE login="'.$_SESSION['log'].'" AND (Activ_Code="" OR Activ_Code IS NULL)');
    if(count($data)<>1) Exit;
    if($data[0]['subs4news']==1) { $dv = ' checked'; } Else { $dv=''; }
    $country = $data[0]['countryId'];
    $login   = DBaseString2Text($data[0]['login']);
    $pass1   = DBaseString2Text(base64_decode($data[0]['cust_pass']));
    $fname   = DBaseString2Text($data[0]['first_name']);
    $lname   = DBaseString2Text($data[0]['last_name']);
    $nphone  = DBaseString2Text($data[0]['phone']);
    $mylo    = DBaseString2Text($data[0]['e_mail']);
    $addres  = DBaseString2Text($data[0]['addres']);
    $city    = DBaseString2Text($data[0]['city']);
    $state   = DBaseString2Text($data[0]['state']);
    $zip     = DBaseString2Text($data[0]['zip']);
    $utype   = DBaseString2Text($data[0]['utype']);
    $usite   = DBaseString2Text($data[0]['usite']);
  }
  $smarty->assign('zagol','Изменение контактной информации');
  $countr = $db->select('SELECT countryID,country_name,defc FROM '.CNT_TABLE.' ORDER BY 1');
  $cnt = '';
  For ($i=0;$i<count($countr);$i++) {
    if ($countr[$i][0]==$country) { $cnt.="\n".'<option value="'.$countr[$i][0].'" selected>'.$countr[$i][1].'</option>';
    }else{ $cnt.="\n".'<option value="'.$countr[$i][0].'">'.$countr[$i][1].'</option>'; }
  }
  $vtype = array('','молодожены','фотограф','дизайнер','дизайн-студия','фото-студия','фото-салон','дилер');
  $utp = ''; 
  For ($i=0;$i<count($vtype);$i++) {
    if ($i==$utype) { $utp.="\n".'<option value="'.$i.'" selected>'.$vtype[$i].'</option>';
    }else{ $utp.="\n".'<option value="'.$i.'">'.$vtype[$i].'</option>'; }
  }
  if(count($errar)) {
    $cont='<div align="center">'."\n".'<p class="m8" align="center"><font color="red">';
    For($j=0;$j<count($errar);$j++) $cont.=$errar[$j].'<br />';
    $cont.='</p></div>';    
  } else $cont='';

  $smarty->assign('mylo',$mylo);      $smarty->assign('login',$login);
  $smarty->assign('pass1',$pass1);    $smarty->assign('fname',$fname);
  $smarty->assign('lname',$lname);    $smarty->assign('nphone',$nphone);
  $smarty->assign('addres',$addres);  $smarty->assign('city',$city);
  $smarty->assign('state',$state);    $smarty->assign('zip',$zip);
  $smarty->assign('cnt',$cnt);        $smarty->assign('utp',$utp);
  $smarty->assign('usite',$usite);    

  $smarty->assign('content',$cont);
  $smarty->display('euser.php'); exit;
}else{
}

$smarty->assign('turl',$_SERVER['REQUEST_URI']);
$smarty->display('nind.php'); ?>