accessing
e6
<gtExample>
| parser body |
parser := MmmmParseBody new.

body := parser  parse: '|- ( A. y ph ->  A. y ph )'.
self assert: body class equals: MmProveableModel.
^ body
