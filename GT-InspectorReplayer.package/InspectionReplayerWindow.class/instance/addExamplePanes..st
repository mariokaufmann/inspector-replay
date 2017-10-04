adding
addExamplePanes: aPagerPane
| tabs styler editorText editor editorElement tab2 tab3 tab1 row1 row2 |

	tabs := InspectionPagerPaneTabGroupElement new.
	tabs constraintsDo: [ :c |
		c horizontal matchParent.
		c vertical matchParent ].

	styler := BrRBTextStyler new classOrMetaClass: Morph.
	editorText := (Morph>>#fullDrawOn:) sourceCode asRopedText.

	editor := BrTextEditor new.
	editor text: editorText.
	editor styler: styler.

	editorElement := BrEditorElement new.
	editorElement editor: editor.
	editorElement constraintsDo: [ :c |
		c horizontal matchParent.
		c vertical matchParent ].
	editorElement background: Color white.
	editorElement margin: (BlInsets all: 10).

	tab1 := BlElement new
		size: 300@300;
		margin: (BlInsets all: 20);
		background: Color red.

	tab2 := BlElement new
		size: 300@300;
		margin: (BlInsets all: 20);
		background: Color blue.

	tab3 := InspectionTableElement new
		constraintsDo: [ :c |
		c horizontal matchParent.
		c vertical matchParent ];
		margin: (BlInsets all: 20).
		
	row1 := InspectionRowElement new.
	row1 put: 'width' atColumn: 'Property'.
	row1 put: 300 atColumn: 'Value'.
	
	row2 := InspectionRowElement new.
	row2 put: 'height' atColumn: 'Property'.
	row2 put: 600 atColumn: 'Value'.
		
	tab3 rowsElement dataSource 
		addRow: row1;
		addRow: row2.
		
	"tabs addTab: editorElement titled: 'Editor'."
	tabs addTab: tab1 titled: 'Tab 1'.
	tabs addTab: tab2 titled: 'Tab 2'.
	tabs addTab: tab3 titled: 'List'.

	aPagerPane panesElement dataSource
		addPane: (InspectionPagerPane new title: 'Pane 1'; elementBlock: [tabs]).