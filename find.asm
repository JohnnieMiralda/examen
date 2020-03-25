arre:
sub esp,112
;arreglo_1
mov dword[esp],7
mov dword[esp+4],5
mov dword[esp+8],3
mov dword[esp+12],4
mov dword[esp+16],6
mov dword[esp+20],9
;arreglo_1

;arreglo_2
mov dword[esp+24],4
mov dword[esp+28],4
mov dword[esp+32],4
mov dword[esp+36],4
mov dword[esp+40],4
mov dword[esp+44],4
;arreglo_2

;arreglo_3
mov dword[esp+48],9
mov dword[esp+52],7
mov dword[esp+56],5
mov dword[esp+60],3
mov dword[esp+64],2
mov dword[esp+68],1
;arreglo_3

;arreglo_4
mov dword[esp+72],1
mov dword[esp+76],2
mov dword[esp+80],3
mov dword[esp+84],5
mov dword[esp+88],7
mov dword[esp+92],9
;arreglo_4

;arreglo_5
mov dword[esp+96],9
mov dword[esp+100],7
;arreglo_5

;arreglo_5
mov dword[esp+104],7
mov dword[esp+108],9
;arreglo_5


find_minimun:
;ra esp
;v[] esp+4
;size esp+8
;ebx i
;eax return val

mov edx, 0
mov ecx, dword[esp+8]

cmp ecx, edx
je return_a


mov edx,1
mov ecx, dword[esp+8]

cmp ecx,edx
je return_b

move ebx,0


while:
mov edx,dword[esp+4]
mov ecx, dword[edx+ebx*8]
mov edx, dword[edx +ebx*4]
cmp ecx,edx
jge if
jmp mas

if:
mov edx,dword[esp+8]
sub edx,1
cmp edx,ebx
jge return_c

mas:
add ebx,1
jmp while


return_a:
mov eax,-1
ret
return_b:
mov eax,0
ret
return_c:
mov eax,ebx
ret
test:
;ra esp
;arr esp+4
;size esp+8

sub esp,4
mov dword[esp],0

mov ebx, dword[esp+8]
mov ecx,dword[esp+4]
push ebx
push ecx
call find_minimun
add esp,8
add esp,4
ret



main:
#show esp
call arre