accessing
initialize
CopyDic := Dictionary new .
ColorCycle := ReadStream on: 
{ 
"Color random ."

Color  lightCyan .
Color  yellow. 
Color red . 
Color blue . 
Color orange . 
Color veryLightGray . 
Color  magenta .
Color purple.
Color green . 
Color  brown .

} shuffle