accessing
a1
<gtExample>
| parser body |
parser := MmBodyParser new.

body := parser  parse: '|- ph'.
self assert: body class equals: MmProveableModel.
^ body
