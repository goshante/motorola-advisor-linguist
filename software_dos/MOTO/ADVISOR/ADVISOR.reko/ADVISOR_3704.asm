;;; Segment 3704 (3704:0000)
3704:0000 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
3704:0010 55 8B EC 56 57 06 83 7E 0A 00 75 38 BF 76 AF 8B U..VW..~..u8.v..
3704:0020 56 08 8B 46 06 48 75 07 E8 59 00 72 27 EB 4E 8B V..F.Hu..Y.r'.N.
3704:0030 36 C6 AF 48 74 11 3B F7 74 0D 8B 44 02 89 46 0E 6..Ht.;.t..D..F.
3704:0040 56 E8 40 00 5E 73 36 83 C6 04 81 FE C6 AF 73 04 V.@.^s6.......s.
3704:0050 0B D2 75 06 B8 FF FF 99 EB 23 8B DA 83 C3 0F D1 ..u......#......
3704:0060 DB B1 03 D3 EB B4 48 CD 21 72 E9 3B 06 61 B0 76 ......H.!r.;.a.v
3704:0070 F4 92 89 04 89 54 02 89 36 C6 AF 33 C0 07 5F 5E .....T..6..3.._^
3704:0080 8B E5 5D CB 8B 4E 0E 8B F7 39 4C 02 74 0C 83 C6 ..]..N...9L.t...
3704:0090 04 81 FE C6 AF 75 F2 F9 EB 2C 8B DA 03 1C 72 26 .....u...,....r&
3704:00A0 8B D3 8E C1 3B F7 75 08 39 1E 26 B0 73 13 EB 16 ....;.u.9.&.s...
3704:00B0 83 C3 0F D1 DB D1 EB D1 EB D1 EB B4 4A CD 21 72 ............J.!r
3704:00C0 05 92 87 04 8B D1 C3 00                         ........        

;; fn3704_00C8: 3704:00C8
fn3704_00C8 proc
	mov	ah,30h
	int	21h
	cmp	al,2h
	jnc	00D2h

l3704_00D0:
	int	20h

l3704_00D2:
	mov	di,3ADEh
	mov	si,[0002h]
	sub	si,di
	cmp	si,1000h
	jc	00E4h

l3704_00E1:
	mov	si,1000h

l3704_00E4:
	cli
	mov	ss,di
	add	sp,0B08Eh
	sti
	jnc	00F9h

l3704_00EE:
	xor	ax,ax
	mov	word ptr ss:[0AF74h],2C1h
	jmp	0176h

l3704_00F9:
	and	sp,0FEh
	mov	ss:[0AF72h],sp
	mov	ax,si
	mov	cl,4h
	shl	ax,cl
	dec	ax
	mov	ss:[0AF70h],ax
	add	si,di
	mov	[0002h],si
	mov	bx,es
	sub	bx,si
	neg	bx
	mov	ah,4Ah
	int	21h
	mov	ss:[0AFE7h],ds
	mov	ax,[002Ch]
	mov	ss:[0B016h],ax
	mov	ss:[0B014h],ds
	mov	word ptr ss:[0B012h],81h
	push	ss
	pop	es
	cld
	mov	di,0B082h
	mov	cx,0B090h
	sub	cx,di
	xor	ax,ax

l3704_0141:
	rep stosb

l3704_0143:
	push	ss
	pop	ds
	mov	word ptr [0AF74h],25Eh
	mov	ax,[0B024h]
	mov	[0AF76h],ax
	call	far 2FCEh:3B84h
	call	far 3704h:017Ch
	push	ss
	pop	ds
	push	ss
	pop	es
	xor	bp,bp
	call	far 36EAh:00C3h
	push	ax
	call	far 3704h:025Eh
	mov	ax,3h
	mov	word ptr ss:[0AF74h],25Eh

l3704_0176:
	jmp	far 3704h:0310h
3704:017B                                  00                        .    

;; fn3704_017C: 3704:017C
;;   Called from:
;;     3704:0156 (in fn3704_00C8)
fn3704_017C proc
	mov	ah,30h
	int	21h
	mov	[0AFE9h],ax
	mov	ax,3500h
	int	21h
	mov	[0AFD5h],bx
	mov	[0AFD7h],es
	push	cs
	pop	ds
	mov	ax,2500h
	mov	dx,16Ch
	int	21h
	push	ss
	pop	ds
	mov	cx,[0B074h]
	jcxz	01D0h

l3704_01A2:
	mov	es,[0AFE7h]
	mov	si,es:[002Ch]
	lds	ax,[0B076h]
	mov	dx,ds
	xor	bx,bx
	call	dword ptr ss:[0B072h]
	jnc	01BFh

l3704_01BA:
	push	ss
	pop	ds
	jmp	034Ch

l3704_01BF:
	lds	ax,ss:[0B07Ah]
	mov	dx,ds
	mov	bx,3h
	call	dword ptr ss:[0B072h]
	push	ss
	pop	ds

l3704_01D0:
	test	byte ptr [0A71Ch],3h
	jz	01DDh

l3704_01D7:
	mov	byte ptr [0A71Ch],0h
	retf

l3704_01DD:
	mov	es,[0AFE7h]
	mov	cx,es:[002Ch]
	jcxz	021Eh

l3704_01E8:
	mov	es,cx
	xor	di,di

l3704_01EC:
	cmp	byte ptr es:[di],0h
	jz	021Eh

l3704_01F2:
	mov	cx,0Ch
	mov	si,0AFC8h

l3704_01F8:
	rep cmpsb

l3704_01FA:
	jz	0207h

l3704_01FC:
	mov	cx,7FFFh
	xor	ax,ax

l3704_0201:
	repne scasb

l3704_0203:
	jnz	021Eh

l3704_0205:
	jmp	01ECh

l3704_0207:
	push	es
	push	ds
	pop	es
	pop	ds
	mov	si,di
	mov	di,0AFF0h
	lodsb
	cbw
	xchg	cx,ax

l3704_0213:
	lodsb
	inc	al
	jz	0219h

l3704_0218:
	dec	ax

l3704_0219:
	stosb
	loop	0213h

l3704_021C:
	push	ss
	pop	ds

l3704_021E:
	mov	bx,4h

l3704_0221:
	and	byte ptr [bx+0AFF0h],0BFh
	mov	ax,4400h
	int	21h
	jc	0237h

l3704_022D:
	test	dl,80h
	jz	0237h

l3704_0232:
	or	byte ptr [bx+0AFF0h],40h

l3704_0237:
	dec	bx
	jns	0221h

l3704_023A:
	mov	si,0B07Eh
	mov	di,0B07Eh
	call	02F2h
	mov	si,0AF26h
	mov	di,0AF66h
	call	02F2h
	retf
3704:024D                                        C6 06 1C              ...
3704:0250 A7 02 E9 2E FF 56 57 C6 06 1C A7 04 EB 03       .....VW.......  

;; fn3704_025E: 3704:025E
;;   Called from:
;;     2FCE:4984 (in fn2FCE_52F8)
;;     3704:0167 (in fn3704_00C8)
fn3704_025E proc
	push	bp
	mov	bp,sp
	mov	si,0B082h
	mov	di,0B082h
	call	02F2h
	mov	si,0B07Eh
	mov	di,0B07Eh
	call	02F2h
	cmp	word ptr [0B064h],0D6D6h
	jnz	027Fh

l3704_027B:
	call	word ptr [0B06Ah]

l3704_027F:
	jmp	0284h
3704:0281    55 8B EC                                      U..            

l3704_0284:
	mov	si,0B07Eh
	mov	di,0B082h
	call	02F2h
	mov	si,0B082h
	mov	di,0B082h
	call	02F2h
	call	far 3704h:031Ah
	or	ax,ax
	jz	02AAh

l3704_029F:
	cmp	word ptr [bp+6h],0h
	jnz	02AAh

l3704_02A5:
	mov	word ptr [bp+6h],0FFh

l3704_02AA:
	call	far 3704h:02C5h
	test	byte ptr [0A71Ch],4h
	jz	02BEh

l3704_02B6:
	mov	byte ptr [0A71Ch],0h
	pop	di
	pop	si
	retf

l3704_02BE:
	mov	ax,[bp+6h]
	mov	ah,4Ch
	int	21h

;; fn3704_02C5: 3704:02C5
;;   Called from:
;;     3704:02AA (in fn3704_025E)
fn3704_02C5 proc
	mov	cx,[0B074h]
	jcxz	02D2h

l3704_02CB:
	mov	bx,2h
	call	dword ptr [0B072h]

l3704_02D2:
	push	ds
	lds	dx,[0AFD5h]
	mov	ax,2500h
	int	21h
	pop	ds
	cmp	byte ptr [0B018h],0h
	jz	02F1h

l3704_02E4:
	push	ds
	mov	al,[0B019h]
	lds	dx,[0B01Ah]
	mov	ah,25h
	int	21h
	pop	ds

l3704_02F1:
	retf

;; fn3704_02F2: 3704:02F2
;;   Called from:
;;     3704:0240 (in fn3704_017C)
;;     3704:0249 (in fn3704_017C)
;;     3704:0267 (in fn3704_025E)
;;     3704:0270 (in fn3704_025E)
;;     3704:028A (in fn3704_025E)
;;     3704:0293 (in fn3704_025E)
fn3704_02F2 proc
	cmp	si,di
	jnc	0304h

l3704_02F6:
	sub	di,4h
	mov	ax,[di]
	or	ax,[di+2h]
	jz	02F2h

l3704_0300:
	call	dword ptr [di]
	jmp	02F2h

l3704_0304:
	ret
3704:0305                00 00 00 00 00 00 00 00 00 00 00      ...........

;; fn3704_0310: 3704:0310
;;   Called from:
;;     3704:0176 (in fn3704_00C8)
;;     3704:034F (in fn3704_017C)
fn3704_0310 proc
	xchg	bx,ax
	mov	bh,9Ah
	push	ss
	pop	ds
	jmp	far 2FCEh:3E1Ah

;; fn3704_031A: 3704:031A
;;   Called from:
;;     3704:0296 (in fn3704_025E)
fn3704_031A proc
	xor	ax,ax
	retf
3704:031D                                        00 59 5A              .YZ
3704:0320 8B DC 2B D8 72 0B 3B 1E 66 AF 72 05 8B E3 52 51 ..+.r.;.f.r...RQ
3704:0330 CB A1 68 AF 40 75 05 33 C0 E9 D4 FF 52 51 FF 2E ..h.@u.3....RQ..
3704:0340 68 AF 55 8B EC 16 1F EA 34 3D CE 2F             h.U.....4=./    

l3704_034C:
	mov	ax,2h
	jmp	0310h

;; fn3704_0352: 3704:0352
;;   Called from:
;;     2FCE:52F1 (in fn2FCE_52F0)
fn3704_0352 proc
	push	bp
	mov	bp,sp
	push	si
	push	di
	push	es
	push	ds
	mov	ax,3A61h
	mov	ds,ax
	push	ds
	pop	es
	mov	dx,[bp+6h]
	mov	si,10h

l3704_0366:
	lodsw
	cmp	ax,dx
	jz	037Bh

l3704_036B:
	inc	ax
	xchg	si,ax
	jz	037Bh

l3704_036F:
	xchg	di,ax
	xor	ax,ax
	mov	cx,0FFFFh

l3704_0375:
	repne scasb

l3704_0377:
	mov	si,di
	jmp	0366h

l3704_037B:
	xchg	si,ax
	cwd
	or	ax,ax
	jz	0383h

l3704_0381:
	mov	dx,ds

l3704_0383:
	pop	ds
	pop	es
	pop	di
	pop	si
	mov	sp,bp
	pop	bp
	retf	2h
3704:038D                                        00                    .  

;; fn3704_038E: 3704:038E
;;   Called from:
;;     2FCE:3C07 (in fn2FCE_3BFF)
;;     2FCE:3E00 (in fn2FCE_3A5D)
fn3704_038E proc
	mov	cx,[0B074h]
	jcxz	03A5h

l3704_0394:
	mov	bx,1h
	call	dword ptr [0B072h]
	mov	bx,4h
	mov	ax,1332h
	call	dword ptr [0B072h]

l3704_03A5:
	retf
3704:03A6                   00 00 00 00 00 00 00 00 00 00       ..........
3704:03B0 55 8B EC 8B 46 08 8B 5E 0C 0B D8 8B 5E 0A 75 0B U...F..^....^.u.
3704:03C0 8B 46 06 F7 E3 8B E5 5D CA 08 00 F7 E3 8B C8 8B .F.....]........
3704:03D0 46 06 F7 66 0C 03 C8 8B 46 06 F7 E3 03 D1 8B E5 F..f....F.......
3704:03E0 5D CA 08 00 55 8B EC 57 56 53 33 FF 8B 46 08 0B ]...U..WVS3..F..
3704:03F0 C0 7D 12 F7 D7 8B 56 06 F7 D8 F7 DA 1D 00 00 89 .}....V.........
3704:0400 46 08 89 56 06 8B 46 0C 0B C0 7D 12 F7 D7 8B 56 F..V..F...}....V
3704:0410 0A F7 D8 F7 DA 1D 00 00 89 46 0C 89 56 0A 0B C0 .........F..V...
3704:0420 75 16 8B 4E 0A 8B 46 08 33 D2 F7 F1 8B D8 8B 46 u..N..F.3......F
3704:0430 06 F7 F1 8B D3 EB 3E 90 8B D8 8B 4E 0A 8B 56 08 ......>....N..V.
3704:0440 8B 46 06 D1 EB D1 D9 D1 EA D1 D8 0B DB 75 F4 F7 .F...........u..
3704:0450 F1 8B F0 33 D2 52 50 FF 76 0C FF 76 0A 9A B0 03 ...3.RP.v..v....
3704:0460 04 37 3B 56 08 77 07 72 08 3B 46 06 76 03 83 EE .7;V.w.r.;F.v...
3704:0470 01 33 D2 8B C6 0B FF 74 07 F7 DA F7 D8 83 DA 00 .3.....t........
3704:0480 5B 5E 5F 8B E5 5D CA 08 00 00 55 8B EC 53 57 33 [^_..]....U..SW3
3704:0490 FF 8B 46 08 0B C0 7D 12 F7 D7 8B 56 06 F7 D8 F7 ..F...}....V....
3704:04A0 DA 1D 00 00 89 46 08 89 56 06 8B 46 0C 0B C0 7D .....F..V..F...}
3704:04B0 10 8B 56 0A F7 D8 F7 DA 1D 00 00 89 46 0C 89 56 ..V.........F..V
3704:04C0 0A 0B C0 75 1A 8B 4E 0A 8B 46 08 33 D2 F7 F1 8B ...u..N..F.3....
3704:04D0 46 06 F7 F1 8B C2 33 D2 0B FF 75 47 EB 4C 90 8B F.....3...uG.L..
3704:04E0 D8 8B 4E 0A 8B 56 08 8B 46 06 D1 EB D1 D9 D1 EA ..N..V..F.......
3704:04F0 D1 D8 0B DB 75 F4 F7 F1 33 D2 52 50 FF 76 0C FF ....u...3.RP.v..
3704:0500 76 0A 9A B0 03 04 37 3B 56 08 77 07 72 0B 3B 46 v.....7;V.w.r.;F
3704:0510 06 76 06 2B 46 0A 1B 56 0C 2B 46 06 1B 56 08 0B .v.+F..V.+F..V..
3704:0520 FF 75 07 F7 DA F7 D8 83 DA 00 5F 5B 8B E5 5D CA .u........_[..].
3704:0530 08 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
3704:0540 E8 87 01 CB 00 00 00 00 00 00 00 00 00 00 00 00 ................
3704:0550 57 55 E8 C9 05 5D 5F CB 99 55 8B EC 53 52 50 8B WU...]_..U..SRP.
3704:0560 DC CD 37 07 83 C4 04 5B 8B E5 5D CB 55 8B EC 83 ..7....[..].U...
3704:0570 EC 02 CD 3B 5E FE CD 3D 58 8B E5 5D CB 55 8B EC ...;^..=X..].U..
3704:0580 83 EC 04 CD 37 5E FC CD 3D 58 5A 8B E5 5D CB 55 ....7^..=XZ..].U
3704:0590 8B EC 83 EC 04 CD 37 5E FC CD 3D 83 7E FE 00 74 ......7^..=.~..t
3704:05A0 0A CD 37 46 FC CD 3B 5E FC CD 3D 58 83 C4 02 8B ..7F..;^..=X....
3704:05B0 E5 5D CB 55 8B EC CD 3A D9 CD 39 3E 68 A8 CD 3D .].U...:..9>h..=
3704:05C0 8A 26 69 A8 9E 8B E5 5D CB 55 8B EC 56 57 BB 06 .&i....].U..VW..
3704:05D0 00 B8 00 0C 9A 24 00 0E 38 5F 5E 8B E5 5D CB 55 .....$..8_^..].U
3704:05E0 8B EC 56 57 BB 06 00 B8 00 04 9A 24 00 0E 38 5F ..VW.......$..8_
3704:05F0 5E 8B E5 5D CB 55 8B EC 83 EC 02 CD 35 E4 CD 39 ^..].U......5..9
3704:0600 7E FE CD 3D 8A 66 FF 9E 74 0B CD 39 D8 CD 35 E8 ~..=.f..t..9..5.
3704:0610 77 03 CD 35 E0 8B E5 5D CB BA 3C A9 C6 06 F8 A8 w..5...]..<.....
3704:0620 00 E9 10 00 BA 84 A9 E9 18 00 BA 6C A9 EB F8 BA ...........l....
3704:0630 9C A9 EB F3 55 8B EC 83 EC 12 CD 35 C9 E8 1F 08 ....U......5....
3704:0640 EB 09 55 8B EC 83 EC 12 E8 D2 07 8A 46 EF 0A C0 ..U.........F...
3704:0650 7F 0B CD 37 E2 CD 35 6E FA 8B E5 5D CB E8 03 00 ...7..5n...]....
3704:0660 EB F0 C3 3C 04 74 FB 3C 06 74 F7 8B 5E FA 3C 03 ...<.t.<.t..^.<.
3704:0670 75 0A F6 C3 08 75 EB BB 06 00 EB 15 3C 01 75 05 u....u......<.u.
3704:0680 F6 C3 01 75 DD 3C 02 75 05 F6 C3 08 75 D4 BB 05 ...u.<.u....u...
3704:0690 00 EA C8 3D CE 2F 06 05 0B 06 06 05 05 05 06 05 ...=./..........
3704:06A0 05 2C 81 BB 96 06 2E D7 98 16 1F 83 C4 08 80 3E .,.............>
3704:06B0 EB AF 01 74 0C 8B DC 81 7F 02 0E 38 75 03 83 C4 ...t.......8u...
3704:06C0 06 55 8B EC 93 EA C8 3D CE 2F CD 35 3E 9D A8 CD .U.....=./.5>...
3704:06D0 3D 50 A0 9D A8 A2 9F A8 58 CD 35 2E 9F A8 FC 89 =P......X.5.....
3704:06E0 3E 6C A8 89 36 6E A8 03 CE 89 0E 70 A8 A3 78 A8 >l..6n.....p..x.
3704:06F0 89 16 7A A8 33 C9 0B DB 75 41 C7 06 76 A8 0A 00 ..z.3...uA..v...
3704:0700 E8 8A 00 88 0E 6A A8 8B 36 6E A8 C6 06 9A A8 00 .....j..6n......
3704:0710 E8 B8 00 0A 0E 6A A8 F7 06 78 A8 FF FF 75 06 F7 .....j...x...u..
3704:0720 C1 42 18 74 03 80 C9 30 A1 80 A8 8B 1E 82 A8 8A .B.t...0........
3704:0730 2E 9A A8 CD 35 2E 9D A8 CD 3D C3 89 1E 76 A8 E8 ....5....=...v..
3704:0740 74 02 89 0E 6A A8 8B 3E 6C A8 CD 37 06 80 A8 CD t...j..>l..7....
3704:0750 39 1D 8B 0E 6A A8 EB BF 58 80 C9 30 EB 26 80 C9 9...j...X..0.&..
3704:0760 30 58 9E 75 17 F7 DB F7 DF 83 DB 00 8B D3 0B D7 0X.u............
3704:0770 74 12 80 C9 10 F6 C7 80 75 0A EB 05 F6 C7 80 74 t.......u......t
3704:0780 03 80 C9 20 89 3E 80 A8 89 1E 82 A8 C3 E8 A2 02 ... .>..........
3704:0790 9F 50 33 C9 8B D9 E8 AD 02 72 BD 8B F8 E8 A6 02 .P3......r......
3704:07A0 72 BF 8B D3 8B EF D1 E7 D1 D3 D0 D5 D1 E7 D1 D3 r...............
3704:07B0 D0 D5 03 FD 13 DA 80 D5 00 D1 E7 D1 D3 D0 D5 03 ................
3704:07C0 F8 83 D3 00 80 D5 00 74 D4 EB 93 33 C9 89 0E 72 .......t...3...r
3704:07D0 A8 C7 06 74 A8 EE FF E8 58 02 75 03 80 CD 80 E8 ...t....X.u.....
3704:07E0 16 01 32 C9 33 DB E8 C2 02 74 6F 4E 3C 44 74 40 ..2.3....toN<Dt@
3704:07F0 3C 45 74 33 80 3E 7E A8 00 74 5F 3C 2B 74 04 3C <Et3.>~..t_<+t.<
3704:0800 2D 75 57 4E EB 24 80 3E 7C A8 00 74 16 46 E8 9A -uWN.$.>|..t.F..
3704:0810 02 4E 4E 3C 2B 74 0C 3C 2D 74 08 3C 39 77 05 3C .NN<+t.<-t.<9w.<
3704:0820 30 72 01 C3 58 EB 33 E8 DC FF 81 C9 02 04 EB 06 0r..X.3.........
3704:0830 E8 D3 FF 80 C9 0E C7 06 78 A8 00 00 46 E8 F2 01 ........x...F...
3704:0840 9F 50 E8 D0 01 F6 C5 02 75 0A 80 3E 7C A8 00 75 .P......u..>|..u
3704:0850 03 80 C9 40 58 9E 75 02 F7 DB F6 C5 01 74 0D 80 ...@X.u......t..
3704:0860 E5 7F 33 DB 89 1E 74 A8 89 1E 78 A8 8B FB 03 3E ..3...t...x....>
3704:0870 74 A8 03 3E 78 A8 F6 C5 10 75 04 2B 3E 7A A8 81 t..>x....u.+>z..
3704:0880 FF 3A 01 7E 03 BF 3A 01 81 FF A6 FE 7D 03 BF A6 .:.~..:.....}...
3704:0890 FE E8 4B 05 8B 3E 6C A8 83 3E 72 A8 07 76 03 80 ..K..>l..>r..v..
3704:08A0 C9 08 CD 35 C0 CD 35 E1 CD 37 2E 90 A8 CD 3A D9 ...5..5..7....:.
3704:08B0 CD 39 3E 9B A8 CD 3D F6 06 9C A8 41 75 22 CD 37 .9>...=....Au".7
3704:08C0 E2 CD 39 1D CD 39 3E 9B A8 CD 3D F6 06 9B A8 10 ..9..9>...=.....
3704:08D0 74 05 80 0E 9A A8 01 51 80 E5 80 08 6D 07 59 C3 t......Q....m.Y.
3704:08E0 8B 3E 6C A8 CD 39 D8 57 33 C0 AB AB AB 8A E5 0D .>l..9.W3.......
3704:08F0 F0 7F AB 5F 80 C9 01 C3 33 FF 8B EF 8B DF 8B D7 ..._....3.......
3704:0900 8B C7 E8 7A 01 72 39 0A C0 75 09 FF 0E 74 A8 EB ...z.r9..u...t..
3704:0910 F1 E8 6B 01 50 E8 44 00 58 03 D0 83 D3 00 83 D5 ..k.P.D.X.......
3704:0920 00 83 D7 00 FE C1 80 F9 12 72 E6 E8 51 01 73 FB .........r..Q.s.
3704:0930 80 E5 FE B8 3E 40 0B FF 78 0B 48 E8 34 00 EB F6 ....>@..x.H.4...
3704:0940 80 CD 01 33 C0 56 8B F7 BF 86 A8 92 AB 93 AB 95 ...3.V..........
3704:0950 AB 96 AB 92 AB 5E CD 37 2E 86 A8 C3 57 55 53 8B .....^.7....WUS.
3704:0960 C2 E8 0E 00 E8 0B 00 03 D0 58 13 D8 58 13 E8 58 .........X..X..X
3704:0970 13 F8 D1 E2 D1 D3 D1 D5 D1 D7 C3 58 80 C9 40 EB ...........X..@.
3704:0980 2C 58 80 C9 30 32 ED 58 9E 75 1A 80 CD 80 F7 DB ,X..02.X.u......
3704:0990 F7 DF 83 DB 00 8B D3 0B D7 74 12 80 C9 10 F6 C7 .........t......
3704:09A0 80 75 0A EB 05 F6 C7 80 74 03 80 C9 20 89 3E 80 .u......t... .>.
3704:09B0 A8 89 1E 82 A8 C3 E8 79 00 9F 50 33 C9 8B D9 E8 .......y..P3....
3704:09C0 84 00 72 B7 8B F8 E8 7D 00 72 BA 50 8B C7 F7 26 ..r....}.r.P...&
3704:09D0 76 A8 8B F8 8B EA 8B C3 F7 26 76 A8 0B D2 75 A1 v........&v...u.
3704:09E0 8B D8 03 DD 72 9B 58 03 F8 83 D3 00 73 D8 EB 92 ....r.X.....s...
3704:09F0 CD 37 E2 CD 39 1D CD 39 3E 9B A8 CD 3D F6 06 9B .7..9..9>...=...
3704:0A00 A8 10 74 05 80 0E 9A A8 01 51 80 E5 80 08 6D 07 ..t......Q....m.
3704:0A10 59 C3 BB FF 7F E8 2E 00 72 17 81 FB CC 0C 77 F2 Y.......r.....w.
3704:0A20 80 CD 02 D1 E3 03 C3 D1 E3 D1 E3 03 D8 78 E3 EB .............x..
3704:0A30 E4 C3 E8 76 00 74 09 3C 2B 74 05 3C 2D 74 03 4E ...v.t.<+t.<-t.N
3704:0A40 0C FF C3 4E F9 C3 E8 62 00 74 F9 2C 30 72 F4 3C ...N...b.t.,0r.<
3704:0A50 09 7E 06 2C 11 72 EC 04 0A 3A 06 76 A8 7D E4 32 .~.,.r...:.v.}.2
3704:0A60 E4 C3 46 4E 33 C0 80 CD 01 F9 C3 F6 C5 28 75 F3 ..FN3........(u.
3704:0A70 80 0E 6A A8 80 EB EF F6 C5 10 75 EF 80 CD 10 F6 ..j.......u.....
3704:0A80 C5 01 75 DE E8 24 00 74 DD 3C 2E 74 EA 2C 30 72 ..u..$.t.<.t.,0r
3704:0A90 D2 3C 09 77 CE B4 08 F6 C5 10 75 06 FF 06 74 A8 .<.w......u...t.
3704:0AA0 B4 20 0A EC FF 06 72 A8 32 E4 C3 3B 36 70 A8 73 . ....r.2..;6p.s
3704:0AB0 23 AC 80 3E 7D A8 00 74 10 3C 20 74 EE 3C 09 74 #..>}..t.< t.<.t
3704:0AC0 EA 3C 0A 74 E6 3C 0D 74 E2 3C 61 72 06 3C 7A 77 .<.t.<.t.<ar.<zw
3704:0AD0 02 24 5F C3 32 C0 C3 66 FC FF FF FF FF FF FF FE .$_.2..f........
3704:0AE0 3F CD CC CC CC CC CC CC CC FB 3F BE AE A8 C7 04 ?.........?.....
3704:0AF0 01 30 33 C0 8B D0 40 B3 20 07 C3 0B D2 75 0B 80 .03...@. ....u..
3704:0B00 E1 0F 74 0B 81 F9 08 FF 74 0A BE BF A8 EB 08 BE ..t.....t.......
3704:0B10 C5 A8 EB 03 BE CB A8 BA 01 00 07 33 C0 C3 06 8C ...........3....
3704:0B20 D8 8E C0 FC BF A2 A8 57 B9 04 00 F3 A5 5E 8B 4C .......W.....^.L
3704:0B30 06 80 64 07 7F B3 20 8B 04 0B 44 02 0B 44 04 8B ..d... ...D..D..
3704:0B40 D0 0B 44 06 74 A5 0B C9 79 02 B3 2D F7 D1 F7 C1 ..D.t...y..-....
3704:0B50 F0 7F F7 D1 74 A5 53 CD 35 3E D3 A8 CD 3D 50 A0 ....t.S.5>...=P.
3704:0B60 D3 A8 A2 D5 A8 58 CD 35 2E D5 A8 CD 39 04 CD 35 .....X.5....9..5
3704:0B70 C0 CD 37 3C CD 3D 33 FF BE A9 A8 AC 8A F8 AD 8B ..7<.=3.........
3704:0B80 C8 BA 10 4D F7 E2 91 B0 4D F6 E4 03 C8 13 D7 B0 ...M....M.......
3704:0B90 9A F6 E7 03 C8 13 FA 81 E9 F4 12 81 DF 43 13 57 .............C.W
3704:0BA0 F7 DF BE A2 A8 E8 37 02 BB D7 0A 5F CD 3C 9B 2F ......7...._.<./
3704:0BB0 CD 34 D9 CD 39 3E D1 A8 CD 3D F6 06 D2 A8 41 74 .4..9>...=....At
3704:0BC0 0B 47 BB E1 0A CD 3C 9B 2F CD 3A C9 57 CD 37 3C .G....<./.:.W.7<
3704:0BD0 CD 35 2E D3 A8 CD 3D AD 97 AD 95 AD 92 AD 93 AD .5....=.........
3704:0BE0 91 81 E9 FE 3F F7 D9 8B F7 33 C0 E3 0C D1 EB D1 ....?....3......
3704:0BF0 DA D1 DD D1 DE D0 DC E2 F4 81 D6 9A 03 13 E9 13 ................
3704:0C00 D1 13 D9 BF AF A8 B9 10 00 32 C0 51 53 52 55 56 .........2.QSRUV
3704:0C10 50 D0 E4 D1 D6 D1 D5 D1 D2 D1 D3 D0 D0 D0 E4 D1 P...............
3704:0C20 D6 D1 D5 D1 D2 D1 D3 D0 D0 59 12 E5 59 13 F1 59 .........Y..Y..Y
3704:0C30 13 E9 59 13 D1 59 13 D9 14 00 D0 E4 D1 D6 D1 D5 ..Y..Y..........
3704:0C40 D1 D2 D1 D3 D0 D0 59 04 30 AA E2 BD 4F 49 B0 30 ......Y.0...OI.0
3704:0C50 FD F3 AE FC 83 C1 12 BE AE A8 88 0C B8 01 00 5A ...............Z
3704:0C60 5B 07 C3 00 00 00 00 00 00 00 A0 02 40 00 00 00 [...........@...
3704:0C70 00 00 00 00 C8 05 40 00 00 00 00 00 00 00 FA 08 ......@.........
3704:0C80 40 00 00 00 00 00 00 40 9C 0C 40 00 00 00 00 00 @......@..@.....
3704:0C90 00 50 C3 0F 40 00 00 00 00 00 00 24 F4 12 40 00 .P..@......$..@.
3704:0CA0 00 00 00 00 80 96 98 16 40 00 00 00 00 00 20 BC ........@..... .
3704:0CB0 BE 19 40 00 00 00 04 BF C9 1B 8E 34 40 00 A1 ED ..@........4@...
3704:0CC0 CC CE 1B C2 D3 4E 40 9E B5 70 2B A8 AD C5 9D 69 .....N@..p+....i
3704:0CD0 40 FD 25 E5 1A 8E 4F 19 EB 83 40 D7 95 43 0E 05 @.%...O...@..C..
3704:0CE0 8D 29 AF 9E 40 A0 44 ED 81 12 8F 81 82 B9 40 D5 .)..@.D.......@.
3704:0CF0 A6 CF FF 49 1F 78 C2 D3 40 E0 8C E9 80 C9 47 BA ...I.x..@.....G.
3704:0D00 93 A8 41 6B 55 27 39 8D F7 70 E0 7C 42 8E DE F9 ..AkU'9..p.|B...
3704:0D10 9D FB EB 7E AA 51 43 76 E3 CC F2 29 2F 84 81 26 ...~.QCv...)/..&
3704:0D20 44 CD CC CC CC CC CC CC CC FB 3F 0A D7 A3 70 3D D.........?...p=
3704:0D30 0A D7 A3 F8 3F 3B DF 4F 8D 97 6E 12 83 F5 3F 2C ....?;.O..n...?,
3704:0D40 65 19 E2 58 17 B7 D1 F1 3F 23 84 47 1B 47 AC C5 e..X....?#.G.G..
3704:0D50 A7 EE 3F B6 69 6C AF 05 BD 37 86 EB 3F BC 42 7A ..?.il...7..?.Bz
3704:0D60 E5 D5 94 BF D6 E7 3F FD CE 61 84 11 77 CC AB E4 ......?..a..w...
3704:0D70 3F 5B E1 4D C4 BE 94 95 E6 C9 3F 53 3B 75 44 CD ?[.M......?S;uD.
3704:0D80 14 BE 9A AF 3F BA 94 39 45 AD 1E B1 CF 94 3F C6 ....?..9E.....?.
3704:0D90 E2 BC BA 3B 31 61 8B 7A 3F 59 C1 7E B1 53 7C 12 ...;1a.z?Y.~.S|.
3704:0DA0 BB 5F 3F 2F 8D 06 BE 92 85 15 FB 44 3F A5 E9 39 ._?/.......D?..9
3704:0DB0 A5 27 EA 7F A8 2A 3F A1 E4 BC 64 7C 46 D0 DD 55 .'...*?...d|F..U
3704:0DC0 3E 06 CC 23 54 77 83 FF 91 81 3D 3A 19 7A 63 25 >..#Tw....=:.zc%
3704:0DD0 43 31 C0 AC 3C D1 38 82 47 97 B8 00 FD D7 3B BB C1..<.8.G.....;.
3704:0DE0 13 0C 0B FF 79 05 BB D1 0C F7 DF 57 5F 81 C3 46 ....y......W_..F
3704:0DF0 00 0B FF 74 27 8B C7 D1 EF D1 EF D1 EF 57 25 07 ...t'........W%.
3704:0E00 00 74 E9 53 D0 E0 8A E0 D0 E0 D0 E0 02 C4 32 E4 .t.S..........2.
3704:0E10 03 D8 CD 3C 9B 2F CD 3A C9 5B EB D0 C3 CD 35 7E ...<./.:.[....5~
3704:0E20 FA 8A 5E FA 80 CB 38 B7 13 89 5E F8 CD 35 6E F8 ..^...8...^..5n.
3704:0E30 BB F9 A8 CD 35 E5 89 56 F0 CD 39 7E F6 C6 46 EF ....5..V..9~..F.
3704:0E40 00 CD 3D 8A 4E F7 D0 E1 D0 F9 D0 C1 8A C1 24 0F ..=.N.........$.
3704:0E50 D7 98 81 E1 04 04 8B DA 03 D8 83 C3 10 FF 27 CD ..............'.
3704:0E60 35 7E FA 8A 5E FA 80 CB 38 B7 13 89 5E F8 CD 35 5~..^...8...^..5
3704:0E70 6E F8 BB F9 A8 CD 35 E5 89 56 F0 CD 39 7E F6 C6 n.....5..V..9~..
3704:0E80 46 EF 00 CD 35 C9 8A 4E F7 CD 35 E5 CD 39 7E F6 F...5..N..5..9~.
3704:0E90 CD 35 C9 8A 6E F7 D0 E5 D0 FD D0 C5 8A C5 24 0F .5..n.........$.
3704:0EA0 D7 8A E0 D0 E1 D0 F9 D0 C1 8A C1 24 0F D7 D0 E4 ...........$....
3704:0EB0 D0 E4 0A C4 98 81 E1 04 04 8B DA 03 D8 83 C3 10 ................
3704:0EC0 FF 27 E8 3F 00 CD 35 C9 CD 39 D8 C3 E8 35 00 EB .'.?..5..9...5..
3704:0ED0 F7 CD 39 D8 CD 39 D8 CD 35 EE C3 CD 39 D8 CD 39 ..9..9..5...9..9
3704:0EE0 D8 CD 35 E8 C3 E8 1C 00 CD 3A C1 C3 F6 46 FB 10 ..5......:...F..
3704:0EF0 75 16 58 CD 39 D8 CD 39 D8 CD 37 2E E4 A8 80 7E u.X.9..9..7....~
3704:0F00 EF 00 7F 04 C6 46 EF 01 0A C9 C3 F6 46 FB 10 75 .....F......F..u
3704:0F10 F7 58 EB E2 0A C9 74 03 CD 35 E0 C3 0A ED 75 37 .X....t..5....u7
3704:0F20 CD 35 C9 E8 D7 00 EB 08 32 ED CD 35 EA CD 3A C9 .5......2..5..:.
3704:0F30 E8 1D 01 CD 35 E8 CD 3A C1 F6 46 F7 01 74 06 CD ....5..:..F..t..
3704:0F40 35 E8 CD 3A F1 F6 C2 40 75 03 CD 35 FD 0A ED 74 5..:...@u..5...t
3704:0F50 03 CD 35 E0 E9 6E FF CD 35 C0 CD 37 3E 32 A9 CD ..5..n..5..7>2..
3704:0F60 3D A1 3A A9 80 E4 7F 2D FF 3F 72 4F 3D 40 00 73 =.:....-.?rO=@.s
3704:0F70 4A F7 D8 05 3F 00 B5 01 8A C8 80 E1 07 D2 E5 8A J...?...........
3704:0F80 CD 49 D1 E8 D1 E8 D1 E8 8B D8 8A 87 32 A9 22 E8 .I..........2.".
3704:0F90 22 C8 0B DB 74 07 4B 0A 8F 32 A9 EB F5 0A C9 75 "...t.K..2.....u
3704:0FA0 1A CD 35 C9 CD 35 E1 E9 79 FF 80 3E F8 A8 01 74 ..5..5..y..>...t
3704:0FB0 0A E9 27 FF C6 46 EF 02 CD 35 C0 E9 35 FF 80 3E ..'..F...5..5..>
3704:0FC0 F8 A8 01 74 F6 CD 39 D8 CD 39 D8 CD 37 2E 0A A9 ...t..9..9..7...
3704:0FD0 C6 46 EF 02 C3 CD 35 ED CD 35 C9 CD 35 E4 CD 39 .F....5..5..5..9
3704:0FE0 7E F6 CD 3D F6 46 F7 41 75 D1 CD 35 F1 C3 CD 35 ~..=.F.Au..5...5
3704:0FF0 EC EB 03 CD 35 ED CD 35 C9 0A C9 75 BE CD 35 F1 ....5..5...u..5.
3704:1000 C3 E9 D7 FE E8 E5 FE 0A C9 75 B3 CD 39 D8 E9 C3 .........u..9...
3704:1010 FE CD 39 D8 E9 DF FE 58 CD 35 E4 CD 39 7E F6 CD ..9....X.5..9~..
3704:1020 3D F6 46 F7 01 75 E7 EB 0C 0A ED 75 E4 E8 BC FE =.F..u.....u....
3704:1030 75 D9 CD 39 D8 CD 39 D8 CD 37 2E 0A A9 C6 46 EF u..9..9..7....F.
3704:1040 03 C3 E8 C6 FE 75 C7 EB F4 E8 BF FE 75 C6 EB ED .....u......u...
3704:1050 C6 46 EF FF CD 35 C0 CD 35 E1 CD 37 2E 1E A9 CD .F...5..5..7....
3704:1060 3A D9 CD 39 7E F6 CD 3D F6 46 F7 41 75 A9 CD 35 :..9~..=.F.Au..5
3704:1070 C0 CD 35 FC CD 35 E4 CD 39 7E F6 CD 3D 8A 56 F7 ..5..5..9~..=.V.
3704:1080 CD 35 C9 CD 34 E1 CD 35 E4 CD 39 7E F6 CD 35 E1 .5..4..5..9~..5.
3704:1090 CD 35 F0 C3 00 00 00 00 00 00 00 00 00 00 00 00 .5..............
