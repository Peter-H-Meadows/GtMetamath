accessing
e2
<gtExample>
| parser body |
parser := MmmmParseBody new.

body := parser  parse: '|- ( A. x A. y ph <-> ph )'.
self assert: body class equals: MmProveableModel.
^ body
