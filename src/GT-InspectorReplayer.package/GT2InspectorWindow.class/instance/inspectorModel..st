accessing
inspectorModel: anObject
	inspectorModel ifNotNil: [ inspectorModel announcer unsubscribe: self ].
	inspectorModel := anObject.
	inspectorModel announcer when: GT2InspectorSessionChanged send: #actOnSessionChanged to: self.
	self updatePanes.