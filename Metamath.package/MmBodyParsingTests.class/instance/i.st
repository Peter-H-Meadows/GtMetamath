accessing
i
<gtExample>
| parser body |
parser := MmmmParseBody new.

body := parser  parse: '|- ( A e. B -> A e. ( B u. C ) )'.
self assert: body class equals: MmProveableModel.
^ body
