accessing
setVarSyms

self error .

vars := (body collect: [ :ea | ea getVarSyms ]) flattened .

vars := vars asSet .