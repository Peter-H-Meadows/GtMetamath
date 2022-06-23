copying
postCopy 

body := body collect: [ :ea | ea copy ] .

announcer := Announcer new