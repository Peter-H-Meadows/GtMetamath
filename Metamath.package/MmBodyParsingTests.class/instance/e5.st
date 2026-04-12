accessing
e5
<gtExample>
| parser body |
parser := MmmmParseBody new.

body := parser  parse: '|- ( ph ->  A. y ph )'.
self assert: body class equals: MmProveableModel.
^ body
