<?php
/**
 * @version $Header: /cvsroot/bitweaver/_bit_install/upgrade_welcome.php,v 1.4 2006/05/06 22:01:53 squareing Exp $
 * @package install
 * @subpackage upgrade
 */

// Copyright (c) 2002-2003, Luis Argerich, Garland Foster, Eduardo Polidor, et. al.
// All Rights Reserved. See copyright.txt for details and a complete list of authors.
// Licensed under the GNU LESSER GENERAL PUBLIC LICENSE. See license.txt for details.

if( preg_match( '/mysql/', $gBitDbType ) ) {
	$gBitSmarty->assign( 'dbWarning', 'MySQL 4.1 or greater is required to run the installer. bitweaver will support MySQL 3.23 and above, however, the upgrade process currently uses "sub-selects" which are only supported in MySQL 4.1 and higher and all other real databases.' );
	$gBitSmarty->assign( 'warningSubmit', 'Click if MySQL 4.1 is installed' );
}

ini_set( "max_execution_time", "86400" );
$gBitSmarty->assign( 'max_execution_time', ini_get( "max_execution_time" ) );

// assign next step in installation process
$gBitSmarty->assign( 'next_step',$step + 1 );
?>
