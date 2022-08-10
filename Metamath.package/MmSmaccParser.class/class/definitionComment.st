generated
definitionComment
"%glr;
%prefix Mmxx;
%suffix Node;
%root Database;
<whitespace>
	: \s+
	;
<name>
	:  (<isLetter> | <isDigit> | _ ) ( <isLetter> | \. | \- | <isDigit> ) *
	;
<mmcomment>
	#:  \$\( [^(\))]* \$\)
	: (\$\( [^\$]* \$+ ([^\)\$] [^\$]* \$+)* \))
	;
<end>
	: ([^\$]* \$+ ([^\.\$] [^\$]* \$+)* \.)
	;
<var>
	: \$v <end>
	;
<const>
	: \$c <end>
	;
<disjoint>
	: \$d [^\.]* \$\.
	;
<proof>
	:  <name> \s+  \$p <end>
	;
<assertion>
	:  <name> \s+  \$a <end>
	;
<ehypoth>
	:  <name> \s+  \$e <end>
	;
<fhypoth>
	:  <name> \s+  \$f <end>
	;
Database
	: ScopeItems 'statement' {{}}
	;
Statement
	: Scope
	| Proof
	| Assertion
	| Ehypoth
	| Fhypoth
	| Var
	| MmComment
	| Constant
	| Disjoint
	;
Scope
	: ""${"" ScopeItems ""$}"" {{}}
	;
ScopeItems
	: 
	| ScopeItems Statement 'value'
	;
MmComment
	: <mmcomment> 'value' {{}}
	;
Var
	: <var> 'value' {{}}
	;
Constant
	: <const> 'value' {{}}
	;
Proof
	: <proof> 'value' {{}}
	;
Assertion
	: <assertion> 'value' {{}}
	;
Disjoint
	: <disjoint> 'value' {{}}
	;
Ehypoth
	: <ehypoth> 'value' {{}}
	;
Fhypoth
	: <fhypoth> 'value' {{}}
	;"