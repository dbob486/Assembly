BR main 

main:    stro msg2,d
deci val1,d 
ldwx val1,d
cpwx 5,i
brge default
cpwx 0,i
brlt default
aslx
br match, x
stop


match: .addrss case0
.addrss case1 
.addrss case2 
.addrss case3 
.addrss case4 

case0: deco val1,d
stro msg1,d 
deco val1,d
br done
case1: deco val1,d
stro msg1,d 
deco val1,d
br done
case2: deco val1,d
stro msg1,d 
deco val1,d
br done
case3: deco val1,d
stro msg1,d 
deco val1,d
br done
case4: deco val1,d
stro msg1,d 
deco val1,d
br done
default: deco val1,d
stro msg1,d 
stro msg3,d
br done

done: stro msg4,d
stop

val1: .block 2
msg1: .ascii " inside the switch matches \x00 "
msg2: .ascii "input a value 0 - 4\n \x00" 
msg3: .ascii " nothing \x00"
msg4: .ascii "\nswitch done \x00"
.end