[{assign var="template_title" value=$form->agforms__title->value}]
<link rel="stylesheet" type="text/css" href="[{ $oViewConf->getResourceUrl() }]oxid.css">
<div id="werner">
<link rel="stylesheet" type="text/css" href="[{ $oViewConf->getResourceUrl() }]agforms.css">
<script src="[{$oViewConf->getResourceUrl()}]jquery.min.js"></script>
<script type="text/javascript" src="[{$oViewConf->getResourceUrl()}]jquery.simpletip-1.3.1.pack.js"></script>
<script type="text/javascript" src="[{$oViewConf->getResourceUrl()}]agforms.js"></script>

<h1>[{ $template_title }]</h1>
	

	[{if $complete}]
		<p>[{$form->agforms__message->value}]</p>
	[{else}]
	       <img src="[{$oViewConf->getPictureDir()}]service/katalog.jpg" style="position:absolute; top:20px; left:390px;">
		<p [{if $notFilledFields|@count > 0}]class="note"[{/if}]>[{oxmultilang ident="AGFORMS_MUST_FILL_IN"}]</p>
		<form action="[{$form->getLink()}]" method="post" enctype="multipart/form-data" onsubmit="return validateForm()">
		[{ $oViewConf->getHiddenSid()|replace:">":" />"}]
		<input type="hidden" name="fnc" value="send" />
		<input type="hidden" name="cl" value="agform" />
		<input type="hidden" name="form" value="[{$form->agforms__oxid->value}]" />
		[{foreach from=$fields item=field}]
			[{include file=$field->getTemplate() field=$field}]
		[{/foreach}]
		</form>
	[{/if}]
  </div>
[{ insert name="oxid_tracker" title=$template_title }]