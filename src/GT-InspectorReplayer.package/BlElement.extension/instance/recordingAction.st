*GT-InspectorReplayer
recordingAction
	^ self userData at: self recordingActionKey ifAbsent: [ self buildChildSelectionAction ]
		