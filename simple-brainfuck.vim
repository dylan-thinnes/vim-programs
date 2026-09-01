#!/usr/bin/env -S nvim -u NONE -s load-registers-and-run-loop
m: gg}/Memory/*  ← goto (M)emory pointer
i: gg}/Instrs/*  ← goto (I)nstruction pointer
n: @ir_lr*           ← move the instruction pointer to the (N)ext instruction
b: @ir_k%jr*         ← move the instruction pointer to the matching (B)racket
e: v*gg}nWyiW@"      ← (E)xecute the code for the character under the cursor
s: @ik@e             ← (S)tep by executing a single instruction
l: @s@l              ← (L)oop by running steps over and over

Code
+: @m@n      ← Increment the value at the memory pointer, go to next instr
-: @m@n      ← Decrement the value at the memory pointer, go to next instr
>: @mr_jr*@n   ← Move the memory pointer to the next value, go to next instr
<: @mr_kr*@n   ← Move the memory pointer to the prev value, go to next instr
[: @mw@e       ← Execute the first digit of the value at the memory pointer
]: @b          ← Go back to the open bracket
0: @b@n        ← If the first digit is 0, skip past closing bracket
123456789: @n  ← If the first digit is nonzero, go to the next instr

Memory
* 0
  0
  0
  0
  0
  0

Instrs
>+[[<+>->++<]>]
*              
