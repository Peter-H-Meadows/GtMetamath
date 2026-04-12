accessing
d7
<gtExample>
| parser body |
parser := MmmmParseBody new.

body := parser  parse: '|- ( ( A e. B /\ ps /\ A. x ( ph -> x = A ) ) -> E! x ph )'.
self assert: body class equals: MmProveableModel.
^ body
