adding
initialize
	super initialize.

	tabElements := OrderedCollection new.

	self width: 100.
	self layout: BlLinearLayout vertical.

	labelsElement := BlElement new
		layout: BlFlowLayout new;
		padding: (BlInsets top: 0 right: 10 bottom: 0 left: 10);
		constraintsDo: [ :c |
			c horizontal matchParent.
			c vertical fitContent ].

	contentElement := BlElement new
		layout: BlLinearLayout horizontal;
		background: self backgroundColor;
		constraintsDo: [ :c |
			c horizontal matchParent.
			c vertical matchParent ].

	self addChildren: { labelsElement . contentElement }