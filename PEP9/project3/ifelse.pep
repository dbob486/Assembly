BR main 

main:    deci val1,d 
deci val2,d
ldwa val2, d
cpwa val1, d
brge ge
brlt lt
         stop

ge: deco val2,d
stro gt,d 
deco val1,d
stop

lt: deco val2,d
stro less,d 
deco val1,d
stop

val1: .block 2
val2: .block 2
gt: .ascii " is Greater Than or Equal to \n \x00"
less: .ascii " is Less Than \n \x00" 

.end