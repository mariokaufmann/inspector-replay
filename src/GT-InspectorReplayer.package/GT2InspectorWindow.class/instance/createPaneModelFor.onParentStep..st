updating
createPaneModelFor: anObject onParentStep: aStep
	| composite |
	composite := self createCompositeFor: anObject onParentStep: aStep.
	^ GT2PagerPaneModel new 
		title: anObject gtDisplayString; 
		elementBlock: [composite]