accessing
d5
<gtExample>
| parser body |
parser := MmPP2Parser new.

body := parser  parse: '|- ( A e. { x e. V | ph } -> A e. V )'.
self assert: body class equals: MmProveableModel.
^ body
