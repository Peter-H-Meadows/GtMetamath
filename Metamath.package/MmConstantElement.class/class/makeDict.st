accessing
makeDict

Dict := Dictionary new .


Dict at: '(' put: '.'.
Dict at: ')' put: '.'.

Dict at: 'E.' put: 16r2203 asCharacter.
Dict at: 'A.' put: 16r2200 asCharacter.
Dict at: '->' put: 16r2192 asCharacter.
Dict at: 'e.' put: 16r2208 asCharacter.

Dict at: '<->' put: 16r2194 asCharacter.
Dict at: '/\' put: 16r2227 asCharacter.
Dict at: 'F/' put: 16r29C4 asCharacter.
Dict at: '\/' put: 16r22C1 asCharacter.

Dict at: 'sum_' put: 16r2211 asCharacter.
Dict at: '=/=' put: 16r2260 asCharacter.
Dict at: 'CC' put: 16r2102 asCharacter.
Dict at: 'i^i' put: 16r2229 asCharacter.


Dict at: 'u.' put: 16r222A asCharacter.
Dict at: '=/=' put: 16r2260 asCharacter.
Dict at: 'CC' put: 16r2102 asCharacter.
Dict at: '-1-to-1-onto->' put: '–1-1-onto→'.

" limit relation for complex number sequences"
"http://us.metamath.org/mpeuni/df-clim.html"
Dict at: '~~>' put: 16r21DD asCharacter.



Dict at: 'A.' put: 16r2200 asCharacter.
Dict at: '(/)' put: 16r2205 asCharacter.

Dict at: 'C_' put: 16r2282 asCharacter.

" `' "

Dict at: ( $` asString , $' asString ) put: 16r23DC asCharacter.

Dict at: 'o.' put: 16r2218 asCharacter.

^ Dict
