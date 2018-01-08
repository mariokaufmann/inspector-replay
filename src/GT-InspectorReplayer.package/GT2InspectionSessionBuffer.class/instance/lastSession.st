initialization
lastSession
	^ self hasSession 
		ifTrue: [ buffer at: currentIndex ]
		ifFalse: [ nil ]
	