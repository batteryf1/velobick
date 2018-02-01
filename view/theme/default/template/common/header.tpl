<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title><?php echo $title;  ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<meta property="og:title" content="<?php echo $title; ?>" />
<meta property="og:type" content="website" />
<meta property="og:url" content="<?php echo $og_url; ?>" />
<?php if ($og_image) { ?>
<meta property="og:image" content="<?php echo $og_image; ?>" />
<?php } else { ?>
<meta property="og:image" content="<?php echo $logo; ?>" />
<?php } ?>
<meta property="og:site_name" content="<?php echo $name; ?>" />
<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css" />
<link href="catalog/view/theme/default/stylesheet/stylesheet.css" rel="stylesheet">



  <link rel="stylesheet" href="catalog/view/theme/default/stylesheet/bootstrap.css">
  <link rel="stylesheet" href="catalog/view/theme/default/stylesheet/normal.css">
  <link rel="stylesheet" href="catalog/view/theme/default/stylesheet/general.css">
  <link rel="stylesheet" href="catalog/view/theme/default/stylesheet/styles.css?v=5">
  <link rel="stylesheet" href="catalog/view/theme/default/stylesheet/common.css">




<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script src="catalog/view/javascript/common.js" type="text/javascript"></script>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<?php foreach ($analytics as $analytic) { ?>
<?php echo $analytic; ?>
<?php } ?>
</head>
<body class="<?php echo $class; ?>">
<header>
  <!-- header top -->
  <div class="header-top hidden-sm hidden-xs">
    <div class="container">
      <div class="row">
        <div class="col-md-6">
          <?php echo $language; ?>
          <nav class="header-nav header-devider">
            <menu class="header-nav_items">
              <li class="header-nav_item">
                <a href="#" class="header-nav_link">О магазине</a></li>
              <li class="header-nav_item">
                <a href="#" class="header-nav_link">Доставка и оплата</a></li>
              <li class="header-nav_item">
                <a href="#" class="header-nav_link">Новости</a></li>
              <li class="header-nav_item">
                <a href="#" class="header-nav_link">Контакты</a></li>
            </menu>
          </nav>
        </div>
        <div class="col-md-6">
          <div class="header-user">
            <ul class="header-user_items header-devider">
              <li class="header-user_item">
                <a href="#" class="header-user_link">
										<span class="header-user-icon">
											<span class="icon">
												<svg>
													<use xlink:href="#icon_prcode"></use>
												</svg>
											</span>
										</span>
                  <span class="header-user-text"><?php echo $text_promocode; ?></span>
                </a>
              </li>
            </ul>
            <ul class="header-user_items">
              <li class="header-user_item">
                <a id="wishlist_header" href="<?php echo $wishlist; ?>" class="header-user_link">
				<span class="header-user-icon">
                  <span class="icon">
                    <svg>
                      <use xlink:href="#icon_favourite"></use>
                    </svg>
                  </span>
				</span>
                  <span class="add-count add-count_favourite header-user-count" data-value="<?php echo $text_wishlist; ?>"></span>
                </a>
              </li>
              <li class="header-user_item">
                <a href="<?php echo $compare; ?>" class="header-user_link ajax_compare">
										<span class="header-user-icon">
											<span class="icon">
												<svg>
													<use xlink:href="#icon_compare"></use>
												</svg>
											</span>
										</span>
                  <span class="add-count add-count_compare header-user-count" data-value="<?php echo $text_compare; ?>"></span>
                </a>
              </li>
              <li class="header-user_item"><?php echo $cart; ?></li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- header bottom -->
  <div class="header-bottom">
    <div class="container">
      <div class="row">
          <div class="col-lg-3 col-md-4">
              <a href="/" class="header-logo">
                  <picture>
                      <img src="catalog/view/theme/default/image/logo.svg" alt="ВЕЛОСКЛАД Интернет-магазин велосипедов">
                  </picture>
              </a>
          </div>
        <?php //echo "<pre>"; var_dump($popular_queries); echo "</pre>";?>
        <div class="col-lg-4 col-md-5">
          <div class="header-search-wrap">
            <div class="header-popular">
              Популярное:
              <menu class="header-popular_list">
                <?php foreach ($popular_queries as $popular_query) { ?>
                <li class="header-popular_item">
                  <a href="/index.php?route=product/search&search=<?php echo $popular_query['name'];?>" class="header-popular_link link"><?php echo $popular_query['name'];?></a>
                </li>
                <?php } ?>
              </menu>
            </div>
            <?php echo $search; ?>
          </div>
        </div>
        <div class="col-lg-5 col-md-3">
          <div class="header-phone">
            <div class="phone-wrap">
              <a href="tel:<?php echo $telephone2; ?>" class="phone-call"><?php echo $telephone; ?></a>
              <span class="icon">
              <svg>
                <use xlink:href="#icon_sellphone"></use>
              </svg>
            </span>
              <time class="phone-time"><?php echo $open; ?></time>
            </div>
            <a href="#" class="btn btn_cta header-cta visible-lg">
								<span class="btn-icon">
									<span class="icon">
										<svg>
											<use xlink:href="#icon_phone"></use>
										</svg>
									</span>
								</span>
              <span class="btn-text">Заказать звонок</span>
            </a>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- header menu -->
</header>
<?php if ($categories) { ?>
<div class="container">
  <nav id="menu" class="navbar">
    <div class="navbar-header"><span id="category" class="visible-xs"><?php echo $text_category; ?></span>
      <button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse"><i class="fa fa-bars"></i></button>
    </div>
    <div class="collapse navbar-collapse navbar-ex1-collapse">
      <ul class="nav navbar-nav">
        <?php foreach ($categories as $category) { ?>
        <?php if ($category['children']) { ?>
        <li class="dropdown"><a href="<?php echo $category['href']; ?>" class="dropdown-toggle" data-toggle="dropdown"><?php echo $category['name']; ?></a>
          <div class="dropdown-menu">
            <div class="dropdown-inner">
              <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
              <ul class="list-unstyled">
                <?php foreach ($children as $child) { ?>
                <li><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
                <?php } ?>
              </ul>
              <?php } ?>
            </div>
            <a href="<?php echo $category['href']; ?>" class="see-all"><?php echo $text_all; ?> <?php echo $category['name']; ?></a> </div>
        </li>
        <?php } else { ?>
        <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
        <?php } ?>
        <?php } ?>
      </ul>
    </div>
  </nav>
</div>
<?php } ?>
