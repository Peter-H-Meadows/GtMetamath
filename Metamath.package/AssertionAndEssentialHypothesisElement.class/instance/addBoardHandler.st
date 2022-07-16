accessing
addBoardHandler
self addEventHandler: MmBoardListener new .

hypothBox childrenDo: [ :el | el addEventHandler: MmBoardListener new . ].
