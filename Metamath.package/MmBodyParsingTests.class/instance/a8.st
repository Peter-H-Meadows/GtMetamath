accessing
a8
<gtExample>
| parser body |
parser := MmPP2Parser new.

body := parser  parse: '|- ( -. ( ph \/ ps ) -> -. ph )'.
self assert: body class equals: MmProveableModel.
^ body
