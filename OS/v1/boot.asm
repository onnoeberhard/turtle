org 0x7C00 ; Unsere Startadresse

; -----------------------------------------
; Unser Bootloader
; -----------------------------------------

jmp 0x0000:start
start:
				; Erst brauchen wir einen Stack.
cli             ; Keine Interrupts!
mov ax, 0x9000  ; Stackadresse
mov ss, ax      ; SS = 0x9000 (unser Stack)
mov sp, 0       ; SP = 0x0000  (der Stackpointer)
sti             ; Interrupts zulassen

; Segmentregister initialisieren (für Zugriff auf bootdrv notwendig)
mov ax, 0x0000
mov es, ax
mov ds, ax

; Bootlaufwerk aus DL speichern
mov [bootdrv], dl

;Lade unseren Kernel
call load

;Springe zu diesem Kernel
mov ax, 0x1000 ; Die Adresse des Programms
mov es, ax     ; Segmentregister updaten
mov ds, ax
jmp 0x1000:0x0000

; ----------------------------------------------
; Funktionen und Variablen
; ----------------------------------------------

bootdrv db 0 ;Das Bootlaufwerk
loadmsg db "Laden...",13,10,0

; Einen String ausgeben:
putstr:
lodsb             ; Byte laden
or al,al
jz short putstrd  ; 0-Byte? -> Ende!

mov ah,0x0E       ; Funktion 0x0E
mov bx,0x0007     ; Attribut-Byte (wird nicht benötigt)
int 0x10          ; schreiben
jmp putstr        ; Nächstes Byte
putstrd:
retn

; Lade den Kernel vom Bootlaufwerk
load:
; Diskdrive reset (Interrupt 13h, 0)
mov ax, 0          ; Die gewünschte Funktion (reset)
mov dl, [bootdrv]  ; Dieses Laufwerk ist gewünscht
int 13h            ; Den Interrupt ausführen
jc load            ; Geht nicht? -> Noch mal!

load1:
mov ax,0x1000      ; ES:BX = 0x10000
mov es,ax
mov bx, 0

; Sektoren lesen (Interrupt 13h, 2)
mov ah, 2         ; Funktion 2 (Lesen)
mov al, 5         ; Lese 5 Sektoren
mov cx, 2         ; Cylinder=0, Sector=2
mov dh, 0         ; Head=0
mov dl, [bootdrv] ; Laufwerk aus Vorgabe
int 13h           ; ES:BX =  Daten vom Laufwerk
jc load1          ; Fehler? Noch mal!
mov si,loadmsg
call putstr       ; Meldung ausgeben
retn

times 512-($-$$)-2 db 0   ; Dateilänge: 512 Bytes
dw 0AA55h                 ; Bootsignatur