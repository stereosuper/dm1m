<?php 
/*
Template Name: Mentions Légales
*/

get_header(); ?>

<article class='container'>

	<?php if ( have_posts() ) : the_post(); ?>

        <h3><?php $cats = get_the_category(); for ($i=0; $i < count($cats); $i++) {

            if($i > 0):
                echo '<span class="separator">-</span>';
            endif;
            echo '<span>'.$cats[$i]->name.'</span>';

        } ?></h3>
		<h1><?php the_title(); ?></h1>
        <div class='wrapper-title'>
            <h2><?php the_field('subtitle') ?></h2>
        </div>
        <div class='wrapper-content container-small'>
            <?php the_content(); ?>
        </div>

	<?php else : ?>

		<h1>404</h1>

	<?php endif; ?>

</article>

<?php get_footer(); ?>
