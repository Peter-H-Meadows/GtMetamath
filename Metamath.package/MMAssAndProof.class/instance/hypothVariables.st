as yet unclassified
hypothVariables

"mandFhypoths ." 

| varSet |
varSet := Set new .

essentialHypoths do: [ :ea | varSet addAll: ea localVariables  ] .

^ varSet
