<?php get_header(); ?>

<article class='container'>

	<?php if ( have_posts() ) : the_post(); ?>

        <h2><?php the_category(); ?></h2>
		<h1><?php the_title(); ?></h1>
        <h2><?php the_field('subtitle') ?></h2>

        <?php next_post_link(); ?>
        <?php previous_post_link(); ?>
        <a href='<?php the_field('field_name', 'option'); ?>'>grid</a>

		<?php the_content(); ?>

        <?php 

        $images = get_field('galerie');
        $size = 'full'; // (thumbnail, medium, large, full or custom size)

        if( $images ): ?>
            <?php foreach( $images as $image ): ?>
                <?php echo wp_get_attachment_image( $image['ID'], $size ); ?>
            <?php endforeach; ?>
        <?php endif; ?>

	<?php else : ?>
				
		<h1>404</h1>

	<?php endif; ?>

</article>

<?php get_footer(); ?>
