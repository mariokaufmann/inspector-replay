executing
replayOn: anElement
	100 milliSeconds asDelay wait.
	BlUniverse defer: [ 
		uiActions do: [ :anAction |
			anAction replayOn: anElement. 
			300 milliSeconds asDelay wait. ] ]