<cfoutput>
	<cfif args.content.isExpired()>
		<i
			class="fas fa-history fa-lg textRed"
			title="Expired #args.content.getDisplayExpireDate()#"
		></i>
		<span class="hidden">expired</span>
	<cfelseif args.content.isPublishedInFuture()>
		<i
			class="fa fa-space-shuttle fa-lg textBlue"
			title="Publishes #args.content.getDisplayPublishedDate()#"
		></i>
		<span class="hidden">published in future</span>
	<cfelseif args.content.isContentPublished()>
		<i
			class="fas fa-satellite-dish fa-lg textGreen"
			title="Published #args.content.getDisplayPublishedDate()#"
		></i>
		<span class="hidden">published</span>
	<cfelse>
		<i
			class="far fa-dot-circle fa-lg textGray"
			title="Content is in Draft!"
		></i>
		<span class="hidden">draft</span>
	</cfif>
</cfoutput>