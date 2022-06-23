deprecated
setupMondrian

| aEventListener el |

self error .

aEventListener := MmOnBoardWantedEventListener  new gameController: self .

currentlySelectedElement := proofToDo onBoardGameElement addEventHandler: aEventListener .

mondrian nodes 
	stencil: [ :x | x ] ;
	with: { currentlySelectedElement  } .


proofToDo eHypoths do: [ :hypoth |  | hyy |
	
	hyy := hypoth copy .
	hypoth clean . 
	
	aEventListener := MmOnBoardHypothEventListener new gameController: self "; myModel: as" .
	el := hyy onBoardGameElement addEventHandler: aEventListener .
	
	mondrian nodes 
	stencil: [ :x | x ] ;
	with: { el } .
		
	mondrian layout horizontalTree .
	
	
	].