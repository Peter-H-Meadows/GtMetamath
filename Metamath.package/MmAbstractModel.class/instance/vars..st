accessing
vars: v

"vars := v."

"body do: [ :ea | ea vars: v  ]"
body ifNil: [
first vars: v .
second vars: v] ifNotNil: [

body vars: v
]