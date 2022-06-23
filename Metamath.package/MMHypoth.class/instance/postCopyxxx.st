copying
postCopyxxx 

"body := body collect: [ :ea | ea copy ] ."

body := body copy.

announcer := Announcer new