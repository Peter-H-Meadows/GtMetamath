accessing
h3
<gtExample>
| parser body |
parser := MmmmParseBody new.

body := parser  parse: '|- ( A C_ B -> A C_ ( C e. B ) ) '.
self assert: body class equals: MmProveableModel.
^ body
