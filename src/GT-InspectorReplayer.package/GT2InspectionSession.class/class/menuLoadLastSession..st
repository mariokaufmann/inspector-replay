as yet unclassified
menuLoadLastSession: aBuilder
	<worldMenu>
	(aBuilder item: 'Last inspection session') action: 
		[ self sessionBuffer lastSession ifNotNil: 
			[ :session | session uiActionRecorder replaySession: session ] ]