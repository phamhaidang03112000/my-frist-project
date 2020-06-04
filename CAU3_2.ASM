INCLUDE lib1.asm
.MODEL small
.DATA
M1      db 13,10,'Hay vao so thu 1: $'
M2      db 13,10,'Hay vao so thu 2: $'
M3      db 13,10,'Trung binh cong 2 so nguyen la : $'
dautru db '-$'
M4      db '.5$'
M5      db 13,10,'Co tiep tuc CT (c/k)? $'
.CODE
PUBLIC _TRUNGBINHCONG
_TRUNGBINHCONG PROC
   L0:
	CLRSCR
	HienString M1	
	call  VAO_SO_N	
	mov  bx,ax		
	HienString M2
	call  VAO_SO_N	
	HienString M3	
	add  ax,bx		
	and  ax,ax		
	jns   L1		
	HienString dautru	
	neg  ax	
    L1:
	shr   ax,1		
	pushf			
	call  HIEN_SO_N
	popf			
	jnc   L2		
	HienString M4	
     L2:
	HienString M5	
	mov  ah,1		
	int     21h
	cmp  al,'c'		
	jne    Exit		
	jmp   L0		
   Exit:
	ret
_TRUNGBINHCONG ENDP
INCLUDE lib2.asm
	END 
