basic
metamath1
<gtExample>

| scope axmp axmp2 axmpc |

scope := self metamathUniverse .

axmp := (scope allAssertions at: 'ax-mp') copy .

axmp2 := (scope allAssertions at: 'ax-mp') copy .

axmp canMapTo: axmp2 essentialHypoths first .

"axmpc := axmp copy ."

^ axmp
