accessing
d1
<gtExample>
| parser body |
parser := MmmmParseBody new.

body := parser  parse: '|- [ y / x ] x = y'.
self assert: body class equals: MmProveableModel.
^ body
