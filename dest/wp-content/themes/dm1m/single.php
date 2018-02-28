<?php get_header(); ?>

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
            <div class='actions'>
                <?php $prev = get_permalink(get_adjacent_post(false,'',false)); if($prev != get_permalink()) {?>
                    <a class='prev-project' href='<?php echo $prev; ?>' title='Précédent projet'>
                        <svg class='icon icon-arrow-left'><use xlink:href='#icon-arrow-left'></use></svg> 
                    </a>
                <?php } ?>
                <?php $next = get_permalink(get_adjacent_post(false,'',true)); if($next != get_permalink()) {?>
                    <a class='next-project' href='<?php echo $next; ?>' title='Prochain projet'>
                        <svg class='icon icon-arrow-right'><use xlink:href='#icon-arrow-right'></use></svg> 
                    </a>
                <?php } ?>
                <a class='grid-project' href='<?php the_field('projects_link', 'option'); ?>'>
                    <svg class='icon icon-grid'><use xlink:href="#icon-grid"></use></svg>
                </a>
            </div>
        </div>
        <div class='wrapper-content container-small'>
            <?php the_content(); ?>
        </div>

	<?php else : ?>
				
		<h1>404</h1>

	<?php endif; ?>

</article>

<?php get_footer(); ?>
