accessing
wee
<gtExample>
 
 | db |
	db :=  self we . 
 db proofs do: [:ea | ea reparse].
 ^ db proofs last asArray