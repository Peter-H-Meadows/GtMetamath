accessing
b1
<gtExample>
| parser body |
parser := MmmmParseBody new.

body := parser  parse: '|- ( F/ x ph <-> ( A. x ph \/ -. E. x ph ) )'.
self assert: body class equals: MmProveableModel.
^ body
