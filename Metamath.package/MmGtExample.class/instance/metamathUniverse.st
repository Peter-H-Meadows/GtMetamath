example
metamathUniverse 
<gtExample>

| parser verse |
parser := self parser .
verse := parser parse: self mmSourceFileSetDotMM .

self assert: verse varNames equals: { 'ph' . 'ps' } asSet .

self assert: verse assertions size equals: 3 .

self assert: verse proofs size equals: 1 .

^ verse
