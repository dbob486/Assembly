BR main 

main:    deci val1,d 
ldwx 0, i
stwx val2,d

while:   cpwx val1,d
brge done
brlt lt
br while

done: ldba '\n',i
stba charOut,d 
deco val2,d
stro gt,d 
deco val1,d
stop

lt: ldba '\n',i
stba charOut,d 
deco val2,d
stro less,d 
deco val1,d
ldwx val2, d
addx 1,i
stwx val2, d
br while

val1: .block 2
val2: .block 2
gt: .ascii "\n Loop done, equal or exceeds \x00"
less: .ascii " inside the loop is Less Than \x00" 

.end