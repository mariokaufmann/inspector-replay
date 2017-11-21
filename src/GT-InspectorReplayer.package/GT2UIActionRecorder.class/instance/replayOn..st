as yet unclassified
replayOn: anElement
	100 milliSeconds asDelay wait.
	BlUniverse defer: [ 
		uiActions do: [ :anAction |
			anAction executeOn: anElement. 
			300 milliSeconds asDelay wait. ] ]