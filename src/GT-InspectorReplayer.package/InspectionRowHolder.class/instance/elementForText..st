as yet unclassified
elementForText: aString
	| text |
	text := BrRopedText string: aString.
	^ BlTextElement new
		text: text;
		yourself