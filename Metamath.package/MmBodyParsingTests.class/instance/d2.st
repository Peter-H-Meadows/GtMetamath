accessing
d2
<gtExample>
| parser body |
parser := MmPP2Parser new.

body := parser  parse: '|- ( A. x ( x = y -> ph ) -> [ y / x ] ph )'.
self assert: body class equals: MmProveableModel.
^ body
