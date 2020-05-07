µMMF
====

The SuperPET is basically a Commodore CBM 8032 with two, later only one
extra boards in it which contain a 6809 CPU, 64 KB RAM and some ROMs. This
project aims to provide a replacement for these extra board(s) with
slightly more modern parts, enabling every CBM 8032 owner to upgrade his
machine to a SuperPET.

__This board requires a NMOS 6502. Do NOT use a CMOS 6502!__

The board will accept NMOS Motorola 6809E as well as CMOS Hitachi HD63C09E,
just ensure you get the E-type, not those without appended ‘E’ because
their pinout is different. The version without E has the clock generator
integrated, the E-version requires an external clock generator.

LED D1 is a low current (2 mA) type. It is used solely for debug purposes,
the original SuperPET does not contain such a LED, so you may omit it.

IC3 74HCT11 has to be a HCT type. Do not use HC, LS or anything else
because HCT was chosen to match the voltage level requirements.

Please note that some modifications on the original CBM 8032 motherboard
must been made, as on the original SuperPET boards:

- 16 MHz clock signal provided at pin 35 of the 6502 CPU socket (patched in
  with a wire)
- 2532 character EPROM replacement

Refer to the pictures provided in the doc subdirectory for information
about how to provide the 16 MHz clock signal at pin 35. These differ
slightly from board version to board version.

An Atmel AT29C010 Flash ROM is required, programmed with roms/superpet.bin
and write protected.

The CPLD code was written in Verilog. These were my first steps with
Verilog, so please bear with me. Use Altera Quartus II 13.0.1 SP1 to
compile the Verilog and program the CPLD, newer versions don't support
the MAX7000 CPLD series any longer. The binary to program the CPLD is
located at cpld/output_files/superpet.pof.

An interactive bill of materials is available at `bom/ibom.html`
