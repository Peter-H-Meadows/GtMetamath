accessing
addBoardHandler: board

	mainBoard := board .

	self addEventHandler: MmBoardListener new.
	
	self announcer
				when: MmUseableSelectedAnnouncement
				send: #usableSelected:
				to: board.

	hypothBox
		childrenDo: [ :el | 
			el mainBoard: board .
			el addEventHandler: MmBoardListener new.
			el announcer
				when: MmWantedSelectedAnnouncement
				send: #wantedSelected:
				to: board ]