accessing
b3
<gtExample>
| parser body |
parser := MmBodyParser new.

body := parser  parse: '|- ph =/= ps'.
self assert: body class equals: MmProveableModel.
^ body
