examples
replayerOnMorph
	<gtExample>
	^ GT2Inspector openOnObject: 
		(Morph new addAllMorphs:
			(OrderedCollection new add: Morph new; add: Morph new; yourself))