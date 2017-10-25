initialization
initialize
	super initialize.
	
	self layout: BlLinearLayout horizontal.
	
	panesElement := GT2PagerPanesListElement new.
	
	panesElement constraintsDo: [ :c |
		c horizontal matchParent.
		c vertical matchParent ].

	buttonLeft := BlTextElement new
		padding: (BlInsets all: 10);
		margin: (BlInsets right: 20);
		background: Color veryLightGray;
		text: (BrRopedText string: '< Left');
		addEventHandlerOn: BlClickEvent do: [ :anEvent |
			panesElement smoothScrollBy: panesElement width negated @ 0 ].
	buttonRight := BlTextElement new
		padding: (BlInsets all: 10);
		margin: (BlInsets left: 20);
		background: Color veryLightGray;
		text: (BrRopedText string: 'Right >');
		addEventHandlerOn: BlClickEvent do: [ :anEvent |
			panesElement smoothScrollBy: panesElement width @ 0 ].

	self addChildren: { buttonLeft . panesElement . buttonRight }