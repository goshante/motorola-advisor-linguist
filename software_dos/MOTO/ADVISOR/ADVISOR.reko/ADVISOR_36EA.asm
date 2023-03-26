;;; Segment 36EA (36EA:0000)
36EA:0000 3A F9 EB 08 CD 3A C9 EB 03 CD 3A C1 5A C3 B8 CE :....:....:.Z...
36EA:0010 2F C7 06 48 A7 1E 19 C7 06 60 A7 1E 19 C7 06 3E /..H.....`.....>
36EA:0020 B0 85 19 A3 40 B0 C7 06 94 A7 DF 19 CB 00 C7 06 ....@...........
36EA:0030 24 A7 51 25 C7 06 56 A7 9F 25 CB C7 06 AA AC CD $.Q%..V..%......
36EA:0040 25 CB C7 06 2A A7 CE 29 C7 06 40 A7 DF 29 C7 06 %...*..)..@..)..
36EA:0050 30 A7 EB 29 C7 06 52 A7 E4 29 C7 06 6E A7 EB 29 0..)..R..)..n..)
36EA:0060 C7 06 6A A7 CE 29 CB 00 C7 06 22 A7 5A 2A C7 06 ..j..)....".Z*..
36EA:0070 38 A7 89 2A C7 06 58 A7 99 2A C7 06 7A A7 82 2A 8..*..X..*..z..*
36EA:0080 C7 06 B4 AC D4 2E C7 06 B2 AC EB 2E C7 06 12 A7 ................
36EA:0090 DE 31 CB 00 C7 06 AE AC 79 30 CB 00 C7 06 AC AC .1......y0......
36EA:00A0 25 36 C7 06 8E A6 F9 35 CB 00 C7 06 20 A7 A9 3B %6.....5.... ..;
36EA:00B0 C7 06 34 A7 62 41 C7 06 3C A7 FF 3B C7 06 5C A7 ..4.bA..<..;..\.
36EA:00C0 0D 3C CB                                        .<.             

;; fn36EA_00C3: 36EA:00C3
;;   Called from:
;;     3704:0161 (in fn3704_00C8)
fn36EA_00C3 proc
	mov	si,0A71Eh
	call	far 2FCEh:3BF3h
	mov	si,0A736h
	call	far 2FCEh:3BF3h
	mov	si,[0B022h]
	mov	ax,[si]
	mov	dx,[si+2h]
	call	far 2FCEh:3A5Dh
	mov	word ptr [0B03Ch],0h
	mov	[0B038h],bp
	push	word ptr [si+2h]
	mov	ax,[si]
	add	ax,30h
	push	ax
	retf
36EA:00F5                EA 66 3D CE 2F C7 06 26 A7 B4 3E      .f=./..&..>
36EA:0100 C7 06 32 A7 F4 3E C7 06 3E A7 D5 3E C7 06 66 A7 ..2..>..>..>..f.
36EA:0110 D6 3E C7 06 72 A7 E9 3E CB 00 C7 06 3B A8 35 56 .>..r..>....;.5V
36EA:0120 CB 00 B8 44 5C A3 55 A8 A3 53 A8 CB C7 06 A8 AC ...D\.U..S......
36EA:0130 5C 62 CB 00 C7 06 54 A7 8F 18 C7 06 4E A7 8F 18 \b....T.....N...
36EA:0140 C7 06 64 A7 3D 3F C7 06 74 A7 62 41 C7 06 78 A7 ..d.=?..t.bA..x.
36EA:0150 BC 68 C7 06 57 A8 9D 13 C7 06 A2 A7 B9 18 CB 00 .h..W...........
36EA:0160 C7 06 46 A7 DA 68 C7 06 18 A7 63 6B C7 06 14 A7 ..F..h....ck....
36EA:0170 00 69 C7 06 16 A7 0B 69 C7 06 4A A6 1D 69 C7 06 .i.....i..J..i..
36EA:0180 32 A8 D1 0D C7 06 34 A8 08 0E CB 00 C7 06 3E A8 2.....4.......>.
36EA:0190 FA 6F C7 06 40 A8 A6 70 CB 00 00 00 00 00 00 00 .o..@..p........
