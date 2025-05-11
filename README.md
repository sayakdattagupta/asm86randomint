Program that generates a "random" number in ASM x86, using the 64-bit timestamp ``rdtsc`` as a seed.<br>
Calling LOOP returns the num in the ``eax`` register, which is thus moved into ``ebx`` so as to get preserved after program exit.<br> 
The number is hence an exit code, which in bash can be viewed by running ``echo $?`` immediately after program exit.<br>
The script ``a.sh`` was made by me so-as-to speed up the tedious process of NASM compilation and linking.

### prereq
a x86 processor
