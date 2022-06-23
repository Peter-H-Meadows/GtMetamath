copying
postCopy 

"body := body collect: [ :ea | ea copy ] ."

"vars ifNil: [  
	
vars := Dictionary new .
self allVariableNames do: [ :ea | vars at: ea put: (MmFreeVariable new name: ea )]	
	
].

body := body copy vars: vars .

essentialHypoths := essentialHypoths collect: [ :ea | ea copy owner: self ] ."

"fHypoths := fHypoths collect: [ :ea | ea copy ] ."

"mandFhypoths := mandFhypoths collect: [ :ea | ea copy ] ."

announcer := Announcer new.

self reparse .

isComplete := false .