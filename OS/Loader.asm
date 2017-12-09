;Loader.asm

[BITS 32]	;protected mode

[global start]
[extern _main]	;this is our C++ code

start:
call _main 	;call in
cli		;interrupts could disturb the halt
hlt		;halt the CPU