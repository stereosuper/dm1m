<!DOCTYPE html>

<html <?php language_attributes(); ?> class='no-js'>
	<head>
		<meta charset='utf-8'>
		<meta name='viewport' content='width=device-width,initial-scale=1'>
		<meta name='format-detection' content='telephone=no'>

		<link rel='alternate' type='application/rss+xml' title='<?php echo get_bloginfo('sitename') ?> Feed' href='<?php echo get_bloginfo('rss2_url') ?>'>

		<?php wp_head(); ?>


		<link rel="apple-touch-icon" sizes="180x180" href="/apple-touch-icon.png">
		<link rel="icon" type="image/png" sizes="32x32" href="/favicon-32x32.png">
		<link rel="icon" type="image/png" sizes="16x16" href="/favicon-16x16.png">
		<link rel="manifest" href="/site.webmanifest">
		<meta name="msapplication-TileColor" content="#ededed">
		<meta name="theme-color" content="#ffffff">

		<script>document.getElementsByTagName('html')[0].className = 'js';</script>
	</head>

	<body <?php body_class(); ?>>

		<header class='header' role='banner'>
			<div class='container'>
				<div class='wrapper-logo'>
					<a href='<?php echo home_url('/'); ?>' title='<?php bloginfo( 'name' ); ?>' rel='home'>
						<span class='wrapper-illus' id='logoIllus'>
						 	<span class='eye left-eye js-left-eye'></span>
							<span class='eye right-eye js-right-eye'></span>
							<span class='cheek left-cheek js-left-cheek'></span>
							<span class='cheek right-cheek js-right-cheek'></span>
							<span class='mouth js-mouth'></span>
						</span>
						<span class='wrapper-txt'>
							<?php if ($hLogo = get_field('logo', 'option')):
								echo wp_get_attachment_image($hLogo['ID'], 'full', '', array('class' => 'h-logo'));
							endif; ?>
						</span>
					</a>
				</div>
				<button id='burger' class='burger'>
					<span></span>
				</button>
				<nav class='menu' role='navigation' id='nav'>
					<?php wp_nav_menu( array( 'theme_location' => 'primary', 'container' => false, 'menu_class' => 'menu-main' ) ); ?>
					<div class='menu-indicator top js-indic'>
						<div class='bubble'></div><div class='bubble'></div><div class='bubble'></div>
					</div>
					<div class='menu-indicator bottom js-indic'>
						<div class='bubble'></div><div class='bubble'></div><div class='bubble'></div>
					</div>
				</nav>
				<div id="social" class='social'>
					<?php if( $contactLink = get_field('footer_contact', 'option') ){ ?>
						<a class='btn-social' href='<?php echo $contactLink['url']; ?>' title='<?php echo htmlspecialchars(strip_tags($contactLink['title']), ENT_QUOTES); ?>' target='<?php echo $contactLink['target']; ?>' <?php echo $contactLink['target'] === '_blank' ? 'rel="noopener noreferrer"' : ''; ?>>
							<svg class='icon'><use xlink:href='#icon-mail'></use></svg>
						</a>
					<?php } ?>

					<?php if( $fbLink = get_field('fb_link', 'option') ){ ?>
						<a class='btn-social' href='<?php echo $fbLink['url']; ?>' title='<?php echo htmlspecialchars(strip_tags($fbLink['title']), ENT_QUOTES); ?>' target='<?php echo $fbLink['target']; ?>' <?php echo $fbLink['target'] === '_blank' ? 'rel="noopener noreferrer"' : ''; ?>>
							<svg class='icon'><use xlink:href='#icon-facebook'></use></svg>
						</a>
					<?php } ?>

				</div>

			</div>
		</header>

		<main role='main'>
