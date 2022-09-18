cleaning
pcopy

| cp |

self error .

cp := self copy .

self localVariables do: [ :ea | ea clean ] .

^ cp