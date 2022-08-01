accessing
d8
<gtExample>
| parser body |
parser := MmBodyParser new.

body := parser  parse: '|- ( ph -> ph ) = { x e. A | x e. B }'.
self assert: body class equals: MmProveableModel.
^ body
