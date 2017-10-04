initialization
pane: aPagerPane
	| titleElement titleText |

	itemElement removeChildren.
	itemElement width: 400.

	titleText := BrRopedText string: aPagerPane title.
	titleElement := BlTextElement new.
	titleElement text: titleText.
	titleElement padding: (BlInsets all: 10).
	
	itemElement addChild: titleElement.
	itemElement addChild: aPagerPane paneElement