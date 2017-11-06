as yet unclassified
createCompositeFor: anObject onParentStep: aStep
	| composite |
	composite := GT2InspectorCompositeElement new.
		
	composite uiActionRecorder: uiActionRecorder.
	
	(anObject gt2InspectorPresentationsIn: composite) do: [ :presentation |
		presentation navigationBlock: [ :anAction | 
			self inspectorModel addNewStepForAction: anAction withParent: aStep ].
		presentation uiActionRecorder: uiActionRecorder.
		presentation initializeContent.
		composite addTab: presentation titled: presentation title ].
	^ composite