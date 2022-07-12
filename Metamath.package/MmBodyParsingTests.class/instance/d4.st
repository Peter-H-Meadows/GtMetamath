accessing
d4
<gtExample>
| parser body |
parser := MmPP2Parser new.

body := parser  parse: '|- ( A e. { x | ph } <-> ps )'.
self assert: body class equals: MmProveableModel.
^ body
