accessing
i8
<gtExample>
| parser body |
parser := MmmmParseBody new.

body := parser  parse: '|- ( A ->  A  C_  B  )'.
self assert: body class equals: MmProveableModel.
^ body
