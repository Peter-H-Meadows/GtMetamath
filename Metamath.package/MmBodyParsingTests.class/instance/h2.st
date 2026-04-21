accessing
h2
<gtExample>
| parser body |
parser := MmmmParseBody new.

body := parser  parse: '|- ( A C_ B  ) '.
self assert: body class equals: MmProveableModel.
^ body
