accessing
body
<gtExample>
| parser body |
parser := MmBodyParser new  "varNames: {'ph'}" .

body := parser  parse: '|- ph'.
self assert: body class equals: MmProveableModel.

body := parser  parse: '|- ( ph -> ps ) '.
self assert: body class equals: MmProveableModel.

body := parser  parse: '|- -. ph'.
self assert: body class equals: MmProveableModel.

body := parser  parse: '|- -. ( ph -> ps ) '.
self assert: body class equals: MmProveableModel.

body := parser  parse: '|-  ( ph -> ( ph -> ph ) ) '.
self assert: body class equals: MmProveableModel.


body := parser  parse: '|- -. ( ph -> ( ph -> ph ) ) '.
self assert: body class equals: MmProveableModel.


body := parser  parse: '|- -. ( ph -> ( ph -> ( a -> b ) ) ) '.
self assert: body class equals: MmProveableModel.


body := parser  parse: '|- -. ( ( ph -> pp ) -> ( ph -> ( a -> b ) ) ) '.
self assert: body class equals: MmProveableModel.

