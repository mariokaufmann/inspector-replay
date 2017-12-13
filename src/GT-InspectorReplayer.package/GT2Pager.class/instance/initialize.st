initialization
initialize
	super initialize.
	
	self layout: BlFrameLayout new.
	
	panesElement := GT2PagerPanesListElement new.
	panesElement constraintsDo: [ :c |
		c horizontal matchParent.
		c vertical matchParent ].

	buttonLeft := BlElement new.
	buttonLeft background: (
		BlLinearGradientPaint horizontal from: (Color white alpha: 1) to: (Color white alpha: 0)).
	buttonLeft effect: (BlBlurBelowEffect radius: 0.5).
	buttonLeft constraintsDo: [ :c |
		c vertical matchParent.
		c horizontal exact: 55.
		c frame horizontal alignLeft.
		c frame vertical alignCenter ];
	addEventHandlerOn: BlClickEvent do: [ :anEvent |
			panesElement smoothScrollBy: panesElement width negated @ 0 ].
		
	buttonRight := BlElement new.
	buttonRight background: (
		BlLinearGradientPaint horizontal from: (Color white alpha: 0) to: (Color white alpha: 1)).
	buttonRight effect: (BlBlurBelowEffect radius: 0.5).
	buttonRight constraintsDo: [ :c |
		c vertical matchParent.
		c horizontal exact: 55.
		c frame horizontal alignRight.
		c frame vertical alignCenter ];
	addEventHandlerOn: BlClickEvent do: [ :anEvent |
			panesElement smoothScrollBy: panesElement width @ 0 ].

	self addChildren: { panesElement . buttonLeft . buttonRight }