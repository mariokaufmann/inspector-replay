as yet unclassified
sessionWithThreeSteps
	<gtExample>
	| session |
	
	session := self sessionWithTwoSteps.
	session iterator steps last addChildStep: (InteractionStep withCode: '^ self asOrderedCollection').
	
	^ session
	