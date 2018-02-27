<?php 
/*
Template Name: Notre Agence
*/

get_header(); ?>

<div class='container'>

	<?php if ( have_posts() ) : the_post(); ?>

		<h3><?php the_title(); ?></h3>
        <h1><?php the_field('title'); ?></h1>
        <div class='align-center'>
            <?php the_field('intro'); ?>
        </div>

        <div class='expertise'>
            <h3 class='align-center'><?php the_field('expertise_title'); ?></h3>
            <?php if( have_rows('expertise_clouds') ): ?>

                <div class='expert-list'>

                <?php while ( have_rows('expertise_clouds') ) : the_row(); ?>
                    <div class='expert-cloud'>
                        <h4><?php the_sub_field('cloud_title'); ?></h4>
                        <div class='expert-txt'>
                            <?php the_sub_field('cloud_txt'); ?>
                        </div>

                    </div>
                    
                <?php endwhile; ?>

                </div>
                
            <?php endif; ?>
        </div>

        <div class='methodo'>
            <h3 class='align-center'><?php the_field('methodo_title'); ?></h3>
            <?php if( have_rows('methodo_steps') ): ?>

                <div>

                <?php while ( have_rows('methodo_steps') ) : the_row(); ?>
                    <div>
                        <h4><?php the_sub_field('step_title'); ?></h4>
                        <div>
                            <?php the_sub_field('step_txt'); ?>
                        </div>

                    </div>
                    
                <?php endwhile; ?>

                </div>
                
            <?php endif; ?>
        </div>

        <div class='team'>
            <h3 class='align-center'><?php the_field('team_title'); ?></h3>
            <?php if( have_rows('team_members') ): ?>

                <div>

                <?php while ( have_rows('team_members') ) : the_row(); ?>
                    <div>
                        <span><?php the_sub_field('prenom'); ?></span>
                        <span><?php the_sub_field('nom'); ?></span>
                        <span><?php the_sub_field('job'); ?></span>
                        <?php echo wp_get_attachment_image( get_sub_field('img'), 'full' ); ?>

                    </div>
                    
                <?php endwhile; ?>

                </div>
                
            <?php endif; ?>
        </div>






		<?php the_content(); ?>
	
	<?php else : ?>
				
		<h1>404</h1>

	<?php endif; ?>

</div>

<?php get_footer(); ?>
