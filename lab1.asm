.386
.model flat, stdcall
.stack 4096
;76543210
;22747340
.data
.code
start:
mov dh,0 
mov al,0
mov dl,01100010b

mov al,dl
and al,00000100b
shl al,5

mov bl,dl
and bl,00000100b
shl bl,4

or al,bl

mov bl,dl
and bl,00001000b
shr bl,1
or al,bl

mov bl,dl
and bl,00010000b
or al,bl

mov bl,dl
and bl,00010000b
shr bl,3
or al,bl

mov bl,dl
and bl,10000000b
shr bl,2
or al,bl

mov bl,dl
and bl,10000000b
shr bl,4
or al,bl

mov dh,al

end start
