accessing
b2
<gtExample>
| parser body |
parser := MmPP2Parser new.

body := parser  parse: '|- A. x A. y ph'.
self assert: body class equals: MmProveableModel.
^ body
