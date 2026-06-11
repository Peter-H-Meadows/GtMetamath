accessing
i3
<gtExample>
| parser body |
parser := MmmmParseBody new.

body := parser  parse: '|- ( ph -> A u. ps )'.
self assert: body class equals: MmProveableModel.
^ body
