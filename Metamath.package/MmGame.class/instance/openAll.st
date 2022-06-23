accessing
openAll
<gtExample>
| aList aEventListener  aDocument aFigureFile editor txt text ed runner anAccordion |

self clearScopes .  

aList := BrSimpleList new.

aList stencil: [ :ea :index | ea eel ].
		
aList items: self scopes first stuff . 
	
^ aList
