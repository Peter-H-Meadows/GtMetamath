accessing
a5
<gtExample>
| parser body |
parser := MmBodyParser new.

body := parser  parse: '|- -. ( ph -> ( ph -> -. ps ) )'.
self assert: body class equals: MmProveableModel.
^ body
