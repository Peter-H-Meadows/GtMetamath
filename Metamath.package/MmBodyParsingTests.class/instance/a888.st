accessing
a888
<gtExample>
| parser body |
parser := MmBodyParser new.

body := parser  parse: '|- ( -. ( ph -> ps ) -> -. ph )'.
self assert: body class equals: MmProveableModel.
^ body
