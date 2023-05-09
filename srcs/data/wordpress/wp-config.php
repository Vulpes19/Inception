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
define( 'DB_NAME', 'wordpress' );

/** Database username */
define( 'DB_USER', 'ayman' );

/** Database password */
define( 'DB_PASSWORD', 'vulpes19' );

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
define( 'AUTH_KEY',          ';d,f@{}(dVbT]tSdG?+.l}WC*lMmByu;1EI,bjKIPh/UQ*?Qd-M!du_OMv]$l}kd' );
define( 'SECURE_AUTH_KEY',   'd-jZbXURqDXuUQd!BmUOa([*,6UUU6TiX)*ExU;i5=wLR$a}<&Ai+ft7%V;?>*<M' );
define( 'LOGGED_IN_KEY',     '1Ab7Qyf<DCPp7#%0!2{APb!Ty5#lM36!$7<X+Cl/HKhwOmJoh~~2jr6X-9,_j]lj' );
define( 'NONCE_KEY',         '^:JSPOQ9V3D.)F6t]G|rP68F~f|j`gc!3=Ba5xF|nBlj[_LQAF4P,bj*&+oT}4Fx' );
define( 'AUTH_SALT',         '9u 9F!p-7jnMBB[w<FDW#4Ny?VXdr30UCq+p%|[s+J ZxtL)HLD^bb,]g7K_g7o0' );
define( 'SECURE_AUTH_SALT',  '-|Fjp-?*8#tqDc5fvC}DQ%=E{J*p q2dqn2r,g!L$:U|3+kB:>,,AQJ4$6_HYh4=' );
define( 'LOGGED_IN_SALT',    'Zzdpu>rj M1>1k^P2g0E]2q]sK`&~>wSxF1uA/bJ~|j.eCF#v~VL5R*(T3{zbyF`' );
define( 'NONCE_SALT',        '@|mSp7$?}nf;+3EwlFuJW,V]g8Ffcp&GRa6|L1vIjYXLma:ZisPnVmIzphj5+S@A' );
define( 'WP_CACHE_KEY_SALT', 'jt&@C5v[W~{96Mq?p/myC/q7>.0zupY8cYeEEL}9_&GbdyugE[j6Xeepf6(>yM)w' );


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
