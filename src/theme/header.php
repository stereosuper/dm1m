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
				<nav class='menu' role='navigation'>
					<?php wp_nav_menu( array( 'theme_location' => 'primary', 'container' => false, 'menu_class' => 'menu-main' ) ); ?>
				</nav>
				<div class='social'>
					<a class='btn-social' href='#'>
						<svg class='icon icon-facebook'><use xlink:href='#icon-facebook'></use></svg>
					</a>
				</div>
			</div>
		</header>

		<main role='main'>
