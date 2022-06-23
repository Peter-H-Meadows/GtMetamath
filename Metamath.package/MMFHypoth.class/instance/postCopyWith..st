as yet unclassified
postCopyWith: vs

body := body collect: [ :ea | ea copyWithVars: vs ] .

announcer := Announcer new