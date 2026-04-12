accessing
e51
<gtExample>
| parser body |
parser := MmmmParseBody new.

body := parser  parse: '|- ( ph ->  A. y e. x ph )'.
self assert: body class equals: MmProveableModel.
^ body
