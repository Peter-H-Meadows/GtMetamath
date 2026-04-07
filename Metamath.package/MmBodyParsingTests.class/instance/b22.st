accessing
b22
<gtExample>
| parser body |
parser := MmBodyParser new.

body := parser  parse: '|- ( A. x ph -> ph )'.
self assert: body class equals: MmProveableModel.
^ body
