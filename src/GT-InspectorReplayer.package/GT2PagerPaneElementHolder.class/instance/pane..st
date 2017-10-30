initialization
pane: aPagerPane
	| titleElement titleText paneElement |

	itemElement removeChildren.
	itemElement width: 400.

	titleText := BrRopedText string: aPagerPane title.
	titleElement := BlTextElement new.
	titleElement text: titleText.
	titleElement padding: (BlInsets all: 10).
	
	itemElement addChild: titleElement.
	paneElement := aPagerPane paneElement.
	paneElement hasParent ifTrue: [ paneElement parent removeChild: paneElement ].
	itemElement addChild: aPagerPane paneElement