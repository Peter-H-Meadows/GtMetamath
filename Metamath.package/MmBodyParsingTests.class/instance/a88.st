accessing
a88
<gtExample>
| parser body |
parser := MmBodyParser new.

body := parser  parse: '|- ( -.  ph   -> -. ph )'.
self assert: body class equals: MmProveableModel.
^ body
