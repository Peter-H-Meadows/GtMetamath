accessing
g2
<gtExample>
| parser body |
parser := MmmmParseBody new.

body := parser  parse: '|- ( x e. A -> ph )'.
self assert: body class equals: MmProveableModel.
^ body
