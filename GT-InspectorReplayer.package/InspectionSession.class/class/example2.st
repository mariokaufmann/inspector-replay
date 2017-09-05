examples
example2

| actions session list dict |

actions := 
 {
	InspectorAction withCode: '^ self asOrderedCollection'.
	InspectorAction withIndex: 2.
	InspectorAction withKey: 'testKey'
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