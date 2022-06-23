accessing
reparse2
| pp arr |
	pp := #any asPParser starLazy flatten, 
      '$=' asPParser trim , '(' asPParser trim , #any asPParser starLazy flatten, ')' asPParser trim , #any asPParser star flatten.
      
arr := pp parse: rawString . 
      
bodyString := arr first . 
usedString := arr at: 4 . 
compressedString := arr at: 6 . 
      
^ arr 