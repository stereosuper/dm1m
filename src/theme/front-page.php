<?php get_header(); ?>

<div class='container'>

	<?php if ( have_posts() ) : ?>
        <h1 class='h3'><?php the_title(); ?></h1>

        <?php if( have_rows('news') ):
            $news = [];
        ?>
            <div id='newsSlider' class='wrapper-slider'>

                <?php
                    while ( have_rows('news') ) : the_row();
                        array_push($news, get_sub_field('new'));
                    endwhile;
                ?>

                <div class='slider-title'>
                    <?php for ($i=0, $loopMax = count($news); $i < $loopMax; $i++) { ?>

                        <h2 data-slide='<?php echo $i ?>' class='h1 <?php if($i === 0) echo "active" ?>'><?php echo get_the_title($news[$i]); ?></h2>

                    <?php } ?>
                </div>

                <div class='slider-subtitle'>
                    <?php for ($i=0, $loopMax = count($news); $i < $loopMax; $i++) { ?>

                        <h3 data-slide='<?php echo $i ?>' class='h2 <?php if($i === 0) echo "active" ?>'><?php the_field('subtitle', $news[$i]); ?></h3>

                    <?php } ?>
                </div>

                <div class='slider-news'>
                    <div class='bullets'>
                        <?php for ($i=0, $loopMax = count($news); $i < $loopMax; $i++) { ?>

                            <span data-slide='<?php echo $i ?>' class='bullet <?php if($i === 0) echo "active" ?>'></span>

                        <?php } ?>
                    </div>
                    <div class='slides'>
                        <div class='clouds-wrapper news-clouds-wrapper'>
                            <div class='clouds news-clouds c-1'></div>
                            <div class='clouds news-clouds c-2'></div>
                            <div class='clouds news-clouds c-3'></div>
                        </div>
                        <?php for ($i=0, $loopMax = count($news); $i < $loopMax; $i++) {
                            $field = get_field('grid_img', $news[$i]);
                            $img = wp_get_attachment_image_src( $field['h-rect'], 'full' );
                        ?>
                            <div data-slide='<?php echo $i ?>' class='slide <?php if($i === 0) echo "active" ?>' style='background-image: url(<?php echo $img[0]; ?>);'>
                                <a href="<?php echo get_permalink($news[$i]); ?>" title='<?php echo get_the_title($news[$i]) ?>'></a>

                            </div>

                        <?php } ?>
                    </div>

                </div>

            </div>

        <?php
            endif;
        ?>

        <div class='company align-center'>
            <?php the_field('new_agency'); ?>
        </div>



	<?php else : ?>



	<?php endif; ?>
	<div id="more" class="more">
		<div class="left-legs js-legs">
			<!-- <span class="leg"></span>
			<span class="leg"></span> -->
			<span class="leg"></span>
			<span class="leg cotton"></span>
			<span class="leg cotton"></span>
			<span class="leg cotton">
				<svg class="icon icon-hoove"><use xlink:href="#icon-hoove"></use></svg>
			</span>
			<span class="leg cotton">
				<svg class="icon icon-hoove"><use xlink:href="#icon-hoove"></use></svg>
			</span>
			<!-- <span class="leg"></span>
			<span class="leg"></span> -->
		</div>
		<div class="box">
			<?php if($agencyLink = get_field('agency_link', 'option')) : ?>
				<a id='more-cloud' class='small-cloud' href="<?php echo $agencyLink['url'] ?>" title='<?php echo htmlspecialchars(strip_tags(get_field('agency_label', 'option')), ENT_QUOTES); ?>' target="<?php echo $agencyLink['target'] ?>" <?php echo $agencyLink['target'] === '_blank' ? 'rel="noopener noreferrer"' : ''; ?>>
					<div class="hover-me js-hover-me"></div>
					<p>
						<?php the_field('agency_label', 'option') ?>
					</p>
					<i class='bubble js-bubble'></i>
					<i class='bubble js-bubble'></i>
					<i class='bubble js-bubble'></i>
				</a>
			<?php endif; ?>
		</div>
		<div class="right-legs js-legs">
			<!-- <span class="leg"></span>
			<span class="leg"></span> -->
			<span class="leg cotton">
				<svg class="icon icon-hoove"><use xlink:href="#icon-hoove"></use></svg>
			</span>
			<span class="leg cotton"></span>
			<span class="leg"></span>
			<span class="leg cotton">
				<svg class="icon icon-hoove"><use xlink:href="#icon-hoove"></use></svg>
			</span>
			<span class="leg cotton"></span>
			<!-- <span class="leg"></span>
			<span class="leg"></span> -->
		</div>
	</div>

</div>

<?php get_footer(); ?>
