example
a1i
<gtExample>

| a1i |

a1i := (self metamathUniverse proofs first "at: 'a1i'") vcopy .

self assert: a1i name equals: 'a1i' .

self assert: a1i essentialHypoths size equals: 1 .

self assert: a1i essentialHypoths first name equals: 'a1i.1' .

"self assert: a1i localVariableNames equals: { 'ph' . 'ps' } asSet .

self assert: a1i hypothVariableNames equals: { 'ph' } asSet ."

a1i setAllVariablesToFixed .

self assert: a1i isComplete equals: true .

"self assert: a1i localVariables anyOne isFixed equals: true .

self assert: (self metamathUniverse proofNamed: 'a1i') localVariables anyOne isFixed equals: false .
"
^ a1i
