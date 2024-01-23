<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * Localized language
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'mariadb' );

/** Database username */
define( 'DB_USER', 'mariadbuser' );

/** Database password */
define( 'DB_PASSWORD', 'password' );

/** Database hostname */
define( 'DB_HOST', 'mariadb' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',          'VZ4k<BgR;)D%@.tgOi/8l;iv:tV_]cdO]$kOn+3?:2&_5sh%ZTh.#J8kWdI{P+hF' );
define( 'SECURE_AUTH_KEY',   ':>*D+,y{R2LaoYTL?G%c?a[dSkit)}|MjNlIv66x(LZ:*o6N+>A]HzsRAE}SA)qo' );
define( 'LOGGED_IN_KEY',     'fbuEVo}:&i2X{5VA2.oSx6YorVKjscVabL~9-3{Y@N_<_46ayDp6pU)xN#I9)25%' );
define( 'NONCE_KEY',         '_{H=^RE~!^i`Z7by`et)|VOCpXJAbp;7D3(2uSB+Rb7YjG<lW(D~zSVSxh>+# :^' );
define( 'AUTH_SALT',         '=qCJiNUbLtSguI:/sk:?$c+-`[Fi= ~p_z.(Ky$.|I%v*-y$=|dkWg.~|]+3JBVz' );
define( 'SECURE_AUTH_SALT',  'tS2(V,z1*-Q/ljaP/bi43gypyhWbtEo8pKecscM4[y_a6Q4Wotl{p&&PEB/DlG->' );
define( 'LOGGED_IN_SALT',    'DItQaK`6hgR;7Z6IFfZ)~9)dJ# P;4c ;US5q*zD&|JGoD<iXs|qp=uU/w#`m:%6' );
define( 'NONCE_SALT',        '{{J-BmOXCu4x%H*`&UF]n&Vv`t+iNGQ#S!L$Crx,s3>+d} pTPtcS~/80aqW,g8K' );
define( 'WP_CACHE_KEY_SALT', 'dp|)*:r;f]O3a1<}WK)IT1rn5?Uh,4Q!c>LS;U=W6Rd3%-yZH[DwNCzrwOWL |~z' );


/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';


/* Add any custom values between this line and the "stop editing" line. */



/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
if ( ! defined( 'WP_DEBUG' ) ) {
	define( 'WP_DEBUG', false );
}

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
