accessing
g7
<gtExample>
| parser body |
parser := MmmmParseBody new.

body := parser  parse: '|- F/ x A. y e. A ph'.
self assert: body class equals: MmProveableModel.
^ body
