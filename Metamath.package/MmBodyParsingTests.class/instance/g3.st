accessing
g3
<gtExample>
| parser body |
parser := MmmmParseBody new.

body := parser  parse: '|- ( E! x e. A ph <-> E! x ( x e. A /\ ph ) )'.
self assert: body class equals: MmProveableModel.
^ body
