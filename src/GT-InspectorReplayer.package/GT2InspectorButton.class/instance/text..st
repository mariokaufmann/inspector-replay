accessing
text: aText
	| aLabelText aLabel |
	self removeChildren.

	aLabelText := aText.
	aLabelText attributes: {
		BrTextForegroundAttribute paint: Color white.
		BrFontSizeAttribute size: 13.
		BrFontFamilyAttribute named: 'Helvetica'.
		BrFontWeightAttribute thin
	}.

	aLabel := BlTextElement new.
	aLabel text: aLabelText.
	self addChild: aLabel