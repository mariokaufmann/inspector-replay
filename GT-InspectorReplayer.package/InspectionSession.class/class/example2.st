examples
example2
	| actions session list dict |
	actions := 
 	{
		InteractionStep withCode: '^ self asOrderedCollection'.
		InteractionStep withIndex: 2.
		InteractionStep withKey: 'testKey'
	}.
	
	session := InspectionSession new.

	actions do: [ :action | session addAction: action ].

	dict := Dictionary new.
	dict at: 'testKey' put: 42.
	dict at: 'abc' put: 15.

	list := { 
		Dictionary new.
		dict
 	}.

	^ session executeOn: list