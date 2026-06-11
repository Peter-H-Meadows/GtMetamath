accessing
i9
<gtExample>
| parser body |
parser := MmmmParseBody new.

body := parser  parse: '|- ( A C_ B ->  A u. C  )'.
self assert: body class equals: MmProveableModel.
^ body
