accessing
b223
<gtExample>
| parser body |
parser := MmBodyParser new.

body := parser  parse: '|- A. ph ph'.
self assert: body class equals: MmProveableModel.
^ body
