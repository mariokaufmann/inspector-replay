executing
transform: anXMLElement
	^ (anXMLElement nodes select: [ :each | each isElement]) at: index