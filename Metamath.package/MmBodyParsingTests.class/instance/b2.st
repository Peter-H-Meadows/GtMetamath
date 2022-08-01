accessing
b2
<gtExample>
| parser body |
parser := MmBodyParser new.

body := parser  parse: '|- A. x A. y ph'.
self assert: body class equals: MmProveableModel.
^ body
