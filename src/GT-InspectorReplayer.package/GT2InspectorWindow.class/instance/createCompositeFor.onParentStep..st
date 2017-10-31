as yet unclassified
createCompositeFor: anObject onParentStep: aStep
	| composite elementRegistrationBlock |
	composite := GT2InspectorCompositeElement new.
	
	elementRegistrationBlock := [ :anElement | 
			aStep addUIAction: (ClickUIAction onPath: anElement indicesInAncestors) ].
		
	composite elementRegistrationBlock: elementRegistrationBlock.
	
	(anObject gt2InspectorPresentationsIn: composite) do: [ :presentation |
		presentation navigationBlock: [ :anAction | 
			self inspectorModel addNewStepForAction: anAction withParent: aStep ].
		presentation elementRegistrationBlock: elementRegistrationBlock.
		presentation initializeContent.
		composite addTab: presentation titled: presentation title ].
	^ composite