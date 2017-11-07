accessing
sessionBuffer
	^ sessionBuffer ifNil: [ sessionBuffer := GT2InspectionSessionBuffer ofSize: 10 ]