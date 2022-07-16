accessing
addBoardHandler: board
	self addEventHandler: MmBoardListener new.
	
	self announcer
				when: MmUseableSelectedAnnouncement
				send: #usableSelected:
				to: board.

	hypothBox
		childrenDo: [ :el | 
			el addEventHandler: MmBoardListener new.
			el announcer
				when: MmWantedSelectedAnnouncement
				send: #wantedSelected:
				to: board ]