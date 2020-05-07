; Assemble with Alfred Arnold's Macroassembler AS,
; freely available from http://john.ccac.rwth-aachen.de:8000/as/index.html
;
		ORG 0
		CPU 6809

; 6809 ROMs
		ORG $A000

		BINCLUDE "waterloo-a000.901898-01.bin"
		BINCLUDE "waterloo-b000.901898-02.bin"
		BINCLUDE "waterloo-c000.901898-03.bin"
		BINCLUDE "waterloo-d000.901898-04.bin"
		BINCLUDE "waterloo-e000.901897-01.bin"
		DFS 2048		; skip I/O area $E800-$EFFF
		BINCLUDE "waterloo-f000.901898-05.bin"

		END
