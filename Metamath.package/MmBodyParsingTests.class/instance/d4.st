accessing
d4
<gtExample>
| parser body |
parser := MmBodyParser new.

body := parser  parse: '|- ( A e. { x | ph } <-> ps )'.
self assert: body class equals: MmProveableModel.
^ body
