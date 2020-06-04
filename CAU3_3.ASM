INCLUDE lib1.asm
.MODEL small
.DATA
M1 db 13,10,'       CHUC NANG CONG MAY IN NOI TIEP'
   db 13,10,'       -------------***--------------'
   db 13,10,13,10,'     May tinh co cong FPU tiep khong: $'
co db 'Co$'
khong db 'Khong$'
M2 db 13,10,'     An phim bat ky de tiep tuc CT:  $'
.CODE
PUBLIC _CONGFPU
_CONGFPU PROC
          L0:
             CLRSCR
             HienString M1
             int 11h
             shr ah,6
             jc L1
             HienString khong
             jmp Exit
           L1:
             HienString co
           Exit:
             HienString M2
             mov ah,1
             int 21h
             ret
_CONGFPU ENDP
             END
