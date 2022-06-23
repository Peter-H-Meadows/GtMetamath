cleaning
pcopy

| cp |
cp := self copy .

self localVariables do: [ :ea | ea clean ] .

^ cp