<?php
/**
 * @version $Header: /cvsroot/bitweaver/_bit_install/install_database_reset.php,v 1.4 2009/10/01 13:45:41 wjames5 Exp $
 * @package install
 * @subpackage functions
 */

// Copyright (c) 2002-2003, Luis Argerich, Garland Foster, Eduardo Polidor, et. al.
// All Rights Reserved. See copyright.txt for details and a complete list of authors.
// Licensed under the GNU LESSER GENERAL PUBLIC LICENSE. See http://www.gnu.org/copyleft/lesser.html for details.

// assign next step in installation process
$gBitSmarty->assign( 'next_step',$step );
//vd($_REQUEST);
if( isset( $_REQUEST['continue_install'] ) ) {
	header( 'Location: '.INSTALL_PKG_URL.'install.php?step='.( $step + 1 ) );
} elseif( isset( $_REQUEST['reset_config_inc'] ) ) {
	$fw = fopen($config_file, 'w' );
	if( isset( $fw ) ) {
        fwrite( $fw, '');
		fclose( $fw );
	}
	header( 'Location: '.INSTALL_PKG_URL.'install.php' );
}
?>
