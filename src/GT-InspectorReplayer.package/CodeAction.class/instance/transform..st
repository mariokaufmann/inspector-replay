executing
transform: anObject
	| temp |
	temp := anObject class compiler source: code; receiver: anObject.
	^ temp evaluate