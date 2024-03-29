Title A program contain 3 values of data type BYTE and use writexxx functions to display
 ;values in integer,char etc.
include irvine32.inc
.data
mbyte BYTE 05,12,100   ;declares variable of name mbyte ,type BYTE(8 bit).

.code
main proc
MOV eax,0             ;initialize EAX to 0
mov ah,mbyte          ;move most 1st byte in to AH register
mov al,mbyte+1        ;move 2nd byte in to AL register
call dumpregs

call writeint         ;calling write int function to show output in integer  
call crlf             ;go on next line
call writehex         ;function to show output in hexadecimal 
call crlf
call writebin         ;function to show output in binary 
call crlf
call writechar        ;function to show output in character 
call crlf

exit            
main endp              ;Marks the end of the main procedure.
end main               ;Marks the end of the program.