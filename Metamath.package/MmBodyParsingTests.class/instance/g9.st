accessing
g9
<gtExample>
| parser body |
parser := MmmmParseBody new.

body := parser  parse: '|- ( [ y / x ] x e. A <-> ps )'.
self assert: body class equals: MmProveableModel.
^ body
