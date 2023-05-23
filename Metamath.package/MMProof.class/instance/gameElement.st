accessing
gameElement

"self halt ."

body := MmPP2ParserFirst2 bp parse: bodyString1 .

^ MmProofElement new initializeWithProof: self 
