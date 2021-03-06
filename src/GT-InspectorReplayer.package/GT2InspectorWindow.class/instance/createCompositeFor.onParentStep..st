as yet unclassified
createCompositeFor: anObject onParentStep: aStep
	| composite |
	composite := GT2InspectorCompositeElement new.
		
	composite uiActionRecorder: self inspectionSession uiActionRecorder.
	
	(anObject gt2InspectorPresentationsIn: composite) do: [ :presentation |
		presentation navigationBlock: [ :anAction | 
			self inspectorModel addNewStepForAction: anAction withParent: aStep ].
		presentation retrieveStepsBlock: [ (GT2InspectionSessionIterator fromRootStep: aStep) stepsWithoutRoot 
			collect: [ :step | step transformationAction  ] ].
		presentation uiActionRecorder: self inspectionSession uiActionRecorder.
		presentation initializeContent.
		composite addTab: presentation titled: presentation title ].
	^ composite