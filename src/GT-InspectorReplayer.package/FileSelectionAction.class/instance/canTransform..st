accessing
canTransform: anObject
	^ (anObject respondsTo: #files) and: [ (anObject files 
		collect: [ :reference | reference basename ])
		anySatisfy:  [ :name | name = fileName ] ]