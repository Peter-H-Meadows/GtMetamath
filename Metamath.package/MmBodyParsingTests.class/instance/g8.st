accessing
g8
<gtExample>
| parser body |
parser := MmmmParseBody new.

body := parser  parse: '|- ( A. x e. A ph <-> A. y e. A [ y / x ] ph )'.
self assert: body class equals: MmProveableModel.
^ body
