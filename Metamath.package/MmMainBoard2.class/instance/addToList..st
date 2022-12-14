adding
addToList: m
| c |
c := workingOnList items asOrderedCollection  .
c add: m .
workingOnList items: c 