<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'dm1m');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', 'root');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'B/XHpcm-58^x-o.!_[__P3|U>MB2WZF Ig}H4D?H<{g3F[NTOMwedJUC-Bz:i}[f');
define('SECURE_AUTH_KEY',  'h#*}}8b+6@/-t]%p!e{Oe<Dk)c`8Y/cJuf-oas!9i-&;u0lvfascu<)X:Yd?Oy:U');
define('LOGGED_IN_KEY',    '`MvAtMs}c:>;-O7=4w3[>tY6!3z+MlQ[%+KLtI)HvV oca/g_o~n@2 I`J=&}Myt');
define('NONCE_KEY',        'kv{fb;-8$!9Dx_j27ORmND v<UURs=gw10DJ$$~GB0U#4|lNu/a8xiqo9_Ti:c`+');
define('AUTH_SALT',        'Q=EuQB?Q7*Trb)-W!Xhiv3K)3b)bO-kdKZCT~XWLxr,25< %$Y^4S12m|/7R<5Dp');
define('SECURE_AUTH_SALT', 'JqQ?PPTc?Fk3gorDLMX>Cl6?D+}.AWKRjOy=1#[??k6cz[#-;)MD2HF:nHKmrL9O');
define('LOGGED_IN_SALT',   '8XYsV78#bq;5l##o<Rw C|X-~?;/6LC 6zBsakCgpN0BP-,PX|M8ITtM_| V$2@>');
define('NONCE_SALT',       'Y!4_0P-$CgsZ6L27 s{@;|n!4+U #=}Eux.%F_>;T>*J2@oDD6+zPtxk),)i[#=k');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = '_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);
define('WP_DEBUG_DISPLAY', false);

define('WP_POST_REVISIONS', 5);
define('EMPTY_TRASH_DAYS', 10);
define('WP_AUTO_UPDATE_CORE', true);
define('DISALLOW_FILE_EDIT', true);
define('DISALLOW_UNFILTERED_HTML', true);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
