include irvine32.inc
.data
response TEXTEQU <'Hi, Thanks'>   ;initializing variable response with a string using TEXTEQU
reply BYTE response               ;initializing reply variable by using response string
.code
main proc

MOV edx, offset reply      ;moving address of reply in EDX 
call writestring           ;calling writestring to display contents of adress store in EDX
;writestring only works with EDX

exit
main endp
end main