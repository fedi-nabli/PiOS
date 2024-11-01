aarch64-linux-gnu-gcc -c ./src/boot/boot.s -o ./build/boot.o
aarch64-linux-gnu-gcc -std=c99 -ffreestanding -mgeneral-regs-only -c ./src/kernel/main.c -o ./build/main.o
aarch64-linux-gnu-ld -nostdlib -T linker.lds -o ./bin/kernel ./build/boot.o ./build/main.o
aarch64-linux-gnu-objcopy -O binary ./bin/kernel ./bin/kernel8.img