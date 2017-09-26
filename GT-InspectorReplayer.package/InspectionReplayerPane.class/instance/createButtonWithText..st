accessing ui
createButtonWithText: aString
	^ BrButton new
		text: (BrRopedText string: aString);
		addStyleClass: #green;
		margin: (BlInsets all: 5);
		size: 100@20