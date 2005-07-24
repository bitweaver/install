<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "DTD/xhtml1-strict.dtd">
{strip}
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<style type="text/css">
		<!-- @import url(style/install.css); -->
	</style>
	<title>Install bitweaver - {$browserTitle}</title>
	<link rel="shortcut icon" href="{$gBitLoc.INSTALL_PKG_URL}favicon.ico" type="image/x-icon" />

	<!--[if gte IE 5.5000]>
		<script type="text/javascript" src="{$gBitLoc.THEMES_PKG_URL}js/pngfix.js"></script>
	<![endif]-->

	<script type="text/javascript"><!--
		var tikiRootUrl = "{$gBitLoc.BIT_ROOT_URL}";
	--></script>
	<script type="text/javascript" src="{$gBitLoc.THEMES_PKG_URL}js/tabs/tabpane.js"></script>
</head>

<body>

<div class="display install">
	<div class="nav">
		<ul>
			<li class="title">
				{$section|default:"Install"}ometer
			</li>

			{foreach from=$menu_steps item=step key=key}
				<li class="{$step.state}">
					{biticon ipackage=liberty iname=`$step.state` iexplain=`$step.state` iforce=icon}&nbsp;
					{if $step.state ne 'spacer'}
						<a href="{$gBitLoc.install}{$menu_file|default:"install.php"}?step={$key}">
					{/if}
						{$step.name}
					{if $step.state ne 'spacer'}
						</a>
					{/if}
				</li>
			{/foreach}

			<li>
				{biticon ipackage=liberty iname=spacer iexplain=spacer iforce=icon}
			</li>
			<li class="help">
				{biticon ipackage=liberty iname=help iexplain=help iforce=icon}&nbsp;
				<a class="external" href="http://www.bitweaver.org/wiki/index.php?page={$section|default:"Install"}bitweaverDoc">{$section|default:"Install"} Help</a>
			</li>
			<li class="help">
				{biticon ipackage=liberty iname=refresh iexplain=restart iforce=icon}&nbsp;
				<a href="{$gBitLoc.install}{$menu_file|default:"install.php"}?step=0">Start over</a>
			</li>
			<li>
				{biticon ipackage=liberty iname=spacer iexplain=spacer iforce=icon}
			</li>
			<li class="warning">
				{biticon ipackage=liberty iname=warning iexplain=warning iforce=icon}&nbsp;
				Please don't use the browser back button.
			</li>
			<li>
				{biticon ipackage=liberty iname=spacer iexplain=spacer iforce=icon}
			</li>
		</ul>

		<div class="progressbar">
			{$section|default:"Install"} Progress
			<div style="border:1px solid #ccc;background:#eee;margin:2px 0;">
				<div style="width:{$progress}%;background:#f30;text-align:center;padding:5px 0;color:#fff;">{$progress}%</div>
			</div>
		</div>
	</div> <!-- end .nav -->

	<div class="body">
		<div class="bittop">
			<h1>bitweaver <strong>{$bitMajorVersion}.{$bitMinorVersion}.{$bitSubVersion} {$bitLevel}</strong></h1>
		</div>

		{include file=$install_file}
	</div> <!-- end .body -->

	<div class="clear"></div>
</div> <!-- end .install -->

</body>
</html>
{/strip}
