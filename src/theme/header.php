<!DOCTYPE html>

<html <?php language_attributes(); ?> class='no-js'>
	<head>
		<meta charset='utf-8'>
		<meta name='viewport' content='width=device-width,initial-scale=1'>
		<meta name='format-detection' content='telephone=no'>

		<link rel='alternate' type='application/rss+xml' title='<?php echo get_bloginfo('sitename') ?> Feed' href='<?php echo get_bloginfo('rss2_url') ?>'>

		<?php wp_head(); ?>

		<script>document.getElementsByTagName('html')[0].className = 'js';</script>
	</head>

	<body <?php body_class(); ?>>
	
		<header class='header' role='banner'>
			<div class='container'>
				<div class='wrapper-logo'>
					<a href='<?php echo home_url('/'); ?>' title='<?php bloginfo( 'name' ); ?>' rel='home'><?php bloginfo( 'name' ); ?></a>
				</div>

				<nav class='menu' role='navigation' id='nav'>
					<?php wp_nav_menu( array( 'theme_location' => 'primary', 'container' => false, 'menu_class' => 'menu-main' ) ); ?>
					<div class='menu-indicator top js-indic'>
						<div class='bubble'></div><div class='bubble'></div><div class='bubble'></div>
					</div>
					<div class='menu-indicator bottom js-indic'>
						<div class='bubble'></div><div class='bubble'></div><div class='bubble'></div>
					</div>
				</nav>

				<div class='social'>
                    <?php if( $contactLink = get_field('footer_contact', 'option') ){ ?>
                        <a class='btn-social' href='<?php echo $contactLink['url']; ?>' target='<?php echo $contactLink['target']; ?>'>
                            <svg class='icon'><use xlink:href='#icon-mail'></use></svg>
                        </a>
                    <?php } ?>

                    <?php if( $fbLink = get_field('fb_link', 'option') ){ ?>
                        <a class='btn-social' href='<?php echo $fbLink['url']; ?>' target='<?php echo $fbLink['target']; ?>'>
                            <svg class='icon'><use xlink:href='#icon-facebook'></use></svg>
                        </a>
                    <?php } ?>
                    
                </div>
			</div>
		</header>

		<main role='main'>
