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
                <div class='expert' id='expert'>

                    <?php while ( have_rows('expertise_clouds') ) : the_row(); ?>
                        <div tabindex='0' class='expert-cloud js-cloud'>
                            <h4 <?php if( get_sub_field('big') == true ) echo 'class="big"'; ?>><?php the_sub_field('cloud_title'); ?></h4>
                            <div class='expert-txt js-txt'>
                                <?php the_sub_field('cloud_txt'); ?>
                            </div>
                            <div class='bg'></div>
                            <i class='bubble'></i>
                            <i class='bubble'></i>
                            <i class='bubble'></i>
                        </div>
                    <?php endwhile; ?>
										<div class="sheep-container">
	                    <svg version="1.1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 570.9 672.3" class='sheep' id='sheep'>
	                        <style type="text/css">
	                            .st0{fill:#FFB1B9;}
	                            .st1{fill:#FFFFFF;}
	                            .st2{fill:#1C1C1A;}
	                            .st3{fill:none;stroke:#1C1C1A;stroke-width:8.3915;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;}
	                            .st4{fill:none;stroke:#FFB1B9;stroke-width:14;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;}
	                            .st5{fill:#F0ECE6;}
	                            .st6{fill:url(#SVGID_1_);}
	                            .st7{fill:url(#SVGID_2_);}
	                        </style>
	                        <rect x="166.2" y="38.1" class="st0" width="237.3" height="474.7"/>
	                        <path class="st3" d="M299,219.9c-3.6,3.6-8.5,9-14,9s-10.4-5.4-14-9"/>
	                        <path class="st3" d="M299,240.9c-3.6,3.6-8.5,5.8-14,5.8s-10.4-2.2-14-5.8"/>
	                        <line class="st3" x1="285" y1="228.9" x2="285" y2="246.6"/>
	                        <polygon class="st5" points="403.5,38.1 166.2,38.1 208.4,1.3 361.2,1.3 "/>

	                        <line id='earLeft' class="st4" x1="149.4" y1="66.2" x2="114.7" y2="100.8"/>
	                        <line id='earRight' class="st4" x1="420.6" y1="66.5" x2="455.3" y2="101.2"/>

	                        <g id='eyeLeft'>
	                            <circle class="st1" cx="234.7" cy="145.5" r="17.9"/>
	                            <circle class="js-pupil st2" cx="234.7" cy="137.8" r="10.1"/>
	                        </g>
	                        <g id='eyeRight'>
	                            <circle class="st1" cx="334.9" cy="145.5" r="17.9"/>
	                            <circle class="js-pupil st2" cx="334.9" cy="137.8" r="10.1"/>
	                        </g>

	                        <g class='js-leg'>
	                            <line class="js-forearm st4" x1="114.1" y1="256.4" x2="114.1" y2="314.4"/>
	                            <line class="st4" x1="150.4" y1="224.4" x2="114.1" y2="256.4"/>
	                            <g class='js-foot'>
	                                <path class="st5" d="M132,322.2c0-9.9-8-17.9-17.9-17.9s-17.9,8-17.9,17.9"/>
	                                <polygon class="st2" points="96.3,357.9 132,322.2 96.3,322.2 	"/>
	                                <polygon class="st2" points="132,357.9 96.3,322.2 132,322.2 	"/>
	                            </g>
	                        </g>

	                        <g class='js-leg'>
	                            <line class="js-forearm st4" x1="456.9" y1="260.8" x2="456.9" y2="318.8"/>
	                            <line class="st4" x1="420.6" y1="228.9" x2="456.9" y2="260.8"/>
	                            <g class='js-foot'>
	                                <path class="st5" d="M439,326.8c0-9.9,8-17.9,17.9-17.9s17.9,8,17.9,17.9"/>
	                                <polygon class="st2" points="474.7,362.4 439,326.8 474.7,326.8 	"/>
	                                <polygon class="st2" points="439,362.4 474.7,326.8 439,326.8 	"/>
	                            </g>
	                        </g>

	                        <g class='js-leg'>
	                            <line class="js-forearm st4" x1="337.3" y1="574.4" x2="378.3" y2="615.4"/>
	                            <line class="st4" x1="337.3" y1="529.2" x2="337.3" y2="574.4"/>
	                            <g class='js-foot'>
	                                <path class="st5" d="M393.5,605.4c-7-7-18.3-7-25.2,0c-7,7-7,18.3,0,25.2"/>
	                                <polygon class="st2" points="393.5,655.9 393.5,605.4 368.3,630.6 	"/>
	                                <polygon class="st2" points="418.8,630.6 368.3,630.6 393.5,605.4 	"/>
	                            </g>
	                        </g>

	                        <g class='js-leg'>
	                            <line class="js-forearm st4" x1="234.7" y1="574.4" x2="193.7" y2="615.4"/>
	                            <line class="st4" x1="234.7" y1="529.2" x2="234.7" y2="574.4"/>
	                            <g class='js-foot'>
	                                <path class="st5" d="M178.5,605.4c7-7,18.3-7,25.2,0c7,7,7,18.3,0,25.2"/>
	                                <polygon class="st2" points="178.5,655.9 178.5,605.4 203.7,630.6 	"/>
	                                <polygon class="st2" points="153.2,630.6 203.7,630.6 178.5,605.4 	"/>
	                            </g>
	                        </g>

	                        <radialGradient id="SVGID_1_" cx="284.825" cy="367.0517" r="192.8734" gradientTransform="matrix(1 0 0 -1 0 673.75)" gradientUnits="userSpaceOnUse">
	                            <stop offset="0" style="stop-color:#FFFFFF"/>
	                            <stop offset="0.5942" style="stop-color:#FEFEFD"/>
	                            <stop offset="0.808" style="stop-color:#FAF8F6"/>
	                            <stop offset="0.9601" style="stop-color:#F3EFEB"/>
	                            <stop offset="1" style="stop-color:#F0ECE6"/>
	                        </radialGradient>
	                        <path class="st6" d="M403.5,304.9c0-16.4-13.3-29.6-29.7-29.6c-16.4,0-29.7,13.3-29.7,29.6c0-16.4-13.3-29.6-29.7-29.6 c-16.4,0-29.7,13.3-29.7,29.6c0-16.4-13.3-29.6-29.7-29.6s-29.7,13.3-29.7,29.6c0-16.4-13.3-29.6-29.7-29.6s-29.4,13.3-29.4,29.6 v207.7h237.3V304.9z"/>
	                        <radialGradient id="SVGID_2_" cx="284.675" cy="791.3766" r="117.5718" gradientTransform="matrix(1 0 0 -0.6207 0 603.7973)" gradientUnits="userSpaceOnUse">
	                            <stop offset="0" style="stop-color:#FFFFFF"/>
	                            <stop offset="0.5942" style="stop-color:#FEFEFD"/>
	                            <stop offset="0.808" style="stop-color:#FAF8F6"/>
	                            <stop offset="0.9601" style="stop-color:#F3EFEB"/>
	                            <stop offset="1" style="stop-color:#F0ECE6"/>
	                        </radialGradient>
	                        <path class="st7" d="M403.5,38.1c0,21.8-17.7,39.6-39.6,39.6c0,21.8-17.7,39.6-39.6,39.6c-21.8,0-39.6-17.7-39.6-39.6 c0,21.8-17.7,39.6-39.6,39.6c-21.8,0-39.6-17.7-39.6-39.6c-21.8,0-39.6-17.7-39.6-39.6H403.5z"/>
	                    </svg>
										</div>

                    <div id='sheepTxt' class='sheep-txt'></div>

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
