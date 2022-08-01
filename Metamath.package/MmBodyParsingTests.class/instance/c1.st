accessing
c1
<gtExample>
| parser body |
parser := MmBodyParser new.

body := parser  parse: '|- ( A. x ( x = y -> ph ) -> E. x ( x = y /\ ph ) )'.
self assert: body class equals: MmProveableModel.
^ body
