*GT-InspectorReplayer
inspectorMenuOn: aBuilder

	<windowMenu>
	(aBuilder item: #'Replay session')
		order: 1.0;
		action: [ 
			| inspectorWindow|
			inspectorWindow := aBuilder model hostSpace space.
			inspectorWindow inspectionSession uiActionRecorder 
				replaySession: inspectorWindow inspectionSession 
				withDelay: (1 seconds asDelay). ];
		icon: Smalltalk ui icons glamorousGo;
		withSeparatorAfter.