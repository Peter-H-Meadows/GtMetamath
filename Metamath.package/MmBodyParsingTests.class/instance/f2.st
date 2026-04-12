accessing
f2
<gtExample>
| parser body |
parser := MmmmParseBody new.

body := parser  parse: '|- ( E. x E. y ph <-> ps )'.
self assert: body class equals: MmProveableModel.
^ body
