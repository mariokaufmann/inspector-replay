as yet unclassified
replayOn: anElement withDelay: aDelay
	uiActions do: [ :anAction |
		anAction executeOn: anElement.
		aDelay wait. ]