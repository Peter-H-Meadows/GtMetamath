accessing
metamathUniverseFirstProof
<gtExample>

| mmproof |

mmproof := self metamathUniverse allProofs at: 'a1i' .

self assert: mmproof name equals: 'a1i' .

^ mmproof
