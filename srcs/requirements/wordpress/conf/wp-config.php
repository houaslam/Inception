<?php
define( 'DB_NAME', 'mariadb' );
define( 'DB_USER', 'mariadbuser' );
define( 'DB_PASSWORD', 'password' );
define( 'DB_HOST', 'localhost' );
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
define( 'WP_DEBUG', false );
if ( ! defined( 'ABSPATH' ) )
  define( 'ABSPATH', dirname( __FILE__ ) . '/' );
require_once( ABSPATH . 'wp-settings.php' );