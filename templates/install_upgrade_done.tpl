<h1>Upgrade Packages</h1>

{form id="package_select" legend="Upgraded Packages" id="package_select"}
	<p class="alert alert-success">The following packages were successfully upgraded</p>
	<input type="hidden" name="step" value="{$next_step}" />
	<dl>
		{foreach from=$success item=upgrade key=package}
			{foreach from=$upgrade item=data}
				<dt>{$package}</dt>
				<dd>Upgrade {$data.from_version} &rarr; {$data.version}
					{if $data.post_upgrade}
						<br /><strong>Post install notes</strong>:
						<br />{$data.post_upgrade}
					{/if}
				</dd>
			{/foreach}
		{/foreach}
	</dl>

	<div class="form-group">
		{forminput}
			<input type="submit" class="btn btn-primary" name="continue" value="Continue Install Process" />
		{/forminput}
	</div>
{/form}
