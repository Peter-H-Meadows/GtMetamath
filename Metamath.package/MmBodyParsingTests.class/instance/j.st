accessing
j
<gtExample>
| parser body |
parser := MmmmParseBody new.

body := parser  parse: '|- ( ( A i^i B ) i^i C ) = ( ( A i^i C ) i^i ( B i^i C ) )'.
self assert: body class equals: MmProveableModel.
^ body
