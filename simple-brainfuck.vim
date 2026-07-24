m: gg}/Memory/* ← goto (m)emory pointer
i: gg}/Instrs/* ← goto (i)nstruction pointer
n: @ir_lr*          ← move the instruction pointer to the (n)ext instruction
b: @ir_k%jr*        ← move the instruction pointer to the matching (b)racket
e: v*gg}nWyiW@"     ← (e)xecute the code for the character under the cursor
s: @ik@e            ← (s)tep by executing a single instruction
l: @s@l             ← (l)oop by running steps over and over

Code
+: @m@n
-: @m@n
>: @mr_jr*@n
<: @mr_kr*@n
[: @mw@e
]: @b
0: @b@n
123456789: @n

Memory
* 0
  0
  0
  0
  0
  0
  0
  0
  0
  0
  0
  0
  0

Instrs
>+[[<+>->++<]>]
*              
