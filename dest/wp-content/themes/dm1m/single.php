<?php get_header(); ?>

<article class='container'>

	<?php if ( have_posts() ) : the_post(); ?>

        <h2><?php the_category(); ?></h2>
		<h1><?php the_title(); ?></h1>
        <h2><?php the_field('subtitle') ?></h2>

        <?php $prev = get_permalink(get_adjacent_post(false,'',false)); if($prev != get_permalink()) {?>
            <a href='<?php echo $prev; ?>' title='Précédent projet'>
                <svg class='icon icon-arrow-left'><use xlink:href='#icon-arrow-left'></use></svg> 
            </a>
        <?php } ?>

        <?php $next = get_permalink(get_adjacent_post(false,'',true)); if($next != get_permalink()) {?>
            <a href='<?php echo $next; ?>' title='Prochain projet'>
                <svg class='icon icon-arrow-right'><use xlink:href='#icon-arrow-right'></use></svg> 
            </a>
        <?php } ?>
            
        

        <a href='<?php the_field('field_name', 'option'); ?>'>
            <svg class='icon icon-grid'><use xlink:href="#icon-grid"></use></svg>
        </a>

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
