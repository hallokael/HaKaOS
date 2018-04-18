run:
	nasm newOS.asm -o newOS.bin
	dd if=/dev/zero of=empty.img bs=512 count=2880
	dd if=newOS.bin of=newOS.img bs=512 count=1
	dd if=empty.img of=newOS.img skip=1 seek=1 bs=512 count=2879
