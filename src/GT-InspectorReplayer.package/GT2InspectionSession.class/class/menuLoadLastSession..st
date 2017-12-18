as yet unclassified
menuLoadLastSession: aBuilder
	<worldMenu>
	
	(aBuilder item: 'Last inspection session'; parent: #GT2Inspector) 
		action: 
			[ self sessionBuffer lastSession ifNotNil: 
				[ :session | session uiActionRecorder replaySession: session  ] ]