 .main:
	mov r0, 1000	@base addr
	mov r2, 5			@#integers to be added			
	st  r2, [r0]        @ arr[0] = 5 (number of elements to sum)
	.print r2
	mov r2, 10
	st  r2, 4[r0]       @ arr[1] = 10
	mov r2, 8
	st  r2, 8[r0]       @ arr[2] = 8
	mov r2, 7
	st  r2, 12[r0]      @ arr[3] = 7
	mov r2, 6 
	st  r2, 16[r0]
	mov r2, 5
	st  r2, 20[r0]
	mov r2, 5
	st  r2, 24[r0]
	mov r2, 4
	st  r2, 28[r0]
	mov r2, 3
	st  r2, 32[r0]
	mov r2, 2
	st  r2, 36[r0]
	mov r2, 1
	st  r2, 40[r0]
	mov r2, 2
	st  r2, 44[r0]
	mov r2, 3
	st  r2, 48[r0]
	mov r2, 4
	st  r2, 52[r0]
	mov r2, 5
	st  r2, 56[r0]
	mov r2, 6
	st  r2, 60[r0]
	mov r2, 7
	st  r2, 64[r0]
	mov r2, 8
	st  r2, 68[r0]
	mov r2, 9
	st  r2, 72[r0]
	mov r2, 10
	st  r2, 76[r0]
	mov r2, 11
	st  r2, 80[r0]
	mov r2, 12
	st  r2, 84[r0]
	mov r2, 13
	st  r2, 88[r0]
	mov r2, 14
	st  r2, 92[r0]
	mov r2, 15
	st  r2, 96[r0]
	mov r2, 16
	st  r2, 100[r0]
	mov r2, 17
	st  r2, 104[r0]
	mov r2, 18
	st  r2, 108[r0]
	mov r2, 19
	st  r2, 112[r0]
	mov r2, 20
	st  r2, 116[r0]
	mov r2, 21
	st  r2, 120[r0]
	mov r2, 22
	st  r2, 124[r0]
	mov r2, 23
	st  r2, 128[r0]
	mov r2, 24
	st  r2, 132[r0]
	mov r2, 25
	st  r2, 136[r0]
	mov r2, 26
	st  r2, 140[r0]
	mov r2, 27
	st  r2, 144[r0]
	mov r2, 28
	st  r2, 148[r0]
	mov r2, 29
	st  r2, 152[r0]
	mov r2, 30
	st  r2, 156[r0]
	mov r2, 31
	st  r2, 160[r0]
	mov r2, 32
	st  r2, 164[r0]
	mov r2, 33
	st  r2, 168[r0]
	mov r2, 34
	st  r2, 172[r0]
	mov r2, 35
	st  r2, 176[r0]
	mov r2, 36
	st  r2, 180[r0]
	mov r2, 37
	st  r2, 184[r0]
	mov r2, 38
	st  r2, 188[r0]
	mov r2, 39
	st  r2, 192[r0]
	mov r2, 40
	st  r2, 196[r0]
	mov r2, 41
	st  r2, 200[r0]
@Code starts here
	ld  r1, [r0]        @ load count = arr[0]
	add r0, r0, 4       @ move base to arr[1]
	call .sumArray
	.print r7	@ prints final sum,& this is 108th inst

	.print r0	@points to arr[1], (base add +4)
    .print r1	@inital number of elements to be added 
    .print r2	@last value stored into array
    .print r4	@current element loaded int the final recursion (arr[1]=10)
	.print r15	@return address of print r7 inst
	b .end

.sumArray:
	cmp r1, 0
	beq .base_case
	bgt .recurse
	b .base_case


.base_case:
	mov r7, 0           @ sum = 0
	ret


.recurse:
	sub sp, sp, 12
	st r0, [sp]         @ push base address
	st r1, 4[sp]        @ push element count
	st ra, 8[sp]        @ push return address

	add r0, r0, 4        @ move base to next element
	sub r1, r1, 1        @ r1 = r1 - 1
	call .sumArray       @ recursive call

	ld r0, [sp]          @ restore r0
	ld r1, 4[sp]         @ restore r1
	ld ra, 8[sp]         @ restore ra
	ld  r4, [r0]         @ load current element
	add r7, r7, r4       @ r7 = arr[i] + recursive sum
	add sp, sp, 12       @ pop stack frame
	ret

.end:
    nop
