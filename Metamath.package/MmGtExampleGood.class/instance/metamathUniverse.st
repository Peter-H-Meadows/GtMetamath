basic
metamathUniverse 
<gtExample>

| parser verse scope |
parser := self parser .
scope := parser parse: MmRawFileDataPartOne comment "self mmSourceFileSetDotMM1" .
scope first parse .
"self assert: verse varNames equals: { 'ph' . 'ps' } asSet .

self assert: verse assertions size equals: 3 .

self assert: verse proofs size equals: 1 ."

^ scope first
