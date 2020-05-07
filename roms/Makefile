superpet.bin: 6809-00000-0FFFF.asm 6502-10000-1FFFF.asm
	asl -q -L 6809-00000-0FFFF.asm
	p2bin -k -r 0-\$$FFFF 6809-00000-0FFFF.p 6809-00000-0FFFF.bin
	asl -q -L 6502-10000-1FFFF.asm
	p2bin -k -r 0-\$$FFFF 6502-10000-1FFFF.p 6502-10000-1FFFF.bin
	cat 6809-00000-0FFFF.bin 6502-10000-1FFFF.bin > superpet.bin
	rm -f 6809-00000-0FFFF.bin 6502-10000-1FFFF.bin

clean:
	rm -f 6809-00000-0FFFF.lst
	rm -f 6809-00000-0FFFF.p 6809-00000-0FFFF.bin
	rm -f 6502-10000-1FFFF.lst
	rm -f 6502-10000-1FFFF.p 6502-10000-1FFFF.bin
	rm -f 6809-00000-0FFFF.bin 6502-10000-1FFFF.bin

veryclean: clean
	rm -f superpet.bin
