executing
childElementOf: aBlElement
	^ aBlElement children detect: [ :each | each text asString = tabName ] 
	ifNone: [ self error: 'Could not replay tab selection, did not find tab with name ' , tabName , '.']