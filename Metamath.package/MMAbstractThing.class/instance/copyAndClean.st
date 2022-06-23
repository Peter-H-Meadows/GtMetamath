cleaning
copyAndClean

| cp |
cp := self copy .

self allVariables do: [ :ea | ea clean ] .

^ cp