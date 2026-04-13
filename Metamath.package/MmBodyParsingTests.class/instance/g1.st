accessing
g1
<gtExample>
| parser body |
parser := MmmmParseBody new.

body := parser  parse: '|- ( x e. A -> ( ph <-> ps ) )'.
self assert: body class equals: MmProveableModel.
^ body
