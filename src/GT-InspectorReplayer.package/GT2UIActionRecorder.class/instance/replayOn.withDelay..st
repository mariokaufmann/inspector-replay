as yet unclassified
replayOn: anElement withDelay: aDelay
	10 milliSeconds asDelay wait.
	BlUniverse defer: [ 
		uiActions do: [ :anAction |
			anAction replayOn: anElement. 
			aDelay wait. ] ]