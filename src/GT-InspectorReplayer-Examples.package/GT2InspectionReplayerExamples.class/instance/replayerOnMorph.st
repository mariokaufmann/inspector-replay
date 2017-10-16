as yet unclassified
replayerOnMorph
	<gtExample>
	^ InspectionReplayer openOnObject: 
		(Morph new addAllMorphs:
			(OrderedCollection new add: Morph new; add: Morph new; yourself))