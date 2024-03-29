Title Program to display the length and size of the string variable “greetings” in decimal
 ;format,and then print the first string

include irvine32.inc
.data
greetings BYTE "Hi There",0     ;initializing greetings variable with a string and
; 0 that show that string is end or terminated

.code
main proc

MOV eax,lengthof greetings 
;lengthof function provided by Irvine32 library is use here to move length into eax register
call writeint ;calling writeint to display contents of EAX in integer value
call crlf

MOV eax,sizeof greetings ;sizeof function is use to move size into eax register
call writeint  
call crlf

MOV edx, OFFSET greetings   ;moving address of greeting variable in EDX 
call writestring            ;Displays the string whose address is in EDX using the writestring.
 
; writestring only works with EDX

exit 
main endp
end main