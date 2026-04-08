accessing
b22345
<gtExample>
| parser body |
parser := MmmmParseBody new.
body := parser  parse: '|- ph'.
self assert: body class equals: MmProveableModel.

parser := MmmmParseBody new.
body := parser  parse: '|- A. ph ph'.
self assert: body class equals: MmProveableModel.


parser := MmmmParseBody new.
body := parser  parse: '|- A. ph ph -> ph'.
self assert: body class equals: MmProveableModel.

parser := MmmmParseBody new.
body := parser  parse: '|- A. ph ( ph -> ph )'.
self assert: body class equals: MmProveableModel.


parser := MmmmParseBody new.
body := parser  parse: '|- ( ph -> ph )'.
self assert: body class equals: MmProveableModel.


parser := MmmmParseBody new.
body := parser  parse: '|- -. ps'.
self assert: body class equals: MmProveableModel.

^ body
