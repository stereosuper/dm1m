        </main>

        <footer class='footer' role='contentinfo'>
            <div class='top'>
                <div class='border-top'></div>
                <div class='content-top'>
                    <div class='container'>
                        <div class='info' itemscope itemtype='http://schema.org/Organization'>
                          <div id='small-cloud' class='small-cloud'>
                              <p>Contactez-nous !</p>
                              <i class='bubble'></i>
                              <i class='bubble'></i>
                              <i class='bubble'></i>
                          </div>
                            <h4 itemprop='name'><?php the_field('footer_title', 'option'); ?></h4>
                            <?php $address = get_field('footer_address', 'option'); ?>
                            <div class='wrapper-contact'>
                                <address itemprop='address' itemscope itemtype='http://schema.org/PostalAddress'>
                                    <span itemprop='streetAddress'><?php echo $address['footer_street']; ?></span> -&nbsp;<span itemprop='postalCode'><?php echo $address['footer_cp']; ?></span>&nbsp;<span itemprop='addressLocality'><?php echo $address['footer_city']; ?></span>
                                </address>
                                <span>&nbsp;-&nbsp;<span itemprop='telephone'><?php the_field('footer_phone', 'option'); ?></span></span>
                            </div>
                            <div class='email' itemprop='email'><?php the_field('footer_mail', 'option'); ?></div>
                            <?php if($contactLink = get_field('footer_contact', 'option')){ ?>

                                <a href="<?php echo $contactLink['url']; ?>" target="<?php echo $contactLink['target']; ?>"><?php echo $contactLink['title']; ?></a>

                            <?php } ?>
                        </div>
                    </div>
                </div>
            </div>
            <div class='subfooter'>
                <div class='container'>
                    <?php wp_nav_menu( array( 'theme_location' => 'secondary', 'container' => false, 'menu_class' => 'menu-footer' ) ); ?>
                </div>
            </div>
        </footer>

        <?php wp_footer(); ?>

        <svg aria-hidden='true' style='position: absolute; width: 0; height: 0; overflow: hidden;' version='1.1' xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink'>
            <defs>
                <symbol id='icon-grid' viewBox='0 0 28 28'>
                    <title>grid</title>
                    <path d='M0 0h12.255v12.255h-12.255v-12.255z'></path>
                    <path d='M0 15.755h12.255v12.255h-12.255v-12.255z'></path>
                    <path d='M15.755 15.755h12.255v12.255h-12.255v-12.255z'></path>
                    <path d='M15.755 0h12.255v12.255h-12.255v-12.255z'></path>
                </symbol>
                <symbol id='icon-arrow-right' viewBox='0 0 24 28'>
                    <title>arrow-right</title>
                    <path d='M7.162 27.434l14.965-9.658c1.287-0.839 2.126-2.271 2.126-3.899 0-1.655-0.867-3.108-2.172-3.929l-0.019-0.011-14.844-9.194c-0.695-0.437-1.539-0.696-2.445-0.696-2.562 0-4.639 2.077-4.639 4.639 0 1.657 0.869 3.111 2.175 3.932l0.019 0.011 8.591 5.325-8.804 5.678c-1.288 0.839-2.127 2.271-2.127 3.9 0 0.937 0.278 1.809 0.755 2.538l-0.011-0.018c1.985 2.932 5.65 1.837 6.429 1.382z'></path>
                </symbol>
                <symbol id='icon-arrow-left' viewBox='0 0 24 28'>
                    <title>arrow-left</title>
                    <path d='M17.089 27.434l-14.965-9.658c-1.287-0.839-2.126-2.271-2.126-3.899 0-1.655 0.867-3.108 2.172-3.929l0.019-0.011 14.844-9.194c0.696-0.439 1.542-0.699 2.449-0.699 2.564 0 4.642 2.078 4.642 4.642 0 1.656-0.868 3.11-2.173 3.932l-0.019 0.011-8.591 5.325 8.804 5.678c1.288 0.839 2.127 2.271 2.127 3.9 0 0.937-0.278 1.809-0.755 2.538l0.011-0.018c-1.995 2.932-5.659 1.837-6.439 1.382z'></path>
                </symbol>
                <symbol id='icon-mail' viewBox='0 0 45 28'>
                    <title>mail</title>
                    <path d='M22.366 18.908l16.901-18.908h-33.812l16.911 18.908z'></path>
                    <path d='M22.366 24.447c-1.592-0.027-2.997-0.805-3.879-1.994l-0.009-0.013-18.477-20.685v23.123c0 1.741 1.412 3.153 3.153 3.153v0h38.426c1.741 0 3.153-1.412 3.153-3.153v0-23.123l-18.477 20.685c-0.892 1.202-2.297 1.98-3.885 2.007l-0.004 0z'></path>
                </symbol>
                <symbol id='icon-facebook' viewBox='0 0 16 28'>
                    <title>Facebook</title>
                    <path d='M14.984 0.187v4.125h-2.453c-1.922 0-2.281 0.922-2.281 2.25v2.953h4.578l-0.609 4.625h-3.969v11.859h-4.781v-11.859h-3.984v-4.625h3.984v-3.406c0-3.953 2.422-6.109 5.953-6.109 1.687 0 3.141 0.125 3.563 0.187z'></path>
                </symbol>
            </defs>
        </svg>

        </body>
    </html>
