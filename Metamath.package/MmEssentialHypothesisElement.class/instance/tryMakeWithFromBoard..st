as yet unclassified
tryMakeWithFromBoard: selectedUsableElement

self error.

"usable el could be: 
ehypoth from proof were doing,
assertion from list,
assertion on board.

make sure it;s not in the same thing."

parent parent = selectedUsableElement parent ifTrue: [ self error . ^ self ] .

"we are ehypoth. usable could be proof,hypoth,assertion.."

"only remove if .."

selectedUsableElement all removeFromParent .

"add as trying thing"

self addChildFirst: selectedUsableElement all .

selectedUsableElement model canMapTo: model.