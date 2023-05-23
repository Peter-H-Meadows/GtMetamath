accessing
body: b

b isArray ifTrue: [

	body := MmListModel new body: b .
	^ self

].

body := b.
"self halt."
body owner: self