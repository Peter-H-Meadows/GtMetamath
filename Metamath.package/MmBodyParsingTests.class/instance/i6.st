accessing
i6
<gtExample>
| parser body |
parser := MmmmParseBody new.

body := parser  parse: '|- ( A -> B \/ A -> C )'.
self assert: body class equals: MmProveableModel.
^ body
