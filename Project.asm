INCLUDE Irvine32.inc
ExitProcess proto,dwExitCode:dword
.data
cantidad DWORD 0
cantidad1 DWORD 0
Nododistancia DD 2
Nodcon DD ?
Nodos DD ?


digiten BYTE "Digite la cantidad de nodos: ",0
digiten2 BYTE "Digite la cantidad de nodos conectados", 0
digiten3 BYTE "Digite el nodo conectado", 0
digiten4 BYTE "Digite distacia al nodo",0
digiten5 BYTE "saliendo de E3",0
plus BYTE "+"
auxanodos DWORD 0,0
auxanodcon DWORD 0,0

.code
main2 PROC
	mov edx, OFFSET digiten
	call WriteString
	call ReadInt
	mov cantidad1, eax
	mov esi, 0
	L1: ;recorrido del vector que contiene los nodos
		mov auxanodos[1], esi
		mov esi, 0
		mov edx, OFFSET digiten2
		call WriteString
		call ReadInt
		mov cantidad, eax
		mov ecx, eax
		mov esi,0
		L2: ;recorrido del arreglo que contiene las características (Nodos conectados, Distancia a nodos)
			jmp E3
			E4:
		loop L2
		mov ebx, OFFSET Nodcon
		mov Nodos, ebx
		mov esi, auxanodos[1]
		inc esi
		dec cantidad1
		cmp cantidad1,0
		jne L1

	exit
	E3:
		mov edx, OFFSET digiten3
		call WriteString
		call Crlf
		call ReadInt
		mov Nododistancia[0],eax
		mov edx, OFFSET digiten4
		call WriteString
		call Crlf
		call ReadInt
		mov Nododistancia[1],eax
		mov ebx, OFFSET Nododistancia
		mov Nodcon[esi], ebx
		inc esi
	jmp E4

main2 ENDP
END main2