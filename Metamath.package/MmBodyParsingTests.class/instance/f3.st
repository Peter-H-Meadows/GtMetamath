accessing
f3
<gtExample>
| parser body |
parser := MmmmParseBody new.

body := parser  parse: '|- ( E. y e. x ph <-> ps )'.
self assert: body class equals: MmProveableModel.
^ body
