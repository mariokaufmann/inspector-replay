ui
gtInspectorStepsIn: aComposite
	<gtInspectorPresentationOrder: 15>
	aComposite tree 
		title: 'Steps';
		rootsExpanded;
		display: [ self rootStep ];
		children: [ :aStep | aStep childSteps ]