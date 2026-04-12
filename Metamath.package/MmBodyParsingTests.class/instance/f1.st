accessing
f1
<gtExample>
| parser body |
parser := MmmmParseBody new.

body := parser  parse: '|- ( E. x e. A E. y e. B ph <-> E. z e. A E. w e. B ps )'.
self assert: body class equals: MmProveableModel.
^ body
