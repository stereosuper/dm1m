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
                    <a class='prev-project' href='<?php echo $prev; ?>' title='<?php _e('Précédent projet', 'dm1m') ?>'>
                            <svg class='icon icon-arrow-left' clip-path="url(#cut-arrow-left)">
                                
                                <clipPath id="cut-arrow-left">
                                    <path d='M17.089 27.434l-14.965-9.658c-1.287-0.839-2.126-2.271-2.126-3.899 0-1.655 0.867-3.108 2.172-3.929l0.019-0.011 14.844-9.194c0.696-0.439 1.542-0.699 2.449-0.699 2.564 0 4.642 2.078 4.642 4.642 0 1.656-0.868 3.11-2.173 3.932l-0.019 0.011-8.591 5.325 8.804 5.678c1.288 0.839 2.127 2.271 2.127 3.9 0 0.937-0.278 1.809-0.755 2.538l0.011-0.018c-1.995 2.932-5.659 1.837-6.439 1.382z'>
                                    </path>
                                </clipPath>
                                <circle class='background' cx="50%" cy="50%" r="25"/>
                                <circle class='eclipse-circle' cx="50%" cy="175%" r="25"/>
                            </svg>
                        </a>
                        <?php } ?>
                        <?php $next = get_permalink(get_adjacent_post(false,'',true)); if($next != get_permalink()) {?>
                        <a class='next-project' href='<?php echo $next; ?>' title='<?php _e('Prochain projet', 'dm1m') ?>'>
                                <svg class='icon icon-arrow-right' clip-path="url(#cut-arrow-right)">
                                    <clipPath id="cut-arrow-right">
                                        <path d='M7.162 27.434l14.965-9.658c1.287-0.839 2.126-2.271 2.126-3.899 0-1.655-0.867-3.108-2.172-3.929l-0.019-0.011-14.844-9.194c-0.695-0.437-1.539-0.696-2.445-0.696-2.562 0-4.639 2.077-4.639 4.639 0 1.657 0.869 3.111 2.175 3.932l0.019 0.011 8.591 5.325-8.804 5.678c-1.288 0.839-2.127 2.271-2.127 3.9 0 0.937 0.278 1.809 0.755 2.538l-0.011-0.018c1.985 2.932 5.65 1.837 6.429 1.382z'></path>
                                    </clipPath>
                                    <circle class='background' cx="50%" cy="50%" r="25"/>
                                    <circle class='eclipse-circle' cx="50%" cy="175%" r="25"/>
                                </svg>
                            </a>
                            <?php } ?>
                            <?php $projects_link = get_field('projects_link', 'option'); ?>
                            <a class='grid-project' href='<?php echo $projects_link['url']; ?>' title='<?php echo htmlspecialchars($projects_link['title'], ENT_QUOTES); ?>' target='<?php echo $projects_link['target']; ?>' <?php echo $projects_link['target'] === '_blank' ? 'rel="noopener noreferrer"' : ''; ?>>
                                <svg class='icon icon-grid' clip-path="url(#cut-grid)">
                                    <clipPath id="cut-grid">
                                        <path d='M0 0h12.255v12.255h-12.255v-12.255z'></path>
                                        <path d='M0 15.755h12.255v12.255h-12.255v-12.255z'></path>
                                        <path d='M15.755 15.755h12.255v12.255h-12.255v-12.255z'></path>
                                        <path d='M15.755 0h12.255v12.255h-12.255v-12.255z'></path>
                                    </clipPath>
                                    <circle class='background' cx="50%" cy="50%" r="25"/>
                                    <circle class='eclipse-circle' cx="50%" cy="200%" r="30"/>
                    </svg>
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
