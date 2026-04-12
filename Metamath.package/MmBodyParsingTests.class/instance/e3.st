accessing
e3
<gtExample>
| parser body |
parser := MmmmParseBody new.

body := parser  parse: '|- ( A. x A. y ph )'.
self assert: body class equals: MmProveableModel.
^ body
