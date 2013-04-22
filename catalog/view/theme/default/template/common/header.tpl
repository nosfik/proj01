<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
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
<script>
	
 jQuery(document).ready(function($){
 	$("#headerMainMenu").hover(
  function () {
    $("#headerMainMenu").css('height', '200px');
  },
  function () {
    $('#headerMainMenu').css('height', '');
  }
);


$('.main-menu-item').hover(
  function () {
    $(this).find('.menu-hover').show();
  },
  function () {
   $(this).find('.menu-hover').hide();
  }
  );
  $('.sub-main-menu-item').hover(
  function () {
    $(this).find('img').show();
  },
  function () {
   $(this).find('img').hide();
  }
  );
 });
</script>

<script type="text/javascript" src="catalog/view/javascript/droplinemenu.js"></script>
<script type="text/javascript" src="catalog/view/javascript/scripts.js"></script>

<!--<script type="text/javascript" src="catalog/view/javascript/jquery/tabs.js"></script>
<script type="text/javascript" src="catalog/view/javascript/common.js"></script>-->
<?php foreach ($scripts as $script) { ?>
<script type="text/javascript" src="<?php echo $script; ?>"></script>
<?php } ?>
<script type="text/javascript" src="catalog/view/javascript/scripts.js"></script>
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
<style>
	#headerOuterMenu li > a {
	    padding: 0 <?php if($lang == 'en') {echo "34px";} else {echo "28px";}?>
	}

</style>

<?php

	$w1 = ($lang == 'en') ? 182 : 132;
	
	$w2 = ($lang == 'en') ? 144 : 174;
	$w3 = ($lang == 'en') ? 172 : 222;
	$w4 = ($lang == 'en') ? 160 : 154;
	$w5 = ($lang == 'en') ? 152 : 160;
	$w6 = ($lang == 'en') ? 143 : 141;
	$w7 = ($lang == 'en') ? 150 : 132;
	$w8 = ($lang == 'en') ? 178 : 199;
	
	$l1 = ($lang == 'en') ? -6 : 0;
	$l2 = ($lang == 'en') ? 138 : 95;
	$l3 = ($lang == 'en') ? 247 : 225;
	$l4 = ($lang == 'en') ? 386 : 404;
	$l5 = ($lang == 'en') ? 511 : 520;
	$l6 = ($lang == 'en') ? 630 : 642;
	$l7 = ($lang == 'en') ? 741 : 748;
	$l8 = ($lang == 'en') ? 858 : 840;

?>
<div id="bgimage_lazy"></div>

<div class="page-wrapper" style="z-index:2">

<div id="top" class="header-wrapper">
    <div class="header">
    	
    	<div class="logo"><a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" /></a></div>

       
        <div class="moto" >
                <?php echo $language; ?>
        </div>
        <div id="headerMainMenu" class="droplinebar">
            <ul id="headerOuterMenu">
                <li class="main-menu-item"><div class="menu-hover" style="left : <?=$l1?>px;"><img src="catalog/view/theme/default/image/headerMainMenuHover4_1.png" style="width: <?=$w1?>px;"/></div><a href="index.php?route=information/information&information_id=4"><?php echo $text_about_us;?></a>
                	
                	</li>
                <li class="main-menu-item">
                	<div class="menu-hover" style="left : <?=$l2?>px;"><img src="catalog/view/theme/default/image/headerMainMenuHover4_1.png" style="width: <?=$w2?>px;"/></div>
                	<a href="<?php echo $this->url->link('product/category', 'path=1');?>"><?php echo $text_sales;?></a>
                	<ul id="headerInnerMenu">
                		<?php foreach($sale_categories as $category) {?>
                			<li class="sub-main-menu-item"><a href="<?php echo $category['url'];?>"><?php echo $category['name'];?><img src="catalog/view/theme/default/image/menu-h.png"/></a></li>
                		<?php } ?>
                    </ul>
                </li>
                <li class="main-menu-item">
                	<div class="menu-hover" style="left : <?=$l3?>px;"><img src="catalog/view/theme/default/image/headerMainMenuHover4.png" style="width: <?=$w3?>px;"/></div>
                    <a href="<?php echo $this->url->link('product/category', 'path=2');?>"><?php echo $text_building;?></a>
                    <ul id="headerInnerMenu">
                        <?php foreach($build_categories as $category) {?>
                			<li class="sub-main-menu-item"><a href="<?php echo $category['url'];?>"><?php echo $category['name'];?><img src="catalog/view/theme/default/image/menu-h.png"/></a></li>
                		<?php } ?>
                    </ul>
                </li>
                <li class="main-menu-item">
                	<div class="menu-hover" style="left : <?=$l4?>px;"><img src="catalog/view/theme/default/image/headerMainMenuHover4_1.png" style="width: <?=$w4?>px;"/></div>
                	<a href="<?php echo $this->url->link('product/order', '');?>"><?php echo $text_request;?></a></li>
                <li class="main-menu-item"><div class="menu-hover" style="left : <?=$l5?>px;"><img src="catalog/view/theme/default/image/headerMainMenuHover4_1.png" style="width: <?=$w5?>px;"/></div><a href="index.php?route=information/news"><?php echo $text_news;?></a></li>
                <li class="main-menu-item"><div class="menu-hover" style="left : <?=$l6?>px;"><img src="catalog/view/theme/default/image/headerMainMenuHover4_1.png" style="width: <?=$w6?>px;"/></div><a href="index.php?route=product/photo"><?php echo $text_photo;?></a></li>
                <li class="main-menu-item"><div class="menu-hover" style="left : <?=$l7?>px;"><img src="catalog/view/theme/default/image/headerMainMenuHover4_1.png" style="width: <?=$w7?>px;"/></div><a href="index.php?route=information/video"><?php echo $text_video;?></a></li>
                <li class="main-menu-item"><div class="menu-hover" style="left : <?=$l8?>px;"><img src="catalog/view/theme/default/image/headerMainMenuHover4_1.png" style="width: <?=$w8?>px;"/></div><a href="index.php?route=information/information&information_id=11"><?php echo $text_contact;?></a></li>
            </ul>
        </div>
    </div>
</div>    



<div id="notification"></div>
