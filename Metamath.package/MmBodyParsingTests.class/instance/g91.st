accessing
g91
<gtExample>
| parser body |
parser := MmmmParseBody new.

body := parser  parse: '|- [ y / x ] x e. A '.
self assert: body class equals: MmProveableModel.
^ body
