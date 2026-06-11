accessing
i4
<gtExample>
| parser body |
parser := MmmmParseBody new.

body := parser  parse: '|- ( A e. ( B u. C ) <-> ( A e. B \/ A e. C ) )'.
self assert: body class equals: MmProveableModel.
^ body
