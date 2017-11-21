as yet unclassified
elementForText: aString
	| text |
	text := BrRopedText string: aString.
	^ BlTextElement new
		text: text;
		"margin: (BlInsets left: 20 right: 20);"
		yourself.
