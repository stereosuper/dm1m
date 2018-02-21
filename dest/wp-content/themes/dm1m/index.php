<?php get_header(); ?>

<div class='container'>

	<h1><?php single_post_title(); ?></h1>

	<?php if ( have_posts() ) : ?>

		<?php while ( have_posts() ) : the_post(); ?>
			
			<article>
                <a href='<?php the_permalink(); ?>'>
                    <?php if( has_post_thumbnail() ){ the_post_thumbnail(); } ?>
                    <span>
                        <?php if( get_the_category() ){
                            foreach( get_the_category() as $cat ){
                                echo $cat->cat_name . ' - ';
                            }
                        } ?>
                    </span>
                    <h2><?php the_title(); ?></h2>                
                    <?php the_field('subtitle'); ?>
				</a>

			</article>
		
		<?php endwhile; ?>
	
	<?php else : ?>
				
		<p><?php _e('No posts yet'); ?></p>

	<?php endif; ?>

</div>

<?php get_footer(); ?>