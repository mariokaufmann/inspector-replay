selection
beSelected
	self selected: true.
	self announcer announce: (RowSelectionStateAnnouncement new row: self)