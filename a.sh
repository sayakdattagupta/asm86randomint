#!/bin/bash

if [ $# -ne 1 ]; then
	echo "use only one arg"
	exit 1
fi

ARG=$1

nasm -f elf64 -o $ARG.o $ARG.asm
ld  $ARG.o -o $ARG

exit 0
