INCLUDE Irvine32.inc
ExitProcess proto,dwExitCode:dword
.data
cantidad1 DWORD 0,0
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
	mov cantidad1[0], eax
	mov esi, 0
	mov ecx, cantidad1[0]
	L1: ;recorrido del vector que contiene los nodos
		mov auxanodos[0], ecx
		mov auxanodos[1], esi
		mov esi, 0
		mov edx, OFFSET digiten2
		call WriteString
		call ReadInt
		mov cantidad1[1], eax
		mov ecx, eax

		L2: ;recorrido del arreglo que contiene las características (Nodos conectados, Distancia a nodos)
			
			mov edx, OFFSET digiten3
			call WriteString
			call Crlf
			call ReadInt
			

			mov edx, OFFSET digiten4
			call WriteString
			call Crlf
			call ReadInt

		loop L2

		inc esi
		mov ecx, auxanodos[0]
		mov esi, auxanodos[1]
	loop L1
	exit
main2 ENDP
END main2