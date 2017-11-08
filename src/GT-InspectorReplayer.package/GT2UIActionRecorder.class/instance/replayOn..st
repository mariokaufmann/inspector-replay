as yet unclassified
replayOn: anElement
	10 milliSeconds asDelay wait.
	BlUniverse defer: [ 
		uiActions do: [ :anAction |
			anAction executeOn: anElement. 
			10 milliSeconds asDelay wait. ] ]