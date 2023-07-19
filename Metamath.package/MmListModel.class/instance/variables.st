accessing
variables
	| vset |
	""
	vset := Set new.
	body do: [ :ea | vset add: ea variables ].
"self halt."
	^ vset flatten	"^ (body collect: [ :ea | ea variables ]) flattened asSet ."