; Pep/9 Hello World or My First Assembly Program
;******* main ()
BR main

main:    STRO msg1,d ;phase1
;call p2
;call p3
;call p4
call p5
         stop

  ;REMBER TO PUT STOP at the end of it all

p2: DECI num1,d
DECI num2,d 
DECO num2,d
STRO space,d
DECO num1,d
ldba '\n', i
stba charOut,d
         stop
         

p3: DECI num,d
LDWA num,d
ADDA amount,i
STWA sum,d
DECO sum,d
ldba '\n', i
stba charOut,d
         stop

p4: LDBA charIn, d
suba 1,i
stba ch,d
stba charOut,d
ldba '\n' , i
stba charOut, d
         stop

p5: deci n,d
ldwa n,d
anda 0xF, i
stwa n,d
deco n,d
         stop

msg1: .ASCII "Hello World \n\x00" ;phase1
;phase2
num1: .block 2
num2: .block 2
space: .ASCII " "
;phase3
amount:  .EQUATE  20000 
num: .block 2
sum: .block 2
;phase4
ch: .block 1
;phase5
n: .block 2 

.END