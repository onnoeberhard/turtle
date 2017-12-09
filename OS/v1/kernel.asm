; ---------------------------------------------------
; Unser Kernel
; ---------------------------------------------------

mov ax, 0x1000 ; Segmentregister updaten
mov ds, ax
mov es, ax

start:
mov si, msg
call putstr   ; Schicke Bootmessage :)

mov si,msg_boot
call putstr   ; Noch eine Message :D

call getkey   ; Warte auf einen Tastendruck
jmp reboot    ; Reboot

; -------------------------------------------------
; Funktionen und Variablen
; -------------------------------------------------

msg db "Welcome to Turtle OS 0.1",13,10,0
msg_boot db "Press random key to restart.",10,0

; Stringausgabe
putstr:
lodsb            ; Byte laden
or al,al
jz short putstrd ; 0-Byte? -> Ende!
mov ah,0x0E      ; Funktion 0x0E
mov bx,0x0007    ; Atrribut-Byte
int 0x10         ; schreiben
jmp putstr       ; nächstes Byte
putstrd:
retn

; Warte auf einen Tastendruck
getkey:
mov ah, 0 ; Funktion 0
int 0x16  ; Ausführen
ret

; Rebooten.
reboot:
jmp 0xffff:0x0000