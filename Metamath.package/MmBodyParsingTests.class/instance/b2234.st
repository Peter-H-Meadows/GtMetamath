accessing
b2234
<gtExample>
| parser body |
parser := MmmmParseBody new.

body := parser  parse: '|- A. ph ( ph -> ph )'.
self assert: body class equals: MmProveableModel.
^ body
