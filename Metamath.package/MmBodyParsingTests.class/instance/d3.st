accessing
d3
<gtExample>
| parser body |
parser := MmBodyParser new.

body := parser  parse: '|- ( A. x A. y ph -> [ z / x ] [ w / y ] ph )'.
self assert: body class equals: MmProveableModel.
^ body
