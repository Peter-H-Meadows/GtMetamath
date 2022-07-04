accessing
addHandlersForListUsable: con

| aEventListener |
"aEventListener := MmOnBoardWantedEventListener new gameController: con .

hypothBox childrenDo: [ :el | el controller: con . el addEventHandler: aEventListener . ]."

aEventListener := MmOnListUsableEventListener new gameController: con .
self addEventHandler: aEventListener .


