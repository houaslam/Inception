<?php
define( 'DB_NAME', $MARIADB_DATABASE );
define( 'DB_USER', $MARAIDB_USER );
define( 'DB_PASSWORD', $MARAIDB_PASSWORD );
define( 'DB_HOST', $MARIADB_HOST );
define( 'DB_CHARSET', 'utf8' );
define( 'DB_COLLATE', '' );
define( 'AUTH_KEY',         'mettez une phrase unique ici' );
define( 'SECURE_AUTH_KEY',  'mettez une phrase unique ici' );
define( 'LOGGED_IN_KEY',    'mettez une phrase unique ici' );
define( 'NONCE_KEY',        'mettez une phrase unique ici' );
define( 'AUTH_SALT',        'mettez une phrase unique ici' );
define( 'SECURE_AUTH_SALT', 'mettez une phrase unique ici' );
define( 'LOGGED_IN_SALT',   'mettez une phrase unique ici' );
define( 'NONCE_SALT',       'mettez une phrase unique ici' );
$table_prefix = 'wp_';
define('WP_SITEURL', 'https://houaslam.42.fr');
define('WP_HOME', 'https://houaslam.42.fr');
define( 'WP_DEBUG', false );
if ( ! defined( 'ABSPATH' ) )
  define( 'ABSPATH', dirname( __FILE__ ) . '/' );
require_once( ABSPATH . 'wp-settings.php' );