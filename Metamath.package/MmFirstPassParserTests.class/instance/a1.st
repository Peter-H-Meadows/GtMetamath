as yet unclassified
a1
<gtExample>
| parser body |
parser := MmPP2ParserFirst2 new.

body := parser  parse: ' ${ $$ |- ph $. $} '.
self assert: MmPP2ParserFirst2 database class equals: MmScopeModel.
^ MmPP2ParserFirst2 database