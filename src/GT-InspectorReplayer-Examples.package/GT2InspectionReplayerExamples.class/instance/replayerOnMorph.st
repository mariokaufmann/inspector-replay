examples
replayerOnMorph
	<gtExample>
	^ GT2Inspector on: 
		(Morph new addAllMorphs:
			(OrderedCollection new add: Morph new; add: Morph new; yourself))