accessing
variables
"includes vars from ehypoths (that might not be in body)"
| vset |
""
	vset := OrderedCollection new . 
essentialHypoths do: [ :ea | vset add: ea variables ].
"vset := (essentialHypoths collect:  #variables) .
self halt."
 (vset add:  body variables  ). 
 
 ^ vset flatten asSet