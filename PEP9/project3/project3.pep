;******* main ()
BR main

main:    call p5
;call p5
         stop

;phase1
p1: deci number,d
ldwa number,d
anda 0x1, i
breq even
brne odd
         stop

even: stro e,d 
         stop
odd: stro o,d
         stop

;phase5
p5:  ldba charIn, d
stba ch,d
ldba ch,d
cpba 'a',i
brlt if
brge elseif
         stop

if: cpba 'A', i
brge if2
br else

if2: cpba 'Z',i
brle then
br else

then: ldba 'A', i
stba charOut,d
stop

elseif: cpba 'z',i
brle then2
br else
stop

then2: ldba 'a', i
stba charOut,d
stop

else: ldba '$', i
stba charOut,d
stop


;phase1
number: .block 2
e: .ASCII "Even \n \x00" 
o: .ASCII "Odd \n\x00" 

;phase5
ch: .block 1

.END