.main:
.encode  mov r0, 1000        @ base addr
.encode  mov r2, 5           @ #integers to be added
.encode  st  r2, [r0]        @ arr[0] = 5

.encode  mov r2, 10
.encode  st  r2, 4[r0]
.encode  mov r2, 8
.encode  st  r2, 8[r0]
.encode  mov r2, 7
.encode  st  r2, 12[r0]
.encode  mov r2, 6
.encode  st  r2, 16[r0]
.encode  mov r2, 5
.encode  st  r2, 20[r0]
.encode  mov r2, 5
.encode  st  r2, 24[r0]
.encode  mov r2, 4
.encode  st  r2, 28[r0]
.encode  mov r2, 3
.encode  st  r2, 32[r0]
.encode  mov r2, 2
.encode  st  r2, 36[r0]
.encode  mov r2, 1
.encode  st  r2, 40[r0]
.encode  mov r2, 2
.encode  st  r2, 44[r0]
.encode  mov r2, 3
.encode  st  r2, 48[r0]
.encode  mov r2, 4
.encode  st  r2, 52[r0]
.encode  mov r2, 5
.encode  st  r2, 56[r0]
.encode  mov r2, 6
.encode  st  r2, 60[r0]
.encode  mov r2, 7
.encode  st  r2, 64[r0]
.encode  mov r2, 8
.encode  st  r2, 68[r0]
.encode  mov r2, 9
.encode  st  r2, 72[r0]
.encode  mov r2, 10
.encode  st  r2, 76[r0]
.encode  mov r2, 11
.encode  st  r2, 80[r0]
.encode  mov r2, 12
.encode  st  r2, 84[r0]
.encode  mov r2, 13
.encode  st  r2, 88[r0]
.encode  mov r2, 14
.encode  st  r2, 92[r0]
.encode  mov r2, 15
.encode  st  r2, 96[r0]
.encode  mov r2, 16
.encode  st  r2, 100[r0]
.encode  mov r2, 17
.encode  st  r2, 104[r0]
.encode  mov r2, 18
.encode  st  r2, 108[r0]
.encode  mov r2, 19
.encode  st  r2, 112[r0]
.encode  mov r2, 20
.encode  st  r2, 116[r0]
.encode  mov r2, 21
.encode  st  r2, 120[r0]
.encode  mov r2, 22
.encode  st  r2, 124[r0]
.encode  mov r2, 23
.encode  st  r2, 128[r0]
.encode  mov r2, 24
.encode  st  r2, 132[r0]
.encode  mov r2, 25
.encode  st  r2, 136[r0]
.encode  mov r2, 26
.encode  st  r2, 140[r0]
.encode  mov r2, 27
.encode  st  r2, 144[r0]
.encode  mov r2, 28
.encode  st  r2, 148[r0]
.encode  mov r2, 29
.encode  st  r2, 152[r0]
.encode  mov r2, 30
.encode  st  r2, 156[r0]
.encode  mov r2, 31
.encode  st  r2, 160[r0]
.encode  mov r2, 32
.encode  st  r2, 164[r0]
.encode  mov r2, 33
.encode  st  r2, 168[r0]
.encode  mov r2, 34
.encode  st  r2, 172[r0]
.encode  mov r2, 35
.encode  st  r2, 176[r0]
.encode  mov r2, 36
.encode  st  r2, 180[r0]
.encode  mov r2, 37
.encode  st  r2, 184[r0]
.encode  mov r2, 38
.encode  st  r2, 188[r0]
.encode  mov r2, 39
.encode  st  r2, 192[r0]
.encode  mov r2, 40
.encode  st  r2, 196[r0]
.encode  mov r2, 41
.encode  st  r2, 200[r0]
.encode  ld  r1, [r0]   @ Code starts here
.encode  add r0, r0, 4
.encode call .sumArray
.dummy:
.encode 	b .dummy


.sumArray:
.encode  cmp r1, 0
.encode  beq .base_case
.encode  bgt .recurse
.encode  b .base_case


.base_case:
.encode  mov r7, 0
.encode  ret


.recurse:
.encode  sub sp, sp, 12
.encode  st r0, [sp]
.encode  st r1, 4[sp]
.encode  st ra, 8[sp]
.encode  add r0, r0, 4
.encode  sub r1, r1, 1
.encode  call .sumArray
.encode  ld r0, [sp]
.encode  ld r1, 4[sp]
.encode  ld ra, 8[sp]
.encode  ld r4, [r0]
.encode  add r7, r7, r4
.encode  add sp, sp, 12
.encode  ret
