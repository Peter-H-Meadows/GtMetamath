accessing
e1
<gtExample>
| parser body |
parser := MmmmParseBody new.

body := parser  parse: '|- ( A. x e. y A. x e. y ph <-> A. x e. y A. x e. y ph )'.
self assert: body class equals: MmProveableModel.
^ body
