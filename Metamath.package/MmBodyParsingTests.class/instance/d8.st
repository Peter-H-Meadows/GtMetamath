accessing
d8
<gtExample>
| parser body |
parser := MmPP2Parser new.

body := parser  parse: '|- ( ph -> ph ) = { x e. A | x e. B }'.
self assert: body class equals: MmProveableModel.
^ body
