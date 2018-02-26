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
        
        <div id='grid' class="wrapper-grid">

            <?php $counting = 1;
                while ( have_posts() ) : the_post(); ?>
                
                <article>
                    <?php
                        if($counting === 1 || $counting === 3 || $counting === 4 || $counting === 8 || $counting === 9 || $counting === 11 || $counting === 12){
                            $type = 'square';
                        }
                        if($counting === 2 || $counting === 6 || $counting === 7){
                            $type = 'v-rect';
                        }
                        if($counting === 5 || $counting === 10){
                            $type = 'h-rect';
                        }
                    ?>

                    <a class='project-link <?php echo $type ?>' href='<?php the_permalink(); ?>'>
                        <?php if( $img = get_field('grid_img') ){ 
                            if($type === 'square'){
                                echo wp_get_attachment_image( $img['square'], 'full' );
                            }
                            if($type === 'v-rect'){
                                echo wp_get_attachment_image( $img['v-rect'], 'full' );
                            }
                            if($type === 'h-rect'){
                                echo wp_get_attachment_image( $img['h-rect'], 'full' );
                            }
                         } ?>
                        <span class='overlay'>
                            <span class='categories'>
                                <?php $cats = get_the_category(); for ($i=0; $i < count($cats); $i++) {

                                    if($i > 0): 
                                        echo '<span class="separator">-</span>';
                                    endif;
                                    echo '<span>'.$cats[$i]->name.'</span>';

                                } ?>
                            </span>
                            <h2><?php the_title(); ?></h2>                
                            <span class='subtitle'><?php the_field('subtitle'); ?></span>
                        </span>
                        <div class='clouds c-1'></div>
                        <div class='clouds c-2'></div>
                        <div class='clouds c-3'></div>
                    </a>
                </article>
            
            <?php 
                if($counting < 12){
                    $counting++;
                }else{
                    $counting = 1;
                }

                endwhile; 
            ?>
            
        </div>
        
	
	<?php else : ?>
				
		<p><?php _e('No posts yet'); ?></p>

	<?php endif; ?>

</div>

<?php get_footer(); ?>