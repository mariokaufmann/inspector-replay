as yet unclassified
replayOn: anElement withDelay: aDelay
	10 milliSeconds asDelay wait.
	BlUniverse defer: [ 
		uiActions do: [ :anAction |
			anAction executeOn: anElement. 
			aDelay wait. ] ]