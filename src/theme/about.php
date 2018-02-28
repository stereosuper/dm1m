<?php 
/*
Template Name: Notre Agence
*/

get_header(); ?>

<div class='container'>

	<?php if ( have_posts() ) : the_post(); ?>

		<h3><?php the_title(); ?></h3>
        <h1 class='small'><?php the_field('title'); ?></h1>
        <div class='align-center'>
            <?php the_field('intro'); ?>
        </div>

        <div class='expertise'>
            <h3 class='underlined'><span><?php the_field('expertise_title'); ?></span></h3>
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
            <h3 class='underlined'><span><?php the_field('methodo_title'); ?></span></h3>
            <?php if( have_rows('methodo_steps') ): ?>
                <ol class='steps'>
                    <?php while ( have_rows('methodo_steps') ) : the_row(); ?>
                        <li>
                            <h4><?php the_sub_field('step_title'); ?></h4>
                            <div>
                                <?php the_sub_field('step_txt'); ?>
                            </div>
                        </li>
                    <?php endwhile; ?>
                </ol>
            <?php endif; ?>
        </div>

        <div class='team'>
            <h3 class='underlined'><span><?php the_field('team_title'); ?></span></h3>
            <?php if( have_rows('team_members') ): ?>

                <div id='teamGrid' class='team-grid'>

                <?php while ( have_rows('team_members') ) : the_row(); ?>
                    <div class='js-hover member'>
                        <?php echo wp_get_attachment_image( get_sub_field('img'), 'full' ); ?>
                        <div class='member-overlay js-overlay'>
                            <span class='surname'><?php the_sub_field('prenom'); ?></span>
                            <span class='name'><?php the_sub_field('nom'); ?></span>
                            <span class='job'><?php the_sub_field('job'); ?></span>
                        </div>
                        <div class='clouds-wrapper'>
                            <div class='clouds c-1'></div>
                            <div class='clouds c-2'></div>
                            <div class='clouds c-3'></div>
                        </div>

                    </div>
                    
                <?php endwhile; ?>

                </div>
                
            <?php endif; ?>
        </div>





        <div class='wrapper-content'>
		    <?php the_content(); ?>
        </div>
	
	<?php else : ?>
				
		<h1>404</h1>

	<?php endif; ?>

</div>

<?php get_footer(); ?>
