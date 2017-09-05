examples
example1

| actions session list dict |

actions := 
 {
	InspectorAction withIndex: 2.
	InspectorAction withKey: 'testKey'
	}.
	
session := InspectionSession new.

actions do: [ :action | session addAction: action ].

dict := Dictionary new.
dict at: 'testKey' put: 42.
dict at: 'abc' put: 15.

list := OrderedCollection new.
list add: Dictionary new.
list add: dict.

^ session executeOn: list