*GT-InspectorReplayer
navigationActions
	| entity pragmaValueAssociations |
	entity := self mooseInterestingEntity.
		pragmaValueAssociations := entity complexPropertyPragmas
			collect: [ :pragma | 
				pragma -> (entity perform: pragma methodSelector) mooseInterestingEntity ].
	^ (pragmaValueAssociations
		reject: [ :association | 
			association value isNil
				or:
					[ association value isCollection and: [ association value isEmpty ] ] ])
		sorted: [ :a :b | 
			(a key argumentAt: 1) asLowercase asString
				< (b key argumentAt: 1) asLowercase asString ]