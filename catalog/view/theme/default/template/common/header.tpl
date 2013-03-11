<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<head>
<meta charset="UTF-8" />
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content="<?php echo $keywords; ?>" />
<?php } ?>
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/stylesheet.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/droplinebar.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/style.css" />
<?php foreach ($styles as $style) { ?>
<link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script type="text/javascript" src="catalog/view/javascript/jquery/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" />
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/external/jquery.cookie.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/colorbox/jquery.colorbox.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/colorbox/colorbox.css" media="screen" />


<script type="text/javascript" src="catalog/view/javascript/droplinemenu.js"></script>
<script type="text/javascript" src="catalog/view/javascript/scripts.js"></script>

<!--<script type="text/javascript" src="catalog/view/javascript/jquery/tabs.js"></script>
<script type="text/javascript" src="catalog/view/javascript/common.js"></script>-->
<?php foreach ($scripts as $script) { ?>
<script type="text/javascript" src="<?php echo $script; ?>"></script>
<?php } ?>
<!--[if IE 7]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/ie7.css" />
<![endif]-->
<!--[if lt IE 7]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/ie6.css" />
<script type="text/javascript" src="catalog/view/javascript/DD_belatedPNG_0.0.8a-min.js"></script>
<script type="text/javascript">
DD_belatedPNG.fix('#logo img');
</script>
<![endif]-->
<?php echo $google_analytics; ?>
</head>
<body>


<div class="page-wrapper">
<div id="top" class="header-wrapper">
    <div class="header">
        <div class="logo">
            <img src="catalog/view/theme/default/image/logo.png"/>
        </div>
        <div class="moto">
            <p>слоган компании</p>
            <ul class="menu-horizontal languages">
                <li id="langRu" class="active">ru</li>
                <li id="langEn">en</li>
            </ul>
        </div>
        <div id="headerMainMenu" class="droplinebar">
            <ul id="headerOuterMenu">
                <li class="main-menu-item"><a href="#">о нас</a></li>
                <li class="main-menu-item"><a href="#">продажа</a></li>
                <li class="main-menu-item">
                    <a href="#">строительство</a>
                    <ul id="headerInnerMenu">
                        <li class="sub-main-menu-item"><a href="#">продажа - апартаменты</a></li>
                        <li class="sub-main-menu-item"><a href="#">виллы</a></li>
                        <li class="sub-main-menu-item"><a href="#">Таунхаузы</a></li>
                        <li class="sub-main-menu-item"><a href="#">Земельные участки</a></li>
                        <li class="sub-main-menu-item"><a href="#">Комерческие предложения</a></li>
                        <li class="sub-main-menu-item"><a href="#">Строительство - Виллы</a></li>
                        <li class="sub-main-menu-item"><a href="#">Земельные участки</a></li>
                    </ul>
                </li>
                <li class="main-menu-item"><a href="#">заявки</a></li>
                <li class="main-menu-item"><a href="#">новости</a></li>
                <li class="main-menu-item"><a href="#">фото</a></li>
                <li class="main-menu-item"><a href="#">видео</a></li>
                <li class="main-menu-item"><a href="#">контакты</a></li>
            </ul>
        </div>
    </div>
</div>    


    
<!--<div id="header">
  <?php if ($logo) { ?>
  <div id="logo"><a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" /></a></div>
  <?php } ?>
  <?php echo $language; ?>


</div> -->

<div id="notification"></div>
