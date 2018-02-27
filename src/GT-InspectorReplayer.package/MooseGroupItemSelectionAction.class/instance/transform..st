accessing
transform: aMooseGroup
	^ aMooseGroup detect: [ :each | each mooseName = groupItemName ]