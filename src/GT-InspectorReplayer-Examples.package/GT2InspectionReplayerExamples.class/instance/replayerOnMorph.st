as yet unclassified
replayerOnMorph
	<gtExample>
	^ InspectionReplayer onObject: 
		(Morph new addAllMorphs:
			(OrderedCollection new add: Morph new; add: Morph new; yourself))