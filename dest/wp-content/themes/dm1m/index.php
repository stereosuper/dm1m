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
                while ( have_posts() ) : the_post();
                $grid_img = get_field('grid_img');
                if ($grid_img) {
                  $img_square = wp_get_attachment_image( $grid_img['square'], 'full' );
                  // $img_square = addslashes($img_square);

                  $img_v_rect = wp_get_attachment_image( $grid_img['v-rect'], 'full' );
                  // $img_v_rect = addslashes($img_square);

                  $img_h_rect = wp_get_attachment_image( $grid_img['h-rect'], 'full' );
                  // $img_h_rect = addslashes($img_square);

                  $img_square_src = wp_get_attachment_image_src( $grid_img['square'], 'full' )[0];
                }
                ?>
                  <article class="js-grid-item" data-square-img='<?php echo json_encode($img_square) ?>'
                  data-v-rect-img='<?php echo json_encode($img_v_rect) ?>'
                  data-h-rect-img='<?php echo json_encode($img_h_rect) ?>'>
                    <a class='js-hover project-link'
                    href='<?php the_permalink(); ?>'
                    style='background-image: url("<?php
                    echo $img_square_src ? $img_square_src : ''
                    ?>")'>
                      <span class='overlay js-overlay'>
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
                      <div class='clouds-wrapper'>
                          <div class='clouds c-1'></div>
                          <div class='clouds c-2'></div>
                          <div class='clouds c-3'></div>
                      </div>
                    </a>
                  </article>

              <?php
                endwhile;
            ?>
        </div>


	<?php else : ?>

		<p><?php _e('No posts yet'); ?></p>

	<?php endif; ?>

</div>

<?php get_footer(); ?>
