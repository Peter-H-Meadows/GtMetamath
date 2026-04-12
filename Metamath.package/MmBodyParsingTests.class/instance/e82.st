accessing
e82
<gtExample>
| parser body |
parser := MmmmParseBody new.

body := parser  parse: '|- ( A. y e. x A. x e. y ph ->  ph )'.
self assert: body class equals: MmProveableModel.
^ body
