accessing
body: b

body := b

"b isArray ifTrue: [

	body := MmListModel new body: b .
	^ self

].

body := b.

body owner: self"