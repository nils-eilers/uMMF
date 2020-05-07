µMMF ROMs
=========

Nothing spectacular here, the waterloo ROM files are just concatenated
and empty spaces filled with $FF with the help of the Arnold Assembler AS,
freely available from http://john.ccac.rwth-aachen.de:8000/as/index.html

The generated file `superpet.bin` is to be flashed into an Atmel AT29C010A.
Ensure to enable the write protection of the flash ROM afterwards or the
contents will corrupt sooner or later.


Burn the file `characters.901640-01.bin` into a 2532 EPROM and replace
the character generator with it, otherwise you won't be able to see
anything.

