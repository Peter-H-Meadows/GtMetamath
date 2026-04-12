accessing
e7
<gtExample>
| parser body |
parser := MmmmParseBody new.

body := parser  parse: '|- ( A. y ph ->  ph )'.
self assert: body class equals: MmProveableModel.
^ body
