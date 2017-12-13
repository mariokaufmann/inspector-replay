as yet unclassified
onRowSelectionChanged: anAnnouncement
	anAnnouncement row isSelected
		ifTrue: [ self selectRow: anAnnouncement row ]
		ifFalse: [ self deselectRow: anAnnouncement row ]