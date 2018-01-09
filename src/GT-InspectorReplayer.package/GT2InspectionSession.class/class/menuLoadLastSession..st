as yet unclassified
menuLoadLastSession: aBuilder
	<worldMenu>
	
	(aBuilder item: 'Last inspection session'; parent: #GT2Inspector) 
		action: 
			[ self sessionBuffer hasSession
				ifTrue: [ sessionBuffer lastSession uiActionRecorder 
					replaySession: sessionBuffer lastSession  ]
				ifFalse: [ self inform: 'No inspection session available for replay.']]