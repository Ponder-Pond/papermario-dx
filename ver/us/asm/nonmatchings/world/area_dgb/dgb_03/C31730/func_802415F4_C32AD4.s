.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802415F4_C32AD4
/* C32AD4 802415F4 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* C32AD8 802415F8 AFB10014 */  sw        $s1, 0x14($sp)
/* C32ADC 802415FC 0080882D */  daddu     $s1, $a0, $zero
/* C32AE0 80241600 AFBF001C */  sw        $ra, 0x1c($sp)
/* C32AE4 80241604 AFB20018 */  sw        $s2, 0x18($sp)
/* C32AE8 80241608 AFB00010 */  sw        $s0, 0x10($sp)
/* C32AEC 8024160C 8E300148 */  lw        $s0, 0x148($s1)
/* C32AF0 80241610 86040008 */  lh        $a0, 8($s0)
/* C32AF4 80241614 0C00EABB */  jal       get_npc_unsafe
/* C32AF8 80241618 00A0902D */   daddu    $s2, $a1, $zero
/* C32AFC 8024161C 8E0300D0 */  lw        $v1, 0xd0($s0)
/* C32B00 80241620 8E240078 */  lw        $a0, 0x78($s1)
/* C32B04 80241624 8C630000 */  lw        $v1, ($v1)
/* C32B08 80241628 0083182A */  slt       $v1, $a0, $v1
/* C32B0C 8024162C 10600013 */  beqz      $v1, .L8024167C
/* C32B10 80241630 0040302D */   daddu    $a2, $v0, $zero
/* C32B14 80241634 00041040 */  sll       $v0, $a0, 1
/* C32B18 80241638 00441021 */  addu      $v0, $v0, $a0
/* C32B1C 8024163C 00022880 */  sll       $a1, $v0, 2
.L80241640:
/* C32B20 80241640 8E0300D0 */  lw        $v1, 0xd0($s0)
/* C32B24 80241644 C4C2003C */  lwc1      $f2, 0x3c($a2)
/* C32B28 80241648 00A31021 */  addu      $v0, $a1, $v1
/* C32B2C 8024164C C4400008 */  lwc1      $f0, 8($v0)
/* C32B30 80241650 46800020 */  cvt.s.w   $f0, $f0
/* C32B34 80241654 4602003E */  c.le.s    $f0, $f2
/* C32B38 80241658 00000000 */  nop
/* C32B3C 8024165C 45020003 */  bc1fl     .L8024166C
/* C32B40 80241660 24840001 */   addiu    $a0, $a0, 1
/* C32B44 80241664 0809059F */  j         .L8024167C
/* C32B48 80241668 AE240078 */   sw       $a0, 0x78($s1)
.L8024166C:
/* C32B4C 8024166C 8C620000 */  lw        $v0, ($v1)
/* C32B50 80241670 0082102A */  slt       $v0, $a0, $v0
/* C32B54 80241674 1440FFF2 */  bnez      $v0, .L80241640
/* C32B58 80241678 24A5000C */   addiu    $a1, $a1, 0xc
.L8024167C:
/* C32B5C 8024167C C6400000 */  lwc1      $f0, ($s2)
/* C32B60 80241680 E4C00018 */  swc1      $f0, 0x18($a2)
/* C32B64 80241684 8E0200CC */  lw        $v0, 0xcc($s0)
/* C32B68 80241688 8C420004 */  lw        $v0, 4($v0)
/* C32B6C 8024168C ACC20028 */  sw        $v0, 0x28($a2)
/* C32B70 80241690 24020001 */  addiu     $v0, $zero, 1
/* C32B74 80241694 AE200074 */  sw        $zero, 0x74($s1)
/* C32B78 80241698 AE220070 */  sw        $v0, 0x70($s1)
/* C32B7C 8024169C 8FBF001C */  lw        $ra, 0x1c($sp)
/* C32B80 802416A0 8FB20018 */  lw        $s2, 0x18($sp)
/* C32B84 802416A4 8FB10014 */  lw        $s1, 0x14($sp)
/* C32B88 802416A8 8FB00010 */  lw        $s0, 0x10($sp)
/* C32B8C 802416AC 03E00008 */  jr        $ra
/* C32B90 802416B0 27BD0020 */   addiu    $sp, $sp, 0x20