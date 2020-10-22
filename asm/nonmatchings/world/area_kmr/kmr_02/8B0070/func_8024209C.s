.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8024209C
/* 8B210C 8024209C 27BDFFB0 */  addiu     $sp, $sp, -0x50
/* 8B2110 802420A0 AFB10014 */  sw        $s1, 0x14($sp)
/* 8B2114 802420A4 0080882D */  daddu     $s1, $a0, $zero
/* 8B2118 802420A8 AFBF0024 */  sw        $ra, 0x24($sp)
/* 8B211C 802420AC AFB40020 */  sw        $s4, 0x20($sp)
/* 8B2120 802420B0 AFB3001C */  sw        $s3, 0x1c($sp)
/* 8B2124 802420B4 AFB20018 */  sw        $s2, 0x18($sp)
/* 8B2128 802420B8 AFB00010 */  sw        $s0, 0x10($sp)
/* 8B212C 802420BC F7BC0048 */  sdc1      $f28, 0x48($sp)
/* 8B2130 802420C0 F7BA0040 */  sdc1      $f26, 0x40($sp)
/* 8B2134 802420C4 F7B80038 */  sdc1      $f24, 0x38($sp)
/* 8B2138 802420C8 F7B60030 */  sdc1      $f22, 0x30($sp)
/* 8B213C 802420CC F7B40028 */  sdc1      $f20, 0x28($sp)
/* 8B2140 802420D0 8E30000C */  lw        $s0, 0xc($s1)
/* 8B2144 802420D4 8E130000 */  lw        $s3, ($s0)
/* 8B2148 802420D8 26100004 */  addiu     $s0, $s0, 4
/* 8B214C 802420DC 0C0B1EAF */  jal       get_variable
/* 8B2150 802420E0 0260282D */   daddu    $a1, $s3, $zero
/* 8B2154 802420E4 4482E000 */  mtc1      $v0, $f28
/* 8B2158 802420E8 00000000 */  nop       
/* 8B215C 802420EC 4680E720 */  cvt.s.w   $f28, $f28
/* 8B2160 802420F0 8E140000 */  lw        $s4, ($s0)
/* 8B2164 802420F4 26100004 */  addiu     $s0, $s0, 4
/* 8B2168 802420F8 0220202D */  daddu     $a0, $s1, $zero
/* 8B216C 802420FC 0C0B1EAF */  jal       get_variable
/* 8B2170 80242100 0280282D */   daddu    $a1, $s4, $zero
/* 8B2174 80242104 4482D000 */  mtc1      $v0, $f26
/* 8B2178 80242108 00000000 */  nop       
/* 8B217C 8024210C 4680D6A0 */  cvt.s.w   $f26, $f26
/* 8B2180 80242110 8E100000 */  lw        $s0, ($s0)
/* 8B2184 80242114 0220202D */  daddu     $a0, $s1, $zero
/* 8B2188 80242118 0C0B1EAF */  jal       get_variable
/* 8B218C 8024211C 0200282D */   daddu    $a1, $s0, $zero
/* 8B2190 80242120 4482C000 */  mtc1      $v0, $f24
/* 8B2194 80242124 00000000 */  nop       
/* 8B2198 80242128 4680C620 */  cvt.s.w   $f24, $f24
/* 8B219C 8024212C 3C128011 */  lui       $s2, %hi(gPlayerStatus)
/* 8B21A0 80242130 2652EFC8 */  addiu     $s2, $s2, %lo(gPlayerStatus)
/* 8B21A4 80242134 3C038007 */  lui       $v1, %hi(gCurrentCameraID)
/* 8B21A8 80242138 8C637410 */  lw        $v1, %lo(gCurrentCameraID)($v1)
/* 8B21AC 8024213C C64200A8 */  lwc1      $f2, 0xa8($s2)
/* 8B21B0 80242140 44800000 */  mtc1      $zero, $f0
/* 8B21B4 80242144 00031080 */  sll       $v0, $v1, 2
/* 8B21B8 80242148 00431021 */  addu      $v0, $v0, $v1
/* 8B21BC 8024214C 00021080 */  sll       $v0, $v0, 2
/* 8B21C0 80242150 00431023 */  subu      $v0, $v0, $v1
/* 8B21C4 80242154 000218C0 */  sll       $v1, $v0, 3
/* 8B21C8 80242158 00431021 */  addu      $v0, $v0, $v1
/* 8B21CC 8024215C 000210C0 */  sll       $v0, $v0, 3
/* 8B21D0 80242160 46001032 */  c.eq.s    $f2, $f0
/* 8B21D4 80242164 3C01800B */  lui       $at, 0x800b
/* 8B21D8 80242168 00220821 */  addu      $at, $at, $v0
/* 8B21DC 8024216C C4361DEC */  lwc1      $f22, 0x1dec($at)
/* 8B21E0 80242170 45000005 */  bc1f      .L80242188
/* 8B21E4 80242174 00000000 */   nop      
/* 8B21E8 80242178 3C0142C8 */  lui       $at, 0x42c8
/* 8B21EC 8024217C 44810000 */  mtc1      $at, $f0
/* 8B21F0 80242180 08090866 */  j         .L80242198
/* 8B21F4 80242184 4600B581 */   sub.s    $f22, $f22, $f0
.L80242188:
/* 8B21F8 80242188 3C0142C8 */  lui       $at, 0x42c8
/* 8B21FC 8024218C 44810000 */  mtc1      $at, $f0
/* 8B2200 80242190 00000000 */  nop       
/* 8B2204 80242194 4600B580 */  add.s     $f22, $f22, $f0
.L80242198:
/* 8B2208 80242198 0C00A6C9 */  jal       clamp_angle
/* 8B220C 8024219C 4600B306 */   mov.s    $f12, $f22
/* 8B2210 802421A0 46000586 */  mov.s     $f22, $f0
/* 8B2214 802421A4 3C014170 */  lui       $at, 0x4170
/* 8B2218 802421A8 4481A000 */  mtc1      $at, $f20
/* 8B221C 802421AC 0C00A8BB */  jal       sin_deg
/* 8B2220 802421B0 4600B306 */   mov.s    $f12, $f22
/* 8B2224 802421B4 46140002 */  mul.s     $f0, $f0, $f20
/* 8B2228 802421B8 00000000 */  nop       
/* 8B222C 802421BC 864200B0 */  lh        $v0, 0xb0($s2)
/* 8B2230 802421C0 3C013F00 */  lui       $at, 0x3f00
/* 8B2234 802421C4 44812000 */  mtc1      $at, $f4
/* 8B2238 802421C8 44821000 */  mtc1      $v0, $f2
/* 8B223C 802421CC 00000000 */  nop       
/* 8B2240 802421D0 468010A0 */  cvt.s.w   $f2, $f2
/* 8B2244 802421D4 46041082 */  mul.s     $f2, $f2, $f4
/* 8B2248 802421D8 00000000 */  nop       
/* 8B224C 802421DC 4600E700 */  add.s     $f28, $f28, $f0
/* 8B2250 802421E0 4602D680 */  add.s     $f26, $f26, $f2
/* 8B2254 802421E4 0C00A8D4 */  jal       cos_deg
/* 8B2258 802421E8 4600B306 */   mov.s    $f12, $f22
/* 8B225C 802421EC 46140002 */  mul.s     $f0, $f0, $f20
/* 8B2260 802421F0 00000000 */  nop       
/* 8B2264 802421F4 0220202D */  daddu     $a0, $s1, $zero
/* 8B2268 802421F8 0260282D */  daddu     $a1, $s3, $zero
/* 8B226C 802421FC 4600E18D */  trunc.w.s $f6, $f28
/* 8B2270 80242200 44063000 */  mfc1      $a2, $f6
/* 8B2274 80242204 0C0B2026 */  jal       set_variable
/* 8B2278 80242208 4600C601 */   sub.s    $f24, $f24, $f0
/* 8B227C 8024220C 0220202D */  daddu     $a0, $s1, $zero
/* 8B2280 80242210 4600D18D */  trunc.w.s $f6, $f26
/* 8B2284 80242214 44063000 */  mfc1      $a2, $f6
/* 8B2288 80242218 0C0B2026 */  jal       set_variable
/* 8B228C 8024221C 0280282D */   daddu    $a1, $s4, $zero
/* 8B2290 80242220 0220202D */  daddu     $a0, $s1, $zero
/* 8B2294 80242224 4600C18D */  trunc.w.s $f6, $f24
/* 8B2298 80242228 44063000 */  mfc1      $a2, $f6
/* 8B229C 8024222C 0C0B2026 */  jal       set_variable
/* 8B22A0 80242230 0200282D */   daddu    $a1, $s0, $zero
/* 8B22A4 80242234 8FBF0024 */  lw        $ra, 0x24($sp)
/* 8B22A8 80242238 8FB40020 */  lw        $s4, 0x20($sp)
/* 8B22AC 8024223C 8FB3001C */  lw        $s3, 0x1c($sp)
/* 8B22B0 80242240 8FB20018 */  lw        $s2, 0x18($sp)
/* 8B22B4 80242244 8FB10014 */  lw        $s1, 0x14($sp)
/* 8B22B8 80242248 8FB00010 */  lw        $s0, 0x10($sp)
/* 8B22BC 8024224C D7BC0048 */  ldc1      $f28, 0x48($sp)
/* 8B22C0 80242250 D7BA0040 */  ldc1      $f26, 0x40($sp)
/* 8B22C4 80242254 D7B80038 */  ldc1      $f24, 0x38($sp)
/* 8B22C8 80242258 D7B60030 */  ldc1      $f22, 0x30($sp)
/* 8B22CC 8024225C D7B40028 */  ldc1      $f20, 0x28($sp)
/* 8B22D0 80242260 24020002 */  addiu     $v0, $zero, 2
/* 8B22D4 80242264 03E00008 */  jr        $ra
/* 8B22D8 80242268 27BD0050 */   addiu    $sp, $sp, 0x50