accessing
localVariables

| vset |
	vset := OrderedCollection new . 
	"essentialHypoths do: [ :ea | vset add: ea variables ]."

	"vset := (essentialHypoths collect:  #variables) .
self halt."

 vset add:  body variables . 
 
 ^ vset flatten asSet asArray