as yet unclassified
a2
<gtExample>
| parser body |
parser := MmPP2ParserFirst2 new.

body := parser  parse: self rawProofString.
self assert: MmPP2ParserFirst2 database class equals: MmScopeModel.
^ MmPP2ParserFirst2 database