<?php get_header(); ?>

<div class='container'>

    <?php 
        if( have_rows('services', get_option('page_for_posts')) ):
    ?>
        <h3>
            <?php
                $count = 0;
                while ( have_rows('services', get_option('page_for_posts')) ) : the_row();

                    if($count > 0): 
                        echo '<span class="separator">-</span>';
                    endif; ?>

                    <span><?php the_sub_field('service'); ?></span>

                    <?php $count++;

                endwhile;
            ?>
        </h3>
        <?php
        endif;
     ?>

	<h1><?php single_post_title(); ?></h1>

    <div class='align-center'>
        <?php the_field('projects_text', get_option('page_for_posts')); ?>
    </div>
    
	<?php if ( have_posts() ) : ?>

		<?php while ( have_posts() ) : the_post(); ?>
			
			<article>
                <a href='<?php the_permalink(); ?>'>
                    <?php if( has_post_thumbnail() ){ the_post_thumbnail(); } ?>
                    <span>
                    <?php $cats = get_the_category(); for ($i=0; $i < count($cats); $i++) {

                        if($i > 0): 
                            echo '<span class="separator">-</span>';
                        endif;
                        echo '<span>'.$cats[$i]->name.'</span>';

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