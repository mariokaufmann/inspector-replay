*GT-InspectorReplayer
gt2InspectorPresentationsIn: composite
	| pragmas |
	pragmas := Pragma
		allNamed: #gt2InspectorPresentationOrder:
		from: self class
		to: ProtoObject
		sortedUsing: [ :x :y | (x argumentAt: 1) < (y argumentAt: 1) ].
	^ pragmas collect: [ :p | self perform: p methodSelector withArguments: {composite}]