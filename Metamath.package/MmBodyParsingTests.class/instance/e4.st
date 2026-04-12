accessing
e4
<gtExample>
| parser body |
parser := MmmmParseBody new.

body := parser  parse: '|- ( ph -> A. x A. y ph )'.
self assert: body class equals: MmProveableModel.
^ body
