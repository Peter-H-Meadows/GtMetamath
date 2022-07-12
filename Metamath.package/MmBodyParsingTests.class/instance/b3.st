accessing
b3
<gtExample>
| parser body |
parser := MmPP2Parser new.

body := parser  parse: '|- ph =/= ps'.
self assert: body class equals: MmProveableModel.
^ body
