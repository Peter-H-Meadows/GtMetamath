accessing
e9
<gtExample>
| parser body |
parser := MmmmParseBody new.

body := parser  parse: '|- ( A. y A. x ph )'.
self assert: body class equals: MmProveableModel.
^ body
