accessing
d6
<gtExample>
| parser body |
parser := MmPP2Parser new.

body := parser  parse: '|- ( F/_ x A -> { z | A. x z e. A } = A )'.
self assert: body class equals: MmProveableModel.
^ body
