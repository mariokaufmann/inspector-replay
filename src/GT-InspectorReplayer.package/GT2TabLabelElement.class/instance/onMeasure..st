layout
onMeasure: anExtentMeasurementSpec
	| aMeasuredWidth aMeasuredHeight |
	super onMeasure: anExtentMeasurementSpec.

	self layout measureChild: underline parentSpec: anExtentMeasurementSpec.

	underline constraints horizontal resizer  isMatchParent
		ifTrue: [ aMeasuredWidth := self measuredWidth ]
		ifFalse: [ aMeasuredWidth := underline measuredWidth ].	

	underline constraints vertical resizer isMatchParent
		ifTrue: [ aMeasuredHeight := self measuredHeight ]
		ifFalse: [ aMeasuredHeight := underline measuredHeight ].

	underline measure: (BlExtentMeasurementSpec exact: aMeasuredWidth @ aMeasuredHeight).
	underline measuredBounds position: 0@(self measuredHeight - underline measuredHeight)