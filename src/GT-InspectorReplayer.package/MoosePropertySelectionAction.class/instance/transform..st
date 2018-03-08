accessing
transform: aMooseEntity
	^ aMooseEntity mooseInterestingEntity mmGetProperty: 
		(aMooseEntity mooseInterestingEntity mooseDescription allPrimitiveAttributes detect: [ :prop | prop name = property name ] 
			ifNone: [ ^ 0 ])