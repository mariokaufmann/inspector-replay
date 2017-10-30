as yet unclassified
createCompositeFor: anObject onParentStep: aStep
	| composite |
	composite := GT2InspectorCompositeElement new.
	(anObject gt2InspectorPresentationsIn: composite) do: [ :presentation |
		presentation navigationBlock: [ :anAction | 
			self inspectorModel addNewStepForAction: anAction withParent: aStep ].
		presentation initializeContent.
		composite addTab: presentation titled: presentation title ].
	^ composite