accessing
e81
<gtExample>
| parser body |
parser := MmmmParseBody new.

body := parser  parse: '|- ( A. y e. x A. x ph ->  ph )'.
self assert: body class equals: MmProveableModel.
^ body
