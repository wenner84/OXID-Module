[{assign var="template_title" value="KK_CW_TITLE"|oxmultilangassign}]
  [{include file="_header.tpl" title=$template_title location=$template_title}]
   <h1 class="boxhead">[{$template_title}]</h1>
	<div class="box">
	<p>
		[{oxcontent ident="cw_kk"}]
	</p>
	[{if $oxcmp_user->oxuser__mp_kk_b->value == 1}]	
		[{assign var="karte" value=$oxcmp_user->oxuser__mp_kk_umsatz->value}]
		[{assign var="ausgabe" value=$oxcmp_basket->kundenkarte($karte)}]
		<p style="text-align: left;">
		   <strong>
			[{if $ausgabe[3] > 0}]
				Mit dem heutigen Umsatz werden Sie [{ $ausgabe[2] }] Euro auf Ihrer AWN Bonus-ClubCard haben. 
			[{else}]
				Dieses Jahr haben Sie bereits ein Umsatz von [{$karte}] Euro auf Ihrer Kundenkarte. <br>
			[{/if}]
			[{if $ausgabe[0]> 0}]
				Kaufen Sie noch in diesem Jahr f&uuml;r [{ $ausgabe[0] }] Euro bei A.W Niemeyer ein, erhalten Sie [{ $ausgabe[1] }]% von Ihrem Jahresumsatz als Treuebonus in Form eines Gutschein zugesendet.
		   	[{else}]
				Ihr aktueller TreueBonus bel&auml;uft sich auf [{ $ausgabe[1] }] Euro.
			[{/if}]
		    </strong>
		</p>
	[{/if}]
    </div>
[{if $oxcmp_user->oxuser__mp_kk_b->value <> 1}]
   <iframe style="width:100%; height:650px; border:none" scrolling="no" src="/index.php?cl=agform&form=osf8e206f455a005c83fed73103f4c6d"></iframe>
[{/if}]
  [{insert name="oxid_tracker" title=$template_title }]
  [{include file="_footer.tpl" }]