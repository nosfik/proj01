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
 });
</script>

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
    	
    	<div class="logo"><a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" /></a></div>

       
        <div class="moto">
            <p>слоган компании</p>
            <?php echo $language; ?>
        </div>
        <div id="headerMainMenu" class="droplinebar">
            <ul id="headerOuterMenu">
                <li class="main-menu-item"><div class="menu-hover"></div><a href="#"><?php echo $text_about_us;?></a>
                	
                	</li>
                <li class="main-menu-item">
                	<div class="menu-hover" style="left : 123px;"></div>
                	<a href="<?php echo $this->url->link('product/category', 'path=1');?>"><?php echo $text_sales;?></a>
                	<ul id="headerInnerMenu">
                		<?php foreach($sale_categories as $category) {?>
                			<li class="sub-main-menu-item"><a href="<?php echo $category['url'];?>"><?php echo $category['name'];?></a></li>
                		<?php } ?>
                    </ul>
                </li>
                <li class="main-menu-item">
                	<div class="menu-hover-1" style="left : 247px;"></div>
                    <a href="<?php echo $this->url->link('product/category', 'path=2');?>"><?php echo $text_building;?></a>
                    <ul id="headerInnerMenu">
                        <?php foreach($build_categories as $category) {?>
                			<li class="sub-main-menu-item"><a href="<?php echo $category['url'];?>"><?php echo $category['name'];?></a></li>
                		<?php } ?>
                    </ul>
                </li>
                <li class="main-menu-item">
                	<div class="menu-hover" style="left : 382px;"></div>
                	<a href="<?php echo $this->url->link('product/category', 'path=2');?>"><?php echo $text_request;?></a></li>
                <li class="main-menu-item"><div class="menu-hover" style="left : 506px;"></div><a href="#"><?php echo $text_news;?></a></li>
                <li class="main-menu-item"><div class="menu-hover" style="left : 629px;"></div><a href="#"><?php echo $text_photo;?></a></li>
                <li class="main-menu-item"><div class="menu-hover" style="left : 753px;"></div><a href="#"><?php echo $text_video;?></a></li>
                <li class="main-menu-item"><div class="menu-hover" style="left : 876px;"></div><a href="#"><?php echo $text_contact;?></a></li>
            </ul>
        </div>
    </div>
</div>    


    
<!--<div id="header">
  <?php if ($logo) { ?>
  <div id="logo"><a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" /></a></div>
  <?php } ?>
  


</div> -->

<div id="notification"></div>
