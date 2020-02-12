BR main 

main:    deci val1,d 
ldwa 0, i
stwa val2,d

while:   ldwa val2,d
cpwa val1,d
brge done
brlt lt
br while

done: stro gt,d 
stop

lt: stro less,d 
ldwa val1, d
adda 1,d
stwa val1,d
deco val1,d 
br while

val1: .block 2
val2: .block 2
gt: .ascii "Loop done, -loop value- equal or exceeds -condition value- \n \x00"
less: .ascii "-loop value- inside the loop is Less Than -condition value-\n \x00" 

.end