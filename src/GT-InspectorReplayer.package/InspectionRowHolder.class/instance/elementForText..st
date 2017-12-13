as yet unclassified
elementForText: aString
	| aText |
	
	aText := aString asRopedText.
	aText attributes: {
		BrFontFamilyAttribute named: 'Helvetica Neue'
	}.

	^ BlShrinkingTextElement new
		text: aText;
		yourself