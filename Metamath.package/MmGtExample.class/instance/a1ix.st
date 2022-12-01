example
a1ix
"<gtExample>"

| a1i res |

a1i := (self metamathUniverse proofs first "at: 'a1i'") copy .

self assert: a1i name equals: 'a1i' .
"
self assert: a1i mands size equals: 3 ."
self assert: a1i essentialHypoths size equals: 1 .

self assert: a1i essentialHypoths first name equals: 'a1i.1' .

"self assert: a1i localVariableNames equals: { 'ph' . 'ps' } asSet .

self assert: a1i hypothVariableNames equals: { 'ph' } asSet ."

a1i setAllVariablesToFixed .

"self assert: a1i localVariables anyOne isFixed equals: true .

self assert: (self metamathUniverse proofNamed: 'a1i') localVariables anyOne isFixed equals: false .
"

res := a1i returnMappableFrom: (a1i prevAssertions collect: [:ea | ea reparse ]) .
"
^ a1i prevAssertions collect: [:ea | ea reparse ]"

res asArray first essentialHypoths first canMapTo: a1i prevAssertions asArray first.

"^ res asArray first essentialHypoths first canMapTo: a1i prevAssertions asArray second"
^ res asArray first essentialHypoths second canMapTo: a1i prevAssertions asArray first
