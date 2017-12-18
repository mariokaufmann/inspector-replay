initialization
arrowElementWithVertices: anArray
	^ (BlPolyline vertices: anArray) asElement
			constraintsDo: [ :c |
				c horizontal matchParent.
				c horizontal fitContent.
				c frame vertical alignCenter.
				c frame horizontal alignCenter ];
			border: (BlBorder builder paint: 
				(Color r: 63 g: 81 b: 181 range: 255); width: 5; build);
			yourself