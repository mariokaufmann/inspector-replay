initialization
pane: aPagerPane
	| titleElement titleText |

	itemElement removeChildren.
	itemElement background: Color yellow.
	itemElement width: 400.

	titleText := BrRopedText string: aPagerPane title.
	titleText attributes: {
		BrFontSizeAttribute size: 30
	}.
	titleElement := BlTextElement new.
	titleElement text: titleText.
	titleElement padding: (BlInsets all: 10).
	
	itemElement addChild: titleElement.
	itemElement addChild: aPagerPane paneElement