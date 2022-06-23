accessing
setupProof: proofName 
"open workspace for proving"
"proofToDo := (universe proofNamed: proofName) copyAndClean ."

proofToDo := "ProofDict at:" proofName .

"proofToDo setAllVariablesToFixed ."
"proofToDo setAllVariablesToFree."

"self setupMondrian ."

board := MmMainBoard new .
board controller: self .
board setupForProving: proofToDo .

"add usable assertions to board"

self openInWindow: board named: proofName name extent: 800@600 .
