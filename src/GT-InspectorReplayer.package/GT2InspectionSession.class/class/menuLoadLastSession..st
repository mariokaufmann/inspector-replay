as yet unclassified
menuLoadLastSession: aBuilder
	<worldMenu>
	(aBuilder item: 'Last inspection session') action: 
		[ self sessionBuffer lastSession ifNotNil: 
			[ :session | GT2InspectorWindow openOnModel: (GT2Inspector onSession: session) ] ]