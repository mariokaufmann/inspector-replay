accessing
selected: aBoolean
	selected := aBoolean.
	self announcer announce: RowSelectionStateAnnouncement new.