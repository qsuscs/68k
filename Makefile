CPU	?= 68010
TARGET	?= m68k-elf-
AS	 = $(TARGET)as
OBJCOPY	 = $(TARGET)objcopy

%.elf: %.s
	$(AS)	-o $@	$<

%.s19: %.elf
	$(OBJCOPY)	-O srec	$<	$@
