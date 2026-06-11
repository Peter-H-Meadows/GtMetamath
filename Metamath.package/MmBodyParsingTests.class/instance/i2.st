accessing
i2
<gtExample>
| parser body |
parser := MmmmParseBody new.

body := parser  parse: '|- ( A e. ( B u. C ) )'.
self assert: body class equals: MmProveableModel.
^ body
