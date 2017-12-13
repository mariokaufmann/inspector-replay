selection
beDeselected
	self selected: false.
	self announcer announce: (RowSelectionStateAnnouncement new row: self)