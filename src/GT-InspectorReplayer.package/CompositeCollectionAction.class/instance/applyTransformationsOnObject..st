accessing
applyTransformationsOnObject: anObject
	| tempVar |
	tempVar := anObject.
	transformationActions do: [ :action |
			(action canTransform: tempVar) ifFalse: [ ^ tempVar ].
			tempVar := action transform: tempVar. ].
	^ tempVar