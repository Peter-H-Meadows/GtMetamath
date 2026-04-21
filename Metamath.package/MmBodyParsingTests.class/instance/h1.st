accessing
h1
<gtExample>
| parser body |
parser := MmmmParseBody new.

body := parser  parse: '|- ( A C_ B -> A C_ ( C u. B ) ) '.
self assert: body class equals: MmProveableModel.
^ body
