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
                <div class='expert'>

                    <?php while ( have_rows('expertise_clouds') ) : the_row(); ?>
                        <div class='expert-cloud'>
                            <h4 <?php if( get_sub_field('big') == true ) echo 'class="big"'; ?>><?php the_sub_field('cloud_title'); ?></h4>
                            <div class='expert-txt'>
                                <?php the_sub_field('cloud_txt'); ?>
                            </div>
                            <div class='bg'></div>
                            <i class='bubble'></i>
                            <i class='bubble'></i>
                            <i class='bubble'></i>
                        </div>
                    <?php endwhile; ?>

                    <svg xmlns='http://www.w3.org/2000/svg' x='0px' y='0px' viewBox='0 0 520.2 660.7' class='sheep'>
                        <style type='text/css'>
                            .st0{fill:#FFB1B9;}
                            .st1{fill:#FFFFFF;}
                            .st2{fill:#1D1D1B;}
                            .st3{fill:none;stroke:#1D1D1B;stroke-width:8.39;stroke-linecap:round;stroke-linejoin:round;}
                            .st4{fill:#F0ECE6;}
                            .st5{fill:#EAE5E3;}
                            .st6{fill:none;stroke:#FFB1B9;stroke-width:14;stroke-linecap:round;stroke-linejoin:round;}
                        </style>
                        <rect x='146.8' y='37.7' class='st0' width='237.3' height='474.7'/>
                        <circle class='st1' cx='215.3' cy='145.2' r='17.9'/>
                        <circle class='st2' cx='223.1' cy='145.2' r='10.1'/>
                        <circle class='st1' cx='315.6' cy='145.2' r='17.9'/>
                        <circle class='st2' cx='323.3' cy='145.2' r='10.1'/>
                        <path class='st3' d='M279.6,219.5c-3.6,3.6-8.5,9-14,9s-10.4-5.4-14-9'/>
                        <path class='st3' d='M279.6,240.5c-7.7,7.7-20.2,7.7-28,0c0,0,0,0,0,0'/>
                        <line class='st3' x1='265.6' y1='228.5' x2='265.6' y2='246.3'/>
                        <path class='st4' d='M384.1,304.6c0-16.4-13.3-29.6-29.6-29.6c-16.4,0-29.6,13.3-29.6,29.6c-0.3-16.4-13.8-29.4-30.1-29.1 c-15.9,0.3-28.8,13.1-29.1,29.1c0-16.4-13.3-29.6-29.6-29.6c-16.4,0-29.6,13.3-29.6,29.6c0-16.4-13.3-29.6-29.6-29.6 c-16.4,0-29.6,13.3-29.6,29.6v207.7h236.9V304.6z'/>
                        <path class='st5' d='M384.1,304.6c0-16.4-13.3-29.6-29.6-29.6c-16.4,0-29.6,13.3-29.6,29.6c-0.3-16.4-13.8-29.4-30.1-29.1 c-15.9,0.3-28.8,13.1-29.1,29.1c0-16.4-13.3-29.6-29.6-29.6c-16.4,0-29.6,13.3-29.6,29.6c0-16.4-13.3-29.6-29.6-29.6 c-16.4,0-29.6,13.3-29.6,29.6v207.7h236.9V304.6z'/>
                        <polyline class='st6' points='317.9,528.8 317.9,573.9 358.9,615 '/>
                        <line class='st6' x1='130' y1='228.5' x2='55.5' y2='154'/>
                        <line class='st6' x1='475.7' y1='154' x2='401.2' y2='228.5'/>
                        <path class='st4' d='M61.8,135c7,7,7,18.3,0,25.2s-18.3,7-25.2,0'/>
                        <polygon class='st2' points='11.3,135 61.8,135 36.6,160.3 '/>
                        <polygon class='st2' points='36.6,109.8 36.6,160.3 61.8,135 '/>
                        <path class='st4' d='M494.7,160.3c-7,7-18.3,7-25.2,0c-7-7-7-18.3,0-25.2l0,0'/>
                        <polygon class='st2' points='494.7,109.8 494.7,160.3 469.4,135 '/>
                        <polygon class='st2' points='519.9,135 469.4,135 494.7,160.3 '/>
                        <path class='st4' d='M380.8,610.3c-7-7-18.3-7-25.2,0s-7,18.3,0,25.2'/>
                        <polygon class='st2' points='380.8,660.8 380.8,610.3 355.5,635.5 '/>
                        <polygon class='st2' points='406,635.5 355.5,635.5 380.8,610.3 '/>
                        <polyline class='st6' points='130,426.9 84.8,426.9 43.8,385.9 '/>
                        <path class='st4' d='M50.3,365.5c7,7,7,18.3,0,25.2s-18.3,7-25.2,0'/>
                        <polygon class='st2' points='-0.2,365.5 50.3,365.5 25,390.8 '/>
                        <polygon class='st2' points='25,340.3 25,390.8 50.3,365.5 '/>
                        <line class='st6' x1='130' y1='65.8' x2='95.3' y2='100.5'/>
                        <line class='st6' x1='401.2' y1='66.1' x2='435.9' y2='100.8'/>
                        <path class='st4' d='M384.1,37.7c0,21.8-17.7,39.6-39.6,39.6c-0.3,21.8-18.3,39.3-40.2,38.9c-21.4-0.3-38.6-17.6-38.9-38.9 c-0.3,21.8-18.3,39.3-40.2,38.9c-21.4-0.3-38.6-17.6-38.9-38.9c-21.8,0-39.5-17.7-39.5-39.6H384.1z'/>
                        <path class='st5' d='M384.1,37.7c0,21.8-17.7,39.6-39.6,39.6c-0.3,21.8-18.3,39.3-40.2,38.9c-21.4-0.3-38.6-17.6-38.9-38.9 c-0.3,21.8-18.3,39.3-40.2,38.9c-21.4-0.3-38.6-17.6-38.9-38.9c-21.8,0-39.5-17.7-39.5-39.6H384.1z'/>
                        <polygon class='st4' points='384.1,37.7 146.8,37.7 189,1 341.9,1'/>
                    </svg>

                </div>
            <?php endif; ?>
        </div>

        <div id='methodo' class='methodo'>
            <h3 class='underlined'><span><?php the_field('methodo_title'); ?></span></h3>
            <?php if( have_rows('methodo_steps') ): ?>
                <?php $counting = 1; ?>
                <ol class='steps step-1'>
                    <?php while ( have_rows('methodo_steps') ) : the_row(); ?>
                        <li class='<?php if($counting == 1) echo 'active'; ?>'>
                            <div class='wrapper-img'>
                                <a href='#'>
                                    <?php echo wp_get_attachment_image(get_sub_field('step_img'), 'full'); ?>
                                </a>
                            </div>
                            <div class='wrapper-txt'>
                                <div class='content-txt'>
                                    <h4><?php the_sub_field('step_title'); ?></h4>
                                    <div>
                                        <?php the_sub_field('step_txt'); ?>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <?php $counting++; ?>
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
