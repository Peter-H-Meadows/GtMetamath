accessing
a4
<gtExample>
| parser body |
parser := MmPP2Parser new.

body := parser  parse: '|- -. ( ph -> ( ph -> ps ) )'.
self assert: body class equals: MmProveableModel.
^ body
