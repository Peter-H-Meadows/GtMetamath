accessing
dd8
<gtExample>
| parser body |
parser := MmmmParseBody new.

body := parser  parse: '|- wtf ( ph , ps , ch )'.
self assert: body class equals: MmProveableModel.
^ body
