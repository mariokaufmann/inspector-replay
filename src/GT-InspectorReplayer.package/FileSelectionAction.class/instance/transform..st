accessing
transform: aFileReference
	^ aFileReference files detect: [ :reference | reference basename  = fileName  ]