accessing
i5
<gtExample>
| parser body |
parser := MmmmParseBody new.

body := parser  parse: '|- ( A e. B \/ A e. C )'.
self assert: body class equals: MmProveableModel.
^ body
