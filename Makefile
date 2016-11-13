CPU	?= 68010
TARGET	?= m68k-elf-
AS	 = $(TARGET)as
OBJCOPY	 = $(TARGET)objcopy

all: nop.bin

%.elf: %.s
	$(AS)	-o $@	$<

%.s19: %.elf
	$(OBJCOPY)	-O srec	$<	$@

%.bin: %.elf
	$(OBJCOPY)	-O binary	$<	$@

clean:
	rm	-f	*.elf *.s19 *.bin
