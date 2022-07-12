accessing
a1
<gtExample>
| parser body |
parser := MmPP2Parser new.

body := parser  parse: '|- ph'.
self assert: body class equals: MmProveableModel.
^ body
