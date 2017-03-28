	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_8184DA4
sub_8184DA4: @ 8184DA4
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	lsls r0, 24
	lsrs r0, 24
	mov r12, r0
	ldr r0, =gUnknown_0203C7AC
	mov r1, r12
	strb r1, [r0]
	ldr r1, =gUnknown_0203CCD0
	movs r0, 0
	strb r0, [r1]
	movs r2, 0
	movs r7, 0
	ldr r3, =gUnknown_0203C7BC
	mov r10, r3
	ldr r6, =gUnknown_0203C794
	mov r9, r6
	ldr r0, =gUnknown_0203BD34
	mov r8, r0
_08184DD0:
	lsls r0, r2, 1
	mov r3, r9
	adds r1, r0, r3
	strh r7, [r1]
	ldr r6, =gUnknown_0203C79C
	adds r1, r0, r6
	strh r7, [r1]
	ldr r1, =gUnknown_0203C7A4
	adds r0, r1
	strh r7, [r0]
	adds r4, r2, 0x1
	mov r3, r12
	cmp r3, 0x1
	bne _08184E1C
	ldr r5, =gBattleTypeFlags
	movs r3, 0xFF
	movs r1, 0xA6
	lsls r1, 2
	adds r0, r2, 0
	muls r0, r1
	mov r6, r8
	adds r2, r0, r6
_08184DFC:
	ldrb r0, [r2]
	orrs r0, r3
	strb r0, [r2]
	adds r2, 0x1
	subs r1, 0x1
	cmp r1, 0
	bne _08184DFC
	ldr r0, [r5]
	ldr r1, =gUnknown_0203C7B8
	str r0, [r1]
	ldr r3, =gUnknown_020244A8
	ldr r0, [r3]
	ldr r0, [r0, 0x14]
	ldr r0, [r0, 0xC]
	mov r6, r10
	str r0, [r6]
_08184E1C:
	adds r2, r4, 0
	cmp r2, 0x3
	ble _08184DD0
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8184DA4

	thumb_func_start sub_8184E58
sub_8184E58: @ 8184E58
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x20
	ldr r0, =gUnknown_0203C7AC
	ldrb r0, [r0]
	cmp r0, 0x1
	bne _08184EA0
	ldr r1, =gUnknown_0203BD2C
	ldr r0, =gRngValue
	ldr r0, [r0]
	str r0, [r1]
	ldr r4, =gUnknown_0203C7AE
	ldr r0, =0x000040cf
	bl VarGet
	strb r0, [r4]
	ldr r4, =gUnknown_0203C7AF
	bl sub_81A513C
	strb r0, [r4]
	b _08184EAC
	.pool
_08184EA0:
	cmp r0, 0x2
	bne _08184EAC
	ldr r0, =gRngValue
	ldr r1, =gUnknown_0203BD2C
	ldr r1, [r1]
	str r1, [r0]
_08184EAC:
	ldr r0, =gBattleTypeFlags
	ldr r5, [r0]
	movs r0, 0x2
	ands r5, r0
	cmp r5, 0
	beq _08184F64
	bl link_get_multiplayer_id
	ldr r1, =gUnknown_0203C7B4
	strb r0, [r1]
	bl sub_8009FCC
	lsls r0, 24
	lsrs r0, 24
	mov r10, r0
	movs r5, 0
	ldr r0, =gUnknown_0203CC80
	mov r9, r0
	ldr r6, =gUnknown_020229E8
	movs r0, 0x8
	adds r0, r6
	mov r8, r0
	mov r7, r9
	adds r7, 0x4
_08184EDC:
	lsls r0, r5, 2
	adds r0, r5
	lsls r4, r0, 2
	mov r0, r9
	adds r2, r4, r0
	lsls r0, r5, 3
	subs r0, r5
	lsls r3, r0, 2
	adds r0, r6, 0x4
	adds r0, r3, r0
	ldr r0, [r0]
	str r0, [r2]
	adds r1, r3, r6
	ldrb r0, [r1, 0x13]
	strb r0, [r2, 0xC]
	ldrh r0, [r1, 0x18]
	strh r0, [r2, 0xE]
	ldrh r0, [r1, 0x1A]
	strh r0, [r2, 0x10]
	cmp r5, r10
	bge _08184F3C
	mov r0, r8
	adds r1, r3, r0
	mov r0, sp
	bl StringCopy
	mov r0, sp
	bl StripExtCtrlCodes
	adds r0, r4, r7
	mov r1, sp
	bl StringCopy
	adds r5, 0x1
	b _08184F56
	.pool
_08184F3C:
	adds r5, 0x1
	ldr r0, =gUnknown_020229F0
	adds r1, r3, r0
	ldr r0, =gUnknown_0203CC84
	adds r2, r4, r0
	movs r3, 0x7
_08184F48:
	ldrb r0, [r1]
	strb r0, [r2]
	adds r1, 0x1
	adds r2, 0x1
	subs r3, 0x1
	cmp r3, 0
	bge _08184F48
_08184F56:
	cmp r5, 0x3
	ble _08184EDC
	b _08184FA0
	.pool
_08184F64:
	ldr r3, =gUnknown_0203CC80
	ldr r4, =gSaveBlock2Ptr
	ldr r2, [r4]
	ldrb r1, [r2, 0xA]
	ldrb r0, [r2, 0xB]
	lsls r0, 8
	orrs r1, r0
	ldrb r0, [r2, 0xC]
	lsls r0, 16
	orrs r1, r0
	ldrb r0, [r2, 0xD]
	lsls r0, 24
	orrs r1, r0
	str r1, [r3]
	ldrb r0, [r2, 0x8]
	strb r0, [r3, 0xC]
	strh r5, [r3, 0xE]
	ldr r0, =gGameLanguage
	ldrb r0, [r0]
	strh r0, [r3, 0x10]
	movs r5, 0
	adds r3, 0x4
_08184F90:
	adds r0, r5, r3
	ldr r1, [r4]
	adds r1, r5
	ldrb r1, [r1]
	strb r1, [r0]
	adds r5, 0x1
	cmp r5, 0x7
	ble _08184F90
_08184FA0:
	add sp, 0x20
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8184E58

	thumb_func_start sub_8184FBC
sub_8184FBC: @ 8184FBC
	push {r4-r6,lr}
	lsls r0, 24
	lsrs r5, r0, 24
	lsls r1, 24
	lsrs r6, r1, 24
	ldr r1, =gUnknown_0203C794
	lsls r0, r5, 1
	adds r4, r0, r1
	ldrh r2, [r4]
	adds r3, r2, 0
	ldr r0, =0x00000297
	cmp r3, r0
	bhi _08184FF0
	ldr r0, =gUnknown_0203C7AC
	ldrb r0, [r0]
	cmp r0, 0x2
	beq _08184FF0
	ldr r1, =gUnknown_0203BD34
	adds r0, r2, 0x1
	strh r0, [r4]
	movs r0, 0xA6
	lsls r0, 2
	muls r0, r5
	adds r0, r3, r0
	adds r0, r1
	strb r6, [r0]
_08184FF0:
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8184FBC

	thumb_func_start sub_8185008
sub_8185008: @ 8185008
	push {r4-r7,lr}
	lsls r0, 24
	lsrs r5, r0, 24
	lsls r1, 24
	lsrs r4, r1, 24
	movs r3, 0
	cmp r3, r4
	bge _08185046
	ldr r0, =gUnknown_0203C794
	lsls r1, r5, 1
	adds r2, r1, r0
	ldr r7, =gUnknown_0203BD34
	movs r0, 0xA6
	lsls r0, 2
	muls r5, r0
	movs r6, 0xFF
_08185028:
	ldrh r0, [r2]
	subs r0, 0x1
	strh r0, [r2]
	ldrh r1, [r2]
	adds r1, r5
	adds r1, r7
	ldrb r0, [r1]
	orrs r0, r6
	strb r0, [r1]
	ldrh r0, [r2]
	cmp r0, 0
	beq _08185046
	adds r3, 0x1
	cmp r3, r4
	blt _08185028
_08185046:
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8185008

	thumb_func_start sub_8185054
sub_8185054: @ 8185054
	push {r4,lr}
	sub sp, 0x4
	lsls r0, 24
	lsrs r3, r0, 24
	ldr r1, =gUnknown_0203C794
	lsls r0, r3, 1
	adds r2, r0, r1
	ldrh r1, [r2]
	ldr r0, =0x00000297
	cmp r1, r0
	bhi _0818507A
	ldr r4, =gUnknown_0203BD34
	adds r0, 0x1
	muls r3, r0
	adds r0, r1, r3
	adds r0, r4
	ldrb r0, [r0]
	cmp r0, 0xFF
	bne _081850BC
_0818507A:
	ldr r2, =gUnknown_020375F0
	ldr r1, =gUnknown_0202433A
	movs r0, 0x5
	strb r0, [r1]
	movs r0, 0x5
	strh r0, [r2]
	bl ResetPaletteFadeControl
	movs r0, 0x1
	negs r0, r0
	movs r1, 0
	str r1, [sp]
	movs r2, 0
	movs r3, 0x10
	bl BeginNormalPaletteFade
	ldr r0, =sub_80384E4
	bl SetMainCallback2
	movs r0, 0xFF
	b _081850C6
	.pool
_081850BC:
	adds r0, r1, 0x1
	strh r0, [r2]
	adds r0, r1, r3
	adds r0, r4
	ldrb r0, [r0]
_081850C6:
	add sp, 0x4
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_8185054

	thumb_func_start sub_81850D0
sub_81850D0: @ 81850D0
	ldr r0, =gUnknown_0203C7AC
	ldrb r0, [r0]
	bx lr
	.pool
	thumb_func_end sub_81850D0

	thumb_func_start sub_81850DC
sub_81850DC: @ 81850DC
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x4
	mov r8, r0
	movs r7, 0
	movs r0, 0
	mov r12, r0
_081850F0:
	mov r1, r12
	lsls r3, r1, 1
	ldr r0, =gUnknown_0203C794
	adds r5, r3, r0
	ldr r1, =gUnknown_0203C79C
	adds r6, r3, r1
	ldrh r0, [r5]
	mov r9, r3
	mov r1, r12
	adds r1, 0x1
	str r1, [sp]
	ldrh r1, [r6]
	cmp r0, r1
	beq _0818517E
	adds r1, r7, 0
	adds r0, r1, 0x1
	lsls r0, 24
	lsrs r7, r0, 24
	adds r2, r7, 0
	add r1, r8
	mov r0, r12
	strb r0, [r1]
	adds r0, r2, 0x1
	lsls r0, 24
	lsrs r7, r0, 24
	add r2, r8
	ldrb r0, [r5]
	ldrb r1, [r6]
	subs r0, r1
	strb r0, [r2]
	movs r4, 0
	ldrh r0, [r5]
	ldrh r1, [r6]
	subs r0, r1
	cmp r4, r0
	bge _08185172
	ldr r1, =gUnknown_0203BD34
	mov r10, r1
	ldr r6, =gUnknown_0203C79C
	movs r0, 0xA6
	lsls r0, 2
	mov r5, r12
	muls r5, r0
_08185146:
	adds r1, r7, 0
	adds r0, r1, 0x1
	lsls r0, 24
	lsrs r7, r0, 24
	add r1, r8
	adds r2, r3, r6
	ldrh r0, [r2]
	adds r0, r4
	adds r0, r5
	add r0, r10
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	ldr r1, =gUnknown_0203C794
	adds r0, r3, r1
	ldrh r1, [r0]
	ldrh r0, [r2]
	subs r1, r0
	cmp r4, r1
	blt _08185146
_08185172:
	ldr r0, =gUnknown_0203C79C
	add r0, r9
	ldr r1, =gUnknown_0203C794
	add r1, r9
	ldrh r1, [r1]
	strh r1, [r0]
_0818517E:
	ldr r1, [sp]
	lsls r0, r1, 24
	lsrs r0, 24
	mov r12, r0
	cmp r0, 0x3
	bls _081850F0
	adds r0, r7, 0
	add sp, 0x4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_81850DC

	thumb_func_start sub_81851A8
sub_81851A8: @ 81851A8
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, 0x8
	adds r7, r0, 0
	movs r1, 0x2
	mov r0, sp
	strb r1, [r0]
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	ands r0, r1
	cmp r0, 0
	beq _0818525E
	movs r5, 0
	ldr r4, =gUnknown_020229E8
	b _081851DA
	.pool
_081851D0:
	ldrb r0, [r4]
	cmp r0, 0x3
	bne _0818525E
	adds r4, 0x1C
	adds r5, 0x1
_081851DA:
	bl sub_8009FCC
	lsls r0, 24
	lsrs r0, 24
	cmp r5, r0
	blt _081851D0
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x4
	ands r0, r1
	cmp r0, 0
	bne _0818525E
	ldrb r0, [r7]
	mov r4, sp
	adds r4, 0x1
	strb r0, [r4]
	ldrb r0, [r4]
	mov r8, r4
	cmp r0, 0
	beq _0818525E
_08185202:
	adds r0, r7, 0
	mov r1, sp
	adds r2, r4, 0
	bl sub_8185278
	lsls r0, 24
	lsrs r6, r0, 24
	adds r0, r7, 0
	mov r1, sp
	adds r2, r4, 0
	bl sub_8185278
	lsls r0, 24
	lsrs r2, r0, 24
	cmp r2, 0
	beq _08185256
	ldr r3, =gUnknown_0203BD34
	ldr r0, =gUnknown_0203C7A4
	lsls r1, r6, 1
	adds r4, r1, r0
	adds r5, r2, 0
	movs r0, 0xA6
	lsls r0, 2
	muls r6, r0
_08185232:
	adds r0, r7, 0
	mov r1, sp
	mov r2, r8
	str r3, [sp, 0x4]
	bl sub_8185278
	ldrh r1, [r4]
	adds r2, r1, 0x1
	strh r2, [r4]
	lsls r1, 16
	lsrs r1, 16
	adds r1, r6
	ldr r3, [sp, 0x4]
	adds r1, r3
	strb r0, [r1]
	subs r5, 0x1
	cmp r5, 0
	bne _08185232
_08185256:
	mov r4, r8
	ldrb r0, [r4]
	cmp r0, 0
	bne _08185202
_0818525E:
	add sp, 0x8
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81851A8

	thumb_func_start sub_8185278
sub_8185278: @ 8185278
	ldrb r3, [r2]
	subs r3, 0x1
	strb r3, [r2]
	ldrb r2, [r1]
	adds r3, r2, 0x1
	strb r3, [r1]
	lsls r2, 24
	lsrs r2, 24
	adds r0, r2
	ldrb r0, [r0]
	bx lr
	thumb_func_end sub_8185278

	thumb_func_start sub_8185290
sub_8185290: @ 8185290
	push {r4,r5,lr}
	movs r0, 0xF8
	lsls r0, 4
	bl AllocZeroed
	adds r4, r0, 0
	bl start_ov_to_battle_anim
	adds r5, r0, 0
	adds r0, r4, 0
	bl Free
	adds r0, r5, 0
	pop {r4,r5}
	pop {r1}
	bx r1
	thumb_func_end sub_8185290

	thumb_func_start sub_81852B0
sub_81852B0: @ 81852B0
	push {r4,r5,lr}
	adds r5, r0, 0
	ldr r1, =0x000004ec
	adds r0, r5, r1
	ldr r1, [r0]
	cmp r1, 0
	beq _081852E8
	ldr r0, =0x7d007e92
	ands r1, r0
	cmp r1, 0
	bne _081852E8
	ldr r4, =0x00000f7c
	adds r0, r5, 0
	adds r1, r4, 0
	bl CalcByteArraySum
	adds r4, r5, r4
	ldr r1, [r4]
	cmp r0, r1
	bne _081852E8
	movs r0, 0x1
	b _081852EA
	.pool
_081852E8:
	movs r0, 0
_081852EA:
	pop {r4,r5}
	pop {r1}
	bx r1
	thumb_func_end sub_81852B0

	thumb_func_start sub_81852F0
sub_81852F0: @ 81852F0
	push {r4,r5,lr}
	adds r4, r0, 0
	adds r5, r1, 0
	movs r2, 0x80
	lsls r2, 5
	adds r0, r5, 0
	movs r1, 0
	bl memset
	movs r2, 0xF8
	lsls r2, 4
	adds r0, r5, 0
	adds r1, r4, 0
	bl memcpy
	ldr r4, =0x00000f7c
	adds r0, r5, 0
	adds r1, r4, 0
	bl CalcByteArraySum
	adds r4, r5, r4
	str r0, [r4]
	movs r0, 0x1F
	adds r1, r5, 0
	bl sub_8153634
	cmp r0, 0x1
	bne _08185330
	movs r0, 0x1
	b _08185332
	.pool
_08185330:
	movs r0, 0
_08185332:
	pop {r4,r5}
	pop {r1}
	bx r1
	thumb_func_end sub_81852F0

	thumb_func_start sub_8185338
sub_8185338: @ 8185338
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0xC
	movs r0, 0
	str r0, [sp, 0x4]
	movs r0, 0xF8
	lsls r0, 4
	bl AllocZeroed
	adds r7, r0, 0
	movs r0, 0x80
	lsls r0, 5
	bl AllocZeroed
	str r0, [sp]
	movs r6, 0
_0818535E:
	movs r0, 0x64
	adds r4, r6, 0
	muls r4, r0
	adds r5, r7, r4
	ldr r1, =gUnknown_0203C7C0
	adds r1, r4, r1
	adds r0, r5, 0
	movs r2, 0x64
	bl memcpy
	movs r1, 0x96
	lsls r1, 2
	adds r5, r1
	ldr r0, =gUnknown_0203CA18
	adds r4, r0
	adds r0, r5, 0
	adds r1, r4, 0
	movs r2, 0x64
	bl memcpy
	adds r6, 0x1
	cmp r6, 0x5
	ble _0818535E
	movs r6, 0
	ldr r2, =gSaveBlock2Ptr
	mov r9, r2
	movs r3, 0x9A
	lsls r3, 3
	adds r3, r7, r3
	str r3, [sp, 0x8]
	ldr r5, =gUnknown_0203CC80
	mov r8, r6
	mov r12, r6
	movs r4, 0x96
	lsls r4, 3
	adds r4, r7
	mov r10, r4
	ldr r0, =0x000004e4
	adds r4, r7, r0
_081853AC:
	lsls r1, r6, 3
	ldr r0, =gUnknown_0203CC80
	adds r0, 0x4
	mov r3, r8
	adds r2, r3, r0
	add r1, r10
	movs r3, 0x7
_081853BA:
	ldrb r0, [r2]
	strb r0, [r1]
	adds r2, 0x1
	adds r1, 0x1
	subs r3, 0x1
	cmp r3, 0
	bge _081853BA
	ldr r0, [sp, 0x8]
	adds r1, r0, r6
	ldrb r0, [r5, 0xC]
	strb r0, [r1]
	ldrh r0, [r5, 0x10]
	strb r0, [r4]
	ldrh r0, [r5, 0xE]
	strb r0, [r4, 0xC]
	ldr r1, =0x000004d4
	adds r0, r7, r1
	add r0, r12
	ldr r1, [r5]
	str r1, [r0]
	adds r5, 0x14
	movs r2, 0x14
	add r8, r2
	movs r3, 0x4
	add r12, r3
	adds r4, 0x1
	adds r6, 0x1
	cmp r6, 0x3
	ble _081853AC
	movs r4, 0x9D
	lsls r4, 3
	adds r1, r7, r4
	ldr r5, =gUnknown_0203BD2C
	ldr r0, [r5]
	str r0, [r1]
	ldr r0, =gUnknown_0203C7B8
	ldr r2, [r0]
	movs r0, 0x2
	ands r0, r2
	cmp r0, 0
	beq _081854DC
	ldr r1, =0x000004ec
	adds r3, r7, r1
	movs r1, 0x23
	negs r1, r1
	ands r1, r2
	movs r0, 0x80
	lsls r0, 18
	orrs r1, r0
	str r1, [r3]
	movs r0, 0x4
	ands r0, r2
	cmp r0, 0
	beq _08185454
	movs r0, 0x80
	lsls r0, 24
	orrs r1, r0
	str r1, [r3]
	b _081854E2
	.pool
_08185454:
	movs r0, 0x40
	ands r2, r0
	cmp r2, 0
	beq _081854E2
	ldr r2, =gUnknown_0203CC80
	ldrh r0, [r2, 0xE]
	cmp r0, 0x1
	beq _081854A8
	cmp r0, 0x1
	bgt _08185474
	cmp r0, 0
	beq _0818547E
	b _081854E2
	.pool
_08185474:
	cmp r0, 0x2
	beq _0818547E
	cmp r0, 0x3
	beq _081854A8
	b _081854E2
_0818547E:
	ldr r3, =gUnknown_0203C7B4
	ldrb r1, [r3]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 2
	ldr r4, =gUnknown_0203CC80
	adds r0, r4
	ldrh r1, [r0, 0xE]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	bne _081854E2
	ldr r5, =0x000004ec
	adds r0, r7, r5
	b _081854C4
	.pool
_081854A8:
	ldr r0, =gUnknown_0203C7B4
	ldrb r1, [r0]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 2
	ldr r1, =gUnknown_0203CC80
	adds r0, r1
	ldrh r1, [r0, 0xE]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _081854E2
	ldr r2, =0x000004ec
	adds r0, r7, r2
_081854C4:
	ldr r1, [r0]
	movs r2, 0x80
	lsls r2, 24
	orrs r1, r2
	str r1, [r0]
	b _081854E2
	.pool
_081854DC:
	ldr r3, =0x000004ec
	adds r0, r7, r3
	str r2, [r0]
_081854E2:
	ldr r4, =gUnknown_02038BCA
	ldrh r1, [r4]
	ldr r5, =0x000004f4
	adds r0, r7, r5
	strh r1, [r0]
	ldr r0, =gUnknown_02038BCC
	ldrh r1, [r0]
	ldr r2, =0x000004f6
	adds r0, r7, r2
	strh r1, [r0]
	ldr r3, =gUnknown_02038BCE
	ldrh r1, [r3]
	movs r4, 0x9F
	lsls r4, 3
	adds r0, r7, r4
	strh r1, [r0]
	ldr r5, =gUnknown_0203C7B4
	ldrb r1, [r5]
	adds r2, 0x4
	adds r0, r7, r2
	strh r1, [r0]
	mov r3, r9
	ldr r0, [r3]
	ldr r4, =0x00000ca9
	adds r0, r4
	ldrb r0, [r0]
	lsls r0, 30
	lsrs r0, 30
	ldr r5, =0x000004fc
	adds r1, r7, r5
	strb r0, [r1]
	ldr r0, =gUnknown_0203C7AE
	ldrb r1, [r0]
	adds r2, 0x3
	adds r0, r7, r2
	strb r1, [r0]
	ldr r3, =gUnknown_0203C7AF
	ldrb r1, [r3]
	ldr r4, =0x000004fe
	adds r0, r7, r4
	strb r1, [r0]
	mov r5, r9
	ldr r0, [r5]
	ldrb r1, [r0, 0x15]
	lsls r1, 29
	ldr r0, =0x000004ff
	adds r3, r7, r0
	lsrs r1, 31
	ldrb r2, [r3]
	movs r0, 0x2
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	ldr r1, [r5]
	ldrb r1, [r1, 0x14]
	lsls r1, 29
	lsrs r1, 28
	movs r2, 0xF
	negs r2, r2
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	movs r2, 0xA0
	lsls r2, 3
	adds r1, r7, r2
	ldr r3, =gUnknown_0203C7BC
	ldr r0, [r3]
	str r0, [r1]
	ldr r4, =0xfffffed4
	adds r1, r4, 0
	ldr r5, =gUnknown_02038BCA
	ldrh r5, [r5]
	adds r0, r1, r5
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0x63
	bls _08185580
	b _081856C4
_08185580:
	movs r6, 0
	ldr r0, =0x00000504
	adds r3, r7, r0
	mov r10, r9
	ldr r1, =gUnknown_02038BCA
	mov r12, r1
	adds r2, r4, 0
	mov r8, r2
	ldr r4, =0x0000073c
_08185592:
	adds r2, r3, r6
	mov r5, r10
	ldr r1, [r5]
	mov r5, r12
	ldrh r0, [r5]
	add r0, r8
	movs r5, 0xEC
	muls r0, r5
	adds r0, r6, r0
	adds r1, r4
	adds r1, r0
	ldrb r0, [r1]
	strb r0, [r2]
	adds r6, 0x1
	cmp r6, 0x7
	ble _08185592
	mov r0, r9
	ldr r2, [r0]
	ldr r1, =gUnknown_02038BCA
	ldrh r0, [r1]
	ldr r3, =0xfffffed4
	adds r0, r3
	movs r1, 0xEC
	muls r0, r1
	adds r2, r0
	ldr r4, =0x00000739
	adds r2, r4
	ldrb r1, [r2]
	ldr r5, =0x0000050c
	adds r0, r7, r5
	strb r1, [r0]
	ldr r1, =gUnknown_0203CCE8
	ldrb r0, [r1]
	cmp r0, 0x1
	bne _08185664
	movs r6, 0
	ldr r2, =0x0000050e
	adds r4, r7, r2
	mov r10, r9
	ldr r5, =gUnknown_02038BCA
	mov r8, r5
	adds r5, r3, 0
_081855E6:
	lsls r3, r6, 1
	mov r0, r10
	ldr r2, [r0]
	mov r1, r8
	ldrh r0, [r1]
	adds r0, r5
	movs r1, 0xEC
	muls r0, r1
	adds r3, r0
	movs r0, 0xEC
	lsls r0, 3
	adds r2, r0
	adds r2, r3
	ldrh r0, [r2]
	strh r0, [r4]
	adds r4, 0x2
	adds r6, 0x1
	cmp r6, 0x5
	ble _081855E6
	b _08185696
	.pool
_08185664:
	movs r6, 0
	ldr r1, =0x0000050e
	adds r4, r7, r1
	mov r10, r9
	ldr r2, =gUnknown_02038BCA
	mov r8, r2
	adds r5, r3, 0
_08185672:
	lsls r3, r6, 1
	mov r0, r10
	ldr r2, [r0]
	mov r1, r8
	ldrh r0, [r1]
	adds r0, r5
	movs r1, 0xEC
	muls r0, r1
	adds r3, r0
	ldr r0, =0x00000754
	adds r2, r0
	adds r2, r3
	ldrh r0, [r2]
	strh r0, [r4]
	adds r4, 0x2
	adds r6, 0x1
	cmp r6, 0x5
	ble _08185672
_08185696:
	mov r1, r9
	ldr r2, [r1]
	ldr r3, =gUnknown_02038BCA
	ldrh r0, [r3]
	ldr r4, =0xfffffed4
	adds r0, r4
	movs r1, 0xEC
	muls r0, r1
	adds r2, r0
	ldr r5, =0x0000081c
	adds r2, r5
	ldrb r1, [r2]
	b _08185856
	.pool
_081856C4:
	ldr r3, =gUnknown_02038BCC
	ldrh r3, [r3]
	adds r0, r1, r3
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0x63
	bls _081856D4
	b _081857E4
_081856D4:
	movs r6, 0
	ldr r4, =0x00000504
	adds r3, r7, r4
	mov r10, r9
	ldr r5, =gUnknown_02038BCC
	mov r12, r5
	ldr r0, =0xfffffed4
	mov r8, r0
	ldr r4, =0x0000073c
_081856E6:
	adds r2, r3, r6
	mov r5, r10
	ldr r1, [r5]
	mov r5, r12
	ldrh r0, [r5]
	add r0, r8
	movs r5, 0xEC
	muls r0, r5
	adds r0, r6, r0
	adds r1, r4
	adds r1, r0
	ldrb r0, [r1]
	strb r0, [r2]
	adds r6, 0x1
	cmp r6, 0x7
	ble _081856E6
	mov r0, r9
	ldr r2, [r0]
	ldr r1, =gUnknown_02038BCC
	ldrh r0, [r1]
	ldr r3, =0xfffffed4
	adds r0, r3
	movs r1, 0xEC
	muls r0, r1
	adds r2, r0
	ldr r4, =0x00000739
	adds r2, r4
	ldrb r1, [r2]
	ldr r5, =0x0000050c
	adds r0, r7, r5
	strb r1, [r0]
	ldr r1, =gUnknown_0203CCE8
	ldrb r0, [r1]
	cmp r0, 0x1
	bne _08185784
	movs r6, 0
	ldr r2, =0x0000050e
	adds r4, r7, r2
	mov r10, r9
	ldr r5, =gUnknown_02038BCC
	mov r8, r5
	adds r5, r3, 0
_0818573A:
	lsls r3, r6, 1
	mov r0, r10
	ldr r2, [r0]
	mov r1, r8
	ldrh r0, [r1]
	adds r0, r5
	movs r1, 0xEC
	muls r0, r1
	adds r3, r0
	movs r0, 0xEC
	lsls r0, 3
	adds r2, r0
	adds r2, r3
	ldrh r0, [r2]
	strh r0, [r4]
	adds r4, 0x2
	adds r6, 0x1
	cmp r6, 0x5
	ble _0818573A
	b _081857B6
	.pool
_08185784:
	movs r6, 0
	ldr r1, =0x0000050e
	adds r4, r7, r1
	mov r10, r9
	ldr r2, =gUnknown_02038BCC
	mov r8, r2
	adds r5, r3, 0
_08185792:
	lsls r3, r6, 1
	mov r0, r10
	ldr r2, [r0]
	mov r1, r8
	ldrh r0, [r1]
	adds r0, r5
	movs r1, 0xEC
	muls r0, r1
	adds r3, r0
	ldr r0, =0x00000754
	adds r2, r0
	adds r2, r3
	ldrh r0, [r2]
	strh r0, [r4]
	adds r4, 0x2
	adds r6, 0x1
	cmp r6, 0x5
	ble _08185792
_081857B6:
	mov r1, r9
	ldr r2, [r1]
	ldr r3, =gUnknown_02038BCC
	ldrh r0, [r3]
	ldr r4, =0xfffffed4
	adds r0, r4
	movs r1, 0xEC
	muls r0, r1
	adds r2, r0
	ldr r5, =0x0000081c
	adds r2, r5
	ldrb r1, [r2]
	b _08185856
	.pool
_081857E4:
	ldr r3, =gUnknown_02038BCE
	ldrh r3, [r3]
	adds r0, r1, r3
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0x63
	bhi _0818585C
	movs r6, 0
	ldr r4, =0x00000504
	adds r3, r7, r4
	mov r10, r9
	ldr r5, =gUnknown_02038BCE
	mov r12, r5
	ldr r0, =0xfffffed4
	mov r8, r0
	ldr r4, =0x0000073c
_08185804:
	adds r2, r3, r6
	mov r5, r10
	ldr r1, [r5]
	mov r5, r12
	ldrh r0, [r5]
	add r0, r8
	movs r5, 0xEC
	muls r0, r5
	adds r0, r6, r0
	adds r1, r4
	adds r1, r0
	ldrb r0, [r1]
	strb r0, [r2]
	adds r6, 0x1
	cmp r6, 0x7
	ble _08185804
	mov r0, r9
	ldr r1, [r0]
	ldr r2, =gUnknown_02038BCE
	ldrh r0, [r2]
	ldr r3, =0xfffffed4
	adds r0, r3
	movs r2, 0xEC
	muls r0, r2
	adds r1, r0
	ldr r4, =0x00000739
	adds r1, r4
	ldrb r1, [r1]
	ldr r5, =0x0000050c
	adds r0, r7, r5
	strb r1, [r0]
	mov r0, r9
	ldr r1, [r0]
	ldr r4, =gUnknown_02038BCE
	ldrh r0, [r4]
	adds r0, r3
	muls r0, r2
	adds r1, r0
	ldr r5, =0x0000081c
	adds r1, r5
	ldrb r1, [r1]
_08185856:
	ldr r2, =0x0000051a
	adds r0, r7, r2
	strb r1, [r0]
_0818585C:
	ldr r3, =gUnknown_02038BCA
	ldrh r0, [r3]
	ldr r1, =0x0000018f
	cmp r0, r1
	bls _08185900
	mov r4, r9
	ldr r2, [r4]
	adds r1, r0, 0
	ldr r3, =0xfffffe70
	adds r1, r3
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r2, r0
	adds r2, 0xDC
	ldrb r0, [r2]
	lsls r0, 27
	lsrs r0, 27
	ldr r5, =0x0000050d
	adds r1, r7, r5
	strb r0, [r1]
	movs r6, 0
	ldr r0, =0x0000050e
	adds r4, r7, r0
	mov r10, r9
	ldr r1, =gUnknown_02038BCA
	mov r8, r1
	adds r5, r3, 0
_08185894:
	lsls r3, r6, 1
	mov r0, r10
	ldr r2, [r0]
	mov r0, r8
	ldrh r1, [r0]
	adds r1, r5
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r3, r0
	movs r1, 0x82
	lsls r1, 1
	adds r2, r1
	adds r2, r3
	ldrh r0, [r2]
	strh r0, [r4]
	adds r4, 0x2
	adds r6, 0x1
	cmp r6, 0x5
	ble _08185894
	mov r3, r9
	ldr r2, [r3]
	ldr r4, =gUnknown_02038BCA
	ldrh r1, [r4]
	ldr r5, =0xfffffe70
	adds r1, r5
	b _081859AC
	.pool
_08185900:
	ldr r3, =gUnknown_02038BCC
	ldrh r0, [r3]
	cmp r0, r1
	bls _0818597C
	mov r4, r9
	ldr r2, [r4]
	adds r1, r0, 0
	ldr r3, =0xfffffe70
	adds r1, r3
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r2, r0
	adds r2, 0xDC
	ldrb r0, [r2]
	lsls r0, 27
	lsrs r0, 27
	ldr r5, =0x0000050d
	adds r1, r7, r5
	strb r0, [r1]
	movs r6, 0
	ldr r0, =0x0000050e
	adds r4, r7, r0
	mov r10, r9
	ldr r1, =gUnknown_02038BCC
	mov r8, r1
	adds r5, r3, 0
_08185936:
	lsls r3, r6, 1
	mov r0, r10
	ldr r2, [r0]
	mov r0, r8
	ldrh r1, [r0]
	adds r1, r5
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r3, r0
	movs r1, 0x82
	lsls r1, 1
	adds r2, r1
	adds r2, r3
	ldrh r0, [r2]
	strh r0, [r4]
	adds r4, 0x2
	adds r6, 0x1
	cmp r6, 0x5
	ble _08185936
	mov r3, r9
	ldr r2, [r3]
	ldr r4, =gUnknown_02038BCC
	ldrh r1, [r4]
	ldr r5, =0xfffffe70
	adds r1, r5
	b _081859AC
	.pool
_0818597C:
	ldr r3, =gUnknown_02038BCE
	ldrh r0, [r3]
	cmp r0, r1
	bls _081859C0
	mov r4, r9
	ldr r2, [r4]
	adds r1, r0, 0
	ldr r3, =0xfffffe70
	adds r1, r3
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r2, r0
	adds r2, 0xDC
	ldrb r0, [r2]
	lsls r0, 27
	lsrs r0, 27
	ldr r5, =0x0000050d
	adds r1, r7, r5
	strb r0, [r1]
	ldr r2, [r4]
	ldr r0, =gUnknown_02038BCE
	ldrh r1, [r0]
	adds r1, r3
_081859AC:
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r2, r0
	ldr r1, =0x0000011b
	adds r0, r2, r1
	ldrb r1, [r0]
	ldr r2, =0x0000051b
	adds r0, r7, r2
	strb r1, [r0]
_081859C0:
	movs r6, 0
	ldr r3, =0x00000297
	mov r10, r3
	ldr r4, =gUnknown_0203BD34
	mov r9, r4
	movs r5, 0xA6
	lsls r5, 2
	mov r8, r5
	ldr r0, =0x0000051c
	adds r5, r7, r0
_081859D4:
	adds r4, r6, 0x1
	mov r0, r8
	muls r0, r6
	mov r1, r9
	adds r2, r0, r1
	adds r1, r0, r5
	mov r3, r10
	adds r3, 0x1
_081859E4:
	ldrb r0, [r2]
	strb r0, [r1]
	adds r2, 0x1
	adds r1, 0x1
	subs r3, 0x1
	cmp r3, 0
	bne _081859E4
	adds r6, r4, 0
	cmp r6, 0x3
	ble _081859D4
_081859F8:
	adds r0, r7, 0
	ldr r1, [sp]
	bl sub_81852F0
	adds r4, r0, 0
	cmp r4, 0x1
	beq _08185A14
	ldr r0, [sp, 0x4]
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp, 0x4]
	cmp r0, 0x2
	bls _081859F8
_08185A14:
	adds r0, r7, 0
	bl Free
	ldr r0, [sp]
	bl Free
	adds r0, r4, 0
	add sp, 0xC
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_8185338

	thumb_func_start sub_8185A54
sub_8185A54: @ 8185A54
	push {r4,r5,lr}
	adds r5, r0, 0
	adds r4, r1, 0
	movs r0, 0x1F
	bl sub_81535DC
	cmp r0, 0x1
	bne _08185A7E
	movs r2, 0xF8
	lsls r2, 4
	adds r0, r5, 0
	adds r1, r4, 0
	bl memcpy
	adds r0, r5, 0
	bl sub_81852B0
	cmp r0, 0
	beq _08185A7E
	movs r0, 0x1
	b _08185A80
_08185A7E:
	movs r0, 0
_08185A80:
	pop {r4,r5}
	pop {r1}
	bx r1
	thumb_func_end sub_8185A54

	thumb_func_start start_ov_to_battle_anim
start_ov_to_battle_anim: @ 8185A88
	push {r4,r5,lr}
	adds r4, r0, 0
	movs r0, 0x80
	lsls r0, 5
	bl AllocZeroed
	adds r5, r0, 0
	adds r0, r4, 0
	adds r1, r5, 0
	bl sub_8185A54
	adds r4, r0, 0
	adds r0, r5, 0
	bl Free
	adds r0, r4, 0
	pop {r4,r5}
	pop {r1}
	bx r1
	thumb_func_end start_ov_to_battle_anim

	thumb_func_start sub_8185AB0
sub_8185AB0: @ 8185AB0
	push {lr}
	ldr r0, =gSaveBlock2Ptr
	ldr r2, [r0]
	ldr r0, =gUnknown_0203C7AD
	ldrb r0, [r0]
	ldr r1, =0x00000ca9
	adds r2, r1
	movs r1, 0x3
	ands r1, r0
	ldrb r3, [r2]
	movs r0, 0x4
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2]
	ldr r1, =gUnknown_0202433A
	movs r0, 0
	strb r0, [r1]
	ldr r0, =gBattleTypeFlags
	movs r1, 0
	str r1, [r0]
	ldr r0, =gUnknown_02038BCA
	strh r1, [r0]
	ldr r0, =gUnknown_02038BCC
	strh r1, [r0]
	ldr r0, =gUnknown_02038BCE
	strh r1, [r0]
	bl sub_8185EFC
	ldr r0, =gUnknown_0203C7B0
	ldr r0, [r0]
	bl SetMainCallback2
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8185AB0

	thumb_func_start sub_8185B1C
sub_8185B1C: @ 8185B1C
	push {r4,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	ldr r1, =gTasks
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	adds r0, r1
	ldrh r1, [r0, 0x8]
	subs r1, 0x1
	strh r1, [r0, 0x8]
	lsls r1, 16
	cmp r1, 0
	bne _08185B4A
	ldr r0, =gMain
	ldr r1, =sub_8185AB0
	str r1, [r0, 0x8]
	ldr r0, =sub_8036760
	bl SetMainCallback2
	adds r0, r4, 0
	bl DestroyTask
_08185B4A:
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8185B1C

	thumb_func_start sub_8185B60
sub_8185B60: @ 8185B60
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x4
	adds r7, r0, 0
	bl zero_player_party_data
	bl zero_enemy_party_data
	movs r6, 0
	ldr r0, =gPlayerParty
	mov r8, r0
_08185B7C:
	movs r0, 0x64
	adds r4, r6, 0
	muls r4, r0
	mov r1, r8
	adds r0, r4, r1
	adds r5, r7, r4
	adds r1, r5, 0
	movs r2, 0x64
	bl memcpy
	ldr r0, =gEnemyParty
	adds r4, r0
	movs r2, 0x96
	lsls r2, 2
	adds r5, r2
	adds r0, r4, 0
	adds r1, r5, 0
	movs r2, 0x64
	bl memcpy
	adds r6, 0x1
	cmp r6, 0x5
	ble _08185B7C
	movs r6, 0
	ldr r3, =gUnknown_020229E8
	mov r8, r3
	mov r0, r8
	adds r0, 0x8
	str r0, [sp]
	mov r4, r8
	adds r4, 0x4
	mov r10, r6
	mov r9, r6
_08185BBE:
	movs r1, 0
	mov r12, r1
	lsls r5, r6, 2
	movs r2, 0x96
	lsls r2, 3
	adds r0, r7, r2
	mov r3, r9
	adds r2, r3, r0
	mov r0, r10
	lsls r1, r0, 2
	mov r0, r8
	adds r0, 0x8
	adds r1, r0
	movs r3, 0x7
_08185BDA:
	ldrb r0, [r2]
	strb r0, [r1]
	ldrb r0, [r2]
	cmp r0, 0xFF
	bne _08185BE8
	movs r0, 0x1
	mov r12, r0
_08185BE8:
	adds r2, 0x1
	adds r1, 0x1
	subs r3, 0x1
	cmp r3, 0
	bge _08185BDA
	movs r1, 0x9A
	lsls r1, 3
	adds r0, r7, r1
	adds r0, r6
	ldrb r0, [r0]
	strb r0, [r4, 0xF]
	ldr r2, =0x000004e4
	adds r0, r7, r2
	adds r0, r6
	ldrb r1, [r0]
	strh r1, [r4, 0x16]
	movs r3, 0x9E
	lsls r3, 3
	adds r0, r7, r3
	adds r0, r6
	ldrb r0, [r0]
	strh r0, [r4, 0x14]
	subs r2, 0x10
	adds r0, r7, r2
	adds r0, r5
	ldr r0, [r0]
	str r0, [r4]
	mov r3, r12
	cmp r3, 0
	beq _08185C2A
	ldr r0, [sp]
	bl ConvertInternationalString
_08185C2A:
	ldr r0, [sp]
	adds r0, 0x1C
	str r0, [sp]
	adds r4, 0x1C
	movs r1, 0x7
	add r10, r1
	movs r2, 0x8
	add r9, r2
	adds r6, 0x1
	cmp r6, 0x3
	ble _08185BBE
	ldr r1, =gUnknown_0203BD2C
	movs r3, 0x9D
	lsls r3, 3
	adds r0, r7, r3
	ldr r0, [r0]
	str r0, [r1]
	ldr r2, =gBattleTypeFlags
	ldr r1, =0x000004ec
	adds r0, r7, r1
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 17
	orrs r0, r1
	str r0, [r2]
	ldr r1, =gUnknown_02038BCA
	ldr r2, =0x000004f4
	adds r0, r7, r2
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, =gUnknown_02038BCC
	adds r3, 0xE
	adds r0, r7, r3
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, =gUnknown_02038BCE
	adds r2, 0x4
	adds r0, r7, r2
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, =gUnknown_0203C7B4
	adds r3, 0x4
	adds r0, r7, r3
	ldrh r0, [r0]
	strb r0, [r1]
	ldr r1, =gUnknown_0203C7AD
	ldr r3, =gSaveBlock2Ptr
	ldr r0, [r3]
	ldr r2, =0x00000ca9
	adds r0, r2
	ldrb r0, [r0]
	lsls r0, 30
	lsrs r0, 30
	strb r0, [r1]
	ldr r1, =gUnknown_0203C7AE
	ldr r2, =0x000004fd
	adds r0, r7, r2
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, =gUnknown_0203C7AF
	adds r2, 0x1
	adds r0, r7, r2
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r2, =gUnknown_0203C7B6
	ldr r1, =0x000004ff
	adds r0, r7, r1
	ldrb r1, [r0]
	lsls r0, r1, 31
	lsrs r0, 31
	strb r0, [r2]
	ldr r0, =gUnknown_0203C7B7
	lsls r1, 28
	lsrs r1, 29
	strb r1, [r0]
	ldr r1, =gUnknown_0203C7BC
	movs r2, 0xA0
	lsls r2, 3
	adds r0, r7, r2
	ldr r0, [r0]
	str r0, [r1]
	movs r6, 0
	mov r10, r3
	ldr r2, =gUnknown_0203CCD9
	ldr r3, =gUnknown_0203CCDA
	ldr r0, =gUnknown_03001278
	mov r8, r0
	ldr r1, =gUnknown_03001279
	mov r9, r1
	ldr r5, =gUnknown_0203CCD1
	ldr r0, =0x00000504
	adds r4, r7, r0
_08185CE2:
	adds r0, r6, r5
	adds r1, r4, r6
	ldrb r1, [r1]
	strb r1, [r0]
	adds r6, 0x1
	cmp r6, 0x7
	ble _08185CE2
	ldr r1, =0x0000050c
	adds r0, r7, r1
	ldrb r0, [r0]
	strb r0, [r2]
	ldr r2, =0x0000050d
	adds r0, r7, r2
	ldrb r0, [r0]
	strb r0, [r3]
	ldr r3, =0x0000051a
	adds r0, r7, r3
	ldrb r0, [r0]
	mov r1, r8
	strb r0, [r1]
	adds r2, 0xE
	adds r0, r7, r2
	ldrb r0, [r0]
	mov r3, r9
	strb r0, [r3]
	ldr r0, =0x0000050e
	adds r1, r7, r0
	ldr r4, =gUnknown_0203CCDC
	movs r6, 0x5
_08185D1C:
	ldrh r0, [r1]
	strh r0, [r4]
	adds r1, 0x2
	adds r4, 0x2
	subs r6, 0x1
	cmp r6, 0
	bge _08185D1C
	mov r1, r10
	ldr r2, [r1]
	ldr r3, =0x000004fc
	adds r0, r7, r3
	ldrb r0, [r0]
	ldr r1, =0x00000ca9
	adds r2, r1
	movs r1, 0x3
	ands r1, r0
	ldrb r3, [r2]
	movs r0, 0x4
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2]
	movs r6, 0
	ldr r2, =0x00000297
	mov r10, r2
	ldr r3, =gUnknown_0203BD34
	mov r9, r3
	movs r0, 0xA6
	lsls r0, 2
	mov r8, r0
	ldr r1, =0x0000051c
	adds r5, r7, r1
_08185D5C:
	adds r2, r6, 0x1
	mov r0, r8
	muls r0, r6
	adds r1, r0, r5
	mov r3, r9
	adds r4, r0, r3
	mov r3, r10
	adds r3, 0x1
_08185D6C:
	ldrb r0, [r1]
	strb r0, [r4]
	adds r1, 0x1
	adds r4, 0x1
	subs r3, 0x1
	cmp r3, 0
	bne _08185D6C
	adds r6, r2, 0
	cmp r6, 0x3
	ble _08185D5C
	add sp, 0x4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8185B60

	thumb_func_start sub_8185E24
sub_8185E24: @ 8185E24
	push {r4,r5,lr}
	adds r5, r0, 0
	movs r0, 0xF8
	lsls r0, 4
	bl AllocZeroed
	adds r4, r0, 0
	bl start_ov_to_battle_anim
	cmp r0, 0x1
	bne _08185E6E
	bl sub_8185EB8
	adds r0, r4, 0
	bl sub_8185B60
	ldr r0, =sub_8185B1C
	movs r1, 0x1
	bl CreateTask
	lsls r0, 24
	lsrs r0, 24
	ldr r2, =gTasks
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	adds r1, r2
	movs r0, 0x80
	strh r0, [r1, 0x8]
	ldr r0, =gUnknown_0203C7B0
	str r5, [r0]
	movs r0, 0
	bl current_map_music_set__default_for_battle
	ldr r0, =sub_8185E8C
	bl SetMainCallback2
_08185E6E:
	adds r0, r4, 0
	bl Free
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8185E24

	thumb_func_start sub_8185E8C
sub_8185E8C: @ 8185E8C
	push {lr}
	bl CallObjectCallbacks
	bl PrepareSpritesForOamLoad
	bl RunTasks
	pop {r0}
	bx r0
	thumb_func_end sub_8185E8C

	thumb_func_start sub_8185EA0
sub_8185EA0: @ 8185EA0
	ldr r0, =gUnknown_0203C7AE
	ldrb r0, [r0]
	bx lr
	.pool
	thumb_func_end sub_8185EA0

	thumb_func_start sub_8185EAC
sub_8185EAC: @ 8185EAC
	ldr r0, =gUnknown_0203C7AF
	ldrb r0, [r0]
	bx lr
	.pool
	thumb_func_end sub_8185EAC

	thumb_func_start sub_8185EB8
sub_8185EB8: @ 8185EB8
	push {r4-r6,lr}
	movs r5, 0
	ldr r6, =gUnknown_0203C7C0
_08185EBE:
	movs r0, 0x64
	adds r4, r5, 0
	muls r4, r0
	adds r0, r4, r6
	ldr r1, =gPlayerParty
	adds r1, r4, r1
	movs r2, 0x64
	bl memcpy
	ldr r0, =gUnknown_0203CA18
	adds r0, r4, r0
	ldr r1, =gEnemyParty
	adds r4, r1
	adds r1, r4, 0
	movs r2, 0x64
	bl memcpy
	adds r5, 0x1
	cmp r5, 0x5
	ble _08185EBE
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8185EB8

	thumb_func_start sub_8185EFC
sub_8185EFC: @ 8185EFC
	push {r4-r6,lr}
	movs r5, 0
	ldr r6, =gPlayerParty
_08185F02:
	movs r0, 0x64
	adds r4, r5, 0
	muls r4, r0
	adds r0, r4, r6
	ldr r1, =gUnknown_0203C7C0
	adds r1, r4, r1
	movs r2, 0x64
	bl memcpy
	ldr r0, =gEnemyParty
	adds r0, r4, r0
	ldr r1, =gUnknown_0203CA18
	adds r4, r1
	adds r1, r4, 0
	movs r2, 0x64
	bl memcpy
	adds r5, 0x1
	cmp r5, 0x5
	ble _08185F02
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8185EFC

	thumb_func_start sub_8185F40
sub_8185F40: @ 8185F40
	push {r4,r5,lr}
	movs r2, 0
	ldr r0, =gUnknown_020229E8
	ldr r3, =gUnknown_02024064
	ldrh r1, [r0, 0x18]
	adds r4, r0, 0
	ldrb r0, [r3]
	cmp r1, r0
	beq _08185F64
	adds r1, r4, 0
_08185F54:
	adds r1, 0x1C
	adds r2, 0x1
	cmp r2, 0x3
	bgt _08185F64
	ldrh r0, [r1, 0x18]
	ldrb r5, [r3]
	cmp r0, r5
	bne _08185F54
_08185F64:
	cmp r2, 0x4
	bne _08185F74
	movs r0, 0
	b _08185F7E
	.pool
_08185F74:
	lsls r0, r2, 3
	subs r0, r2
	lsls r0, 2
	adds r0, r4
	ldrb r0, [r0, 0x13]
_08185F7E:
	pop {r4,r5}
	pop {r1}
	bx r1
	thumb_func_end sub_8185F40

	thumb_func_start sub_8185F84
sub_8185F84: @ 8185F84
	ldr r1, =gUnknown_0203C7B5
	movs r0, 0
	strb r0, [r1]
	bx lr
	.pool
	thumb_func_end sub_8185F84

	thumb_func_start sub_8185F90
sub_8185F90: @ 8185F90
	lsls r0, 16
	lsrs r0, 16
	ldr r2, =gUnknown_0203C7B5
	movs r1, 0x80
	lsls r1, 8
	ands r0, r1
	lsls r0, 16
	lsrs r0, 31
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
	bx lr
	.pool
	thumb_func_end sub_8185F90

	thumb_func_start sub_8185FAC
sub_8185FAC: @ 8185FAC
	ldr r0, =gUnknown_0203C7B5
	ldrb r0, [r0]
	bx lr
	.pool
	thumb_func_end sub_8185FAC

	thumb_func_start sub_8185FB8
sub_8185FB8: @ 8185FB8
	ldr r0, =gUnknown_0203C7B6
	ldrb r0, [r0]
	bx lr
	.pool
	thumb_func_end sub_8185FB8

	thumb_func_start sub_8185FC4
sub_8185FC4: @ 8185FC4
	ldr r0, =gUnknown_0203C7B7
	ldrb r0, [r0]
	bx lr
	.pool
	thumb_func_end sub_8185FC4

	thumb_func_start sub_8185FD0
sub_8185FD0: @ 8185FD0
	push {r4-r7,lr}
	ldr r4, =gUnknown_02024064
	ldrb r0, [r4]
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	beq _0818601C
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	ldr r1, =0x02000002
	ands r0, r1
	cmp r0, 0
	bne _0818601C
	ldr r0, =gUnknown_0203C7AC
	ldrb r0, [r0]
	cmp r0, 0x2
	beq _0818601C
	movs r3, 0
	ldr r7, =gUnknown_0203CC70
	adds r6, r4, 0
	ldr r5, =gUnknown_02024090
	movs r4, 0x58
_08186000:
	lsls r2, r3, 1
	ldrb r1, [r6]
	lsrs r0, r1, 1
	lsls r0, 3
	adds r0, r2, r0
	adds r0, r7
	muls r1, r4
	adds r2, r1
	adds r2, r5
	ldrh r1, [r2]
	strh r1, [r0]
	adds r3, 0x1
	cmp r3, 0x3
	ble _08186000
_0818601C:
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8185FD0

	thumb_func_start sub_818603C
sub_818603C: @ 818603C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x50
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp, 0x24]
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	ldr r1, =0x02000002
	ands r0, r1
	cmp r0, 0
	beq _0818605C
	b _081863FC
_0818605C:
	movs r0, 0
	mov r10, r0
	b _081863F2
	.pool
_0818606C:
	mov r1, r10
	lsls r4, r1, 24
	lsrs r5, r4, 24
	adds r0, r5, 0
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r0, 24
	str r4, [sp, 0x4C]
	mov r2, r10
	adds r2, 0x1
	str r2, [sp, 0x38]
	cmp r0, 0x1
	bne _0818608A
	b _081863EE
_0818608A:
	ldr r3, [sp, 0x24]
	cmp r3, 0x1
	bne _0818611E
	movs r5, 0
	ldr r4, =gUnknown_0203CC70
	mov r0, r10
	asrs r6, r0, 31
	subs r0, r6
	asrs r0, 1
	lsls r0, 3
	adds r2, r0, r4
	movs r1, 0x58
	mov r0, r10
	muls r0, r1
	ldr r3, =gUnknown_02024090
	adds r1, r0, r3
_081860AA:
	ldrh r0, [r1]
	ldrh r4, [r2]
	cmp r0, r4
	bne _081860BC
	adds r2, 0x2
	adds r1, 0x2
	adds r5, 0x1
	cmp r5, 0x3
	ble _081860AA
_081860BC:
	cmp r5, 0x4
	bne _081860C2
	b _081863EE
_081860C2:
	ldr r1, [sp, 0x4C]
	lsrs r0, r1, 24
	movs r1, 0x6
	bl sub_8184FBC
	movs r5, 0
	ldr r2, =gUnknown_0203CC70
	mov r8, r2
	movs r3, 0x58
	mov r7, r10
	muls r7, r3
	mov r4, r10
	subs r0, r4, r6
	asrs r4, r0, 1
_081860DE:
	movs r2, 0
	lsls r0, r5, 1
	adds r5, 0x1
	adds r0, r7
	ldr r1, =gUnknown_02024090
	adds r3, r0, r1
	lsls r0, r4, 3
	mov r6, r8
	adds r1, r0, r6
_081860F0:
	ldrh r0, [r3]
	ldrh r6, [r1]
	cmp r0, r6
	bne _08186110
	lsls r1, r2, 24
	lsrs r1, 24
	ldr r2, [sp, 0x4C]
	lsrs r0, r2, 24
	bl sub_8184FBC
	b _08186118
	.pool
_08186110:
	adds r1, 0x2
	adds r2, 0x1
	cmp r2, 0x3
	ble _081860F0
_08186118:
	cmp r5, 0x3
	ble _081860DE
	b _081863EE
_0818611E:
	ldr r3, =gUnknown_0203BD34
	ldr r1, =gUnknown_0203C794
	mov r4, r10
	lsls r2, r4, 1
	adds r1, r2, r1
	movs r0, 0xA6
	lsls r0, 2
	mov r6, r10
	muls r6, r0
	adds r0, r6, 0
	ldrh r1, [r1]
	adds r0, r1
	adds r0, r3
	ldrb r0, [r0]
	str r2, [sp, 0x44]
	cmp r0, 0x6
	beq _08186142
	b _081863EE
_08186142:
	adds r0, r5, 0
	bl sub_8185054
	movs r5, 0
	mov r0, sp
	adds r0, 0x4
	str r0, [sp, 0x28]
	mov r1, sp
	adds r1, 0xC
	str r1, [sp, 0x30]
	mov r2, sp
	adds r2, 0x14
	str r2, [sp, 0x34]
	mov r3, sp
	adds r3, 0x18
	str r3, [sp, 0x3C]
	mov r4, sp
	adds r4, 0x8
	str r4, [sp, 0x2C]
	mov r6, r10
	lsls r6, 3
	str r6, [sp, 0x48]
	movs r1, 0x58
	mov r0, r10
	muls r0, r1
	ldr r2, =gBattleMons
	adds r0, r2
	adds r6, r0, 0
	adds r6, 0x3B
	movs r4, 0x3
_0818617E:
	mov r0, sp
	adds r3, r0, r5
	ldrb r1, [r6]
	lsls r2, r5, 1
	adds r0, r4, 0
	lsls r0, r2
	ands r1, r0
	asrs r1, r2
	strb r1, [r3]
	adds r5, 0x1
	cmp r5, 0x3
	ble _0818617E
	movs r5, 0
	ldr r1, =gBattleMons
	mov r9, r1
	movs r2, 0x58
	mov r7, r10
	muls r7, r2
	ldr r4, [sp, 0x28]
	ldr r6, [sp, 0x30]
_081861A6:
	ldr r3, [sp, 0x4C]
	lsrs r0, r3, 24
	bl sub_8185054
	strb r0, [r4]
	ldrb r0, [r4]
	lsls r0, 1
	adds r0, r7
	movs r1, 0xC
	add r1, r9
	mov r8, r1
	add r0, r8
	ldrh r0, [r0]
	strh r0, [r6]
	ldr r2, [sp, 0x34]
	adds r1, r2, r5
	ldrb r0, [r4]
	adds r0, r7
	ldr r3, =gUnknown_020240A8
	adds r0, r3
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, [sp, 0x3C]
	adds r1, r0, r5
	ldrb r0, [r4]
	add r0, sp
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, [sp, 0x2C]
	adds r3, r1, r5
	ldr r2, [sp, 0x48]
	mov r1, r10
	subs r0, r2, r1
	lsls r0, 2
	ldr r2, =gUnknown_020242BC
	adds r0, r2
	ldrb r1, [r0, 0x18]
	lsrs r1, 4
	ldr r2, =gBitTable
	lsls r0, r5, 2
	adds r0, r2
	ldr r0, [r0]
	ands r1, r0
	lsrs r1, r5
	strb r1, [r3]
	adds r4, 0x1
	adds r6, 0x2
	adds r5, 0x1
	cmp r5, 0x3
	ble _081861A6
	movs r5, 0
	movs r3, 0xC
	negs r3, r3
	add r3, r8
	mov r12, r3
	ldr r4, =gUnknown_020242BC
	mov r9, r4
	movs r6, 0x58
	mov r1, r10
	muls r1, r6
	mov r0, r8
	adds r0, 0x18
	adds r4, r1, r0
	adds r3, r1, 0
	mov r7, r8
	ldr r6, [sp, 0x34]
	ldr r2, [sp, 0x30]
_0818622C:
	adds r1, r3, r7
	ldrh r0, [r2]
	strh r0, [r1]
	adds r0, r6, r5
	ldrb r0, [r0]
	strb r0, [r4]
	adds r4, 0x1
	adds r3, 0x2
	adds r2, 0x2
	adds r5, 0x1
	cmp r5, 0x3
	ble _0818622C
	movs r0, 0x58
	mov r4, r10
	muls r4, r0
	mov r1, r12
	adds r0, r4, r1
	adds r0, 0x3B
	movs r1, 0
	strb r1, [r0]
	ldr r2, [sp, 0x48]
	mov r6, r10
	subs r3, r2, r6
	lsls r3, 2
	mov r0, r9
	adds r2, r3, r0
	ldrb r1, [r2, 0x18]
	movs r0, 0xF
	ands r0, r1
	strb r0, [r2, 0x18]
	movs r5, 0
	ldr r1, =gBattleMons
	adds r4, r1
	adds r4, 0x3B
	ldr r0, =gUnknown_020242BC
	adds r6, r3, r0
_08186274:
	ldr r2, [sp, 0x3C]
	adds r0, r2, r5
	ldrb r0, [r0]
	lsls r1, r5, 1
	lsls r0, r1
	ldrb r1, [r4]
	orrs r0, r1
	strb r0, [r4]
	ldrb r2, [r6, 0x18]
	lsrs r3, r2, 4
	ldr r1, [sp, 0x2C]
	adds r0, r1, r5
	ldrb r1, [r0]
	lsls r1, r5
	orrs r1, r3
	lsls r1, 4
	movs r0, 0xF
	ands r0, r2
	orrs r0, r1
	strb r0, [r6, 0x18]
	adds r5, 0x1
	cmp r5, 0x3
	ble _08186274
	movs r2, 0x58
	mov r0, r10
	muls r0, r2
	mov r1, r12
	adds r1, 0x50
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 14
	ands r0, r1
	cmp r0, 0
	beq _081862BC
	b _081863CA
_081862BC:
	movs r5, 0
	mov r3, sp
	adds r3, 0x20
	str r3, [sp, 0x40]
	ldr r0, =gUnknown_0202406E
	ldr r4, [sp, 0x44]
	adds r6, r4, r0
_081862CA:
	ldrh r1, [r6]
	movs r0, 0x64
	muls r0, r1
	ldr r4, =gPlayerParty
	adds r0, r4
	movs r1, 0x15
	movs r2, 0
	bl GetMonData
	mov r1, sp
	adds r3, r1, r5
	lsls r2, r5, 1
	movs r1, 0x3
	lsls r1, r2
	ands r0, r1
	lsrs r0, r2
	strb r0, [r3]
	adds r5, 0x1
	cmp r5, 0x3
	ble _081862CA
	movs r5, 0
	ldr r0, =gUnknown_0202406E
	ldr r2, [sp, 0x44]
	adds r7, r2, r0
	movs r3, 0x64
	mov r9, r3
	mov r8, r4
	ldr r4, [sp, 0x28]
	ldr r6, [sp, 0x30]
_08186304:
	ldrh r0, [r7]
	mov r1, r9
	muls r1, r0
	adds r0, r1, 0
	add r0, r8
	ldrb r1, [r4]
	adds r1, 0xD
	movs r2, 0
	bl GetMonData
	strh r0, [r6]
	ldrh r0, [r7]
	mov r2, r9
	muls r2, r0
	adds r0, r2, 0
	add r0, r8
	ldrb r1, [r4]
	adds r1, 0x11
	movs r2, 0
	bl GetMonData
	ldr r3, [sp, 0x34]
	adds r1, r3, r5
	strb r0, [r1]
	ldr r0, [sp, 0x3C]
	adds r1, r0, r5
	ldrb r0, [r4]
	add r0, sp
	ldrb r0, [r0]
	strb r0, [r1]
	adds r4, 0x1
	adds r6, 0x2
	adds r5, 0x1
	cmp r5, 0x3
	ble _08186304
	movs r5, 0
	ldr r0, =gUnknown_0202406E
	ldr r1, [sp, 0x44]
	adds r7, r1, r0
	movs r2, 0x64
	mov r9, r2
	ldr r3, =gPlayerParty
	mov r8, r3
	ldr r6, [sp, 0x30]
	adds r6, 0x8
	ldr r4, [sp, 0x30]
_08186360:
	ldrh r0, [r7]
	mov r1, r9
	muls r1, r0
	adds r0, r1, 0
	add r0, r8
	adds r1, r5, 0
	adds r1, 0xD
	adds r2, r4, 0
	bl pokemon_setattr
	ldrh r0, [r7]
	mov r2, r9
	muls r2, r0
	adds r0, r2, 0
	add r0, r8
	adds r1, r5, 0
	adds r1, 0x11
	adds r2, r6, 0
	bl pokemon_setattr
	adds r6, 0x1
	adds r4, 0x2
	adds r5, 0x1
	cmp r5, 0x3
	ble _08186360
	movs r0, 0
	ldr r3, [sp, 0x40]
	strb r0, [r3]
	movs r5, 0
	ldr r4, =gUnknown_0202406E
	ldr r6, =gPlayerParty
	ldr r3, [sp, 0x3C]
	ldr r2, [sp, 0x40]
_081863A2:
	adds r0, r3, r5
	ldrb r1, [r0]
	lsls r0, r5, 1
	lsls r1, r0
	ldrb r0, [r2]
	orrs r0, r1
	strb r0, [r2]
	adds r5, 0x1
	cmp r5, 0x3
	ble _081863A2
	ldr r1, [sp, 0x44]
	adds r0, r1, r4
	ldrh r1, [r0]
	movs r0, 0x64
	muls r0, r1
	adds r0, r6
	movs r1, 0x15
	ldr r2, [sp, 0x40]
	bl pokemon_setattr
_081863CA:
	ldr r2, =gUnknown_02024274
	ldr r3, [sp, 0x44]
	adds r2, r3, r2
	ldr r0, =gUnknown_0202449C
	ldr r0, [r0]
	add r0, r10
	adds r0, 0x80
	ldrb r0, [r0]
	lsls r0, 1
	movs r4, 0x58
	mov r1, r10
	muls r1, r4
	adds r0, r1
	ldr r1, =gBattleMons
	adds r1, 0xC
	adds r0, r1
	ldrh r0, [r0]
	strh r0, [r2]
_081863EE:
	ldr r6, [sp, 0x38]
	mov r10, r6
_081863F2:
	ldr r0, =gUnknown_0202406C
	ldrb r0, [r0]
	cmp r10, r0
	bge _081863FC
	b _0818606C
_081863FC:
	add sp, 0x50
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818603C

	thumb_func_start sub_8186438
sub_8186438: @ 8186438
	ldr r0, =gUnknown_0203C7BC
	ldr r0, [r0]
	bx lr
	.pool
	thumb_func_end sub_8186438

	thumb_func_start sub_8186444
sub_8186444: @ 8186444
	ldr r1, =gUnknown_0203CCD0
	movs r0, 0x1
	strb r0, [r1]
	bx lr
	.pool
	thumb_func_end sub_8186444

	thumb_func_start rfu_lacks_rfufunc
rfu_lacks_rfufunc: @ 8186450
	push {lr}
	movs r1, 0
	ldr r0, =gUnknown_0203CCD0
	ldrb r0, [r0]
	cmp r0, 0
	bne _0818645E
	movs r1, 0x1
_0818645E:
	adds r0, r1, 0
	pop {r1}
	bx r1
	.pool
	thumb_func_end rfu_lacks_rfufunc

	thumb_func_start sub_8186468
sub_8186468: @ 8186468
	push {r4,r5,lr}
	adds r3, r0, 0
	movs r2, 0
	ldr r5, =gUnknown_03001278
	ldr r4, =gUnknown_0203CCD1
_08186472:
	adds r0, r3, r2
	adds r1, r2, r4
	ldrb r1, [r1]
	strb r1, [r0]
	adds r2, 0x1
	cmp r2, 0x7
	ble _08186472
	movs r0, 0xFF
	strb r0, [r3, 0x7]
	ldrb r1, [r5]
	adds r0, r3, 0
	bl ConvertInternationalString
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8186468

	thumb_func_start sub_818649C
sub_818649C: @ 818649C
	ldr r0, =gUnknown_0203CCD9
	ldrb r0, [r0]
	bx lr
	.pool
	thumb_func_end sub_818649C

	thumb_func_start sub_81864A8
sub_81864A8: @ 81864A8
	ldr r0, =gUnknown_0203CCDA
	ldrb r0, [r0]
	bx lr
	.pool
	thumb_func_end sub_81864A8

	thumb_func_start sub_81864B4
sub_81864B4: @ 81864B4
	ldr r0, =gUnknown_03001278
	ldrb r0, [r0]
	bx lr
	.pool
	thumb_func_end sub_81864B4

	thumb_func_start sub_81864C0
sub_81864C0: @ 81864C0
	ldr r0, =gUnknown_03001279
	ldrb r0, [r0]
	bx lr
	.pool
	thumb_func_end sub_81864C0

	thumb_func_start sub_81864CC
sub_81864CC: @ 81864CC
	ldr r0, =gUnknown_0203CCE8
	ldr r1, =gUnknown_0202433A
	ldrb r1, [r1]
	strb r1, [r0]
	bx lr
	.pool
	thumb_func_end sub_81864CC

	thumb_func_start sub_81864E0
sub_81864E0: @ 81864E0
	ldr r0, =gUnknown_0203CCDC
	bx lr
	.pool
	thumb_func_end sub_81864E0

	thumb_func_start nullsub_70
nullsub_70: @ 81864E8
	bx lr
	thumb_func_end nullsub_70

	thumb_func_start sub_81864EC
sub_81864EC: @ 81864EC
	ldr r1, =gUnknown_03005D60
	ldr r0, =gUnknown_02024064
	ldrb r0, [r0]
	lsls r0, 2
	adds r0, r1
	ldr r1, =sub_8186508
	str r1, [r0]
	bx lr
	.pool
	thumb_func_end sub_81864EC

	thumb_func_start sub_8186508
sub_8186508: @ 8186508
	push {lr}
	ldr r2, =gUnknown_02024068
	ldr r1, =gBitTable
	ldr r0, =gUnknown_02024064
	ldrb r3, [r0]
	lsls r0, r3, 2
	adds r0, r1
	ldr r1, [r2]
	ldr r0, [r0]
	ands r1, r0
	cmp r1, 0
	beq _08186554
	ldr r0, =gUnknown_02023064
	lsls r1, r3, 9
	adds r1, r0
	ldrb r0, [r1]
	cmp r0, 0x38
	bhi _08186550
	ldr r0, =gUnknown_0860AE90
	ldrb r1, [r1]
	lsls r1, 2
	adds r1, r0
	ldr r0, [r1]
	bl _call_via_r0
	b _08186554
	.pool
_08186550:
	bl sub_81871AC
_08186554:
	pop {r0}
	bx r0
	thumb_func_end sub_8186508

	thumb_func_start sub_8186558
sub_8186558: @ 8186558
	push {lr}
	ldr r2, =gUnknown_02020630
	ldr r1, =gUnknown_020241E4
	ldr r0, =gUnknown_02024064
	ldrb r0, [r0]
	adds r0, r1
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r2, 0x1C
	adds r0, r2
	ldr r1, [r0]
	ldr r0, =DummyObjectCallback
	cmp r1, r0
	bne _0818657C
	bl sub_81871AC
_0818657C:
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8186558

	thumb_func_start sub_8186590
sub_8186590: @ 8186590
	push {lr}
	ldr r2, =gUnknown_02020630
	ldr r1, =gUnknown_020241E4
	ldr r0, =gUnknown_02024064
	ldrb r0, [r0]
	adds r0, r1
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r2, 0x1C
	adds r0, r2
	ldr r1, [r0]
	ldr r0, =DummyObjectCallback
	cmp r1, r0
	bne _081865B4
	bl sub_81871AC
_081865B4:
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8186590

	thumb_func_start sub_81865C8
sub_81865C8: @ 81865C8
	push {r4-r6,lr}
	ldr r5, =gUnknown_02020630
	ldr r6, =gUnknown_020241E4
	ldr r4, =gUnknown_02024064
	ldrb r0, [r4]
	adds r0, r6
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r2, r0, 2
	adds r0, r5, 0
	adds r0, 0x1C
	adds r0, r2, r0
	ldr r1, [r0]
	ldr r0, =DummyObjectCallback
	cmp r1, r0
	bne _0818661A
	adds r0, r2, r5
	ldrh r0, [r0, 0x6]
	bl sub_805DFE4
	ldrb r0, [r4]
	adds r0, r6
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	bl obj_free_rotscale_entry
	ldrb r0, [r4]
	adds r0, r6
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	bl RemoveObjectAndFreeTiles
	bl sub_81871AC
_0818661A:
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81865C8

	thumb_func_start sub_8186630
sub_8186630: @ 8186630
	push {r4,lr}
	ldr r4, =gUnknown_020244D0
	ldr r1, [r4]
	ldr r3, =gUnknown_02024064
	ldrb r0, [r3]
	ldr r2, [r1, 0x4]
	lsls r1, r0, 1
	adds r1, r0
	lsls r1, 2
	adds r1, r2
	ldrb r0, [r1, 0x9]
	subs r0, 0x1
	strb r0, [r1, 0x9]
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0xFF
	bne _08186668
	ldr r0, [r4]
	ldrb r1, [r3]
	ldr r2, [r0, 0x4]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	movs r1, 0
	strb r1, [r0, 0x9]
	bl sub_81871AC
_08186668:
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8186630

	thumb_func_start sub_8186678
sub_8186678: @ 8186678
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	movs r0, 0
	mov r9, r0
	bl battle_type_is_double
	lsls r0, 24
	cmp r0, 0
	beq _081866A4
	bl battle_type_is_double
	lsls r0, 24
	cmp r0, 0
	beq _081866F8
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x40
	ands r0, r1
	cmp r0, 0
	beq _081866F8
_081866A4:
	ldr r4, =gUnknown_02020630
	ldr r0, =gUnknown_03005D70
	ldr r2, =gUnknown_02024064
	ldrb r3, [r2]
	adds r0, r3, r0
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r1, r4, 0
	adds r1, 0x1C
	adds r0, r1
	ldr r1, [r0]
	ldr r0, =DummyObjectCallback
	mov r8, r2
	cmp r1, r0
	bne _08186764
	ldr r0, =gUnknown_020241E4
	adds r0, r3, r0
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	adds r0, 0x3F
	ldrb r0, [r0]
	lsls r0, 27
	cmp r0, 0
	bge _08186764
	b _0818676A
	.pool
_081866F8:
	ldr r6, =gUnknown_02020630
	ldr r7, =gUnknown_03005D70
	ldr r2, =gUnknown_02024064
	ldrb r3, [r2]
	adds r0, r3, r7
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r5, r6, 0
	adds r5, 0x1C
	adds r0, r5
	ldr r4, [r0]
	ldr r0, =DummyObjectCallback
	mov r8, r2
	cmp r4, r0
	bne _08186764
	movs r0, 0x2
	adds r2, r3, 0
	eors r2, r0
	adds r0, r2, r7
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	ldr r0, [r0]
	cmp r0, r4
	bne _08186764
	ldr r4, =gUnknown_020241E4
	adds r0, r3, r4
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r6
	adds r0, 0x3F
	ldrb r0, [r0]
	lsls r0, 27
	cmp r0, 0
	bge _08186764
	adds r0, r2, r4
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r6
	adds r0, 0x3F
	ldrb r0, [r0]
	lsls r0, 27
	cmp r0, 0
	bge _08186764
	movs r1, 0x1
	mov r9, r1
_08186764:
	mov r2, r9
	cmp r2, 0
	beq _0818683A
_0818676A:
	mov r6, r8
	ldrb r0, [r6]
	bl battle_get_per_side_status
	lsls r0, 24
	lsrs r3, r0, 24
	cmp r3, 0x1
	bne _08186816
	ldr r0, =gUnknown_020244D0
	mov r12, r0
	ldr r0, [r0]
	ldrb r2, [r6]
	ldr r5, [r0, 0x4]
	lsls r0, r2, 1
	adds r0, r2
	lsls r0, 2
	adds r4, r0, r5
	ldrb r1, [r4, 0x1]
	adds r0, r3, 0
	ands r0, r1
	cmp r0, 0
	beq _0818683A
	movs r7, 0x2
	adds r1, r7, 0
	eors r1, r2
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	ldrb r1, [r0, 0x1]
	adds r0, r3, 0
	ands r0, r1
	cmp r0, 0
	beq _0818683A
	ldrb r1, [r4]
	movs r3, 0x7F
	adds r0, r3, 0
	ands r0, r1
	strb r0, [r4]
	mov r1, r12
	ldr r0, [r1]
	ldrb r2, [r6]
	ldr r0, [r0, 0x4]
	lsls r1, r2, 1
	adds r1, r2
	lsls r1, 2
	adds r1, r0
	ldrb r2, [r1, 0x1]
	movs r4, 0x2
	negs r4, r4
	adds r0, r4, 0
	ands r0, r2
	strb r0, [r1, 0x1]
	mov r0, r12
	ldr r2, [r0]
	ldrb r0, [r6]
	adds r1, r7, 0
	eors r1, r0
	ldr r2, [r2, 0x4]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r1, [r0]
	ands r3, r1
	strb r3, [r0]
	mov r1, r12
	ldr r2, [r1]
	ldrb r0, [r6]
	adds r1, r7, 0
	eors r1, r0
	ldr r2, [r2, 0x4]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r1, [r0, 0x1]
	ands r4, r1
	strb r4, [r0, 0x1]
	ldr r4, =0x000027f9
	adds r0, r4, 0
	bl FreeObjectTilesByTag
	adds r0, r4, 0
	bl FreeObjectPaletteByTag
_08186816:
	ldr r0, =gUnknown_020244D0
	ldr r0, [r0]
	mov r2, r8
	ldrb r1, [r2]
	ldr r2, [r0, 0x4]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	movs r1, 0x3
	strb r1, [r0, 0x9]
	ldr r1, =gUnknown_03005D60
	mov r2, r8
	ldrb r0, [r2]
	lsls r0, 2
	adds r0, r1
	ldr r1, =sub_8186630
	str r1, [r0]
_0818683A:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8186678

	thumb_func_start sub_818686C
sub_818686C: @ 818686C
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	movs r0, 0
	mov r9, r0
	mov r8, r0
	ldr r4, =gUnknown_020244D0
	ldr r0, [r4]
	ldr r7, =gUnknown_02024064
	ldrb r2, [r7]
	ldr r1, [r0, 0x4]
	lsls r3, r2, 1
	adds r0, r3, r2
	lsls r0, 2
	adds r0, r1
	ldrb r1, [r0]
	movs r5, 0x88
	adds r0, r5, 0
	ands r0, r1
	cmp r0, 0
	bne _081868AC
	ldr r0, =gUnknown_0202406E
	adds r0, r3, r0
	ldrh r1, [r0]
	movs r0, 0x64
	muls r1, r0
	ldr r0, =gEnemyParty
	adds r1, r0
	adds r0, r2, 0
	bl sub_8172EF0
_081868AC:
	ldr r1, [r4]
	ldrb r0, [r7]
	movs r6, 0x2
	adds r2, r6, 0
	eors r2, r0
	ldr r1, [r1, 0x4]
	lsls r3, r2, 1
	adds r0, r3, r2
	lsls r0, 2
	adds r0, r1
	ldrb r1, [r0]
	adds r0, r5, 0
	ands r0, r1
	cmp r0, 0
	bne _081868DE
	ldr r0, =gUnknown_0202406E
	adds r0, r3, r0
	ldrh r1, [r0]
	movs r0, 0x64
	muls r1, r0
	ldr r0, =gEnemyParty
	adds r1, r0
	adds r0, r2, 0
	bl sub_8172EF0
_081868DE:
	ldr r0, [r4]
	ldrb r2, [r7]
	ldr r3, [r0, 0x4]
	lsls r0, r2, 1
	adds r0, r2
	lsls r0, 2
	adds r4, r0, r3
	ldrb r1, [r4]
	movs r5, 0x8
	adds r0, r5, 0
	ands r0, r1
	cmp r0, 0
	bne _081869AE
	adds r1, r6, 0
	eors r1, r2
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	ldrb r1, [r0]
	adds r0, r5, 0
	ands r0, r1
	cmp r0, 0
	bne _081869AE
	ldrb r1, [r4, 0x1]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	bne _08186994
	bl battle_type_is_double
	lsls r0, 24
	cmp r0, 0
	beq _08186964
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x40
	ands r0, r1
	cmp r0, 0
	bne _08186964
	ldr r4, =gUnknown_03005D70
	ldrb r0, [r7]
	adds r1, r6, 0
	eors r1, r0
	adds r0, r1, r4
	ldrb r0, [r0]
	ldr r2, =gUnknown_0202406E
	lsls r1, 1
	adds r1, r2
	ldrh r2, [r1]
	movs r1, 0x64
	muls r1, r2
	ldr r2, =gEnemyParty
	adds r1, r2
	movs r2, 0
	bl healthbar_draw_field_maybe
	ldrb r0, [r7]
	eors r0, r6
	bl sub_8076918
	ldrb r0, [r7]
	eors r0, r6
	adds r0, r4
	ldrb r0, [r0]
	bl sub_80729D0
_08186964:
	ldr r5, =gUnknown_03005D70
	ldr r4, =gUnknown_02024064
	ldrb r1, [r4]
	adds r0, r1, r5
	ldrb r0, [r0]
	ldr r2, =gUnknown_0202406E
	lsls r1, 1
	adds r1, r2
	ldrh r2, [r1]
	movs r1, 0x64
	muls r1, r2
	ldr r2, =gEnemyParty
	adds r1, r2
	movs r2, 0
	bl healthbar_draw_field_maybe
	ldrb r0, [r4]
	bl sub_8076918
	ldrb r0, [r4]
	adds r0, r5
	ldrb r0, [r0]
	bl sub_80729D0
_08186994:
	ldr r0, =gUnknown_020244D0
	ldr r2, [r0]
	ldr r0, =gUnknown_02024064
	ldrb r1, [r0]
	ldr r2, [r2, 0x4]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r1, [r0, 0x1]
	movs r2, 0x80
	orrs r1, r2
	strb r1, [r0, 0x1]
_081869AE:
	ldr r5, =gUnknown_020244D0
	ldr r0, [r5]
	ldr r4, =gUnknown_02024064
	ldrb r2, [r4]
	ldr r3, [r0, 0x4]
	lsls r0, r2, 1
	adds r0, r2
	lsls r0, 2
	adds r0, r3
	ldrb r1, [r0, 0x1]
	movs r0, 0xC0
	ands r0, r1
	cmp r0, 0x80
	bne _08186A6A
	movs r1, 0x2
	eors r1, r2
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	ldrb r1, [r0, 0x1]
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	bne _08186A6A
	bl sub_80A36C8
	lsls r0, 24
	cmp r0, 0
	bne _08186A6A
	ldr r0, [r5]
	ldrb r2, [r4]
	ldr r1, [r0, 0x4]
	lsls r0, r2, 1
	adds r0, r2
	lsls r0, 2
	adds r0, r1
	ldrb r1, [r0, 0x1]
	movs r0, 0x20
	ands r0, r1
	cmp r0, 0
	bne _08186A4C
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x42
	ands r0, r1
	cmp r0, 0x42
	bne _08186A40
	adds r0, r2, 0
	bl battle_get_per_side_status
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _08186A4C
	ldr r0, =gMPlay_BGM
	bl m4aMPlayContinue
	b _08186A4C
	.pool
_08186A40:
	ldr r0, =gMPlay_BGM
	ldr r1, =0x0000ffff
	movs r2, 0x80
	lsls r2, 1
	bl m4aMPlayVolumeControl
_08186A4C:
	ldr r0, =gUnknown_020244D0
	ldr r2, [r0]
	ldr r0, =gUnknown_02024064
	ldrb r1, [r0]
	ldr r2, [r2, 0x4]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r1, [r0, 0x1]
	movs r2, 0x20
	orrs r1, r2
	strb r1, [r0, 0x1]
	movs r0, 0x1
	mov r9, r0
_08186A6A:
	bl battle_type_is_double
	lsls r0, 24
	cmp r0, 0
	bne _08186AC8
	ldr r2, =gUnknown_02020630
	ldr r0, =gUnknown_03005D7C
	ldr r1, =gUnknown_02024064
	ldrb r4, [r1]
	adds r0, r4, r0
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r2, 0x1C
	adds r0, r2
	ldr r3, [r0]
	ldr r0, =DummyObjectCallback
	cmp r3, r0
	bne _08186B26
	ldr r0, =gUnknown_020241E4
	adds r0, r4, r0
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldr r0, [r0]
	cmp r0, r3
	bne _08186B26
	b _08186B22
	.pool
_08186AC8:
	ldr r2, =gUnknown_02020630
	ldr r7, =gUnknown_03005D7C
	ldr r0, =gUnknown_02024064
	ldrb r3, [r0]
	adds r0, r3, r7
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r2, 0x1C
	adds r0, r2
	ldr r4, [r0]
	ldr r0, =DummyObjectCallback
	cmp r4, r0
	bne _08186B26
	ldr r6, =gUnknown_020241E4
	adds r0, r3, r6
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldr r5, [r0]
	cmp r5, r4
	bne _08186B26
	movs r0, 0x2
	eors r3, r0
	adds r0, r3, r7
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldr r4, [r0]
	cmp r4, r5
	bne _08186B26
	adds r0, r3, r6
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldr r0, [r0]
	cmp r0, r4
	bne _08186B26
_08186B22:
	movs r0, 0x1
	mov r8, r0
_08186B26:
	mov r0, r9
	cmp r0, 0
	beq _08186C10
	mov r0, r8
	cmp r0, 0
	beq _08186C10
	bl battle_type_is_double
	lsls r0, 24
	cmp r0, 0
	beq _08186B8A
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x40
	ands r0, r1
	cmp r0, 0
	bne _08186B8A
	ldr r1, =gUnknown_03005D7C
	ldr r5, =gUnknown_02024064
	ldrb r0, [r5]
	movs r4, 0x2
	eors r0, r4
	adds r0, r1
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	ldr r1, =gUnknown_02020630
	adds r0, r1
	bl RemoveObjectAndFreeTiles
	ldrb r0, [r5]
	eors r4, r0
	ldr r1, =gUnknown_0202406E
	lsls r0, r4, 1
	adds r0, r1
	ldrh r1, [r0]
	movs r0, 0x64
	muls r0, r1
	ldr r1, =gEnemyParty
	adds r0, r1
	movs r1, 0xB
	bl GetMonData
	adds r1, r0, 0
	lsls r1, 16
	lsrs r1, 16
	adds r0, r4, 0
	bl sub_805EE54
_08186B8A:
	ldr r1, =gUnknown_03005D7C
	ldr r4, =gUnknown_02024064
	ldrb r0, [r4]
	adds r0, r1
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	ldr r1, =gUnknown_02020630
	adds r0, r1
	bl RemoveObjectAndFreeTiles
	ldrb r5, [r4]
	ldr r1, =gUnknown_0202406E
	lsls r0, r5, 1
	adds r0, r1
	ldrh r1, [r0]
	movs r0, 0x64
	muls r0, r1
	ldr r1, =gEnemyParty
	adds r0, r1
	movs r1, 0xB
	bl GetMonData
	adds r1, r0, 0
	lsls r1, 16
	lsrs r1, 16
	adds r0, r5, 0
	bl sub_805EE54
	ldr r3, =gUnknown_020244D0
	ldr r0, [r3]
	ldr r2, [r0, 0x8]
	ldrb r1, [r2, 0x9]
	movs r0, 0x2
	negs r0, r0
	ands r0, r1
	strb r0, [r2, 0x9]
	ldr r0, [r3]
	ldrb r2, [r4]
	ldr r0, [r0, 0x4]
	lsls r1, r2, 1
	adds r1, r2
	lsls r1, 2
	adds r1, r0
	ldrb r2, [r1, 0x1]
	movs r0, 0x21
	negs r0, r0
	ands r0, r2
	strb r0, [r1, 0x1]
	ldr r0, [r3]
	ldrb r2, [r4]
	ldr r0, [r0, 0x4]
	lsls r1, r2, 1
	adds r1, r2
	lsls r1, 2
	adds r1, r0
	ldrb r2, [r1, 0x1]
	movs r0, 0x7F
	ands r0, r2
	strb r0, [r1, 0x1]
	ldr r1, =gUnknown_03005D60
	ldrb r0, [r4]
	lsls r0, 2
	adds r0, r1
	ldr r1, =sub_8186678
	str r1, [r0]
_08186C10:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818686C

	thumb_func_start sub_8186C48
sub_8186C48: @ 8186C48
	push {r4-r7,lr}
	ldr r4, =gUnknown_02020630
	ldr r0, =gUnknown_020241E4
	ldr r7, =gUnknown_02024064
	ldrb r3, [r7]
	adds r0, r3, r0
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r2, r0, 2
	adds r0, r4, 0
	adds r0, 0x1C
	adds r0, r2, r0
	ldr r1, [r0]
	ldr r0, =DummyObjectCallback
	cmp r1, r0
	bne _08186CFA
	adds r0, r2, r4
	movs r1, 0x24
	ldrsh r0, [r0, r1]
	cmp r0, 0
	bne _08186CFA
	ldr r6, =gUnknown_020244D0
	ldr r0, [r6]
	ldr r1, [r0, 0x4]
	lsls r4, r3, 1
	adds r0, r4, r3
	lsls r0, 2
	adds r2, r0, r1
	ldrb r5, [r2]
	movs r0, 0x80
	ands r0, r5
	cmp r0, 0
	bne _08186CC0
	ldr r0, =gUnknown_0202406E
	adds r0, r4, r0
	ldrh r1, [r0]
	movs r0, 0x64
	muls r1, r0
	ldr r0, =gEnemyParty
	adds r1, r0
	adds r0, r3, 0
	bl sub_8172EF0
	b _08186CFA
	.pool
_08186CC0:
	ldrb r1, [r2, 0x1]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _08186CFA
	movs r0, 0x7F
	ands r0, r5
	strb r0, [r2]
	ldr r0, [r6]
	ldrb r2, [r7]
	ldr r0, [r0, 0x4]
	lsls r1, r2, 1
	adds r1, r2
	lsls r1, 2
	adds r1, r0
	ldrb r2, [r1, 0x1]
	movs r0, 0x2
	negs r0, r0
	ands r0, r2
	strb r0, [r1, 0x1]
	ldr r4, =0x000027f9
	adds r0, r4, 0
	bl FreeObjectTilesByTag
	adds r0, r4, 0
	bl FreeObjectPaletteByTag
	bl sub_81871AC
_08186CFA:
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8186C48

	thumb_func_start sub_8186D04
sub_8186D04: @ 8186D04
	push {r4-r6,lr}
	ldr r6, =gUnknown_02024064
	ldrb r0, [r6]
	ldr r5, =gUnknown_03005D70
	adds r1, r0, r5
	ldrb r1, [r1]
	movs r2, 0
	movs r3, 0
	bl sub_8074AA0
	adds r4, r0, 0
	lsls r4, 16
	lsrs r4, 16
	ldrb r0, [r6]
	adds r0, r5
	ldrb r0, [r0]
	bl sub_80729D0
	lsls r4, 16
	asrs r1, r4, 16
	movs r0, 0x1
	negs r0, r0
	cmp r1, r0
	beq _08186D4C
	ldrb r0, [r6]
	adds r0, r5
	ldrb r0, [r0]
	movs r2, 0
	bl heathbar_draw_hp
	b _08186D50
	.pool
_08186D4C:
	bl sub_81871AC
_08186D50:
	pop {r4-r6}
	pop {r0}
	bx r0
	thumb_func_end sub_8186D04

	thumb_func_start sub_8186D58
sub_8186D58: @ 8186D58
	push {lr}
	ldr r2, =gUnknown_02020630
	ldr r0, =gUnknown_020241E4
	ldr r1, =gUnknown_02024064
	ldrb r3, [r1]
	adds r0, r3, r0
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	adds r0, 0x3E
	ldrb r0, [r0]
	lsls r0, 31
	cmp r0, 0
	bne _08186D86
	ldr r0, =gUnknown_03005D70
	adds r0, r3, r0
	ldrb r0, [r0]
	bl sub_8072984
	bl sub_81871AC
_08186D86:
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8186D58

	thumb_func_start sub_8186D9C
sub_8186D9C: @ 8186D9C
	push {r4-r6,lr}
	ldr r0, =gUnknown_020244D0
	ldr r0, [r0]
	ldr r6, =gUnknown_02024064
	ldrb r2, [r6]
	ldr r1, [r0, 0x4]
	lsls r0, r2, 1
	adds r0, r2
	lsls r0, 2
	adds r0, r1
	ldrb r1, [r0]
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	bne _08186DF6
	ldr r5, =gUnknown_020241E4
	adds r0, r2, r5
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	ldr r4, =gUnknown_02020630
	adds r0, r4
	bl obj_free_rotscale_entry
	ldrb r0, [r6]
	adds r0, r5
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	bl RemoveObjectAndFreeTiles
	ldrb r0, [r6]
	bl sub_805EEE0
	ldr r1, =gUnknown_03005D70
	ldrb r0, [r6]
	adds r0, r1
	ldrb r0, [r0]
	bl sub_8072984
	bl sub_81871AC
_08186DF6:
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8186D9C

	thumb_func_start sub_8186E10
sub_8186E10: @ 8186E10
	push {lr}
	movs r0, 0
	bl IsTextPrinterActive
	lsls r0, 16
	cmp r0, 0
	bne _08186E22
	bl sub_81871AC
_08186E22:
	pop {r0}
	bx r0
	thumb_func_end sub_8186E10

	thumb_func_start bx_blink_t2
bx_blink_t2: @ 8186E28
	push {r4,lr}
	ldr r1, =gUnknown_020241E4
	ldr r0, =gUnknown_02024064
	ldrb r0, [r0]
	adds r0, r1
	ldrb r1, [r0]
	ldr r2, =gUnknown_02020630
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r4, r0, r2
	movs r1, 0x30
	ldrsh r0, [r4, r1]
	cmp r0, 0x20
	bne _08186E74
	movs r3, 0
	movs r0, 0
	strh r0, [r4, 0x30]
	adds r2, r4, 0
	adds r2, 0x3E
	ldrb r1, [r2]
	subs r0, 0x5
	ands r0, r1
	strb r0, [r2]
	ldr r0, =gUnknown_020244B9
	strb r3, [r0]
	bl sub_81871AC
	b _08186E9E
	.pool
_08186E74:
	ldrh r0, [r4, 0x30]
	movs r1, 0x3
	ands r0, r1
	cmp r0, 0
	bne _08186E98
	adds r3, r4, 0
	adds r3, 0x3E
	ldrb r2, [r3]
	lsls r0, r2, 29
	lsrs r0, 31
	movs r1, 0x1
	eors r1, r0
	lsls r1, 2
	movs r0, 0x5
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
_08186E98:
	ldrh r0, [r4, 0x30]
	adds r0, 0x1
	strh r0, [r4, 0x30]
_08186E9E:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end bx_blink_t2

	thumb_func_start sub_8186EA4
sub_8186EA4: @ 8186EA4
	push {r4,lr}
	ldr r2, =gUnknown_02020630
	ldr r0, =gUnknown_03005D70
	ldr r4, =gUnknown_02024064
	ldrb r3, [r4]
	adds r0, r3, r0
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r2, 0x1C
	adds r0, r2
	ldr r1, [r0]
	ldr r0, =DummyObjectCallback
	cmp r1, r0
	bne _08186EF0
	ldr r0, =gUnknown_020244D0
	ldr r0, [r0]
	ldr r1, [r0]
	lsls r0, r3, 2
	adds r0, r1
	ldrb r1, [r0]
	movs r0, 0x4
	ands r0, r1
	cmp r0, 0
	beq _08186EE4
	adds r0, r3, 0
	adds r1, r3, 0
	adds r2, r3, 0
	movs r3, 0x6
	bl move_anim_start_t4
_08186EE4:
	ldr r0, =gUnknown_03005D60
	ldrb r1, [r4]
	lsls r1, 2
	adds r1, r0
	ldr r0, =sub_8186F14
	str r0, [r1]
_08186EF0:
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8186EA4

	thumb_func_start sub_8186F14
sub_8186F14: @ 8186F14
	push {r4,lr}
	ldr r0, =gUnknown_020244D0
	ldr r0, [r0]
	ldr r4, =gUnknown_02024064
	ldrb r1, [r4]
	ldr r2, [r0, 0x4]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r1, [r0]
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	bne _08186F6E
	bl sub_80A36C8
	lsls r0, 24
	cmp r0, 0
	bne _08186F6E
	ldr r2, =gUnknown_02020630
	ldr r1, =gUnknown_020241E4
	ldrb r0, [r4]
	adds r0, r1
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r2, 0x1C
	adds r0, r2
	ldr r1, [r0]
	ldr r0, =DummyObjectCallback
	cmp r1, r0
	beq _08186F5E
	ldr r0, =nullsub_18
	cmp r1, r0
	bne _08186F6E
_08186F5E:
	ldr r0, =gMPlay_BGM
	ldr r1, =0x0000ffff
	movs r2, 0x80
	lsls r2, 1
	bl m4aMPlayVolumeControl
	bl sub_81871AC
_08186F6E:
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8186F14

	thumb_func_start sub_8186F94
sub_8186F94: @ 8186F94
	push {r4-r7,lr}
	ldr r4, =gUnknown_020244D0
	ldr r0, [r4]
	ldr r5, =gUnknown_02024064
	ldrb r2, [r5]
	ldr r1, [r0, 0x4]
	lsls r0, r2, 1
	adds r0, r2
	lsls r0, 2
	adds r3, r0, r1
	ldrb r1, [r3, 0x1]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _08187050
	ldr r7, =gUnknown_02020630
	ldr r6, =gUnknown_020241E4
	adds r0, r2, r6
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r1, r7, 0
	adds r1, 0x1C
	adds r0, r1
	ldr r1, [r0]
	ldr r0, =DummyObjectCallback
	cmp r1, r0
	bne _08187050
	ldrb r1, [r3]
	movs r0, 0x7F
	ands r0, r1
	strb r0, [r3]
	ldr r0, [r4]
	ldrb r2, [r5]
	ldr r0, [r0, 0x4]
	lsls r1, r2, 1
	adds r1, r2
	lsls r1, 2
	adds r1, r0
	ldrb r2, [r1, 0x1]
	movs r0, 0x2
	negs r0, r0
	ands r0, r2
	strb r0, [r1, 0x1]
	ldr r4, =0x000027f9
	adds r0, r4, 0
	bl FreeObjectTilesByTag
	adds r0, r4, 0
	bl FreeObjectPaletteByTag
	ldrb r0, [r5]
	adds r0, r6
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r7
	movs r1, 0
	bl StartObjectImageAnim
	ldr r4, =gUnknown_03005D70
	ldrb r1, [r5]
	adds r0, r1, r4
	ldrb r0, [r0]
	ldr r2, =gUnknown_0202406E
	lsls r1, 1
	adds r1, r2
	ldrh r2, [r1]
	movs r1, 0x64
	muls r1, r2
	ldr r2, =gEnemyParty
	adds r1, r2
	movs r2, 0
	bl healthbar_draw_field_maybe
	ldrb r0, [r5]
	bl sub_8076918
	ldrb r0, [r5]
	adds r0, r4
	ldrb r0, [r0]
	bl sub_80729D0
	ldrb r0, [r5]
	bl sub_805E408
	ldr r1, =gUnknown_03005D60
	ldrb r0, [r5]
	lsls r0, 2
	adds r0, r1
	ldr r1, =sub_8186EA4
	str r1, [r0]
_08187050:
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8186F94

	thumb_func_start sub_8187084
sub_8187084: @ 8187084
	push {r4-r6,lr}
	ldr r6, =gUnknown_020244D0
	ldr r0, [r6]
	ldr r5, =gUnknown_02024064
	ldrb r2, [r5]
	ldr r1, [r0, 0x4]
	lsls r3, r2, 1
	adds r0, r3, r2
	lsls r0, 2
	adds r0, r1
	ldrb r1, [r0]
	movs r0, 0x88
	ands r0, r1
	cmp r0, 0
	bne _081870B6
	ldr r0, =gUnknown_0202406E
	adds r0, r3, r0
	ldrh r1, [r0]
	movs r0, 0x64
	muls r1, r0
	ldr r0, =gEnemyParty
	adds r1, r0
	adds r0, r2, 0
	bl sub_8172EF0
_081870B6:
	ldr r4, =gUnknown_02020630
	ldr r0, =gUnknown_03005D7C
	ldrb r2, [r5]
	adds r0, r2, r0
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r3, r0, 2
	adds r0, r4, 0
	adds r0, 0x1C
	adds r0, r3, r0
	ldr r1, [r0]
	ldr r0, =DummyObjectCallback
	cmp r1, r0
	bne _08187120
	ldr r0, [r6]
	ldr r1, [r0, 0x4]
	lsls r0, r2, 1
	adds r0, r2
	lsls r0, 2
	adds r0, r1
	ldrb r1, [r0]
	movs r0, 0x8
	ands r0, r1
	cmp r0, 0
	bne _08187120
	adds r0, r3, r4
	bl RemoveObjectAndFreeTiles
	ldrb r4, [r5]
	ldr r1, =gUnknown_0202406E
	lsls r0, r4, 1
	adds r0, r1
	ldrh r1, [r0]
	movs r0, 0x64
	muls r0, r1
	ldr r1, =gEnemyParty
	adds r0, r1
	movs r1, 0xB
	bl GetMonData
	adds r1, r0, 0
	lsls r1, 16
	lsrs r1, 16
	adds r0, r4, 0
	bl sub_805EE54
	ldr r1, =gUnknown_03005D60
	ldrb r0, [r5]
	lsls r0, 2
	adds r0, r1
	ldr r1, =sub_8186F94
	str r1, [r0]
_08187120:
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8187084

	thumb_func_start sub_818714C
sub_818714C: @ 818714C
	push {lr}
	ldr r0, =gUnknown_020244D0
	ldr r2, [r0]
	ldr r0, =gUnknown_02024064
	ldrb r1, [r0]
	ldr r2, [r2, 0x4]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r1, [r0]
	movs r0, 0x10
	ands r0, r1
	cmp r0, 0
	bne _0818716E
	bl sub_81871AC
_0818716E:
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818714C

	thumb_func_start sub_818717C
sub_818717C: @ 818717C
	push {lr}
	ldr r0, =gUnknown_020244D0
	ldr r2, [r0]
	ldr r0, =gUnknown_02024064
	ldrb r1, [r0]
	ldr r2, [r2, 0x4]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r1, [r0]
	movs r0, 0x20
	ands r0, r1
	cmp r0, 0
	bne _0818719E
	bl sub_81871AC
_0818719E:
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818717C

	thumb_func_start sub_81871AC
sub_81871AC: @ 81871AC
	push {r4,lr}
	sub sp, 0x4
	ldr r1, =gUnknown_03005D60
	ldr r4, =gUnknown_02024064
	ldrb r0, [r4]
	lsls r0, 2
	adds r0, r1
	ldr r1, =sub_8186508
	str r1, [r0]
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x2
	ands r0, r1
	cmp r0, 0
	beq _08187200
	bl link_get_multiplayer_id
	mov r1, sp
	strb r0, [r1]
	movs r0, 0x2
	movs r1, 0x4
	mov r2, sp
	bl dp01_prepare_buffer_wireless_probably
	ldr r1, =gUnknown_02023064
	ldrb r0, [r4]
	lsls r0, 9
	adds r0, r1
	movs r1, 0x38
	strb r1, [r0]
	b _08187212
	.pool
_08187200:
	ldr r2, =gUnknown_02024068
	ldr r1, =gBitTable
	ldrb r0, [r4]
	lsls r0, 2
	adds r0, r1
	ldr r1, [r0]
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
_08187212:
	add sp, 0x4
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81871AC

	thumb_func_start sub_8187224
sub_8187224: @ 8187224
	push {r4-r6,lr}
	sub sp, 0x100
	movs r6, 0
	ldr r1, =gUnknown_02023064
	ldr r0, =gUnknown_02024064
	ldrb r2, [r0]
	lsls r0, r2, 9
	adds r1, 0x2
	adds r1, r0, r1
	ldrb r0, [r1]
	cmp r0, 0
	bne _0818725C
	ldr r0, =gUnknown_0202406E
	lsls r1, r2, 1
	adds r1, r0
	ldrb r0, [r1]
	mov r1, sp
	bl sub_8187298
	adds r6, r0, 0
	b _0818727E
	.pool
_0818725C:
	ldrb r4, [r1]
	movs r5, 0
_08187260:
	movs r0, 0x1
	ands r0, r4
	cmp r0, 0
	beq _08187276
	lsls r0, r5, 24
	lsrs r0, 24
	mov r2, sp
	adds r1, r2, r6
	bl sub_8187298
	adds r6, r0
_08187276:
	lsrs r4, 1
	adds r5, 0x1
	cmp r5, 0x5
	ble _08187260
_0818727E:
	lsls r1, r6, 16
	lsrs r1, 16
	movs r0, 0x1
	mov r2, sp
	bl dp01_build_cmdbuf_x1D_1D_numargs_varargs
	bl sub_81871AC
	add sp, 0x100
	pop {r4-r6}
	pop {r0}
	bx r0
	thumb_func_end sub_8187224

	thumb_func_start sub_8187298
sub_8187298: @ 8187298
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x90
	adds r7, r1, 0
	lsls r0, 24
	lsrs r5, r0, 24
	movs r6, 0
	ldr r2, =gUnknown_02023064
	ldr r3, =gUnknown_02024064
	ldrb r0, [r3]
	lsls r0, 9
	adds r1, r2, 0x1
	adds r0, r1
	ldrb r0, [r0]
	cmp r0, 0x3B
	bls _081872C2
	bl _08187A2E
_081872C2:
	lsls r0, 2
	ldr r1, =_081872D8
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_081872D8:
	.4byte _081873C8
	.4byte _081875EC
	.4byte _081875FC
	.4byte _0818760C
	.4byte _08187674
	.4byte _08187674
	.4byte _08187674
	.4byte _08187674
	.4byte _08187690
	.4byte _081876CC
	.4byte _081876CC
	.4byte _081876CC
	.4byte _081876CC
	.4byte _08187A2E
	.4byte _08187A2E
	.4byte _08187A2E
	.4byte _08187A2E
	.4byte _081876E8
	.4byte _081876F8
	.4byte _08187728
	.4byte _08187738
	.4byte _08187748
	.4byte _08187758
	.4byte _08187768
	.4byte _08187778
	.4byte _08187788
	.4byte _08187798
	.4byte _081877A8
	.4byte _081877B8
	.4byte _081877C8
	.4byte _081877D8
	.4byte _081877E8
	.4byte _08187838
	.4byte _08187848
	.4byte _08187858
	.4byte _08187868
	.4byte _08187878
	.4byte _08187888
	.4byte _08187898
	.4byte _081878A8
	.4byte _081878B8
	.4byte _081878EC
	.4byte _081878FC
	.4byte _0818790C
	.4byte _0818791C
	.4byte _0818792C
	.4byte _0818793C
	.4byte _0818794C
	.4byte _0818795C
	.4byte _0818797C
	.4byte _0818798C
	.4byte _0818799C
	.4byte _081879AC
	.4byte _081879BC
	.4byte _081879CC
	.4byte _081879DC
	.4byte _081879EC
	.4byte _081879FC
	.4byte _08187A0C
	.4byte _08187A1C
_081873C8:
	movs r0, 0x64
	adds r4, r5, 0
	muls r4, r0
	ldr r0, =gEnemyParty
	adds r4, r0
	adds r0, r4, 0
	movs r1, 0xB
	bl GetMonData
	mov r1, sp
	strh r0, [r1]
	adds r0, r4, 0
	movs r1, 0xC
	bl GetMonData
	mov r1, sp
	strh r0, [r1, 0x2E]
	movs r6, 0
	add r0, sp, 0x24
	mov r9, r0
	movs r1, 0x3B
	add r1, sp
	mov r10, r1
	mov r2, sp
	adds r2, 0x2B
	str r2, [sp, 0x80]
	mov r0, sp
	adds r0, 0x2A
	str r0, [sp, 0x7C]
	mov r1, sp
	adds r1, 0x68
	str r1, [sp, 0x8C]
	adds r2, 0x5
	str r2, [sp, 0x84]
	adds r0, 0x12
	str r0, [sp, 0x88]
	mov r8, r4
	add r4, sp, 0xC
_08187414:
	adds r1, r6, 0
	adds r1, 0xD
	mov r0, r8
	bl GetMonData
	strh r0, [r4]
	adds r1, r6, 0
	adds r1, 0x11
	mov r0, r8
	bl GetMonData
	mov r2, r9
	adds r1, r2, r6
	strb r0, [r1]
	adds r4, 0x2
	adds r6, 0x1
	cmp r6, 0x3
	ble _08187414
	movs r0, 0x64
	adds r4, r5, 0
	muls r4, r0
	ldr r0, =gEnemyParty
	adds r4, r0
	adds r0, r4, 0
	movs r1, 0x15
	bl GetMonData
	mov r1, r10
	strb r0, [r1]
	adds r0, r4, 0
	movs r1, 0x20
	bl GetMonData
	ldr r2, [sp, 0x80]
	strb r0, [r2]
	adds r0, r4, 0
	movs r1, 0x19
	bl GetMonData
	str r0, [sp, 0x44]
	adds r0, r4, 0
	movs r1, 0x27
	bl GetMonData
	mov r3, sp
	movs r5, 0x1F
	ands r0, r5
	ldrb r2, [r3, 0x14]
	movs r1, 0x20
	negs r1, r1
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, 0x14]
	adds r0, r4, 0
	movs r1, 0x28
	bl GetMonData
	mov r3, sp
	movs r6, 0x1F
	ands r0, r6
	lsls r0, 5
	ldrh r2, [r3, 0x14]
	ldr r1, =0xfffffc1f
	ands r1, r2
	orrs r1, r0
	strh r1, [r3, 0x14]
	adds r0, r4, 0
	movs r1, 0x29
	bl GetMonData
	mov r3, sp
	ands r0, r5
	lsls r0, 2
	ldrb r2, [r3, 0x15]
	movs r1, 0x7D
	negs r1, r1
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, 0x15]
	adds r0, r4, 0
	movs r1, 0x2A
	bl GetMonData
	movs r1, 0x1F
	ands r1, r0
	lsls r1, 15
	ldr r0, [sp, 0x14]
	ldr r2, =0xfff07fff
	ands r0, r2
	orrs r0, r1
	str r0, [sp, 0x14]
	adds r0, r4, 0
	movs r1, 0x2B
	bl GetMonData
	mov r3, sp
	ands r0, r6
	lsls r0, 4
	ldrh r2, [r3, 0x16]
	ldr r1, =0xfffffe0f
	ands r1, r2
	orrs r1, r0
	strh r1, [r3, 0x16]
	adds r0, r4, 0
	movs r1, 0x2C
	bl GetMonData
	mov r3, sp
	ands r0, r5
	lsls r0, 1
	ldrb r2, [r3, 0x17]
	movs r1, 0x3F
	negs r1, r1
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, 0x17]
	adds r0, r4, 0
	movs r1, 0
	bl GetMonData
	str r0, [sp, 0x48]
	adds r0, r4, 0
	movs r1, 0x37
	bl GetMonData
	str r0, [sp, 0x4C]
	adds r0, r4, 0
	movs r1, 0x38
	bl GetMonData
	ldr r1, [sp, 0x7C]
	strb r0, [r1]
	adds r0, r4, 0
	movs r1, 0x39
	bl GetMonData
	mov r1, sp
	strh r0, [r1, 0x28]
	adds r0, r4, 0
	movs r1, 0x3A
	bl GetMonData
	mov r1, sp
	strh r0, [r1, 0x2C]
	adds r0, r4, 0
	movs r1, 0x3B
	bl GetMonData
	mov r1, sp
	strh r0, [r1, 0x2]
	adds r0, r4, 0
	movs r1, 0x3C
	bl GetMonData
	mov r1, sp
	strh r0, [r1, 0x4]
	adds r0, r4, 0
	movs r1, 0x3D
	bl GetMonData
	mov r1, sp
	strh r0, [r1, 0x6]
	adds r0, r4, 0
	movs r1, 0x3E
	bl GetMonData
	mov r1, sp
	strh r0, [r1, 0x8]
	adds r0, r4, 0
	movs r1, 0x3F
	bl GetMonData
	mov r1, sp
	strh r0, [r1, 0xA]
	adds r0, r4, 0
	movs r1, 0x2D
	bl GetMonData
	mov r3, sp
	movs r1, 0x1
	ands r0, r1
	lsls r0, 6
	ldrb r2, [r3, 0x17]
	movs r1, 0x41
	negs r1, r1
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, 0x17]
	adds r0, r4, 0
	movs r1, 0x2E
	bl GetMonData
	mov r3, sp
	lsls r0, 7
	ldrb r2, [r3, 0x17]
	movs r1, 0x7F
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, 0x17]
	adds r0, r4, 0
	movs r1, 0x1
	bl GetMonData
	str r0, [sp, 0x54]
	adds r0, r4, 0
	movs r1, 0x2
	ldr r2, [sp, 0x8C]
	bl GetMonData
	ldr r0, [sp, 0x84]
	ldr r1, [sp, 0x8C]
	bl StringCopy10
	adds r0, r4, 0
	movs r1, 0x7
	ldr r2, [sp, 0x88]
	bl GetMonData
	mov r2, sp
	movs r6, 0
_081875CC:
	adds r0, r7, r6
	adds r1, r2, r6
	ldrb r1, [r1]
	strb r1, [r0]
	adds r6, 0x1
	cmp r6, 0x57
	bls _081875CC
	b _08187A2E
	.pool
_081875EC:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gEnemyParty
	adds r0, r1
	movs r1, 0xB
	b _08187966
	.pool
_081875FC:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gEnemyParty
	adds r0, r1
	movs r1, 0xC
	b _08187966
	.pool
_0818760C:
	movs r6, 0
	add r2, sp, 0x58
	mov r9, r2
	add r0, sp, 0x60
	mov r10, r0
	movs r0, 0x64
	adds r1, r5, 0
	muls r1, r0
	ldr r0, =gEnemyParty
	adds r4, r1, r0
	mov r8, r9
_08187622:
	adds r1, r6, 0
	adds r1, 0xD
	adds r0, r4, 0
	bl GetMonData
	mov r1, r8
	strh r0, [r1]
	adds r1, r6, 0
	adds r1, 0x11
	adds r0, r4, 0
	bl GetMonData
	mov r2, r10
	adds r1, r2, r6
	strb r0, [r1]
	movs r0, 0x2
	add r8, r0
	adds r6, 0x1
	cmp r6, 0x3
	ble _08187622
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gEnemyParty
	adds r0, r1
	movs r1, 0x15
	bl GetMonData
	mov r1, r9
	strb r0, [r1, 0xC]
	mov r2, r9
	movs r6, 0
_08187660:
	adds r0, r7, r6
	adds r1, r2, r6
	ldrb r1, [r1]
	strb r1, [r0]
	adds r6, 0x1
	cmp r6, 0xF
	bls _08187660
	b _08187A2E
	.pool
_08187674:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gEnemyParty
	adds r0, r1
	ldrb r1, [r3]
	lsls r1, 9
	adds r2, 0x1
	adds r1, r2
	ldrb r1, [r1]
	adds r1, 0x9
	b _08187966
	.pool
_08187690:
	movs r6, 0
	movs r0, 0x64
	adds r4, r5, 0
	muls r4, r0
	ldr r2, =gEnemyParty
	mov r8, r2
_0818769C:
	adds r1, r6, 0
	adds r1, 0x11
	mov r2, r8
	adds r0, r4, r2
	bl GetMonData
	adds r1, r7, r6
	strb r0, [r1]
	adds r6, 0x1
	cmp r6, 0x3
	ble _0818769C
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gEnemyParty
	adds r0, r1
	movs r1, 0x15
	bl GetMonData
	adds r1, r7, r6
	strb r0, [r1]
	adds r6, 0x1
	b _08187A2E
	.pool
_081876CC:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gEnemyParty
	adds r0, r1
	ldrb r1, [r3]
	lsls r1, 9
	adds r2, 0x1
	adds r1, r2
	ldrb r1, [r1]
	adds r1, 0x8
	b _08187A26
	.pool
_081876E8:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gEnemyParty
	adds r0, r1
	movs r1, 0x1
	b _08187702
	.pool
_081876F8:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gEnemyParty
	adds r0, r1
	movs r1, 0x19
_08187702:
	bl GetMonData
	adds r1, r0, 0
	strb r1, [r7]
	movs r0, 0xFF
	lsls r0, 8
	ands r0, r1
	lsrs r0, 8
	strb r0, [r7, 0x1]
	movs r0, 0xFF
	lsls r0, 16
	ands r0, r1
	lsrs r0, 16
	strb r0, [r7, 0x2]
	movs r6, 0x3
	b _08187A2E
	.pool
_08187728:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gEnemyParty
	adds r0, r1
	movs r1, 0x1A
	b _08187A26
	.pool
_08187738:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gEnemyParty
	adds r0, r1
	movs r1, 0x1B
	b _08187A26
	.pool
_08187748:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gEnemyParty
	adds r0, r1
	movs r1, 0x1C
	b _08187A26
	.pool
_08187758:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gEnemyParty
	adds r0, r1
	movs r1, 0x1D
	b _08187A26
	.pool
_08187768:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gEnemyParty
	adds r0, r1
	movs r1, 0x1E
	b _08187A26
	.pool
_08187778:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gEnemyParty
	adds r0, r1
	movs r1, 0x1F
	b _08187A26
	.pool
_08187788:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gEnemyParty
	adds r0, r1
	movs r1, 0x20
	b _08187A26
	.pool
_08187798:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gEnemyParty
	adds r0, r1
	movs r1, 0x22
	b _08187A26
	.pool
_081877A8:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gEnemyParty
	adds r0, r1
	movs r1, 0x23
	b _08187A26
	.pool
_081877B8:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gEnemyParty
	adds r0, r1
	movs r1, 0x24
	b _08187A26
	.pool
_081877C8:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gEnemyParty
	adds r0, r1
	movs r1, 0x25
	b _08187A26
	.pool
_081877D8:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gEnemyParty
	adds r0, r1
	movs r1, 0x26
	b _08187A26
	.pool
_081877E8:
	movs r0, 0x64
	adds r4, r5, 0
	muls r4, r0
	ldr r0, =gEnemyParty
	adds r4, r0
	adds r0, r4, 0
	movs r1, 0x27
	bl GetMonData
	strb r0, [r7]
	adds r0, r4, 0
	movs r1, 0x28
	bl GetMonData
	strb r0, [r7, 0x1]
	adds r0, r4, 0
	movs r1, 0x29
	bl GetMonData
	strb r0, [r7, 0x2]
	adds r0, r4, 0
	movs r1, 0x2A
	bl GetMonData
	strb r0, [r7, 0x3]
	adds r0, r4, 0
	movs r1, 0x2B
	bl GetMonData
	strb r0, [r7, 0x4]
	adds r0, r4, 0
	movs r1, 0x2C
	bl GetMonData
	strb r0, [r7, 0x5]
	movs r6, 0x6
	b _08187A2E
	.pool
_08187838:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gEnemyParty
	adds r0, r1
	movs r1, 0x27
	b _08187A26
	.pool
_08187848:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gEnemyParty
	adds r0, r1
	movs r1, 0x28
	b _08187A26
	.pool
_08187858:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gEnemyParty
	adds r0, r1
	movs r1, 0x29
	b _08187A26
	.pool
_08187868:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gEnemyParty
	adds r0, r1
	movs r1, 0x2A
	b _08187A26
	.pool
_08187878:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gEnemyParty
	adds r0, r1
	movs r1, 0x2B
	b _08187A26
	.pool
_08187888:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gEnemyParty
	adds r0, r1
	movs r1, 0x2C
	b _08187A26
	.pool
_08187898:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gEnemyParty
	adds r0, r1
	movs r1, 0
	b _081878C2
	.pool
_081878A8:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gEnemyParty
	adds r0, r1
	movs r1, 0x9
	b _08187966
	.pool
_081878B8:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gEnemyParty
	adds r0, r1
	movs r1, 0x37
_081878C2:
	bl GetMonData
	adds r1, r0, 0
	strb r1, [r7]
	movs r0, 0xFF
	lsls r0, 8
	ands r0, r1
	lsrs r0, 8
	strb r0, [r7, 0x1]
	movs r0, 0xFF
	lsls r0, 16
	ands r0, r1
	lsrs r0, 16
	strb r0, [r7, 0x2]
	lsrs r0, r1, 24
	strb r0, [r7, 0x3]
	movs r6, 0x4
	b _08187A2E
	.pool
_081878EC:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gEnemyParty
	adds r0, r1
	movs r1, 0x38
	b _08187A26
	.pool
_081878FC:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gEnemyParty
	adds r0, r1
	movs r1, 0x39
	b _08187966
	.pool
_0818790C:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gEnemyParty
	adds r0, r1
	movs r1, 0x3A
	b _08187966
	.pool
_0818791C:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gEnemyParty
	adds r0, r1
	movs r1, 0x3B
	b _08187966
	.pool
_0818792C:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gEnemyParty
	adds r0, r1
	movs r1, 0x3C
	b _08187966
	.pool
_0818793C:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gEnemyParty
	adds r0, r1
	movs r1, 0x3D
	b _08187966
	.pool
_0818794C:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gEnemyParty
	adds r0, r1
	movs r1, 0x3E
	b _08187966
	.pool
_0818795C:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gEnemyParty
	adds r0, r1
	movs r1, 0x3F
_08187966:
	bl GetMonData
	lsls r0, 16
	lsrs r0, 16
	strb r0, [r7]
	lsrs r0, 8
	strb r0, [r7, 0x1]
	movs r6, 0x2
	b _08187A2E
	.pool
_0818797C:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gEnemyParty
	adds r0, r1
	movs r1, 0x16
	b _08187A26
	.pool
_0818798C:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gEnemyParty
	adds r0, r1
	movs r1, 0x17
	b _08187A26
	.pool
_0818799C:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gEnemyParty
	adds r0, r1
	movs r1, 0x18
	b _08187A26
	.pool
_081879AC:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gEnemyParty
	adds r0, r1
	movs r1, 0x21
	b _08187A26
	.pool
_081879BC:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gEnemyParty
	adds r0, r1
	movs r1, 0x2F
	b _08187A26
	.pool
_081879CC:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gEnemyParty
	adds r0, r1
	movs r1, 0x30
	b _08187A26
	.pool
_081879DC:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gEnemyParty
	adds r0, r1
	movs r1, 0x32
	b _08187A26
	.pool
_081879EC:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gEnemyParty
	adds r0, r1
	movs r1, 0x33
	b _08187A26
	.pool
_081879FC:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gEnemyParty
	adds r0, r1
	movs r1, 0x34
	b _08187A26
	.pool
_08187A0C:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gEnemyParty
	adds r0, r1
	movs r1, 0x35
	b _08187A26
	.pool
_08187A1C:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gEnemyParty
	adds r0, r1
	movs r1, 0x36
_08187A26:
	bl GetMonData
	strb r0, [r7]
	movs r6, 0x1
_08187A2E:
	adds r0, r6, 0
	add sp, 0x90
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_8187298

	thumb_func_start sub_8187A44
sub_8187A44: @ 8187A44
	push {lr}
	bl sub_81871AC
	pop {r0}
	bx r0
	thumb_func_end sub_8187A44

	thumb_func_start sub_8187A50
sub_8187A50: @ 8187A50
	push {r4,r5,lr}
	ldr r1, =gUnknown_02023064
	ldr r0, =gUnknown_02024064
	ldrb r2, [r0]
	lsls r0, r2, 9
	adds r1, 0x2
	adds r1, r0, r1
	ldrb r0, [r1]
	cmp r0, 0
	bne _08187A80
	ldr r0, =gUnknown_0202406E
	lsls r1, r2, 1
	adds r1, r0
	ldrb r0, [r1]
	bl dp01_setattr_for_opponent_pokemon
	b _08187A9E
	.pool
_08187A80:
	ldrb r4, [r1]
	movs r5, 0
_08187A84:
	movs r0, 0x1
	ands r0, r4
	cmp r0, 0
	beq _08187A92
	adds r0, r5, 0
	bl dp01_setattr_for_opponent_pokemon
_08187A92:
	lsrs r4, 1
	adds r0, r5, 0x1
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, 0x5
	bls _08187A84
_08187A9E:
	bl sub_81871AC
	pop {r4,r5}
	pop {r0}
	bx r0
	thumb_func_end sub_8187A50

	thumb_func_start dp01_setattr_for_opponent_pokemon
dp01_setattr_for_opponent_pokemon: @ 8187AA8
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x38
	lsls r0, 24
	lsrs r5, r0, 24
	ldr r3, =gUnknown_02024064
	ldrb r0, [r3]
	lsls r0, 9
	ldr r2, =gUnknown_02023067
	adds r4, r0, r2
	adds r7, r4, 0
	subs r1, r2, 0x2
	adds r0, r1
	ldrb r0, [r0]
	adds r6, r3, 0
	adds r3, r2, 0
	cmp r0, 0x3B
	bls _08187AD6
	bl _081883B4
_08187AD6:
	lsls r0, 2
	ldr r1, =_08187AEC
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_08187AEC:
	.4byte _08187BDC
	.4byte _08187D74
	.4byte _08187D90
	.4byte _08187DAC
	.4byte _08187E00
	.4byte _08187E00
	.4byte _08187E00
	.4byte _08187E00
	.4byte _08187E20
	.4byte _08187E88
	.4byte _08187E88
	.4byte _08187E88
	.4byte _08187E88
	.4byte _081883B4
	.4byte _081883B4
	.4byte _081883B4
	.4byte _081883B4
	.4byte _08187EB0
	.4byte _08187ECC
	.4byte _08187EE8
	.4byte _08187F04
	.4byte _08187F20
	.4byte _08187F3C
	.4byte _08187F58
	.4byte _08187F74
	.4byte _08187F90
	.4byte _08187FAC
	.4byte _08187FC8
	.4byte _08187FE4
	.4byte _08188000
	.4byte _0818801C
	.4byte _08188038
	.4byte _081880AC
	.4byte _081880C8
	.4byte _081880E4
	.4byte _08188100
	.4byte _0818811C
	.4byte _08188138
	.4byte _08188154
	.4byte _08188170
	.4byte _0818818C
	.4byte _081881A8
	.4byte _081881C4
	.4byte _081881E0
	.4byte _081881FC
	.4byte _08188218
	.4byte _08188234
	.4byte _08188250
	.4byte _0818826C
	.4byte _08188288
	.4byte _081882A4
	.4byte _081882C0
	.4byte _081882DC
	.4byte _081882F8
	.4byte _08188314
	.4byte _08188330
	.4byte _0818834C
	.4byte _08188368
	.4byte _08188384
	.4byte _081883A0
_08187BDC:
	movs r0, 0x64
	adds r4, r5, 0
	muls r4, r0
	ldr r0, =gEnemyParty
	adds r4, r0
	adds r0, r4, 0
	movs r1, 0xB
	adds r2, r7, 0
	bl pokemon_setattr
	adds r2, r7, 0
	adds r2, 0x2E
	adds r0, r4, 0
	movs r1, 0xC
	bl pokemon_setattr
	movs r0, 0
	mov r8, r0
	movs r0, 0x3B
	adds r0, r7
	mov r10, r0
	adds r0, r7, 0
	adds r0, 0x2B
	str r0, [sp, 0x20]
	adds r0, 0x19
	str r0, [sp, 0x28]
	adds r0, 0x4
	str r0, [sp, 0x2C]
	adds r0, 0x4
	str r0, [sp, 0x30]
	subs r0, 0x22
	str r0, [sp, 0x1C]
	subs r0, 0x2
	str r0, [sp, 0x18]
	adds r0, 0x4
	str r0, [sp, 0x24]
	adds r0, r7, 0x2
	str r0, [sp, 0x4]
	adds r0, r7, 0x4
	str r0, [sp, 0x8]
	adds r0, r7, 0x6
	str r0, [sp, 0xC]
	adds r0, 0x2
	str r0, [sp, 0x10]
	adds r0, 0x2
	str r0, [sp, 0x14]
	mov r9, r4
	adds r6, r7, 0
	adds r6, 0x24
	adds r4, r7, 0
	adds r4, 0xC
_08187C42:
	mov r1, r8
	adds r1, 0xD
	mov r0, r9
	adds r2, r4, 0
	bl pokemon_setattr
	mov r1, r8
	adds r1, 0x11
	mov r0, r9
	adds r2, r6, 0
	bl pokemon_setattr
	adds r6, 0x1
	adds r4, 0x2
	movs r0, 0x1
	add r8, r0
	mov r0, r8
	cmp r0, 0x3
	ble _08187C42
	movs r0, 0x64
	adds r4, r5, 0
	muls r4, r0
	ldr r0, =gEnemyParty
	adds r4, r0
	adds r0, r4, 0
	movs r1, 0x15
	mov r2, r10
	bl pokemon_setattr
	adds r0, r4, 0
	movs r1, 0x20
	ldr r2, [sp, 0x20]
	bl pokemon_setattr
	adds r0, r4, 0
	movs r1, 0x19
	ldr r2, [sp, 0x28]
	bl pokemon_setattr
	ldrb r0, [r7, 0x14]
	lsls r0, 27
	lsrs r0, 27
	mov r1, sp
	strb r0, [r1]
	adds r0, r4, 0
	movs r1, 0x27
	mov r2, sp
	bl pokemon_setattr
	mov r1, sp
	ldrh r0, [r7, 0x14]
	lsls r0, 22
	lsrs r0, 27
	strb r0, [r1]
	adds r0, r4, 0
	movs r1, 0x28
	mov r2, sp
	bl pokemon_setattr
	mov r1, sp
	ldrb r0, [r7, 0x15]
	lsls r0, 25
	lsrs r0, 27
	strb r0, [r1]
	adds r0, r4, 0
	movs r1, 0x29
	mov r2, sp
	bl pokemon_setattr
	mov r1, sp
	ldr r0, [r7, 0x14]
	lsls r0, 12
	lsrs r0, 27
	strb r0, [r1]
	adds r0, r4, 0
	movs r1, 0x2A
	mov r2, sp
	bl pokemon_setattr
	mov r1, sp
	ldrh r0, [r7, 0x16]
	lsls r0, 23
	lsrs r0, 27
	strb r0, [r1]
	adds r0, r4, 0
	movs r1, 0x2B
	mov r2, sp
	bl pokemon_setattr
	mov r1, sp
	ldrb r0, [r7, 0x17]
	lsls r0, 26
	lsrs r0, 27
	strb r0, [r1]
	adds r0, r4, 0
	movs r1, 0x2C
	mov r2, sp
	bl pokemon_setattr
	adds r0, r4, 0
	movs r1, 0
	ldr r2, [sp, 0x2C]
	bl pokemon_setattr
	adds r0, r4, 0
	movs r1, 0x37
	ldr r2, [sp, 0x30]
	bl pokemon_setattr
	adds r0, r4, 0
	movs r1, 0x38
	ldr r2, [sp, 0x1C]
	bl pokemon_setattr
	adds r0, r4, 0
	movs r1, 0x39
	ldr r2, [sp, 0x18]
	bl pokemon_setattr
	adds r0, r4, 0
	movs r1, 0x3A
	ldr r2, [sp, 0x24]
	bl pokemon_setattr
	adds r0, r4, 0
	movs r1, 0x3B
	ldr r2, [sp, 0x4]
	bl pokemon_setattr
	adds r0, r4, 0
	movs r1, 0x3C
	ldr r2, [sp, 0x8]
	bl pokemon_setattr
	adds r0, r4, 0
	movs r1, 0x3D
	ldr r2, [sp, 0xC]
	bl pokemon_setattr
	adds r0, r4, 0
	movs r1, 0x3E
	ldr r2, [sp, 0x10]
	bl pokemon_setattr
	adds r0, r4, 0
	movs r1, 0x3F
	ldr r2, [sp, 0x14]
	bl pokemon_setattr
	b _081883B4
	.pool
_08187D74:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gEnemyParty
	adds r0, r1
	ldrb r2, [r6]
	lsls r2, 9
	adds r2, r3
	movs r1, 0xB
	bl pokemon_setattr
	b _081883B4
	.pool
_08187D90:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gEnemyParty
	adds r0, r1
	ldrb r2, [r6]
	lsls r2, 9
	adds r2, r3
	movs r1, 0xC
	bl pokemon_setattr
	b _081883B4
	.pool
_08187DAC:
	movs r0, 0
	mov r8, r0
	movs r0, 0xC
	adds r0, r4
	mov r9, r0
	movs r0, 0x64
	adds r1, r5, 0
	muls r1, r0
	ldr r0, =gEnemyParty
	adds r7, r1, r0
	adds r6, r4, 0
	adds r6, 0x8
_08187DC4:
	mov r1, r8
	adds r1, 0xD
	adds r0, r7, 0
	adds r2, r4, 0
	bl pokemon_setattr
	mov r1, r8
	adds r1, 0x11
	adds r0, r7, 0
	adds r2, r6, 0
	bl pokemon_setattr
	adds r6, 0x1
	adds r4, 0x2
	movs r0, 0x1
	add r8, r0
	mov r0, r8
	cmp r0, 0x3
	ble _08187DC4
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gEnemyParty
	adds r0, r1
	movs r1, 0x15
	mov r2, r9
	bl pokemon_setattr
	b _081883B4
	.pool
_08187E00:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gEnemyParty
	adds r0, r1
	ldr r3, =gUnknown_02023064
	ldrb r2, [r6]
	lsls r2, 9
	adds r1, r3, 0x1
	adds r1, r2, r1
	ldrb r1, [r1]
	adds r1, 0x9
	b _08187E9E
	.pool
_08187E20:
	movs r0, 0x64
	adds r4, r5, 0
	muls r4, r0
	ldr r0, =gEnemyParty
	adds r4, r0
	ldrb r2, [r6]
	lsls r2, 9
	adds r2, r3
	adds r0, r4, 0
	movs r1, 0x11
	str r3, [sp, 0x34]
	bl pokemon_setattr
	ldrb r2, [r6]
	lsls r2, 9
	ldr r3, [sp, 0x34]
	adds r0, r3, 0x1
	adds r2, r0
	adds r0, r4, 0
	movs r1, 0x12
	bl pokemon_setattr
	ldrb r2, [r6]
	lsls r2, 9
	ldr r3, [sp, 0x34]
	adds r0, r3, 0x2
	adds r2, r0
	adds r0, r4, 0
	movs r1, 0x13
	bl pokemon_setattr
	ldrb r2, [r6]
	lsls r2, 9
	ldr r3, [sp, 0x34]
	adds r0, r3, 0x3
	adds r2, r0
	adds r0, r4, 0
	movs r1, 0x14
	bl pokemon_setattr
	ldrb r2, [r6]
	lsls r2, 9
	ldr r3, [sp, 0x34]
	adds r0, r3, 0x4
	adds r2, r0
	adds r0, r4, 0
	movs r1, 0x15
	bl pokemon_setattr
	b _081883B4
	.pool
_08187E88:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gEnemyParty
	adds r0, r1
	ldr r3, =gUnknown_02023064
	ldrb r2, [r6]
	lsls r2, 9
	adds r1, r3, 0x1
	adds r1, r2, r1
	ldrb r1, [r1]
	adds r1, 0x8
_08187E9E:
	adds r3, 0x3
	adds r2, r3
	bl pokemon_setattr
	b _081883B4
	.pool
_08187EB0:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gEnemyParty
	adds r0, r1
	ldrb r2, [r6]
	lsls r2, 9
	adds r2, r3
	movs r1, 0x1
	bl pokemon_setattr
	b _081883B4
	.pool
_08187ECC:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gEnemyParty
	adds r0, r1
	ldrb r2, [r6]
	lsls r2, 9
	adds r2, r3
	movs r1, 0x19
	bl pokemon_setattr
	b _081883B4
	.pool
_08187EE8:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gEnemyParty
	adds r0, r1
	ldrb r2, [r6]
	lsls r2, 9
	adds r2, r3
	movs r1, 0x1A
	bl pokemon_setattr
	b _081883B4
	.pool
_08187F04:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gEnemyParty
	adds r0, r1
	ldrb r2, [r6]
	lsls r2, 9
	adds r2, r3
	movs r1, 0x1B
	bl pokemon_setattr
	b _081883B4
	.pool
_08187F20:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gEnemyParty
	adds r0, r1
	ldrb r2, [r6]
	lsls r2, 9
	adds r2, r3
	movs r1, 0x1C
	bl pokemon_setattr
	b _081883B4
	.pool
_08187F3C:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gEnemyParty
	adds r0, r1
	ldrb r2, [r6]
	lsls r2, 9
	adds r2, r3
	movs r1, 0x1D
	bl pokemon_setattr
	b _081883B4
	.pool
_08187F58:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gEnemyParty
	adds r0, r1
	ldrb r2, [r6]
	lsls r2, 9
	adds r2, r3
	movs r1, 0x1E
	bl pokemon_setattr
	b _081883B4
	.pool
_08187F74:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gEnemyParty
	adds r0, r1
	ldrb r2, [r6]
	lsls r2, 9
	adds r2, r3
	movs r1, 0x1F
	bl pokemon_setattr
	b _081883B4
	.pool
_08187F90:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gEnemyParty
	adds r0, r1
	ldrb r2, [r6]
	lsls r2, 9
	adds r2, r3
	movs r1, 0x20
	bl pokemon_setattr
	b _081883B4
	.pool
_08187FAC:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gEnemyParty
	adds r0, r1
	ldrb r2, [r6]
	lsls r2, 9
	adds r2, r3
	movs r1, 0x22
	bl pokemon_setattr
	b _081883B4
	.pool
_08187FC8:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gEnemyParty
	adds r0, r1
	ldrb r2, [r6]
	lsls r2, 9
	adds r2, r3
	movs r1, 0x23
	bl pokemon_setattr
	b _081883B4
	.pool
_08187FE4:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gEnemyParty
	adds r0, r1
	ldrb r2, [r6]
	lsls r2, 9
	adds r2, r3
	movs r1, 0x24
	bl pokemon_setattr
	b _081883B4
	.pool
_08188000:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gEnemyParty
	adds r0, r1
	ldrb r2, [r6]
	lsls r2, 9
	adds r2, r3
	movs r1, 0x25
	bl pokemon_setattr
	b _081883B4
	.pool
_0818801C:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gEnemyParty
	adds r0, r1
	ldrb r2, [r6]
	lsls r2, 9
	adds r2, r3
	movs r1, 0x26
	bl pokemon_setattr
	b _081883B4
	.pool
_08188038:
	movs r0, 0x64
	adds r4, r5, 0
	muls r4, r0
	ldr r0, =gEnemyParty
	adds r4, r0
	ldrb r2, [r6]
	lsls r2, 9
	adds r2, r3
	adds r0, r4, 0
	movs r1, 0x27
	str r3, [sp, 0x34]
	bl pokemon_setattr
	ldrb r2, [r6]
	lsls r2, 9
	ldr r3, [sp, 0x34]
	adds r0, r3, 0x1
	adds r2, r0
	adds r0, r4, 0
	movs r1, 0x28
	bl pokemon_setattr
	ldrb r2, [r6]
	lsls r2, 9
	ldr r3, [sp, 0x34]
	adds r0, r3, 0x2
	adds r2, r0
	adds r0, r4, 0
	movs r1, 0x29
	bl pokemon_setattr
	ldrb r2, [r6]
	lsls r2, 9
	ldr r3, [sp, 0x34]
	adds r0, r3, 0x3
	adds r2, r0
	adds r0, r4, 0
	movs r1, 0x2A
	bl pokemon_setattr
	ldrb r2, [r6]
	lsls r2, 9
	ldr r3, [sp, 0x34]
	adds r0, r3, 0x4
	adds r2, r0
	adds r0, r4, 0
	movs r1, 0x2B
	bl pokemon_setattr
	ldrb r2, [r6]
	lsls r2, 9
	ldr r3, [sp, 0x34]
	adds r0, r3, 0x5
	adds r2, r0
	adds r0, r4, 0
	b _08188146
	.pool
_081880AC:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gEnemyParty
	adds r0, r1
	ldrb r2, [r6]
	lsls r2, 9
	adds r2, r3
	movs r1, 0x27
	bl pokemon_setattr
	b _081883B4
	.pool
_081880C8:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gEnemyParty
	adds r0, r1
	ldrb r2, [r6]
	lsls r2, 9
	adds r2, r3
	movs r1, 0x28
	bl pokemon_setattr
	b _081883B4
	.pool
_081880E4:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gEnemyParty
	adds r0, r1
	ldrb r2, [r6]
	lsls r2, 9
	adds r2, r3
	movs r1, 0x29
	bl pokemon_setattr
	b _081883B4
	.pool
_08188100:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gEnemyParty
	adds r0, r1
	ldrb r2, [r6]
	lsls r2, 9
	adds r2, r3
	movs r1, 0x2A
	bl pokemon_setattr
	b _081883B4
	.pool
_0818811C:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gEnemyParty
	adds r0, r1
	ldrb r2, [r6]
	lsls r2, 9
	adds r2, r3
	movs r1, 0x2B
	bl pokemon_setattr
	b _081883B4
	.pool
_08188138:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gEnemyParty
	adds r0, r1
	ldrb r2, [r6]
	lsls r2, 9
	adds r2, r3
_08188146:
	movs r1, 0x2C
	bl pokemon_setattr
	b _081883B4
	.pool
_08188154:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gEnemyParty
	adds r0, r1
	ldrb r2, [r6]
	lsls r2, 9
	adds r2, r3
	movs r1, 0
	bl pokemon_setattr
	b _081883B4
	.pool
_08188170:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gEnemyParty
	adds r0, r1
	ldrb r2, [r6]
	lsls r2, 9
	adds r2, r3
	movs r1, 0x9
	bl pokemon_setattr
	b _081883B4
	.pool
_0818818C:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gEnemyParty
	adds r0, r1
	ldrb r2, [r6]
	lsls r2, 9
	adds r2, r3
	movs r1, 0x37
	bl pokemon_setattr
	b _081883B4
	.pool
_081881A8:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gEnemyParty
	adds r0, r1
	ldrb r2, [r6]
	lsls r2, 9
	adds r2, r3
	movs r1, 0x38
	bl pokemon_setattr
	b _081883B4
	.pool
_081881C4:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gEnemyParty
	adds r0, r1
	ldrb r2, [r6]
	lsls r2, 9
	adds r2, r3
	movs r1, 0x39
	bl pokemon_setattr
	b _081883B4
	.pool
_081881E0:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gEnemyParty
	adds r0, r1
	ldrb r2, [r6]
	lsls r2, 9
	adds r2, r3
	movs r1, 0x3A
	bl pokemon_setattr
	b _081883B4
	.pool
_081881FC:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gEnemyParty
	adds r0, r1
	ldrb r2, [r6]
	lsls r2, 9
	adds r2, r3
	movs r1, 0x3B
	bl pokemon_setattr
	b _081883B4
	.pool
_08188218:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gEnemyParty
	adds r0, r1
	ldrb r2, [r6]
	lsls r2, 9
	adds r2, r3
	movs r1, 0x3C
	bl pokemon_setattr
	b _081883B4
	.pool
_08188234:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gEnemyParty
	adds r0, r1
	ldrb r2, [r6]
	lsls r2, 9
	adds r2, r3
	movs r1, 0x3D
	bl pokemon_setattr
	b _081883B4
	.pool
_08188250:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gEnemyParty
	adds r0, r1
	ldrb r2, [r6]
	lsls r2, 9
	adds r2, r3
	movs r1, 0x3E
	bl pokemon_setattr
	b _081883B4
	.pool
_0818826C:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gEnemyParty
	adds r0, r1
	ldrb r2, [r6]
	lsls r2, 9
	adds r2, r3
	movs r1, 0x3F
	bl pokemon_setattr
	b _081883B4
	.pool
_08188288:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gEnemyParty
	adds r0, r1
	ldrb r2, [r6]
	lsls r2, 9
	adds r2, r3
	movs r1, 0x16
	bl pokemon_setattr
	b _081883B4
	.pool
_081882A4:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gEnemyParty
	adds r0, r1
	ldrb r2, [r6]
	lsls r2, 9
	adds r2, r3
	movs r1, 0x17
	bl pokemon_setattr
	b _081883B4
	.pool
_081882C0:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gEnemyParty
	adds r0, r1
	ldrb r2, [r6]
	lsls r2, 9
	adds r2, r3
	movs r1, 0x18
	bl pokemon_setattr
	b _081883B4
	.pool
_081882DC:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gEnemyParty
	adds r0, r1
	ldrb r2, [r6]
	lsls r2, 9
	adds r2, r3
	movs r1, 0x21
	bl pokemon_setattr
	b _081883B4
	.pool
_081882F8:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gEnemyParty
	adds r0, r1
	ldrb r2, [r6]
	lsls r2, 9
	adds r2, r3
	movs r1, 0x2F
	bl pokemon_setattr
	b _081883B4
	.pool
_08188314:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gEnemyParty
	adds r0, r1
	ldrb r2, [r6]
	lsls r2, 9
	adds r2, r3
	movs r1, 0x30
	bl pokemon_setattr
	b _081883B4
	.pool
_08188330:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gEnemyParty
	adds r0, r1
	ldrb r2, [r6]
	lsls r2, 9
	adds r2, r3
	movs r1, 0x32
	bl pokemon_setattr
	b _081883B4
	.pool
_0818834C:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gEnemyParty
	adds r0, r1
	ldrb r2, [r6]
	lsls r2, 9
	adds r2, r3
	movs r1, 0x33
	bl pokemon_setattr
	b _081883B4
	.pool
_08188368:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gEnemyParty
	adds r0, r1
	ldrb r2, [r6]
	lsls r2, 9
	adds r2, r3
	movs r1, 0x34
	bl pokemon_setattr
	b _081883B4
	.pool
_08188384:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gEnemyParty
	adds r0, r1
	ldrb r2, [r6]
	lsls r2, 9
	adds r2, r3
	movs r1, 0x35
	bl pokemon_setattr
	b _081883B4
	.pool
_081883A0:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gEnemyParty
	adds r0, r1
	ldrb r2, [r6]
	lsls r2, 9
	adds r2, r3
	movs r1, 0x36
	bl pokemon_setattr
_081883B4:
	add sp, 0x38
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end dp01_setattr_for_opponent_pokemon

	thumb_func_start sub_81883C8
sub_81883C8: @ 81883C8
	push {r4-r7,lr}
	ldr r1, =gUnknown_0202406E
	ldr r7, =gUnknown_02024064
	ldrb r2, [r7]
	lsls r0, r2, 1
	adds r0, r1
	ldrh r1, [r0]
	movs r0, 0x64
	adds r3, r1, 0
	muls r3, r0
	ldr r4, =gUnknown_02023064
	lsls r2, 9
	adds r0, r4, 0x1
	adds r0, r2, r0
	ldrb r0, [r0]
	ldr r1, =gEnemyParty
	adds r0, r1
	adds r5, r3, r0
	movs r3, 0
	adds r0, r4, 0x2
	adds r2, r0
	ldrb r2, [r2]
	cmp r3, r2
	bcs _08188420
	adds r6, r4, 0
	adds r2, r7, 0
	adds r4, r0, 0
_081883FE:
	adds r1, r5, r3
	ldrb r0, [r2]
	lsls r0, 9
	adds r0, 0x3
	adds r0, r3, r0
	adds r0, r6
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r3, 0x1
	lsls r0, 24
	lsrs r3, r0, 24
	ldrb r0, [r2]
	lsls r0, 9
	adds r0, r4
	ldrb r0, [r0]
	cmp r3, r0
	bcc _081883FE
_08188420:
	bl sub_81871AC
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81883C8

	thumb_func_start sub_818843C
sub_818843C: @ 818843C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	ldr r7, =gUnknown_0202406E
	ldr r6, =gUnknown_02024064
	ldrb r0, [r6]
	lsls r0, 1
	adds r0, r7
	ldrh r0, [r0]
	movs r1, 0x64
	mov r10, r1
	mov r2, r10
	muls r2, r0
	adds r0, r2, 0
	ldr r1, =gEnemyParty
	mov r9, r1
	add r0, r9
	movs r1, 0xB
	bl GetMonData
	adds r4, r0, 0
	lsls r4, 16
	lsrs r4, 16
	ldrb r1, [r6]
	lsls r0, r1, 1
	adds r0, r7
	ldrh r0, [r0]
	mov r2, r10
	muls r2, r0
	adds r0, r2, 0
	add r0, r9
	bl sub_805DC0C
	ldrb r0, [r6]
	bl battle_get_per_side_status
	adds r1, r0, 0
	lsls r1, 24
	lsrs r1, 24
	adds r0, r4, 0
	bl sub_806A068
	ldr r0, =gUnknown_0202499C
	mov r8, r0
	ldrb r0, [r6]
	movs r1, 0x2
	bl sub_80A5C6C
	adds r5, r0, 0
	lsls r5, 24
	lsrs r5, 24
	ldrb r0, [r6]
	bl sub_80A6138
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	ldrb r0, [r6]
	bl sub_80A82E4
	adds r3, r0, 0
	lsls r3, 24
	lsrs r3, 24
	mov r0, r8
	adds r1, r5, 0
	adds r2, r4, 0
	bl AddObjectToFront
	ldr r4, =gUnknown_020241E4
	ldrb r1, [r6]
	adds r1, r4
	strb r0, [r1]
	ldr r5, =gUnknown_02020630
	ldrb r0, [r6]
	adds r0, r4
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	ldr r1, =0x0000ff10
	strh r1, [r0, 0x24]
	ldrb r2, [r6]
	adds r0, r2, r4
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	strh r2, [r0, 0x2E]
	ldrb r3, [r6]
	adds r0, r3, r4
	ldrb r0, [r0]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r5
	lsls r3, 4
	ldrb r2, [r1, 0x5]
	movs r0, 0xF
	ands r0, r2
	orrs r0, r3
	strb r0, [r1, 0x5]
	ldrb r2, [r6]
	adds r4, r2, r4
	ldrb r1, [r4]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	ldr r1, =gUnknown_020244E4
	adds r2, r1
	ldrb r1, [r2]
	bl StartObjectImageAnim
	ldrb r4, [r6]
	lsls r0, r4, 1
	adds r0, r7
	ldrh r0, [r0]
	mov r1, r10
	muls r1, r0
	adds r0, r1, 0
	add r0, r9
	movs r1, 0xB
	bl GetMonData
	adds r1, r0, 0
	lsls r1, 16
	lsrs r1, 16
	adds r0, r4, 0
	bl sub_805EE54
	ldr r1, =gUnknown_03005D60
	ldrb r0, [r6]
	lsls r0, 2
	adds r0, r1
	ldr r1, =sub_8186C48
	str r1, [r0]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818843C

	thumb_func_start sub_818858C
sub_818858C: @ 818858C
	push {r4,lr}
	ldr r1, =gUnknown_0202406E
	ldr r4, =gUnknown_02024064
	ldrb r0, [r4]
	lsls r2, r0, 1
	adds r2, r1
	ldr r3, =gUnknown_02023064
	lsls r0, 9
	adds r1, r3, 0x1
	adds r0, r1
	ldrb r0, [r0]
	strh r0, [r2]
	ldrb r0, [r4]
	lsls r1, r0, 9
	adds r3, 0x2
	adds r1, r3
	ldrb r1, [r1]
	bl sub_81885D8
	ldr r1, =gUnknown_03005D60
	ldrb r0, [r4]
	lsls r0, 2
	adds r0, r1
	ldr r1, =sub_8187084
	str r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818858C

	thumb_func_start sub_81885D8
sub_81885D8: @ 81885D8
	push {r4-r6,lr}
	mov r6, r10
	mov r5, r9
	mov r4, r8
	push {r4-r6}
	adds r6, r0, 0
	lsls r6, 24
	lsrs r6, 24
	lsls r1, 24
	lsrs r1, 24
	adds r0, r6, 0
	bl sub_805EF84
	ldr r0, =gUnknown_0202406E
	lsls r4, r6, 1
	adds r4, r0
	ldr r0, =gUnknown_02023064
	lsls r1, r6, 9
	adds r0, 0x1
	adds r1, r0
	ldrb r0, [r1]
	strh r0, [r4]
	ldrh r0, [r4]
	movs r1, 0x64
	mov r9, r1
	mov r1, r9
	muls r1, r0
	adds r0, r1, 0
	ldr r5, =gEnemyParty
	adds r0, r5
	movs r1, 0xB
	bl GetMonData
	mov r8, r0
	lsls r0, 16
	lsrs r0, 16
	mov r8, r0
	ldr r0, =sub_805D714
	bl CreateInvisibleSpriteWithCallback
	ldr r1, =gUnknown_03005D7C
	mov r10, r1
	add r10, r6
	mov r1, r10
	strb r0, [r1]
	ldrh r0, [r4]
	mov r1, r9
	muls r1, r0
	adds r0, r1, 0
	adds r0, r5
	adds r1, r6, 0
	bl sub_805DC0C
	adds r0, r6, 0
	bl battle_get_per_side_status
	adds r1, r0, 0
	lsls r1, 24
	lsrs r1, 24
	mov r0, r8
	bl sub_806A068
	ldr r0, =gUnknown_0202499C
	mov r9, r0
	adds r0, r6, 0
	movs r1, 0x2
	bl sub_80A5C6C
	adds r5, r0, 0
	lsls r5, 24
	lsrs r5, 24
	adds r0, r6, 0
	bl sub_80A6138
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	adds r0, r6, 0
	bl sub_80A82E4
	adds r3, r0, 0
	lsls r3, 24
	lsrs r3, 24
	mov r0, r9
	adds r1, r5, 0
	adds r2, r4, 0
	bl AddObjectToFront
	ldr r4, =gUnknown_020241E4
	adds r4, r6, r4
	strb r0, [r4]
	ldr r5, =gUnknown_02020630
	mov r0, r10
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	ldrb r1, [r4]
	strh r1, [r0, 0x30]
	mov r0, r10
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	strh r6, [r0, 0x32]
	ldrb r1, [r4]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	strh r6, [r0, 0x2E]
	ldrb r1, [r4]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	mov r1, r8
	strh r1, [r0, 0x32]
	ldrb r0, [r4]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r5
	lsls r3, r6, 4
	ldrb r2, [r1, 0x5]
	movs r0, 0xF
	ands r0, r2
	orrs r0, r3
	strb r0, [r1, 0x5]
	ldrb r1, [r4]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	ldr r1, =gUnknown_020244E4
	adds r6, r1
	ldrb r1, [r6]
	bl StartObjectImageAnim
	ldrb r1, [r4]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	adds r0, 0x3E
	ldrb r1, [r0]
	movs r2, 0x4
	orrs r1, r2
	strb r1, [r0]
	ldrb r1, [r4]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r1, r5, 0
	adds r1, 0x1C
	adds r0, r1
	ldr r1, =DummyObjectCallback
	str r1, [r0]
	movs r0, 0
	movs r1, 0xFE
	bl sub_80753E8
	mov r1, r10
	ldrb r2, [r1]
	lsls r1, r2, 4
	adds r1, r2
	lsls r1, 2
	adds r1, r5
	lsls r0, 24
	lsrs r0, 24
	strh r0, [r1, 0x2E]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81885D8

	thumb_func_start sub_8188768
sub_8188768: @ 8188768
	push {r4-r6,lr}
	ldr r1, =gUnknown_02023064
	ldr r6, =gUnknown_02024064
	ldrb r2, [r6]
	lsls r0, r2, 9
	adds r1, 0x1
	adds r0, r1
	ldrb r3, [r0]
	cmp r3, 0
	bne _081887B0
	ldr r0, =gUnknown_020244D0
	ldr r0, [r0]
	ldr r1, [r0, 0x4]
	lsls r0, r2, 1
	adds r0, r2
	lsls r0, 2
	adds r0, r1
	strb r3, [r0, 0x4]
	ldr r1, =gUnknown_03005D60
	ldrb r0, [r6]
	lsls r0, 2
	adds r0, r1
	ldr r1, =sub_8188800
	str r1, [r0]
	b _081887EC
	.pool
_081887B0:
	ldr r5, =gUnknown_020241E4
	adds r0, r2, r5
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	ldr r4, =gUnknown_02020630
	adds r0, r4
	bl obj_free_rotscale_entry
	ldrb r0, [r6]
	adds r0, r5
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	bl RemoveObjectAndFreeTiles
	ldrb r0, [r6]
	bl sub_805EEE0
	ldr r1, =gUnknown_03005D70
	ldrb r0, [r6]
	adds r0, r1
	ldrb r0, [r0]
	bl sub_8072984
	bl sub_81871AC
_081887EC:
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8188768

	thumb_func_start sub_8188800
sub_8188800: @ 8188800
	push {r4-r6,lr}
	ldr r6, =gUnknown_020244D0
	ldr r4, [r6]
	ldr r5, =gUnknown_02024064
	ldrb r2, [r5]
	ldr r1, [r4, 0x4]
	lsls r0, r2, 1
	adds r0, r2
	lsls r0, 2
	adds r3, r0, r1
	ldrb r0, [r3, 0x4]
	cmp r0, 0
	beq _08188828
	cmp r0, 0x1
	beq _08188856
	b _0818887E
	.pool
_08188828:
	ldr r1, [r4]
	lsls r0, r2, 2
	adds r0, r1
	ldrb r1, [r0]
	movs r0, 0x4
	ands r0, r1
	cmp r0, 0
	beq _08188842
	adds r0, r2, 0
	adds r1, r2, 0
	movs r3, 0x5
	bl move_anim_start_t4
_08188842:
	ldr r0, [r6]
	ldrb r1, [r5]
	ldr r2, [r0, 0x4]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	movs r1, 0x1
	strb r1, [r0, 0x4]
	b _0818887E
_08188856:
	ldrb r1, [r3]
	movs r0, 0x40
	ands r0, r1
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0
	bne _0818887E
	strb r0, [r3, 0x4]
	ldrb r2, [r5]
	adds r0, r2, 0
	adds r1, r2, 0
	movs r3, 0x2
	bl move_anim_start_t4
	ldr r1, =gUnknown_03005D60
	ldrb r0, [r5]
	lsls r0, 2
	adds r0, r1
	ldr r1, =sub_8186D9C
	str r1, [r0]
_0818887E:
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8188800

	thumb_func_start sub_818888C
sub_818888C: @ 818888C
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	ldr r5, =gBattleTypeFlags
	ldr r0, [r5]
	movs r1, 0x40
	ands r0, r1
	cmp r0, 0
	beq _081888F6
	ldr r4, =gUnknown_02024064
	ldrb r0, [r4]
	bl battle_get_per_side_status
	movs r1, 0x2
	ands r1, r0
	movs r7, 0xC8
	cmp r1, 0
	beq _081888B4
	movs r7, 0x98
_081888B4:
	ldr r0, [r5]
	movs r1, 0x80
	lsls r1, 1
	ands r0, r1
	cmp r0, 0
	beq _081888EC
	ldrb r0, [r4]
	cmp r0, 0x1
	bne _081888D8
	ldr r0, =gUnknown_02038BCA
	b _081888DA
	.pool
_081888D8:
	ldr r0, =gUnknown_02038BCC
_081888DA:
	ldrh r0, [r0]
	bl sub_8162AA0
	lsls r0, 24
	lsrs r0, 24
	b _0818892C
	.pool
_081888EC:
	bl sub_8185F40
	lsls r0, 24
	lsrs r0, 24
	b _08188924
_081888F6:
	movs r7, 0xB0
	ldr r0, =gUnknown_02038BCA
	ldrh r1, [r0]
	movs r0, 0xC0
	lsls r0, 4
	cmp r1, r0
	bne _08188910
	bl sub_8068B48
	b _08188928
	.pool
_08188910:
	ldr r2, =gUnknown_020229E8
	ldr r0, =gUnknown_0203C7B4
	ldrb r0, [r0]
	movs r1, 0x1
	eors r1, r0
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r0, [r0, 0x13]
_08188924:
	bl sub_806F000
_08188928:
	lsls r0, 16
	lsrs r0, 16
_0818892C:
	mov r8, r0
	ldr r5, =gUnknown_02024064
	ldrb r1, [r5]
	bl sub_805DF38
	ldrb r0, [r5]
	bl battle_get_per_side_status
	adds r1, r0, 0
	lsls r1, 24
	lsrs r1, 24
	mov r0, r8
	bl template_build_for_pokemon_or_trainer
	ldr r6, =gUnknown_0202499C
	mov r9, r7
	ldr r1, =gUnknown_083054E0
	mov r2, r8
	lsls r0, r2, 2
	adds r0, r1
	ldrb r0, [r0]
	movs r4, 0x8
	subs r4, r0
	lsls r4, 18
	movs r0, 0xA0
	lsls r0, 14
	adds r4, r0
	asrs r4, 16
	ldrb r0, [r5]
	bl sub_80A82E4
	adds r3, r0, 0
	lsls r3, 24
	lsrs r3, 24
	adds r0, r6, 0
	mov r1, r9
	adds r2, r4, 0
	bl AddObjectToFront
	ldr r6, =gUnknown_020241E4
	ldrb r1, [r5]
	adds r1, r6
	strb r0, [r1]
	ldr r4, =gUnknown_02020630
	ldrb r0, [r5]
	adds r0, r6
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	ldr r1, =0x0000ff10
	strh r1, [r0, 0x24]
	ldrb r0, [r5]
	adds r0, r6
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	movs r1, 0x2
	strh r1, [r0, 0x2E]
	ldr r1, =gTrainerFrontPicPaletteTable
	mov r2, r8
	lsls r0, r2, 3
	adds r0, r1
	ldrh r0, [r0, 0x4]
	bl IndexOfObjectPaletteTag
	ldrb r1, [r5]
	adds r1, r6
	ldrb r1, [r1]
	lsls r2, r1, 4
	adds r2, r1
	lsls r2, 2
	adds r2, r4
	lsls r0, 4
	ldrb r3, [r2, 0x5]
	movs r1, 0xF
	ands r1, r3
	orrs r1, r0
	strb r1, [r2, 0x5]
	ldrb r0, [r5]
	adds r0, r6
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	mov r1, r8
	strh r1, [r0, 0x6]
	ldrb r0, [r5]
	adds r0, r6
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r4, 0x1C
	adds r0, r4
	ldr r1, =sub_805D7AC
	str r1, [r0]
	ldr r1, =gUnknown_03005D60
	ldrb r0, [r5]
	lsls r0, 2
	adds r0, r1
	ldr r1, =sub_8186558
	str r1, [r0]
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818888C

	thumb_func_start sub_8188A40
sub_8188A40: @ 8188A40
	push {lr}
	bl sub_81871AC
	pop {r0}
	bx r0
	thumb_func_end sub_8188A40

	thumb_func_start sub_8188A4C
sub_8188A4C: @ 8188A4C
	push {r4-r6,lr}
	ldr r6, =gUnknown_020241E4
	ldr r4, =gUnknown_02024064
	ldrb r0, [r4]
	adds r0, r6
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	ldr r5, =gUnknown_02020630
	adds r0, r5
	bl oamt_add_pos2_onto_pos1
	ldrb r0, [r4]
	adds r0, r6
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	movs r1, 0x23
	strh r1, [r0, 0x2E]
	ldrb r0, [r4]
	adds r0, r6
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	movs r1, 0x8C
	lsls r1, 1
	strh r1, [r0, 0x32]
	ldrb r0, [r4]
	adds r0, r6
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	ldrh r1, [r0, 0x22]
	strh r1, [r0, 0x36]
	ldrb r0, [r4]
	adds r0, r6
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r1, r5, 0
	adds r1, 0x1C
	adds r0, r1
	ldr r1, =sub_80A6EEC
	str r1, [r0]
	ldrb r0, [r4]
	adds r0, r6
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	ldr r1, =DummyObjectCallback
	bl oamt_set_x3A_32
	ldr r1, =gUnknown_03005D60
	ldrb r0, [r4]
	lsls r0, 2
	adds r0, r1
	ldr r1, =sub_81865C8
	str r1, [r0]
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8188A4C

	thumb_func_start sub_8188AF8
sub_8188AF8: @ 8188AF8
	push {r4-r6,lr}
	ldr r6, =gUnknown_020244D0
	ldr r4, [r6]
	ldr r5, =gUnknown_02024064
	ldrb r2, [r5]
	ldr r0, [r4, 0x4]
	lsls r1, r2, 1
	adds r1, r2
	lsls r1, 2
	adds r3, r1, r0
	ldrb r0, [r3, 0x4]
	cmp r0, 0
	bne _08188B4C
	ldr r1, [r4]
	lsls r0, r2, 2
	adds r0, r1
	ldrb r1, [r0]
	movs r0, 0x4
	ands r0, r1
	cmp r0, 0
	beq _08188B2C
	adds r0, r2, 0
	adds r1, r2, 0
	movs r3, 0x5
	bl move_anim_start_t4
_08188B2C:
	ldr r0, [r6]
	ldrb r1, [r5]
	ldr r2, [r0, 0x4]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r1, [r0, 0x4]
	adds r1, 0x1
	strb r1, [r0, 0x4]
	b _08188B88
	.pool
_08188B4C:
	ldrb r1, [r3]
	movs r0, 0x40
	ands r0, r1
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0
	bne _08188B88
	strb r0, [r3, 0x4]
	movs r0, 0x10
	movs r1, 0x3F
	bl audio_play_and_stuff
	ldr r2, =gUnknown_02020630
	ldr r1, =gUnknown_020241E4
	ldrb r0, [r5]
	adds r0, r1
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r2, 0x1C
	adds r0, r2
	ldr r1, =sub_8039934
	str r1, [r0]
	ldr r1, =gUnknown_03005D60
	ldrb r0, [r5]
	lsls r0, 2
	adds r0, r1
	ldr r1, =sub_8186D58
	str r1, [r0]
_08188B88:
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8188AF8

	thumb_func_start sub_8188BA4
sub_8188BA4: @ 8188BA4
	push {lr}
	bl sub_81871AC
	pop {r0}
	bx r0
	thumb_func_end sub_8188BA4

	thumb_func_start sub_8188BB0
sub_8188BB0: @ 8188BB0
	push {lr}
	bl sub_81871AC
	pop {r0}
	bx r0
	thumb_func_end sub_8188BB0

	thumb_func_start sub_8188BBC
sub_8188BBC: @ 8188BBC
	push {lr}
	bl sub_81871AC
	pop {r0}
	bx r0
	thumb_func_end sub_8188BBC

	thumb_func_start sub_8188BC8
sub_8188BC8: @ 8188BC8
	push {lr}
	bl sub_81871AC
	pop {r0}
	bx r0
	thumb_func_end sub_8188BC8

	thumb_func_start sub_8188BD4
sub_8188BD4: @ 8188BD4
	push {r4-r6,lr}
	ldr r6, =gUnknown_02024064
	ldrb r0, [r6]
	bl mplay_80342A4
	lsls r0, 24
	cmp r0, 0
	beq _08188BE6
	b _08188CFA
_08188BE6:
	ldr r0, =gUnknown_02023064
	mov r12, r0
	ldrb r2, [r6]
	lsls r2, 9
	adds r0, 0x1
	adds r0, r2, r0
	ldrb r0, [r0]
	mov r1, r12
	adds r1, 0x2
	adds r1, r2, r1
	ldrb r1, [r1]
	lsls r1, 8
	orrs r0, r1
	ldr r5, =gUnknown_02038432
	mov r1, r12
	adds r1, 0x3
	adds r2, r1
	ldrb r1, [r2]
	strb r1, [r5]
	ldr r4, =gUnknown_02038408
	ldrb r2, [r6]
	lsls r2, 9
	mov r1, r12
	adds r1, 0x4
	adds r1, r2, r1
	ldrb r3, [r1]
	mov r1, r12
	adds r1, 0x5
	adds r2, r1
	ldrb r1, [r2]
	lsls r1, 8
	orrs r3, r1
	strh r3, [r4]
	ldr r4, =gUnknown_02038404
	ldrb r2, [r6]
	lsls r2, 9
	mov r1, r12
	adds r1, 0x6
	adds r1, r2, r1
	ldrb r3, [r1]
	mov r1, r12
	adds r1, 0x7
	adds r1, r2, r1
	ldrb r1, [r1]
	lsls r1, 8
	orrs r3, r1
	mov r1, r12
	adds r1, 0x8
	adds r1, r2, r1
	ldrb r1, [r1]
	lsls r1, 16
	orrs r3, r1
	mov r1, r12
	adds r1, 0x9
	adds r2, r1
	ldrb r1, [r2]
	lsls r1, 24
	orrs r3, r1
	str r3, [r4]
	ldr r3, =gUnknown_0203841A
	ldrb r1, [r6]
	lsls r1, 9
	mov r2, r12
	adds r2, 0xA
	adds r1, r2
	ldrb r1, [r1]
	strb r1, [r3]
	ldr r4, =gUnknown_0203841C
	ldrb r2, [r6]
	lsls r2, 9
	mov r1, r12
	adds r1, 0xC
	adds r1, r2, r1
	ldrb r3, [r1]
	mov r1, r12
	adds r1, 0xD
	adds r2, r1
	ldrb r1, [r2]
	lsls r1, 8
	orrs r3, r1
	strh r3, [r4]
	ldr r3, =gUnknown_02038400
	ldrb r2, [r6]
	lsls r2, 9
	mov r1, r12
	adds r1, 0x10
	adds r2, r1
	str r2, [r3]
	ldr r3, =gUnknown_020244BC
	ldrb r1, [r6]
	lsls r1, 2
	adds r1, r3
	ldr r2, [r2]
	str r2, [r1]
	ldrb r1, [r5]
	bl sub_805DB8C
	lsls r0, 24
	lsrs r3, r0, 24
	cmp r3, 0
	beq _08188CDC
	bl sub_81871AC
	b _08188CFA
	.pool
_08188CDC:
	ldr r0, =gUnknown_020244D0
	ldr r0, [r0]
	ldrb r1, [r6]
	ldr r2, [r0, 0x4]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	strb r3, [r0, 0x4]
	ldr r1, =gUnknown_03005D60
	ldrb r0, [r6]
	lsls r0, 2
	adds r0, r1
	ldr r1, =sub_8188D0C
	str r1, [r0]
_08188CFA:
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8188BD4

	thumb_func_start sub_8188D0C
sub_8188D0C: @ 8188D0C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	ldr r2, =gUnknown_02023064
	ldr r6, =gUnknown_02024064
	ldrb r3, [r6]
	lsls r1, r3, 9
	adds r0, r2, 0x1
	mov r10, r0
	adds r0, r1, r0
	ldrb r4, [r0]
	adds r5, r2, 0x2
	mov r9, r5
	adds r0, r1, r5
	ldrb r0, [r0]
	lsls r0, 8
	orrs r4, r0
	adds r2, 0xB
	adds r1, r2
	ldrb r1, [r1]
	mov r8, r1
	ldr r7, =gUnknown_020244D0
	ldr r5, [r7]
	ldr r1, [r5, 0x4]
	lsls r0, r3, 1
	adds r0, r3
	lsls r0, 2
	adds r0, r1
	ldrb r2, [r0, 0x4]
	cmp r2, 0x1
	beq _08188DA4
	cmp r2, 0x1
	bgt _08188D64
	cmp r2, 0
	beq _08188D6E
	b _08188E80
	.pool
_08188D64:
	cmp r2, 0x2
	beq _08188DCE
	cmp r2, 0x3
	beq _08188E44
	b _08188E80
_08188D6E:
	ldr r1, [r5]
	lsls r0, r3, 2
	adds r1, r0, r1
	ldrb r2, [r1]
	movs r0, 0xC
	ands r0, r2
	cmp r0, 0x4
	bne _08188D90
	movs r0, 0x8
	orrs r0, r2
	strb r0, [r1]
	ldrb r2, [r6]
	adds r0, r2, 0
	adds r1, r2, 0
	movs r3, 0x5
	bl move_anim_start_t4
_08188D90:
	ldr r0, [r7]
	ldrb r1, [r6]
	ldr r2, [r0, 0x4]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	movs r1, 0x1
	strb r1, [r0, 0x4]
	b _08188E80
_08188DA4:
	ldrb r1, [r0]
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	bne _08188E80
	movs r0, 0
	bl sub_805EB9C
	adds r0, r4, 0
	bl move_anim_start_t1
	ldr r0, [r7]
	ldrb r1, [r6]
	ldr r2, [r0, 0x4]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	movs r1, 0x2
	strb r1, [r0, 0x4]
	b _08188E80
_08188DCE:
	ldr r0, =gUnknown_020383F8
	ldr r0, [r0]
	bl _call_via_r0
	ldr r0, =gUnknown_020383FD
	ldrb r0, [r0]
	cmp r0, 0
	bne _08188E80
	movs r0, 0x1
	bl sub_805EB9C
	ldr r0, [r7]
	ldrb r2, [r6]
	ldr r1, [r0]
	lsls r0, r2, 2
	adds r0, r1
	ldrb r1, [r0]
	movs r0, 0x4
	ands r0, r1
	cmp r0, 0
	beq _08188E1C
	mov r0, r8
	cmp r0, 0x1
	bhi _08188E1C
	adds r0, r2, 0
	adds r1, r2, 0
	movs r3, 0x6
	bl move_anim_start_t4
	ldr r0, [r7]
	ldrb r1, [r6]
	ldr r0, [r0]
	lsls r1, 2
	adds r1, r0
	ldrb r2, [r1]
	movs r0, 0x9
	negs r0, r0
	ands r0, r2
	strb r0, [r1]
_08188E1C:
	ldr r0, =gUnknown_020244D0
	ldr r2, [r0]
	ldr r0, =gUnknown_02024064
	ldrb r1, [r0]
	ldr r2, [r2, 0x4]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	movs r1, 0x3
	strb r1, [r0, 0x4]
	b _08188E80
	.pool
_08188E44:
	ldrb r1, [r0]
	movs r0, 0x40
	ands r0, r1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0
	bne _08188E80
	bl sub_805E394
	ldrb r0, [r6]
	lsls r2, r0, 9
	mov r3, r10
	adds r1, r2, r3
	ldrb r1, [r1]
	add r2, r9
	ldrb r2, [r2]
	lsls r2, 8
	orrs r1, r2
	bl sub_805E94C
	ldr r0, [r7]
	ldrb r1, [r6]
	ldr r2, [r0, 0x4]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	strb r4, [r0, 0x4]
	bl sub_81871AC
_08188E80:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_8188D0C

	thumb_func_start sub_8188E90
sub_8188E90: @ 8188E90
	push {r4,lr}
	ldr r0, =gUnknown_02022E14
	movs r1, 0
	strh r1, [r0]
	ldr r0, =gUnknown_02022E16
	strh r1, [r0]
	ldr r4, =gUnknown_02024064
	ldrb r0, [r4]
	lsls r0, 9
	ldr r1, =gUnknown_02023066
	adds r0, r1
	ldrh r0, [r0]
	bl battle_pick_message
	ldr r0, =gUnknown_02022E2C
	movs r1, 0
	bl battle_show_message_maybe
	ldr r1, =gUnknown_03005D60
	ldrb r0, [r4]
	lsls r0, 2
	adds r0, r1
	ldr r1, =sub_8186E10
	str r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8188E90

	thumb_func_start sub_8188EE4
sub_8188EE4: @ 8188EE4
	push {lr}
	bl sub_81871AC
	pop {r0}
	bx r0
	thumb_func_end sub_8188EE4

	thumb_func_start sub_8188EF0
sub_8188EF0: @ 8188EF0
	push {lr}
	ldr r0, =gUnknown_02024064
	ldrb r0, [r0]
	bl sub_8185054
	adds r1, r0, 0
	lsls r1, 24
	lsrs r1, 24
	movs r0, 0x1
	movs r2, 0
	bl dp01_build_cmdbuf_x21_a_bb
	bl sub_81871AC
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8188EF0

	thumb_func_start sub_8188F14
sub_8188F14: @ 8188F14
	push {lr}
	bl sub_81871AC
	pop {r0}
	bx r0
	thumb_func_end sub_8188F14

	thumb_func_start sub_8188F20
sub_8188F20: @ 8188F20
	push {r4,r5,lr}
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 10
	ands r0, r1
	cmp r0, 0
	beq _08188F48
	bl sub_805D19C
	adds r2, r0, 0
	lsls r2, 16
	lsrs r2, 16
	movs r0, 0x1
	movs r1, 0xA
	bl dp01_build_cmdbuf_x21_a_bb
	b _08188F6C
	.pool
_08188F48:
	ldr r5, =gUnknown_02024064
	ldrb r0, [r5]
	bl sub_8185054
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	ldrb r0, [r5]
	bl sub_8185054
	adds r2, r0, 0
	lsls r2, 24
	lsrs r2, 16
	orrs r2, r4
	movs r0, 0x1
	movs r1, 0xA
	bl dp01_build_cmdbuf_x21_a_bb
_08188F6C:
	bl sub_81871AC
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8188F20

	thumb_func_start sub_8188F7C
sub_8188F7C: @ 8188F7C
	push {lr}
	bl sub_81871AC
	pop {r0}
	bx r0
	thumb_func_end sub_8188F7C

	thumb_func_start sub_8188F88
sub_8188F88: @ 8188F88
	push {r4,lr}
	ldr r4, =gUnknown_02024064
	ldrb r0, [r4]
	bl sub_8185054
	ldrb r1, [r4]
	ldr r3, =gUnknown_0202449C
	ldr r2, [r3]
	adds r1, r2
	adds r1, 0x5C
	strb r0, [r1]
	ldrb r0, [r4]
	ldr r1, [r3]
	adds r0, r1
	adds r0, 0x5C
	ldrb r1, [r0]
	movs r0, 0x1
	movs r2, 0
	bl dp01_build_cmdbuf_x22_a_three_bytes
	bl sub_81871AC
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8188F88

	thumb_func_start sub_8188FC4
sub_8188FC4: @ 8188FC4
	push {lr}
	bl sub_81871AC
	pop {r0}
	bx r0
	thumb_func_end sub_8188FC4

	thumb_func_start sub_8188FD0
sub_8188FD0: @ 8188FD0
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, 0x4
	movs r0, 0
	bl load_gfxc_health_bar
	ldr r3, =gUnknown_02023064
	ldr r0, =gUnknown_02024064
	mov r9, r0
	ldrb r4, [r0]
	lsls r2, r4, 9
	adds r0, r3, 0x2
	adds r0, r2, r0
	ldrb r1, [r0]
	adds r3, 0x3
	adds r2, r3
	ldrb r0, [r2]
	lsls r0, 8
	orrs r1, r0
	lsls r1, 16
	asrs r7, r1, 16
	ldr r0, =0x00007fff
	cmp r7, r0
	beq _08189060
	ldr r6, =gUnknown_0202406E
	lsls r0, r4, 1
	adds r0, r6
	ldrh r0, [r0]
	movs r5, 0x64
	muls r0, r5
	ldr r4, =gEnemyParty
	adds r0, r4
	movs r1, 0x3A
	bl GetMonData
	mov r8, r0
	mov r1, r9
	ldrb r0, [r1]
	lsls r0, 1
	adds r0, r6
	ldrh r0, [r0]
	muls r0, r5
	adds r0, r4
	movs r1, 0x39
	bl GetMonData
	adds r3, r0, 0
	mov r1, r9
	ldrb r0, [r1]
	ldr r1, =gUnknown_03005D70
	adds r1, r0, r1
	ldrb r1, [r1]
	str r7, [sp]
	mov r2, r8
	bl sub_807294C
	b _0818908A
	.pool
_08189060:
	ldr r1, =gUnknown_0202406E
	lsls r0, r4, 1
	adds r0, r1
	ldrh r1, [r0]
	movs r0, 0x64
	muls r0, r1
	ldr r1, =gEnemyParty
	adds r0, r1
	movs r1, 0x3A
	bl GetMonData
	adds r2, r0, 0
	mov r1, r9
	ldrb r0, [r1]
	ldr r1, =gUnknown_03005D70
	adds r1, r0, r1
	ldrb r1, [r1]
	str r7, [sp]
	movs r3, 0
	bl sub_807294C
_0818908A:
	ldr r1, =gUnknown_03005D60
	ldr r0, =gUnknown_02024064
	ldrb r0, [r0]
	lsls r0, 2
	adds r0, r1
	ldr r1, =sub_8186D04
	str r1, [r0]
	add sp, 0x4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8188FD0

	thumb_func_start sub_81890C0
sub_81890C0: @ 81890C0
	push {lr}
	bl sub_81871AC
	pop {r0}
	bx r0
	thumb_func_end sub_81890C0

	thumb_func_start sub_81890CC
sub_81890CC: @ 81890CC
	push {r4,lr}
	ldr r4, =gUnknown_02024064
	ldrb r0, [r4]
	bl mplay_80342A4
	lsls r0, 24
	cmp r0, 0
	bne _08189120
	ldr r0, =gUnknown_03005D70
	ldrb r1, [r4]
	adds r0, r1, r0
	ldrb r0, [r0]
	ldr r2, =gUnknown_0202406E
	lsls r1, 1
	adds r1, r2
	ldrh r2, [r1]
	movs r1, 0x64
	muls r1, r2
	ldr r2, =gEnemyParty
	adds r1, r2
	movs r2, 0x9
	bl healthbar_draw_field_maybe
	ldrb r2, [r4]
	ldr r0, =gUnknown_020244D0
	ldr r0, [r0]
	ldr r0, [r0, 0x4]
	lsls r1, r2, 1
	adds r1, r2
	lsls r1, 2
	adds r1, r0
	ldrb r2, [r1]
	movs r0, 0x11
	negs r0, r0
	ands r0, r2
	strb r0, [r1]
	ldr r1, =gUnknown_03005D60
	ldrb r0, [r4]
	lsls r0, 2
	adds r0, r1
	ldr r1, =sub_818714C
	str r1, [r0]
_08189120:
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81890CC

	thumb_func_start sub_8189144
sub_8189144: @ 8189144
	push {r4,r5,lr}
	ldr r5, =gUnknown_02024064
	ldrb r0, [r5]
	bl mplay_80342A4
	lsls r0, 24
	cmp r0, 0
	bne _08189194
	ldr r4, =gUnknown_02023064
	ldrb r3, [r5]
	lsls r3, 9
	adds r0, r4, 0x1
	adds r0, r3, r0
	ldrb r0, [r0]
	adds r1, r4, 0x2
	adds r1, r3, r1
	ldrb r1, [r1]
	adds r2, r4, 0x3
	adds r2, r3, r2
	ldrb r2, [r2]
	lsls r2, 8
	orrs r1, r2
	adds r2, r4, 0x4
	adds r2, r3, r2
	ldrb r2, [r2]
	lsls r2, 16
	orrs r1, r2
	adds r4, 0x5
	adds r3, r4
	ldrb r2, [r3]
	lsls r2, 24
	orrs r1, r2
	bl move_anim_start_t2_for_situation
	ldr r1, =gUnknown_03005D60
	ldrb r0, [r5]
	lsls r0, 2
	adds r0, r1
	ldr r1, =sub_818714C
	str r1, [r0]
_08189194:
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8189144

	thumb_func_start sub_81891AC
sub_81891AC: @ 81891AC
	push {lr}
	bl sub_81871AC
	pop {r0}
	bx r0
	thumb_func_end sub_81891AC

	thumb_func_start sub_81891B8
sub_81891B8: @ 81891B8
	push {lr}
	bl sub_81871AC
	pop {r0}
	bx r0
	thumb_func_end sub_81891B8

	thumb_func_start sub_81891C4
sub_81891C4: @ 81891C4
	push {lr}
	bl sub_81871AC
	pop {r0}
	bx r0
	thumb_func_end sub_81891C4

	thumb_func_start sub_81891D0
sub_81891D0: @ 81891D0
	push {lr}
	bl sub_81871AC
	pop {r0}
	bx r0
	thumb_func_end sub_81891D0

	thumb_func_start sub_81891DC
sub_81891DC: @ 81891DC
	push {lr}
	bl sub_81871AC
	pop {r0}
	bx r0
	thumb_func_end sub_81891DC

	thumb_func_start sub_81891E8
sub_81891E8: @ 81891E8
	push {lr}
	bl sub_81871AC
	pop {r0}
	bx r0
	thumb_func_end sub_81891E8

	thumb_func_start sub_81891F4
sub_81891F4: @ 81891F4
	push {lr}
	bl sub_81871AC
	pop {r0}
	bx r0
	thumb_func_end sub_81891F4

	thumb_func_start sub_8189200
sub_8189200: @ 8189200
	push {lr}
	bl sub_81871AC
	pop {r0}
	bx r0
	thumb_func_end sub_8189200

	thumb_func_start sub_818920C
sub_818920C: @ 818920C
	push {lr}
	bl sub_81871AC
	pop {r0}
	bx r0
	thumb_func_end sub_818920C

	thumb_func_start sub_8189218
sub_8189218: @ 8189218
	push {lr}
	ldr r2, =gUnknown_02022D0C
	ldrb r1, [r2]
	movs r0, 0x80
	negs r0, r0
	ands r0, r1
	strb r0, [r2]
	bl sub_81871AC
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8189218

	thumb_func_start sub_8189234
sub_8189234: @ 8189234
	push {lr}
	ldr r3, =gUnknown_02022D0C
	ldr r1, =gUnknown_02023064
	ldr r0, =gUnknown_02024064
	ldrb r0, [r0]
	lsls r0, 9
	adds r1, 0x1
	adds r0, r1
	ldrb r0, [r0]
	movs r1, 0x7F
	ands r1, r0
	ldrb r2, [r3]
	movs r0, 0x80
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	bl sub_81871AC
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8189234

	thumb_func_start sub_818926C
sub_818926C: @ 818926C
	push {lr}
	ldr r2, =gUnknown_02022D0C
	ldrb r1, [r2]
	movs r0, 0x7F
	ands r0, r1
	strb r0, [r2]
	bl sub_81871AC
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818926C

	thumb_func_start sub_8189284
sub_8189284: @ 8189284
	push {lr}
	ldr r3, =gUnknown_02022D0C
	ldr r1, [r3]
	lsls r1, 24
	lsrs r1, 31
	movs r0, 0x1
	eors r1, r0
	lsls r1, 7
	ldrb r2, [r3]
	movs r0, 0x7F
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	bl sub_81871AC
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8189284

	thumb_func_start sub_81892AC
sub_81892AC: @ 81892AC
	push {r4,lr}
	ldr r3, =gUnknown_02020630
	ldr r2, =gUnknown_020241E4
	ldr r4, =gUnknown_02024064
	ldrb r0, [r4]
	adds r0, r2
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	adds r0, 0x3E
	ldrb r0, [r0]
	lsls r0, 29
	cmp r0, 0
	bge _081892E0
	bl sub_81871AC
	b _0818930A
	.pool
_081892E0:
	ldr r1, =gUnknown_020244B9
	movs r0, 0x1
	strb r0, [r1]
	ldrb r0, [r4]
	adds r0, r2
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	movs r1, 0
	strh r1, [r0, 0x30]
	ldrb r0, [r4]
	bl sub_80769F4
	ldr r1, =gUnknown_03005D60
	ldrb r0, [r4]
	lsls r0, 2
	adds r0, r1
	ldr r1, =bx_blink_t2
	str r1, [r0]
_0818930A:
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81892AC

	thumb_func_start sub_818931C
sub_818931C: @ 818931C
	push {lr}
	bl sub_81871AC
	pop {r0}
	bx r0
	thumb_func_end sub_818931C

	thumb_func_start sub_8189328
sub_8189328: @ 8189328
	push {r4,lr}
	ldr r4, =gUnknown_02024064
	ldrb r0, [r4]
	bl battle_side_get_owner
	lsls r0, 24
	movs r3, 0x3F
	cmp r0, 0
	bne _0818933C
	movs r3, 0xC0
_0818933C:
	ldr r2, =gUnknown_02023064
	ldrb r1, [r4]
	lsls r1, 9
	adds r0, r2, 0x1
	adds r0, r1, r0
	ldrb r0, [r0]
	adds r2, 0x2
	adds r1, r2
	ldrb r1, [r1]
	lsls r1, 8
	orrs r0, r1
	lsls r1, r3, 24
	asrs r1, 24
	bl audio_play_and_stuff
	bl sub_81871AC
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8189328

	thumb_func_start sub_818936C
sub_818936C: @ 818936C
	push {r4,r5,lr}
	ldr r4, =gUnknown_02023064
	ldr r5, =gUnknown_02024064
	ldrb r0, [r5]
	lsls r3, r0, 9
	adds r0, r4, 0x3
	adds r0, r3, r0
	ldrb r0, [r0]
	cmp r0, 0
	beq _081893A8
	bl sub_805EA60
	ldrb r1, [r5]
	lsls r1, 9
	adds r0, r4, 0x1
	adds r0, r1, r0
	ldrb r0, [r0]
	adds r2, r4, 0x2
	adds r1, r2
	ldrb r1, [r1]
	lsls r1, 8
	orrs r0, r1
	bl song_play_for_text
	b _081893BC
	.pool
_081893A8:
	adds r0, r4, 0x1
	adds r0, r3, r0
	ldrb r0, [r0]
	adds r1, r4, 0x2
	adds r1, r3, r1
	ldrb r1, [r1]
	lsls r1, 8
	orrs r0, r1
	bl fanfare_play
_081893BC:
	bl sub_81871AC
	pop {r4,r5}
	pop {r0}
	bx r0
	thumb_func_end sub_818936C

	thumb_func_start sub_81893C8
sub_81893C8: @ 81893C8
	push {lr}
	ldr r1, =gUnknown_0202406E
	ldr r0, =gUnknown_02024064
	ldrb r0, [r0]
	lsls r0, 1
	adds r0, r1
	ldrh r1, [r0]
	movs r0, 0x64
	muls r0, r1
	ldr r1, =gEnemyParty
	adds r0, r1
	movs r1, 0xB
	bl GetMonData
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x19
	movs r2, 0x5
	bl sub_80A32E4
	bl sub_81871AC
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81893C8

	thumb_func_start sub_8189404
sub_8189404: @ 8189404
	push {lr}
	ldr r1, =gUnknown_02023064
	ldr r0, =gUnknown_02024064
	ldrb r0, [r0]
	lsls r0, 9
	adds r1, 0x1
	adds r0, r1
	ldrb r0, [r0]
	bl battle_intro_launch
	ldr r2, =gUnknown_020243FC
	ldrh r0, [r2]
	movs r1, 0x1
	orrs r0, r1
	strh r0, [r2]
	bl sub_81871AC
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8189404

	thumb_func_start sub_8189438
sub_8189438: @ 8189438
	push {r4-r6,lr}
	ldr r5, =gUnknown_020241E4
	ldr r6, =gUnknown_02024064
	ldrb r0, [r6]
	adds r0, r5
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	ldr r4, =gUnknown_02020630
	adds r0, r4
	bl oamt_add_pos2_onto_pos1
	ldrb r0, [r6]
	adds r0, r5
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	movs r1, 0x23
	strh r1, [r0, 0x2E]
	ldrb r0, [r6]
	adds r0, r5
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	movs r1, 0x8C
	lsls r1, 1
	strh r1, [r0, 0x32]
	ldrb r0, [r6]
	adds r0, r5
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	ldrh r1, [r0, 0x22]
	strh r1, [r0, 0x36]
	ldrb r0, [r6]
	adds r0, r5
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r1, r4, 0
	adds r1, 0x1C
	adds r0, r1
	ldr r1, =sub_80A6EEC
	str r1, [r0]
	ldrb r0, [r6]
	adds r0, r5
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	ldr r1, =sub_818962C
	bl oamt_set_x3A_32
	ldr r0, =c3_0803D564
	movs r1, 0x5
	bl CreateTask
	lsls r0, 24
	lsrs r0, 24
	ldr r4, =gTasks
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	adds r1, r4
	ldrb r0, [r6]
	strh r0, [r1, 0x8]
	ldr r3, =gUnknown_020244D0
	ldr r0, [r3]
	ldrb r2, [r6]
	ldr r1, [r0, 0x4]
	lsls r0, r2, 1
	adds r0, r2
	lsls r0, 2
	adds r0, r1
	ldrb r1, [r0]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _081894FA
	ldr r0, =gUnknown_020244B4
	adds r0, r2, r0
	ldrb r1, [r0]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 3
	adds r0, r4
	ldr r1, =sub_8073C30
	str r1, [r0]
_081894FA:
	ldr r0, [r3]
	ldr r2, [r0, 0x8]
	ldrb r0, [r2, 0x9]
	movs r1, 0x1
	orrs r0, r1
	strb r0, [r2, 0x9]
	ldr r1, =gUnknown_03005D60
	ldrb r0, [r6]
	lsls r0, 2
	adds r0, r1
	ldr r1, =nullsub_70
	str r1, [r0]
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8189438

	thumb_func_start c3_0803D564
c3_0803D564: @ 8189548
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
	ldr r7, =gUnknown_02024064
	ldrb r0, [r7]
	mov r9, r0
	ldr r1, =gTasks
	mov r2, r8
	lsls r0, r2, 2
	add r0, r8
	lsls r0, 3
	adds r0, r1
	ldrh r0, [r0, 0x8]
	strb r0, [r7]
	bl battle_type_is_double
	lsls r0, 24
	cmp r0, 0
	beq _08189582
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x40
	ands r0, r1
	cmp r0, 0
	beq _081895B4
_08189582:
	ldr r0, =gUnknown_02023064
	ldrb r1, [r7]
	lsls r2, r1, 9
	adds r0, 0x1
	adds r2, r0
	ldr r0, =gUnknown_0202406E
	lsls r1, 1
	adds r1, r0
	ldrh r0, [r1]
	strb r0, [r2]
	ldrb r0, [r7]
	movs r1, 0
	bl sub_81885D8
	b _081895F4
	.pool
_081895B4:
	ldr r4, =gUnknown_02023064
	ldrb r0, [r7]
	lsls r1, r0, 9
	adds r4, 0x1
	adds r1, r4
	ldr r6, =gUnknown_0202406E
	lsls r0, 1
	adds r0, r6
	ldrh r0, [r0]
	strb r0, [r1]
	ldrb r0, [r7]
	movs r1, 0
	bl sub_81885D8
	ldrb r0, [r7]
	movs r5, 0x2
	eors r0, r5
	strb r0, [r7]
	ldrb r0, [r7]
	lsls r1, r0, 9
	adds r1, r4
	lsls r0, 1
	adds r0, r6
	ldrh r0, [r0]
	strb r0, [r1]
	ldrb r0, [r7]
	movs r1, 0
	bl sub_81885D8
	ldrb r0, [r7]
	eors r0, r5
	strb r0, [r7]
_081895F4:
	ldr r1, =gUnknown_03005D60
	ldr r2, =gUnknown_02024064
	ldrb r0, [r2]
	lsls r0, 2
	adds r0, r1
	ldr r1, =sub_818686C
	str r1, [r0]
	mov r0, r9
	strb r0, [r2]
	mov r0, r8
	bl DestroyTask
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end c3_0803D564

	thumb_func_start sub_818962C
sub_818962C: @ 818962C
	push {r4,lr}
	adds r4, r0, 0
	ldrh r0, [r4, 0x6]
	bl sub_805DFE4
	adds r0, r4, 0
	bl obj_free_rotscale_entry
	adds r0, r4, 0
	bl RemoveObjectAndFreeTiles
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_818962C

	thumb_func_start sub_8189648
sub_8189648: @ 8189648
	push {r4-r7,lr}
	ldr r1, =gUnknown_02023064
	ldr r0, =gUnknown_02024064
	ldrb r2, [r0]
	lsls r0, r2, 9
	adds r1, 0x1
	adds r0, r1
	ldrb r0, [r0]
	cmp r0, 0
	beq _08189678
	adds r0, r2, 0
	bl battle_side_get_owner
	lsls r0, 24
	cmp r0, 0
	bne _08189678
	bl sub_81871AC
	b _08189742
	.pool
_08189678:
	ldr r4, =gUnknown_020244D0
	ldr r0, [r4]
	ldr r3, =gUnknown_02024064
	ldrb r1, [r3]
	ldr r2, [r0, 0x4]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r1, [r0]
	movs r2, 0x1
	orrs r1, r2
	strb r1, [r0]
	ldr r1, =gUnknown_02023064
	ldrb r2, [r3]
	lsls r0, r2, 9
	adds r1, 0x2
	adds r0, r1
	ldrb r0, [r0]
	adds r7, r3, 0
	cmp r0, 0
	beq _081896E4
	ldr r0, [r4]
	ldr r1, [r0, 0x4]
	lsls r0, r2, 1
	adds r0, r2
	lsls r0, 2
	adds r3, r0, r1
	ldrb r2, [r3, 0x1]
	lsls r1, r2, 27
	lsrs r0, r1, 28
	cmp r0, 0x1
	bhi _081896DC
	adds r0, 0x1
	movs r1, 0xF
	ands r0, r1
	lsls r0, 1
	movs r1, 0x1F
	negs r1, r1
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, 0x1]
	b _08189742
	.pool
_081896DC:
	movs r0, 0x1F
	negs r0, r0
	ands r0, r2
	strb r0, [r3, 0x1]
_081896E4:
	adds r5, r7, 0
	ldrb r0, [r5]
	lsls r3, r0, 9
	ldr r4, =gUnknown_02023068
	adds r1, r3, r4
	subs r2, r4, 0x3
	adds r2, r3, r2
	ldrb r2, [r2]
	subs r4, 0x2
	adds r3, r4
	ldrb r3, [r3]
	bl sub_80735DC
	ldr r2, =gUnknown_020244B4
	ldrb r1, [r5]
	adds r1, r2
	movs r3, 0
	strb r0, [r1]
	ldr r6, =gUnknown_020244D0
	ldr r0, [r6]
	ldrb r1, [r5]
	ldr r2, [r0, 0x4]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	strb r3, [r0, 0x5]
	ldrb r2, [r5]
	lsls r0, r2, 9
	adds r0, r4
	ldrb r0, [r0]
	cmp r0, 0
	beq _08189736
	ldr r0, [r6]
	ldr r1, [r0, 0x4]
	lsls r0, r2, 1
	adds r0, r2
	lsls r0, 2
	adds r0, r1
	movs r1, 0x5D
	strb r1, [r0, 0x5]
_08189736:
	ldr r0, =gUnknown_03005D60
	ldrb r1, [r7]
	lsls r1, 2
	adds r1, r0
	ldr r0, =sub_818975C
	str r0, [r1]
_08189742:
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8189648

	thumb_func_start sub_818975C
sub_818975C: @ 818975C
	push {r4,lr}
	ldr r4, =gUnknown_020244D0
	ldr r0, [r4]
	ldr r3, =gUnknown_02024064
	ldrb r1, [r3]
	ldr r2, [r0, 0x4]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r1, [r0, 0x5]
	adds r2, r1, 0x1
	strb r2, [r0, 0x5]
	lsls r1, 24
	lsrs r1, 24
	cmp r1, 0x5C
	bls _08189794
	ldr r0, [r4]
	ldrb r1, [r3]
	ldr r2, [r0, 0x4]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	movs r1, 0
	strb r1, [r0, 0x5]
	bl sub_81871AC
_08189794:
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818975C

	thumb_func_start sub_81897A4
sub_81897A4: @ 81897A4
	push {lr}
	ldr r0, =gUnknown_020244D0
	ldr r1, [r0]
	ldr r0, =gUnknown_02024064
	ldrb r3, [r0]
	ldr r1, [r1, 0x4]
	lsls r0, r3, 1
	adds r0, r3
	lsls r0, 2
	adds r0, r1
	ldrb r1, [r0]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _081897D6
	ldr r2, =gTasks
	ldr r0, =gUnknown_020244B4
	adds r0, r3, r0
	ldrb r1, [r0]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 3
	adds r0, r2
	ldr r1, =sub_8073C30
	str r1, [r0]
_081897D6:
	bl sub_81871AC
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81897A4

	thumb_func_start sub_81897F4
sub_81897F4: @ 81897F4
	push {lr}
	bl sub_81871AC
	pop {r0}
	bx r0
	thumb_func_end sub_81897F4

	thumb_func_start sub_8189800
sub_8189800: @ 8189800
	push {r4,lr}
	ldr r4, =gUnknown_02024064
	ldrb r0, [r4]
	bl sub_80A6A90
	lsls r0, 24
	cmp r0, 0
	beq _08189846
	ldr r3, =gUnknown_02020630
	ldr r0, =gUnknown_020241E4
	ldrb r1, [r4]
	adds r0, r1, r0
	ldrb r0, [r0]
	lsls r2, r0, 4
	adds r2, r0
	lsls r2, 2
	adds r2, r3
	ldr r0, =gUnknown_02023064
	lsls r1, 9
	adds r0, 0x1
	adds r1, r0
	adds r2, 0x3E
	movs r0, 0x1
	ldrb r1, [r1]
	ands r1, r0
	lsls r1, 2
	ldrb r3, [r2]
	movs r0, 0x5
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r4]
	bl sub_805E408
_08189846:
	bl sub_81871AC
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8189800

	thumb_func_start sub_8189860
sub_8189860: @ 8189860
	push {r4-r6,lr}
	sub sp, 0x4
	ldr r6, =gUnknown_02024064
	ldrb r0, [r6]
	bl mplay_80342A4
	lsls r0, 24
	cmp r0, 0
	bne _081898B8
	ldr r5, =gUnknown_02023064
	ldrb r2, [r6]
	lsls r1, r2, 9
	adds r0, r5, 0x1
	adds r0, r1, r0
	ldrb r3, [r0]
	adds r0, r5, 0x2
	adds r0, r1, r0
	ldrb r4, [r0]
	adds r5, 0x3
	adds r1, r5
	ldrb r0, [r1]
	lsls r0, 8
	orrs r4, r0
	str r4, [sp]
	adds r0, r2, 0
	adds r1, r2, 0
	bl move_anim_start_t3
	lsls r0, 24
	cmp r0, 0
	beq _081898AC
	bl sub_81871AC
	b _081898B8
	.pool
_081898AC:
	ldr r0, =gUnknown_03005D60
	ldrb r1, [r6]
	lsls r1, 2
	adds r1, r0
	ldr r0, =sub_818717C
	str r0, [r1]
_081898B8:
	add sp, 0x4
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8189860

	thumb_func_start sub_81898C8
sub_81898C8: @ 81898C8
	push {lr}
	bl sub_81871AC
	pop {r0}
	bx r0
	thumb_func_end sub_81898C8

	thumb_func_start sub_81898D4
sub_81898D4: @ 81898D4
	push {lr}
	bl sub_81871AC
	pop {r0}
	bx r0
	thumb_func_end sub_81898D4

	thumb_func_start sub_81898E0
sub_81898E0: @ 81898E0
	push {lr}
	ldr r1, =gUnknown_02023064
	ldr r0, =gUnknown_02024064
	ldrb r0, [r0]
	lsls r0, 9
	adds r1, 0x1
	adds r0, r1
	ldrb r2, [r0]
	cmp r2, 0x3
	bne _08189908
	ldr r0, =gUnknown_0202433A
	strb r2, [r0]
	b _08189910
	.pool
_08189908:
	ldr r0, =gUnknown_0202433A
	movs r1, 0x3
	eors r1, r2
	strb r1, [r0]
_08189910:
	movs r0, 0x5
	bl sub_80A2F50
	movs r0, 0x3
	bl BeginFastPaletteFade
	bl sub_81871AC
	ldr r1, =gUnknown_03005D60
	ldr r0, =gUnknown_02024064
	ldrb r0, [r0]
	lsls r0, 2
	adds r0, r1
	ldr r1, =sub_80587B0
	str r1, [r0]
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81898E0

	thumb_func_start nullsub_119
nullsub_119: @ 8189944
	bx lr
	thumb_func_end nullsub_119

	thumb_func_start nullsub_120
nullsub_120: @ 8189948
	bx lr
	thumb_func_end nullsub_120

	thumb_func_start sub_818994C
sub_818994C: @ 818994C
	ldr r1, =gUnknown_03005D60
	ldr r0, =gUnknown_02024064
	ldrb r0, [r0]
	lsls r0, 2
	adds r0, r1
	ldr r1, =sub_8189968
	str r1, [r0]
	bx lr
	.pool
	thumb_func_end sub_818994C

	thumb_func_start sub_8189968
sub_8189968: @ 8189968
	push {lr}
	ldr r2, =gUnknown_02024068
	ldr r1, =gBitTable
	ldr r0, =gUnknown_02024064
	ldrb r3, [r0]
	lsls r0, r3, 2
	adds r0, r1
	ldr r1, [r2]
	ldr r0, [r0]
	ands r1, r0
	cmp r1, 0
	beq _081899B4
	ldr r0, =gUnknown_02023064
	lsls r1, r3, 9
	adds r1, r0
	ldrb r0, [r1]
	cmp r0, 0x38
	bhi _081899B0
	ldr r0, =gUnknown_0860AF74
	ldrb r1, [r1]
	lsls r1, 2
	adds r1, r0
	ldr r0, [r1]
	bl _call_via_r0
	b _081899B4
	.pool
_081899B0:
	bl sub_818A514
_081899B4:
	pop {r0}
	bx r0
	thumb_func_end sub_8189968

	thumb_func_start sub_81899B8
sub_81899B8: @ 81899B8
	push {lr}
	ldr r2, =gUnknown_02020630
	ldr r1, =gUnknown_020241E4
	ldr r0, =gUnknown_02024064
	ldrb r0, [r0]
	adds r0, r1
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r2, 0x1C
	adds r0, r2
	ldr r1, [r0]
	ldr r0, =DummyObjectCallback
	cmp r1, r0
	bne _081899DC
	bl sub_818A514
_081899DC:
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81899B8

	thumb_func_start sub_81899F0
sub_81899F0: @ 81899F0
	push {r4-r6,lr}
	ldr r6, =gUnknown_02020630
	ldr r5, =gUnknown_020241E4
	ldr r4, =gUnknown_02024064
	ldrb r0, [r4]
	adds r0, r5
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r1, r6, 0
	adds r1, 0x1C
	adds r0, r1
	ldr r1, [r0]
	ldr r0, =DummyObjectCallback
	cmp r1, r0
	bne _08189A40
	movs r0, 0
	bl nullsub_25
	ldrb r0, [r4]
	adds r0, r5
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r6
	bl obj_free_rotscale_entry
	ldrb r0, [r4]
	adds r0, r5
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r6
	bl RemoveObjectAndFreeTiles
	bl sub_818A514
_08189A40:
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81899F0

	thumb_func_start sub_8189A58
sub_8189A58: @ 8189A58
	push {r4,lr}
	ldr r4, =gUnknown_020244D0
	ldr r1, [r4]
	ldr r3, =gUnknown_02024064
	ldrb r0, [r3]
	ldr r2, [r1, 0x4]
	lsls r1, r0, 1
	adds r1, r0
	lsls r1, 2
	adds r1, r2
	ldrb r0, [r1, 0x9]
	subs r0, 0x1
	strb r0, [r1, 0x9]
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0xFF
	bne _08189A90
	ldr r0, [r4]
	ldrb r1, [r3]
	ldr r2, [r0, 0x4]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	movs r1, 0
	strb r1, [r0, 0x9]
	bl sub_818A514
_08189A90:
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8189A58

	thumb_func_start sub_8189AA0
sub_8189AA0: @ 8189AA0
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	movs r6, 0
	ldr r4, =gUnknown_02024064
	ldrb r0, [r4]
	bl battle_get_per_side_status
	lsls r0, 24
	cmp r0, 0
	beq _08189ABA
	b _08189C60
_08189ABA:
	bl battle_type_is_double
	lsls r0, 24
	cmp r0, 0
	beq _08189ADA
	bl battle_type_is_double
	lsls r0, 24
	cmp r0, 0
	beq _08189B0C
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x40
	ands r0, r1
	cmp r0, 0
	beq _08189B0C
_08189ADA:
	ldr r2, =gUnknown_02020630
	ldr r1, =gUnknown_03005D70
	ldrb r0, [r4]
	adds r0, r1
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r2, 0x1C
	adds r0, r2
	ldr r1, [r0]
	ldr r0, =DummyObjectCallback
	cmp r1, r0
	bne _08189B42
	b _08189B48
	.pool
_08189B0C:
	ldr r2, =gUnknown_02020630
	ldr r5, =gUnknown_03005D70
	ldr r0, =gUnknown_02024064
	ldrb r3, [r0]
	adds r0, r3, r5
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r2, 0x1C
	adds r0, r2
	ldr r4, [r0]
	ldr r0, =DummyObjectCallback
	cmp r4, r0
	bne _08189B42
	movs r0, 0x2
	eors r3, r0
	adds r0, r3, r5
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldr r0, [r0]
	cmp r0, r4
	bne _08189B42
	movs r6, 0x1
_08189B42:
	cmp r6, 0
	bne _08189B48
	b _08189D18
_08189B48:
	ldr r0, =gUnknown_020244D0
	mov r9, r0
	ldr r0, [r0]
	ldr r5, =gUnknown_02024064
	ldrb r2, [r5]
	ldr r3, [r0, 0x4]
	lsls r0, r2, 1
	adds r0, r2
	lsls r0, 2
	adds r4, r0, r3
	ldrb r1, [r4, 0x1]
	movs r6, 0x1
	adds r0, r6, 0
	ands r0, r1
	cmp r0, 0
	bne _08189B6A
	b _08189D18
_08189B6A:
	movs r1, 0x2
	mov r8, r1
	mov r1, r8
	eors r1, r2
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	ldrb r1, [r0, 0x1]
	adds r0, r6, 0
	ands r0, r1
	cmp r0, 0
	bne _08189B86
	b _08189D18
_08189B86:
	ldrb r1, [r4]
	movs r3, 0x7F
	adds r0, r3, 0
	ands r0, r1
	strb r0, [r4]
	mov r1, r9
	ldr r0, [r1]
	ldrb r2, [r5]
	ldr r0, [r0, 0x4]
	lsls r1, r2, 1
	adds r1, r2
	lsls r1, 2
	adds r1, r0
	ldrb r2, [r1, 0x1]
	movs r4, 0x2
	negs r4, r4
	adds r0, r4, 0
	ands r0, r2
	strb r0, [r1, 0x1]
	mov r0, r9
	ldr r2, [r0]
	ldrb r0, [r5]
	mov r1, r8
	eors r1, r0
	ldr r2, [r2, 0x4]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r1, [r0]
	ands r3, r1
	strb r3, [r0]
	mov r1, r9
	ldr r2, [r1]
	ldrb r0, [r5]
	mov r1, r8
	eors r1, r0
	ldr r2, [r2, 0x4]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r1, [r0, 0x1]
	ands r4, r1
	strb r4, [r0, 0x1]
	ldr r4, =0x000027f9
	adds r0, r4, 0
	bl FreeObjectTilesByTag
	adds r0, r4, 0
	bl FreeObjectPaletteByTag
	ldr r7, =gUnknown_0202406E
	ldrb r1, [r5]
	lsls r0, r1, 1
	adds r0, r7
	ldrh r0, [r0]
	movs r6, 0x64
	muls r0, r6
	ldr r4, =gPlayerParty
	adds r0, r4
	bl sub_805E990
	bl battle_type_is_double
	lsls r0, 24
	cmp r0, 0
	beq _08189C22
	ldrb r0, [r5]
	mov r1, r8
	eors r1, r0
	lsls r0, r1, 1
	adds r0, r7
	ldrh r0, [r0]
	muls r0, r6
	adds r0, r4
	bl sub_805E990
_08189C22:
	mov r1, r9
	ldr r0, [r1]
	ldrb r1, [r5]
	ldr r2, [r0, 0x4]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	movs r1, 0x3
	strb r1, [r0, 0x9]
	ldr r1, =gUnknown_03005D60
	ldrb r0, [r5]
	b _08189D10
	.pool
_08189C60:
	bl battle_type_is_double
	lsls r0, 24
	cmp r0, 0
	beq _08189C80
	bl battle_type_is_double
	lsls r0, 24
	cmp r0, 0
	beq _08189CB0
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x40
	ands r0, r1
	cmp r0, 0
	beq _08189CB0
_08189C80:
	ldr r2, =gUnknown_02020630
	ldr r1, =gUnknown_03005D70
	ldrb r0, [r4]
	adds r0, r1
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r2, 0x1C
	adds r0, r2
	ldr r1, [r0]
	ldr r0, =DummyObjectCallback
	cmp r1, r0
	bne _08189CE6
	b _08189CE4
	.pool
_08189CB0:
	ldr r2, =gUnknown_02020630
	ldr r5, =gUnknown_03005D70
	ldr r0, =gUnknown_02024064
	ldrb r3, [r0]
	adds r0, r3, r5
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r2, 0x1C
	adds r0, r2
	ldr r4, [r0]
	ldr r0, =DummyObjectCallback
	cmp r4, r0
	bne _08189CE6
	movs r0, 0x2
	eors r3, r0
	adds r0, r3, r5
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldr r0, [r0]
	cmp r0, r4
	bne _08189CE6
_08189CE4:
	movs r6, 0x1
_08189CE6:
	bl sub_80A36C8
	lsls r0, 24
	cmp r0, 0
	beq _08189CF2
	movs r6, 0
_08189CF2:
	cmp r6, 0
	beq _08189D18
	ldr r0, =gUnknown_020244D0
	ldr r0, [r0]
	ldr r3, =gUnknown_02024064
	ldrb r1, [r3]
	ldr r2, [r0, 0x4]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	movs r1, 0x3
	strb r1, [r0, 0x9]
	ldr r1, =gUnknown_03005D60
	ldrb r0, [r3]
_08189D10:
	lsls r0, 2
	adds r0, r1
	ldr r1, =sub_8189A58
	str r1, [r0]
_08189D18:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8189AA0

	thumb_func_start sub_8189D40
sub_8189D40: @ 8189D40
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	movs r0, 0
	mov r10, r0
	ldr r4, =gUnknown_02024064
	ldrb r0, [r4]
	bl battle_get_per_side_status
	lsls r0, 24
	cmp r0, 0
	bne _08189DBE
	ldr r5, =gUnknown_020244D0
	ldr r0, [r5]
	ldrb r2, [r4]
	ldr r1, [r0, 0x4]
	lsls r3, r2, 1
	adds r0, r3, r2
	lsls r0, 2
	adds r0, r1
	ldrb r1, [r0]
	movs r6, 0x88
	adds r0, r6, 0
	ands r0, r1
	cmp r0, 0
	bne _08189D8C
	ldr r0, =gUnknown_0202406E
	adds r0, r3, r0
	ldrh r1, [r0]
	movs r0, 0x64
	muls r1, r0
	ldr r0, =gPlayerParty
	adds r1, r0
	adds r0, r2, 0
	bl sub_8172EF0
_08189D8C:
	ldr r2, [r5]
	ldrb r1, [r4]
	movs r0, 0x2
	adds r3, r0, 0
	eors r3, r1
	ldr r1, [r2, 0x4]
	lsls r2, r3, 1
	adds r0, r2, r3
	lsls r0, 2
	adds r0, r1
	ldrb r1, [r0]
	adds r0, r6, 0
	ands r0, r1
	cmp r0, 0
	bne _08189DBE
	ldr r0, =gUnknown_0202406E
	adds r0, r2, r0
	ldrh r1, [r0]
	movs r0, 0x64
	muls r1, r0
	ldr r0, =gPlayerParty
	adds r1, r0
	adds r0, r3, 0
	bl sub_8172EF0
_08189DBE:
	ldr r3, =gUnknown_020244D0
	ldr r0, [r3]
	ldr r2, =gUnknown_02024064
	ldrb r5, [r2]
	ldr r4, [r0, 0x4]
	lsls r0, r5, 1
	adds r0, r5
	lsls r0, 2
	adds r6, r0, r4
	ldrb r1, [r6]
	movs r0, 0x8
	mov r12, r0
	ands r0, r1
	mov r9, r2
	mov r8, r3
	cmp r0, 0
	bne _08189EA2
	movs r7, 0x2
	adds r1, r7, 0
	eors r1, r5
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	ldrb r1, [r0]
	mov r0, r12
	ands r0, r1
	cmp r0, 0
	bne _08189EA2
	ldrb r1, [r6, 0x1]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	bne _08189E84
	bl battle_type_is_double
	lsls r0, 24
	cmp r0, 0
	beq _08189E54
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x40
	ands r0, r1
	cmp r0, 0
	bne _08189E54
	ldr r4, =gUnknown_03005D70
	mov r1, r9
	ldrb r0, [r1]
	adds r1, r7, 0
	eors r1, r0
	adds r0, r1, r4
	ldrb r0, [r0]
	ldr r2, =gUnknown_0202406E
	lsls r1, 1
	adds r1, r2
	ldrh r2, [r1]
	movs r1, 0x64
	muls r1, r2
	ldr r2, =gPlayerParty
	adds r1, r2
	movs r2, 0
	bl healthbar_draw_field_maybe
	mov r1, r9
	ldrb r0, [r1]
	eors r0, r7
	bl sub_8076918
	mov r1, r9
	ldrb r0, [r1]
	eors r0, r7
	adds r0, r4
	ldrb r0, [r0]
	bl sub_80729D0
_08189E54:
	ldr r5, =gUnknown_03005D70
	ldr r4, =gUnknown_02024064
	ldrb r1, [r4]
	adds r0, r1, r5
	ldrb r0, [r0]
	ldr r2, =gUnknown_0202406E
	lsls r1, 1
	adds r1, r2
	ldrh r2, [r1]
	movs r1, 0x64
	muls r1, r2
	ldr r2, =gPlayerParty
	adds r1, r2
	movs r2, 0
	bl healthbar_draw_field_maybe
	ldrb r0, [r4]
	bl sub_8076918
	ldrb r0, [r4]
	adds r0, r5
	ldrb r0, [r0]
	bl sub_80729D0
_08189E84:
	ldr r4, =gUnknown_020244D0
	ldr r0, [r4]
	ldr r3, =gUnknown_02024064
	ldrb r1, [r3]
	ldr r2, [r0, 0x4]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r1, [r0, 0x1]
	movs r2, 0x80
	orrs r1, r2
	strb r1, [r0, 0x1]
	mov r9, r3
	mov r8, r4
_08189EA2:
	mov r1, r8
	ldr r0, [r1]
	mov r1, r9
	ldrb r2, [r1]
	ldr r3, [r0, 0x4]
	lsls r0, r2, 1
	adds r0, r2
	lsls r0, 2
	adds r0, r3
	ldrb r1, [r0, 0x1]
	movs r0, 0xC0
	ands r0, r1
	cmp r0, 0x80
	bne _08189F62
	movs r1, 0x2
	eors r1, r2
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	ldrb r1, [r0, 0x1]
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	bne _08189F62
	bl sub_80A36C8
	lsls r0, 24
	cmp r0, 0
	bne _08189F62
	mov r1, r8
	ldr r0, [r1]
	mov r1, r9
	ldrb r2, [r1]
	ldr r1, [r0, 0x4]
	lsls r0, r2, 1
	adds r0, r2
	lsls r0, 2
	adds r0, r1
	ldrb r1, [r0, 0x1]
	movs r0, 0x20
	ands r0, r1
	cmp r0, 0
	bne _08189F44
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x42
	ands r0, r1
	cmp r0, 0x42
	bne _08189F38
	adds r0, r2, 0
	bl battle_get_per_side_status
	lsls r0, 24
	cmp r0, 0
	bne _08189F44
	ldr r0, =gMPlay_BGM
	bl m4aMPlayContinue
	b _08189F44
	.pool
_08189F38:
	ldr r0, =gMPlay_BGM
	ldr r1, =0x0000ffff
	movs r2, 0x80
	lsls r2, 1
	bl m4aMPlayVolumeControl
_08189F44:
	ldr r0, =gUnknown_020244D0
	ldr r2, [r0]
	ldr r0, =gUnknown_02024064
	ldrb r1, [r0]
	ldr r2, [r2, 0x4]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r1, [r0, 0x1]
	movs r2, 0x20
	orrs r1, r2
	strb r1, [r0, 0x1]
	movs r0, 0x1
	mov r10, r0
_08189F62:
	mov r1, r10
	cmp r1, 0
	beq _0818A02A
	ldr r7, =gUnknown_02020630
	ldr r6, =gUnknown_03005D7C
	ldr r5, =gUnknown_02024064
	ldrb r3, [r5]
	adds r0, r3, r6
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r4, r7, 0
	adds r4, 0x1C
	adds r0, r4
	ldr r2, [r0]
	ldr r0, =DummyObjectCallback
	cmp r2, r0
	bne _0818A02A
	ldr r0, =gUnknown_020241E4
	adds r0, r3, r0
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	ldr r0, [r0]
	cmp r0, r2
	bne _0818A02A
	bl battle_type_is_double
	lsls r0, 24
	cmp r0, 0
	beq _08189FC8
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x40
	ands r0, r1
	cmp r0, 0
	bne _08189FC8
	ldrb r1, [r5]
	movs r0, 0x2
	eors r0, r1
	adds r0, r6
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r7
	bl RemoveObjectAndFreeTiles
_08189FC8:
	ldr r1, =gUnknown_03005D7C
	ldr r4, =gUnknown_02024064
	ldrb r0, [r4]
	adds r0, r1
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	ldr r1, =gUnknown_02020630
	adds r0, r1
	bl RemoveObjectAndFreeTiles
	ldr r3, =gUnknown_020244D0
	ldr r0, [r3]
	ldr r2, [r0, 0x8]
	ldrb r1, [r2, 0x9]
	movs r0, 0x2
	negs r0, r0
	ands r0, r1
	strb r0, [r2, 0x9]
	ldr r0, [r3]
	ldrb r2, [r4]
	ldr r0, [r0, 0x4]
	lsls r1, r2, 1
	adds r1, r2
	lsls r1, 2
	adds r1, r0
	ldrb r2, [r1, 0x1]
	movs r0, 0x21
	negs r0, r0
	ands r0, r2
	strb r0, [r1, 0x1]
	ldr r0, [r3]
	ldrb r2, [r4]
	ldr r0, [r0, 0x4]
	lsls r1, r2, 1
	adds r1, r2
	lsls r1, 2
	adds r1, r0
	ldrb r2, [r1, 0x1]
	movs r0, 0x7F
	ands r0, r2
	strb r0, [r1, 0x1]
	ldr r1, =gUnknown_03005D60
	ldrb r0, [r4]
	lsls r0, 2
	adds r0, r1
	ldr r1, =sub_8189AA0
	str r1, [r0]
_0818A02A:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8189D40

	thumb_func_start sub_818A064
sub_818A064: @ 818A064
	push {lr}
	ldr r2, =gUnknown_02020630
	ldr r1, =gUnknown_020241E4
	ldr r0, =gUnknown_02024064
	ldrb r0, [r0]
	adds r0, r1
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r1, r0, r2
	adds r0, r1, 0
	adds r0, 0x3F
	ldrb r0, [r0]
	lsls r0, 27
	cmp r0, 0
	bge _0818A092
	movs r2, 0x24
	ldrsh r0, [r1, r2]
	cmp r0, 0
	bne _0818A092
	bl sub_818A514
_0818A092:
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818A064

	thumb_func_start sub_818A0A4
sub_818A0A4: @ 818A0A4
	push {r4-r6,lr}
	ldr r5, =gUnknown_02024064
	ldrb r0, [r5]
	ldr r6, =gUnknown_03005D70
	adds r1, r0, r6
	ldrb r1, [r1]
	movs r2, 0
	movs r3, 0
	bl sub_8074AA0
	adds r4, r0, 0
	lsls r4, 16
	lsrs r4, 16
	ldrb r0, [r5]
	adds r0, r6
	ldrb r0, [r0]
	bl sub_80729D0
	lsls r4, 16
	asrs r1, r4, 16
	movs r0, 0x1
	negs r0, r0
	cmp r1, r0
	beq _0818A0EC
	ldrb r0, [r5]
	adds r0, r6
	ldrb r0, [r0]
	movs r2, 0
	bl heathbar_draw_hp
	b _0818A106
	.pool
_0818A0EC:
	ldr r2, =gUnknown_0202406E
	ldrb r1, [r5]
	lsls r0, r1, 1
	adds r0, r2
	ldrh r2, [r0]
	movs r0, 0x64
	muls r0, r2
	ldr r2, =gPlayerParty
	adds r0, r2
	bl sub_805E990
	bl sub_818A514
_0818A106:
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818A0A4

	thumb_func_start sub_818A114
sub_818A114: @ 818A114
	push {r4-r6,lr}
	ldr r6, =gUnknown_02020630
	ldr r5, =gUnknown_020241E4
	ldr r4, =gUnknown_02024064
	ldrb r2, [r4]
	adds r0, r2, r5
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r6
	movs r3, 0x22
	ldrsh r1, [r0, r3]
	movs r3, 0x26
	ldrsh r0, [r0, r3]
	adds r1, r0
	cmp r1, 0xA0
	ble _0818A190
	ldr r1, =gUnknown_0202406E
	lsls r0, r2, 1
	adds r0, r1
	ldrh r1, [r0]
	movs r0, 0x64
	muls r0, r1
	ldr r1, =gPlayerParty
	adds r0, r1
	movs r1, 0xB
	bl GetMonData
	lsls r0, 16
	lsrs r0, 16
	bl nullsub_24
	ldrb r0, [r4]
	adds r0, r5
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r6
	ldrb r0, [r0, 0x3]
	lsls r0, 26
	lsrs r0, 27
	bl rotscale_free_entry
	ldrb r0, [r4]
	adds r0, r5
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r6
	bl RemoveObjectAndFreeTiles
	ldr r1, =gUnknown_03005D70
	ldrb r0, [r4]
	adds r0, r1
	ldrb r0, [r0]
	bl sub_8072984
	bl sub_818A514
_0818A190:
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818A114

	thumb_func_start sub_818A1B0
sub_818A1B0: @ 818A1B0
	push {r4-r6,lr}
	ldr r0, =gUnknown_020244D0
	ldr r0, [r0]
	ldr r6, =gUnknown_02024064
	ldrb r2, [r6]
	ldr r1, [r0, 0x4]
	lsls r0, r2, 1
	adds r0, r2
	lsls r0, 2
	adds r0, r1
	ldrb r1, [r0]
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	bne _0818A204
	ldr r5, =gUnknown_020241E4
	adds r0, r2, r5
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	ldr r4, =gUnknown_02020630
	adds r0, r4
	bl obj_free_rotscale_entry
	ldrb r0, [r6]
	adds r0, r5
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	bl RemoveObjectAndFreeTiles
	ldr r1, =gUnknown_03005D70
	ldrb r0, [r6]
	adds r0, r1
	ldrb r0, [r0]
	bl sub_8072984
	bl sub_818A514
_0818A204:
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818A1B0

	thumb_func_start sub_818A220
sub_818A220: @ 818A220
	push {lr}
	movs r0, 0
	bl IsTextPrinterActive
	lsls r0, 16
	cmp r0, 0
	bne _0818A232
	bl sub_818A514
_0818A232:
	pop {r0}
	bx r0
	thumb_func_end sub_818A220

	thumb_func_start sub_818A238
sub_818A238: @ 818A238
	push {r4,lr}
	ldr r1, =gUnknown_020241E4
	ldr r0, =gUnknown_02024064
	ldrb r0, [r0]
	adds r0, r1
	ldrb r1, [r0]
	ldr r2, =gUnknown_02020630
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r4, r0, r2
	movs r1, 0x30
	ldrsh r0, [r4, r1]
	cmp r0, 0x20
	bne _0818A284
	movs r3, 0
	movs r0, 0
	strh r0, [r4, 0x30]
	adds r2, r4, 0
	adds r2, 0x3E
	ldrb r1, [r2]
	subs r0, 0x5
	ands r0, r1
	strb r0, [r2]
	ldr r0, =gUnknown_020244B9
	strb r3, [r0]
	bl sub_818A514
	b _0818A2AE
	.pool
_0818A284:
	ldrh r0, [r4, 0x30]
	movs r1, 0x3
	ands r0, r1
	cmp r0, 0
	bne _0818A2A8
	adds r3, r4, 0
	adds r3, 0x3E
	ldrb r2, [r3]
	lsls r0, r2, 29
	lsrs r0, 31
	movs r1, 0x1
	eors r1, r0
	lsls r1, 2
	movs r0, 0x5
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
_0818A2A8:
	ldrh r0, [r4, 0x30]
	adds r0, 0x1
	strh r0, [r4, 0x30]
_0818A2AE:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_818A238

	thumb_func_start sub_818A2B4
sub_818A2B4: @ 818A2B4
	push {r4,lr}
	ldr r2, =gUnknown_02020630
	ldr r0, =gUnknown_03005D70
	ldr r4, =gUnknown_02024064
	ldrb r3, [r4]
	adds r0, r3, r0
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r2, 0x1C
	adds r0, r2
	ldr r1, [r0]
	ldr r0, =DummyObjectCallback
	cmp r1, r0
	bne _0818A306
	adds r0, r3, 0
	bl sub_805E408
	ldr r0, =gUnknown_020244D0
	ldr r0, [r0]
	ldrb r2, [r4]
	ldr r1, [r0]
	lsls r0, r2, 2
	adds r0, r1
	ldrb r1, [r0]
	movs r0, 0x4
	ands r0, r1
	cmp r0, 0
	beq _0818A2FA
	adds r0, r2, 0
	adds r1, r2, 0
	movs r3, 0x6
	bl move_anim_start_t4
_0818A2FA:
	ldr r0, =gUnknown_03005D60
	ldrb r1, [r4]
	lsls r1, 2
	adds r1, r0
	ldr r0, =sub_818A328
	str r0, [r1]
_0818A306:
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818A2B4

	thumb_func_start sub_818A328
sub_818A328: @ 818A328
	push {lr}
	ldr r0, =gUnknown_020244D0
	ldr r1, [r0]
	ldr r0, =gUnknown_02024064
	ldrb r3, [r0]
	ldr r1, [r1, 0x4]
	lsls r0, r3, 1
	adds r0, r3
	lsls r0, 2
	adds r0, r1
	ldrb r1, [r0]
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	bne _0818A364
	ldr r2, =gUnknown_02020630
	ldr r0, =gUnknown_020241E4
	adds r0, r3, r0
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r2, 0x1C
	adds r0, r2
	ldr r1, [r0]
	ldr r0, =DummyObjectCallback
	cmp r1, r0
	bne _0818A364
	bl sub_818A514
_0818A364:
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818A328

	thumb_func_start sub_818A37C
sub_818A37C: @ 818A37C
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	ldr r3, =gUnknown_020244D0
	ldr r0, [r3]
	ldr r7, =gUnknown_02024064
	ldrb r1, [r7]
	ldr r2, [r0, 0x4]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r2, r0, r2
	ldrb r1, [r2, 0x1]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _0818A438
	ldrb r1, [r2]
	movs r0, 0x7F
	ands r0, r1
	strb r0, [r2]
	ldr r0, [r3]
	ldrb r2, [r7]
	ldr r0, [r0, 0x4]
	lsls r1, r2, 1
	adds r1, r2
	lsls r1, 2
	adds r1, r0
	ldrb r2, [r1, 0x1]
	movs r0, 0x2
	negs r0, r0
	ands r0, r2
	strb r0, [r1, 0x1]
	ldr r4, =0x000027f9
	adds r0, r4, 0
	bl FreeObjectTilesByTag
	adds r0, r4, 0
	bl FreeObjectPaletteByTag
	ldr r0, =c3_0802FDF4
	movs r1, 0xA
	bl CreateTask
	ldr r0, =gUnknown_0202406E
	mov r8, r0
	ldrb r1, [r7]
	lsls r0, r1, 1
	add r0, r8
	ldrh r0, [r0]
	movs r6, 0x64
	muls r0, r6
	ldr r5, =gPlayerParty
	adds r0, r5
	bl sub_805E990
	ldr r1, =gUnknown_020241E4
	ldrb r0, [r7]
	adds r0, r1
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	ldr r1, =gUnknown_02020630
	adds r0, r1
	movs r1, 0
	bl StartObjectImageAnim
	ldr r4, =gUnknown_03005D70
	ldrb r1, [r7]
	adds r0, r1, r4
	ldrb r0, [r0]
	lsls r1, 1
	add r1, r8
	ldrh r1, [r1]
	muls r1, r6
	adds r1, r5
	movs r2, 0
	bl healthbar_draw_field_maybe
	ldrb r0, [r7]
	bl sub_8076918
	ldrb r0, [r7]
	adds r0, r4
	ldrb r0, [r0]
	bl sub_80729D0
	ldr r1, =gUnknown_03005D60
	ldrb r0, [r7]
	lsls r0, 2
	adds r0, r1
	ldr r1, =sub_818A2B4
	str r1, [r0]
_0818A438:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818A37C

	thumb_func_start sub_818A470
sub_818A470: @ 818A470
	push {r4-r6,lr}
	ldr r6, =gUnknown_020244D0
	ldr r0, [r6]
	ldr r4, =gUnknown_02024064
	ldrb r2, [r4]
	ldr r1, [r0, 0x4]
	lsls r3, r2, 1
	adds r0, r3, r2
	lsls r0, 2
	adds r0, r1
	ldrb r1, [r0]
	movs r0, 0x88
	ands r0, r1
	cmp r0, 0
	bne _0818A4A2
	ldr r0, =gUnknown_0202406E
	adds r0, r3, r0
	ldrh r1, [r0]
	movs r0, 0x64
	muls r1, r0
	ldr r0, =gPlayerParty
	adds r1, r0
	adds r0, r2, 0
	bl sub_8172EF0
_0818A4A2:
	ldr r5, =gUnknown_02020630
	ldr r0, =gUnknown_03005D7C
	ldrb r2, [r4]
	adds r0, r2, r0
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r3, r0, 2
	adds r0, r5, 0
	adds r0, 0x1C
	adds r0, r3, r0
	ldr r1, [r0]
	ldr r0, =DummyObjectCallback
	cmp r1, r0
	bne _0818A4E8
	ldr r0, [r6]
	ldr r1, [r0, 0x4]
	lsls r0, r2, 1
	adds r0, r2
	lsls r0, 2
	adds r0, r1
	ldrb r1, [r0]
	movs r0, 0x8
	ands r0, r1
	cmp r0, 0
	bne _0818A4E8
	adds r0, r3, r5
	bl RemoveObjectAndFreeTiles
	ldr r1, =gUnknown_03005D60
	ldrb r0, [r4]
	lsls r0, 2
	adds r0, r1
	ldr r1, =sub_818A37C
	str r1, [r0]
_0818A4E8:
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818A470

	thumb_func_start sub_818A514
sub_818A514: @ 818A514
	push {r4,lr}
	sub sp, 0x4
	ldr r1, =gUnknown_03005D60
	ldr r4, =gUnknown_02024064
	ldrb r0, [r4]
	lsls r0, 2
	adds r0, r1
	ldr r1, =sub_8189968
	str r1, [r0]
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x2
	ands r0, r1
	cmp r0, 0
	beq _0818A568
	bl link_get_multiplayer_id
	mov r1, sp
	strb r0, [r1]
	movs r0, 0x2
	movs r1, 0x4
	mov r2, sp
	bl dp01_prepare_buffer_wireless_probably
	ldr r1, =gUnknown_02023064
	ldrb r0, [r4]
	lsls r0, 9
	adds r0, r1
	movs r1, 0x38
	strb r1, [r0]
	b _0818A57A
	.pool
_0818A568:
	ldr r2, =gUnknown_02024068
	ldr r1, =gBitTable
	ldrb r0, [r4]
	lsls r0, 2
	adds r0, r1
	ldr r1, [r0]
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
_0818A57A:
	add sp, 0x4
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818A514

	thumb_func_start sub_818A58C
sub_818A58C: @ 818A58C
	push {lr}
	ldr r0, =gUnknown_020244D0
	ldr r2, [r0]
	ldr r0, =gUnknown_02024064
	ldrb r1, [r0]
	ldr r2, [r2, 0x4]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r1, [r0]
	movs r0, 0x10
	ands r0, r1
	cmp r0, 0
	bne _0818A5AE
	bl sub_818A514
_0818A5AE:
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818A58C

	thumb_func_start sub_818A5BC
sub_818A5BC: @ 818A5BC
	push {lr}
	ldr r0, =gUnknown_020244D0
	ldr r2, [r0]
	ldr r0, =gUnknown_02024064
	ldrb r1, [r0]
	ldr r2, [r2, 0x4]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r1, [r0]
	movs r0, 0x20
	ands r0, r1
	cmp r0, 0
	bne _0818A5DE
	bl sub_818A514
_0818A5DE:
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818A5BC

	thumb_func_start sub_818A5EC
sub_818A5EC: @ 818A5EC
	push {r4-r6,lr}
	sub sp, 0x100
	movs r6, 0
	ldr r1, =gUnknown_02023064
	ldr r0, =gUnknown_02024064
	ldrb r2, [r0]
	lsls r0, r2, 9
	adds r1, 0x2
	adds r1, r0, r1
	ldrb r0, [r1]
	cmp r0, 0
	bne _0818A624
	ldr r0, =gUnknown_0202406E
	lsls r1, r2, 1
	adds r1, r0
	ldrb r0, [r1]
	mov r1, sp
	bl sub_818A660
	adds r6, r0, 0
	b _0818A646
	.pool
_0818A624:
	ldrb r4, [r1]
	movs r5, 0
_0818A628:
	movs r0, 0x1
	ands r0, r4
	cmp r0, 0
	beq _0818A63E
	lsls r0, r5, 24
	lsrs r0, 24
	mov r2, sp
	adds r1, r2, r6
	bl sub_818A660
	adds r6, r0
_0818A63E:
	lsrs r4, 1
	adds r5, 0x1
	cmp r5, 0x5
	ble _0818A628
_0818A646:
	lsls r1, r6, 16
	lsrs r1, 16
	movs r0, 0x1
	mov r2, sp
	bl dp01_build_cmdbuf_x1D_1D_numargs_varargs
	bl sub_818A514
	add sp, 0x100
	pop {r4-r6}
	pop {r0}
	bx r0
	thumb_func_end sub_818A5EC

	thumb_func_start sub_818A660
sub_818A660: @ 818A660
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x90
	adds r7, r1, 0
	lsls r0, 24
	lsrs r5, r0, 24
	movs r6, 0
	ldr r2, =gUnknown_02023064
	ldr r3, =gUnknown_02024064
	ldrb r0, [r3]
	lsls r0, 9
	adds r1, r2, 0x1
	adds r0, r1
	ldrb r0, [r0]
	cmp r0, 0x3B
	bls _0818A68A
	bl _0818ADF6
_0818A68A:
	lsls r0, 2
	ldr r1, =_0818A6A0
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_0818A6A0:
	.4byte _0818A790
	.4byte _0818A9B4
	.4byte _0818A9C4
	.4byte _0818A9D4
	.4byte _0818AA3C
	.4byte _0818AA3C
	.4byte _0818AA3C
	.4byte _0818AA3C
	.4byte _0818AA58
	.4byte _0818AA94
	.4byte _0818AA94
	.4byte _0818AA94
	.4byte _0818AA94
	.4byte _0818ADF6
	.4byte _0818ADF6
	.4byte _0818ADF6
	.4byte _0818ADF6
	.4byte _0818AAB0
	.4byte _0818AAC0
	.4byte _0818AAF0
	.4byte _0818AB00
	.4byte _0818AB10
	.4byte _0818AB20
	.4byte _0818AB30
	.4byte _0818AB40
	.4byte _0818AB50
	.4byte _0818AB60
	.4byte _0818AB70
	.4byte _0818AB80
	.4byte _0818AB90
	.4byte _0818ABA0
	.4byte _0818ABB0
	.4byte _0818AC00
	.4byte _0818AC10
	.4byte _0818AC20
	.4byte _0818AC30
	.4byte _0818AC40
	.4byte _0818AC50
	.4byte _0818AC60
	.4byte _0818AC70
	.4byte _0818AC80
	.4byte _0818ACB4
	.4byte _0818ACC4
	.4byte _0818ACD4
	.4byte _0818ACE4
	.4byte _0818ACF4
	.4byte _0818AD04
	.4byte _0818AD14
	.4byte _0818AD24
	.4byte _0818AD44
	.4byte _0818AD54
	.4byte _0818AD64
	.4byte _0818AD74
	.4byte _0818AD84
	.4byte _0818AD94
	.4byte _0818ADA4
	.4byte _0818ADB4
	.4byte _0818ADC4
	.4byte _0818ADD4
	.4byte _0818ADE4
_0818A790:
	movs r0, 0x64
	adds r4, r5, 0
	muls r4, r0
	ldr r0, =gPlayerParty
	adds r4, r0
	adds r0, r4, 0
	movs r1, 0xB
	bl GetMonData
	mov r1, sp
	strh r0, [r1]
	adds r0, r4, 0
	movs r1, 0xC
	bl GetMonData
	mov r1, sp
	strh r0, [r1, 0x2E]
	movs r6, 0
	add r0, sp, 0x24
	mov r9, r0
	movs r1, 0x3B
	add r1, sp
	mov r10, r1
	mov r2, sp
	adds r2, 0x2B
	str r2, [sp, 0x80]
	mov r0, sp
	adds r0, 0x2A
	str r0, [sp, 0x7C]
	mov r1, sp
	adds r1, 0x68
	str r1, [sp, 0x8C]
	adds r2, 0x5
	str r2, [sp, 0x84]
	adds r0, 0x12
	str r0, [sp, 0x88]
	mov r8, r4
	add r4, sp, 0xC
_0818A7DC:
	adds r1, r6, 0
	adds r1, 0xD
	mov r0, r8
	bl GetMonData
	strh r0, [r4]
	adds r1, r6, 0
	adds r1, 0x11
	mov r0, r8
	bl GetMonData
	mov r2, r9
	adds r1, r2, r6
	strb r0, [r1]
	adds r4, 0x2
	adds r6, 0x1
	cmp r6, 0x3
	ble _0818A7DC
	movs r0, 0x64
	adds r4, r5, 0
	muls r4, r0
	ldr r0, =gPlayerParty
	adds r4, r0
	adds r0, r4, 0
	movs r1, 0x15
	bl GetMonData
	mov r1, r10
	strb r0, [r1]
	adds r0, r4, 0
	movs r1, 0x20
	bl GetMonData
	ldr r2, [sp, 0x80]
	strb r0, [r2]
	adds r0, r4, 0
	movs r1, 0x19
	bl GetMonData
	str r0, [sp, 0x44]
	adds r0, r4, 0
	movs r1, 0x27
	bl GetMonData
	mov r3, sp
	movs r5, 0x1F
	ands r0, r5
	ldrb r2, [r3, 0x14]
	movs r1, 0x20
	negs r1, r1
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, 0x14]
	adds r0, r4, 0
	movs r1, 0x28
	bl GetMonData
	mov r3, sp
	movs r6, 0x1F
	ands r0, r6
	lsls r0, 5
	ldrh r2, [r3, 0x14]
	ldr r1, =0xfffffc1f
	ands r1, r2
	orrs r1, r0
	strh r1, [r3, 0x14]
	adds r0, r4, 0
	movs r1, 0x29
	bl GetMonData
	mov r3, sp
	ands r0, r5
	lsls r0, 2
	ldrb r2, [r3, 0x15]
	movs r1, 0x7D
	negs r1, r1
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, 0x15]
	adds r0, r4, 0
	movs r1, 0x2A
	bl GetMonData
	movs r1, 0x1F
	ands r1, r0
	lsls r1, 15
	ldr r0, [sp, 0x14]
	ldr r2, =0xfff07fff
	ands r0, r2
	orrs r0, r1
	str r0, [sp, 0x14]
	adds r0, r4, 0
	movs r1, 0x2B
	bl GetMonData
	mov r3, sp
	ands r0, r6
	lsls r0, 4
	ldrh r2, [r3, 0x16]
	ldr r1, =0xfffffe0f
	ands r1, r2
	orrs r1, r0
	strh r1, [r3, 0x16]
	adds r0, r4, 0
	movs r1, 0x2C
	bl GetMonData
	mov r3, sp
	ands r0, r5
	lsls r0, 1
	ldrb r2, [r3, 0x17]
	movs r1, 0x3F
	negs r1, r1
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, 0x17]
	adds r0, r4, 0
	movs r1, 0
	bl GetMonData
	str r0, [sp, 0x48]
	adds r0, r4, 0
	movs r1, 0x37
	bl GetMonData
	str r0, [sp, 0x4C]
	adds r0, r4, 0
	movs r1, 0x38
	bl GetMonData
	ldr r1, [sp, 0x7C]
	strb r0, [r1]
	adds r0, r4, 0
	movs r1, 0x39
	bl GetMonData
	mov r1, sp
	strh r0, [r1, 0x28]
	adds r0, r4, 0
	movs r1, 0x3A
	bl GetMonData
	mov r1, sp
	strh r0, [r1, 0x2C]
	adds r0, r4, 0
	movs r1, 0x3B
	bl GetMonData
	mov r1, sp
	strh r0, [r1, 0x2]
	adds r0, r4, 0
	movs r1, 0x3C
	bl GetMonData
	mov r1, sp
	strh r0, [r1, 0x4]
	adds r0, r4, 0
	movs r1, 0x3D
	bl GetMonData
	mov r1, sp
	strh r0, [r1, 0x6]
	adds r0, r4, 0
	movs r1, 0x3E
	bl GetMonData
	mov r1, sp
	strh r0, [r1, 0x8]
	adds r0, r4, 0
	movs r1, 0x3F
	bl GetMonData
	mov r1, sp
	strh r0, [r1, 0xA]
	adds r0, r4, 0
	movs r1, 0x2D
	bl GetMonData
	mov r3, sp
	movs r1, 0x1
	ands r0, r1
	lsls r0, 6
	ldrb r2, [r3, 0x17]
	movs r1, 0x41
	negs r1, r1
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, 0x17]
	adds r0, r4, 0
	movs r1, 0x2E
	bl GetMonData
	mov r3, sp
	lsls r0, 7
	ldrb r2, [r3, 0x17]
	movs r1, 0x7F
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, 0x17]
	adds r0, r4, 0
	movs r1, 0x1
	bl GetMonData
	str r0, [sp, 0x54]
	adds r0, r4, 0
	movs r1, 0x2
	ldr r2, [sp, 0x8C]
	bl GetMonData
	ldr r0, [sp, 0x84]
	ldr r1, [sp, 0x8C]
	bl StringCopy10
	adds r0, r4, 0
	movs r1, 0x7
	ldr r2, [sp, 0x88]
	bl GetMonData
	mov r2, sp
	movs r6, 0
_0818A994:
	adds r0, r7, r6
	adds r1, r2, r6
	ldrb r1, [r1]
	strb r1, [r0]
	adds r6, 0x1
	cmp r6, 0x57
	bls _0818A994
	b _0818ADF6
	.pool
_0818A9B4:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gPlayerParty
	adds r0, r1
	movs r1, 0xB
	b _0818AD2E
	.pool
_0818A9C4:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gPlayerParty
	adds r0, r1
	movs r1, 0xC
	b _0818AD2E
	.pool
_0818A9D4:
	movs r6, 0
	add r2, sp, 0x58
	mov r9, r2
	add r0, sp, 0x60
	mov r10, r0
	movs r0, 0x64
	adds r1, r5, 0
	muls r1, r0
	ldr r0, =gPlayerParty
	adds r4, r1, r0
	mov r8, r9
_0818A9EA:
	adds r1, r6, 0
	adds r1, 0xD
	adds r0, r4, 0
	bl GetMonData
	mov r1, r8
	strh r0, [r1]
	adds r1, r6, 0
	adds r1, 0x11
	adds r0, r4, 0
	bl GetMonData
	mov r2, r10
	adds r1, r2, r6
	strb r0, [r1]
	movs r0, 0x2
	add r8, r0
	adds r6, 0x1
	cmp r6, 0x3
	ble _0818A9EA
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gPlayerParty
	adds r0, r1
	movs r1, 0x15
	bl GetMonData
	mov r1, r9
	strb r0, [r1, 0xC]
	mov r2, r9
	movs r6, 0
_0818AA28:
	adds r0, r7, r6
	adds r1, r2, r6
	ldrb r1, [r1]
	strb r1, [r0]
	adds r6, 0x1
	cmp r6, 0xF
	bls _0818AA28
	b _0818ADF6
	.pool
_0818AA3C:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gPlayerParty
	adds r0, r1
	ldrb r1, [r3]
	lsls r1, 9
	adds r2, 0x1
	adds r1, r2
	ldrb r1, [r1]
	adds r1, 0x9
	b _0818AD2E
	.pool
_0818AA58:
	movs r6, 0
	movs r0, 0x64
	adds r4, r5, 0
	muls r4, r0
	ldr r2, =gPlayerParty
	mov r8, r2
_0818AA64:
	adds r1, r6, 0
	adds r1, 0x11
	mov r2, r8
	adds r0, r4, r2
	bl GetMonData
	adds r1, r7, r6
	strb r0, [r1]
	adds r6, 0x1
	cmp r6, 0x3
	ble _0818AA64
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gPlayerParty
	adds r0, r1
	movs r1, 0x15
	bl GetMonData
	adds r1, r7, r6
	strb r0, [r1]
	adds r6, 0x1
	b _0818ADF6
	.pool
_0818AA94:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gPlayerParty
	adds r0, r1
	ldrb r1, [r3]
	lsls r1, 9
	adds r2, 0x1
	adds r1, r2
	ldrb r1, [r1]
	adds r1, 0x8
	b _0818ADEE
	.pool
_0818AAB0:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gPlayerParty
	adds r0, r1
	movs r1, 0x1
	b _0818AACA
	.pool
_0818AAC0:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gPlayerParty
	adds r0, r1
	movs r1, 0x19
_0818AACA:
	bl GetMonData
	adds r1, r0, 0
	strb r1, [r7]
	movs r0, 0xFF
	lsls r0, 8
	ands r0, r1
	lsrs r0, 8
	strb r0, [r7, 0x1]
	movs r0, 0xFF
	lsls r0, 16
	ands r0, r1
	lsrs r0, 16
	strb r0, [r7, 0x2]
	movs r6, 0x3
	b _0818ADF6
	.pool
_0818AAF0:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gPlayerParty
	adds r0, r1
	movs r1, 0x1A
	b _0818ADEE
	.pool
_0818AB00:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gPlayerParty
	adds r0, r1
	movs r1, 0x1B
	b _0818ADEE
	.pool
_0818AB10:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gPlayerParty
	adds r0, r1
	movs r1, 0x1C
	b _0818ADEE
	.pool
_0818AB20:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gPlayerParty
	adds r0, r1
	movs r1, 0x1D
	b _0818ADEE
	.pool
_0818AB30:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gPlayerParty
	adds r0, r1
	movs r1, 0x1E
	b _0818ADEE
	.pool
_0818AB40:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gPlayerParty
	adds r0, r1
	movs r1, 0x1F
	b _0818ADEE
	.pool
_0818AB50:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gPlayerParty
	adds r0, r1
	movs r1, 0x20
	b _0818ADEE
	.pool
_0818AB60:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gPlayerParty
	adds r0, r1
	movs r1, 0x22
	b _0818ADEE
	.pool
_0818AB70:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gPlayerParty
	adds r0, r1
	movs r1, 0x23
	b _0818ADEE
	.pool
_0818AB80:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gPlayerParty
	adds r0, r1
	movs r1, 0x24
	b _0818ADEE
	.pool
_0818AB90:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gPlayerParty
	adds r0, r1
	movs r1, 0x25
	b _0818ADEE
	.pool
_0818ABA0:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gPlayerParty
	adds r0, r1
	movs r1, 0x26
	b _0818ADEE
	.pool
_0818ABB0:
	movs r0, 0x64
	adds r4, r5, 0
	muls r4, r0
	ldr r0, =gPlayerParty
	adds r4, r0
	adds r0, r4, 0
	movs r1, 0x27
	bl GetMonData
	strb r0, [r7]
	adds r0, r4, 0
	movs r1, 0x28
	bl GetMonData
	strb r0, [r7, 0x1]
	adds r0, r4, 0
	movs r1, 0x29
	bl GetMonData
	strb r0, [r7, 0x2]
	adds r0, r4, 0
	movs r1, 0x2A
	bl GetMonData
	strb r0, [r7, 0x3]
	adds r0, r4, 0
	movs r1, 0x2B
	bl GetMonData
	strb r0, [r7, 0x4]
	adds r0, r4, 0
	movs r1, 0x2C
	bl GetMonData
	strb r0, [r7, 0x5]
	movs r6, 0x6
	b _0818ADF6
	.pool
_0818AC00:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gPlayerParty
	adds r0, r1
	movs r1, 0x27
	b _0818ADEE
	.pool
_0818AC10:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gPlayerParty
	adds r0, r1
	movs r1, 0x28
	b _0818ADEE
	.pool
_0818AC20:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gPlayerParty
	adds r0, r1
	movs r1, 0x29
	b _0818ADEE
	.pool
_0818AC30:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gPlayerParty
	adds r0, r1
	movs r1, 0x2A
	b _0818ADEE
	.pool
_0818AC40:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gPlayerParty
	adds r0, r1
	movs r1, 0x2B
	b _0818ADEE
	.pool
_0818AC50:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gPlayerParty
	adds r0, r1
	movs r1, 0x2C
	b _0818ADEE
	.pool
_0818AC60:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gPlayerParty
	adds r0, r1
	movs r1, 0
	b _0818AC8A
	.pool
_0818AC70:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gPlayerParty
	adds r0, r1
	movs r1, 0x9
	b _0818AD2E
	.pool
_0818AC80:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gPlayerParty
	adds r0, r1
	movs r1, 0x37
_0818AC8A:
	bl GetMonData
	adds r1, r0, 0
	strb r1, [r7]
	movs r0, 0xFF
	lsls r0, 8
	ands r0, r1
	lsrs r0, 8
	strb r0, [r7, 0x1]
	movs r0, 0xFF
	lsls r0, 16
	ands r0, r1
	lsrs r0, 16
	strb r0, [r7, 0x2]
	lsrs r0, r1, 24
	strb r0, [r7, 0x3]
	movs r6, 0x4
	b _0818ADF6
	.pool
_0818ACB4:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gPlayerParty
	adds r0, r1
	movs r1, 0x38
	b _0818ADEE
	.pool
_0818ACC4:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gPlayerParty
	adds r0, r1
	movs r1, 0x39
	b _0818AD2E
	.pool
_0818ACD4:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gPlayerParty
	adds r0, r1
	movs r1, 0x3A
	b _0818AD2E
	.pool
_0818ACE4:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gPlayerParty
	adds r0, r1
	movs r1, 0x3B
	b _0818AD2E
	.pool
_0818ACF4:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gPlayerParty
	adds r0, r1
	movs r1, 0x3C
	b _0818AD2E
	.pool
_0818AD04:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gPlayerParty
	adds r0, r1
	movs r1, 0x3D
	b _0818AD2E
	.pool
_0818AD14:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gPlayerParty
	adds r0, r1
	movs r1, 0x3E
	b _0818AD2E
	.pool
_0818AD24:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gPlayerParty
	adds r0, r1
	movs r1, 0x3F
_0818AD2E:
	bl GetMonData
	lsls r0, 16
	lsrs r0, 16
	strb r0, [r7]
	lsrs r0, 8
	strb r0, [r7, 0x1]
	movs r6, 0x2
	b _0818ADF6
	.pool
_0818AD44:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gPlayerParty
	adds r0, r1
	movs r1, 0x16
	b _0818ADEE
	.pool
_0818AD54:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gPlayerParty
	adds r0, r1
	movs r1, 0x17
	b _0818ADEE
	.pool
_0818AD64:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gPlayerParty
	adds r0, r1
	movs r1, 0x18
	b _0818ADEE
	.pool
_0818AD74:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gPlayerParty
	adds r0, r1
	movs r1, 0x21
	b _0818ADEE
	.pool
_0818AD84:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gPlayerParty
	adds r0, r1
	movs r1, 0x2F
	b _0818ADEE
	.pool
_0818AD94:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gPlayerParty
	adds r0, r1
	movs r1, 0x30
	b _0818ADEE
	.pool
_0818ADA4:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gPlayerParty
	adds r0, r1
	movs r1, 0x32
	b _0818ADEE
	.pool
_0818ADB4:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gPlayerParty
	adds r0, r1
	movs r1, 0x33
	b _0818ADEE
	.pool
_0818ADC4:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gPlayerParty
	adds r0, r1
	movs r1, 0x34
	b _0818ADEE
	.pool
_0818ADD4:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gPlayerParty
	adds r0, r1
	movs r1, 0x35
	b _0818ADEE
	.pool
_0818ADE4:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gPlayerParty
	adds r0, r1
	movs r1, 0x36
_0818ADEE:
	bl GetMonData
	strb r0, [r7]
	movs r6, 0x1
_0818ADF6:
	adds r0, r6, 0
	add sp, 0x90
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_818A660

	thumb_func_start sub_818AE0C
sub_818AE0C: @ 818AE0C
	push {lr}
	bl sub_818A514
	pop {r0}
	bx r0
	thumb_func_end sub_818AE0C

	thumb_func_start sub_818AE18
sub_818AE18: @ 818AE18
	push {r4,r5,lr}
	ldr r1, =gUnknown_02023064
	ldr r0, =gUnknown_02024064
	ldrb r2, [r0]
	lsls r0, r2, 9
	adds r1, 0x2
	adds r1, r0, r1
	ldrb r0, [r1]
	cmp r0, 0
	bne _0818AE48
	ldr r0, =gUnknown_0202406E
	lsls r1, r2, 1
	adds r1, r0
	ldrb r0, [r1]
	bl sub_818AE70
	b _0818AE66
	.pool
_0818AE48:
	ldrb r4, [r1]
	movs r5, 0
_0818AE4C:
	movs r0, 0x1
	ands r0, r4
	cmp r0, 0
	beq _0818AE5A
	adds r0, r5, 0
	bl sub_818AE70
_0818AE5A:
	lsrs r4, 1
	adds r0, r5, 0x1
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, 0x5
	bls _0818AE4C
_0818AE66:
	bl sub_818A514
	pop {r4,r5}
	pop {r0}
	bx r0
	thumb_func_end sub_818AE18

	thumb_func_start sub_818AE70
sub_818AE70: @ 818AE70
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x34
	lsls r0, 24
	lsrs r5, r0, 24
	ldr r0, =gUnknown_02024064
	ldrb r0, [r0]
	lsls r0, 9
	ldr r2, =gUnknown_02023067
	adds r3, r0, r2
	adds r6, r3, 0
	subs r1, r2, 0x2
	adds r0, r1
	ldrb r0, [r0]
	adds r7, r2, 0
	cmp r0, 0x3B
	bls _0818AE9C
	bl _0818B836
_0818AE9C:
	lsls r0, 2
	ldr r1, =_0818AEB4
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_0818AEB4:
	.4byte _0818AFA4
	.4byte _0818B13C
	.4byte _0818B15C
	.4byte _0818B17C
	.4byte _0818B1D4
	.4byte _0818B1D4
	.4byte _0818B1D4
	.4byte _0818B1D4
	.4byte _0818B1FC
	.4byte _0818B260
	.4byte _0818B260
	.4byte _0818B260
	.4byte _0818B260
	.4byte _0818B836
	.4byte _0818B836
	.4byte _0818B836
	.4byte _0818B836
	.4byte _0818B290
	.4byte _0818B2B0
	.4byte _0818B2D0
	.4byte _0818B2F0
	.4byte _0818B310
	.4byte _0818B330
	.4byte _0818B350
	.4byte _0818B370
	.4byte _0818B390
	.4byte _0818B3B0
	.4byte _0818B3D0
	.4byte _0818B3F0
	.4byte _0818B410
	.4byte _0818B430
	.4byte _0818B450
	.4byte _0818B4C0
	.4byte _0818B4E0
	.4byte _0818B500
	.4byte _0818B520
	.4byte _0818B540
	.4byte _0818B560
	.4byte _0818B580
	.4byte _0818B5A0
	.4byte _0818B5C0
	.4byte _0818B5E0
	.4byte _0818B600
	.4byte _0818B620
	.4byte _0818B640
	.4byte _0818B660
	.4byte _0818B680
	.4byte _0818B6A0
	.4byte _0818B6C0
	.4byte _0818B6E0
	.4byte _0818B700
	.4byte _0818B720
	.4byte _0818B740
	.4byte _0818B760
	.4byte _0818B780
	.4byte _0818B7A0
	.4byte _0818B7C0
	.4byte _0818B7E0
	.4byte _0818B800
	.4byte _0818B820
_0818AFA4:
	movs r0, 0x64
	adds r4, r5, 0
	muls r4, r0
	ldr r0, =gPlayerParty
	adds r4, r0
	adds r0, r4, 0
	movs r1, 0xB
	adds r2, r6, 0
	bl pokemon_setattr
	adds r2, r6, 0
	adds r2, 0x2E
	adds r0, r4, 0
	movs r1, 0xC
	bl pokemon_setattr
	movs r0, 0
	mov r8, r0
	movs r0, 0x3B
	adds r0, r6
	mov r10, r0
	adds r0, r6, 0
	adds r0, 0x2B
	str r0, [sp, 0x20]
	adds r0, 0x19
	str r0, [sp, 0x28]
	adds r0, 0x4
	str r0, [sp, 0x2C]
	adds r0, 0x4
	str r0, [sp, 0x30]
	subs r0, 0x22
	str r0, [sp, 0x1C]
	subs r0, 0x2
	str r0, [sp, 0x18]
	adds r0, 0x4
	str r0, [sp, 0x24]
	adds r0, r6, 0x2
	str r0, [sp, 0x4]
	adds r0, r6, 0x4
	str r0, [sp, 0x8]
	adds r0, r6, 0x6
	str r0, [sp, 0xC]
	adds r0, 0x2
	str r0, [sp, 0x10]
	adds r0, 0x2
	str r0, [sp, 0x14]
	mov r9, r4
	adds r7, r6, 0
	adds r7, 0x24
	adds r4, r6, 0
	adds r4, 0xC
_0818B00A:
	mov r1, r8
	adds r1, 0xD
	mov r0, r9
	adds r2, r4, 0
	bl pokemon_setattr
	mov r1, r8
	adds r1, 0x11
	mov r0, r9
	adds r2, r7, 0
	bl pokemon_setattr
	adds r7, 0x1
	adds r4, 0x2
	movs r0, 0x1
	add r8, r0
	mov r0, r8
	cmp r0, 0x3
	ble _0818B00A
	movs r0, 0x64
	adds r4, r5, 0
	muls r4, r0
	ldr r0, =gPlayerParty
	adds r4, r0
	adds r0, r4, 0
	movs r1, 0x15
	mov r2, r10
	bl pokemon_setattr
	adds r0, r4, 0
	movs r1, 0x20
	ldr r2, [sp, 0x20]
	bl pokemon_setattr
	adds r0, r4, 0
	movs r1, 0x19
	ldr r2, [sp, 0x28]
	bl pokemon_setattr
	ldrb r0, [r6, 0x14]
	lsls r0, 27
	lsrs r0, 27
	mov r1, sp
	strb r0, [r1]
	adds r0, r4, 0
	movs r1, 0x27
	mov r2, sp
	bl pokemon_setattr
	mov r1, sp
	ldrh r0, [r6, 0x14]
	lsls r0, 22
	lsrs r0, 27
	strb r0, [r1]
	adds r0, r4, 0
	movs r1, 0x28
	mov r2, sp
	bl pokemon_setattr
	mov r1, sp
	ldrb r0, [r6, 0x15]
	lsls r0, 25
	lsrs r0, 27
	strb r0, [r1]
	adds r0, r4, 0
	movs r1, 0x29
	mov r2, sp
	bl pokemon_setattr
	mov r1, sp
	ldr r0, [r6, 0x14]
	lsls r0, 12
	lsrs r0, 27
	strb r0, [r1]
	adds r0, r4, 0
	movs r1, 0x2A
	mov r2, sp
	bl pokemon_setattr
	mov r1, sp
	ldrh r0, [r6, 0x16]
	lsls r0, 23
	lsrs r0, 27
	strb r0, [r1]
	adds r0, r4, 0
	movs r1, 0x2B
	mov r2, sp
	bl pokemon_setattr
	mov r1, sp
	ldrb r0, [r6, 0x17]
	lsls r0, 26
	lsrs r0, 27
	strb r0, [r1]
	adds r0, r4, 0
	movs r1, 0x2C
	mov r2, sp
	bl pokemon_setattr
	adds r0, r4, 0
	movs r1, 0
	ldr r2, [sp, 0x2C]
	bl pokemon_setattr
	adds r0, r4, 0
	movs r1, 0x37
	ldr r2, [sp, 0x30]
	bl pokemon_setattr
	adds r0, r4, 0
	movs r1, 0x38
	ldr r2, [sp, 0x1C]
	bl pokemon_setattr
	adds r0, r4, 0
	movs r1, 0x39
	ldr r2, [sp, 0x18]
	bl pokemon_setattr
	adds r0, r4, 0
	movs r1, 0x3A
	ldr r2, [sp, 0x24]
	bl pokemon_setattr
	adds r0, r4, 0
	movs r1, 0x3B
	ldr r2, [sp, 0x4]
	bl pokemon_setattr
	adds r0, r4, 0
	movs r1, 0x3C
	ldr r2, [sp, 0x8]
	bl pokemon_setattr
	adds r0, r4, 0
	movs r1, 0x3D
	ldr r2, [sp, 0xC]
	bl pokemon_setattr
	adds r0, r4, 0
	movs r1, 0x3E
	ldr r2, [sp, 0x10]
	bl pokemon_setattr
	adds r0, r4, 0
	movs r1, 0x3F
	ldr r2, [sp, 0x14]
	bl pokemon_setattr
	b _0818B836
	.pool
_0818B13C:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gPlayerParty
	adds r0, r1
	ldr r1, =gUnknown_02024064
	ldrb r2, [r1]
	lsls r2, 9
	adds r2, r7
	movs r1, 0xB
	bl pokemon_setattr
	b _0818B836
	.pool
_0818B15C:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gPlayerParty
	adds r0, r1
	ldr r1, =gUnknown_02024064
	ldrb r2, [r1]
	lsls r2, 9
	adds r2, r7
	movs r1, 0xC
	bl pokemon_setattr
	b _0818B836
	.pool
_0818B17C:
	movs r0, 0
	mov r8, r0
	movs r0, 0xC
	adds r0, r3
	mov r9, r0
	movs r0, 0x64
	adds r1, r5, 0
	muls r1, r0
	ldr r0, =gPlayerParty
	adds r7, r1, r0
	adds r6, r3, 0
	adds r6, 0x8
	adds r4, r3, 0
_0818B196:
	mov r1, r8
	adds r1, 0xD
	adds r0, r7, 0
	adds r2, r4, 0
	bl pokemon_setattr
	mov r1, r8
	adds r1, 0x11
	adds r0, r7, 0
	adds r2, r6, 0
	bl pokemon_setattr
	adds r6, 0x1
	adds r4, 0x2
	movs r0, 0x1
	add r8, r0
	mov r0, r8
	cmp r0, 0x3
	ble _0818B196
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gPlayerParty
	adds r0, r1
	movs r1, 0x15
	mov r2, r9
	bl pokemon_setattr
	b _0818B836
	.pool
_0818B1D4:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gPlayerParty
	adds r0, r1
	ldr r3, =gUnknown_02023064
	ldr r1, =gUnknown_02024064
	ldrb r2, [r1]
	lsls r2, 9
	adds r1, r3, 0x1
	adds r1, r2, r1
	ldrb r1, [r1]
	adds r1, 0x9
	b _0818B278
	.pool
_0818B1FC:
	movs r0, 0x64
	adds r4, r5, 0
	muls r4, r0
	ldr r0, =gPlayerParty
	adds r4, r0
	ldr r5, =gUnknown_02024064
	ldrb r2, [r5]
	lsls r2, 9
	adds r2, r7
	adds r0, r4, 0
	movs r1, 0x11
	bl pokemon_setattr
	ldrb r2, [r5]
	lsls r2, 9
	adds r0, r7, 0x1
	adds r2, r0
	adds r0, r4, 0
	movs r1, 0x12
	bl pokemon_setattr
	ldrb r2, [r5]
	lsls r2, 9
	adds r0, r7, 0x2
	adds r2, r0
	adds r0, r4, 0
	movs r1, 0x13
	bl pokemon_setattr
	ldrb r2, [r5]
	lsls r2, 9
	adds r0, r7, 0x3
	adds r2, r0
	adds r0, r4, 0
	movs r1, 0x14
	bl pokemon_setattr
	ldrb r2, [r5]
	lsls r2, 9
	adds r0, r7, 0x4
	adds r2, r0
	adds r0, r4, 0
	movs r1, 0x15
	bl pokemon_setattr
	b _0818B836
	.pool
_0818B260:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gPlayerParty
	adds r0, r1
	ldr r3, =gUnknown_02023064
	ldr r1, =gUnknown_02024064
	ldrb r2, [r1]
	lsls r2, 9
	adds r1, r3, 0x1
	adds r1, r2, r1
	ldrb r1, [r1]
	adds r1, 0x8
_0818B278:
	adds r3, 0x3
	adds r2, r3
	bl pokemon_setattr
	b _0818B836
	.pool
_0818B290:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gPlayerParty
	adds r0, r1
	ldr r1, =gUnknown_02024064
	ldrb r2, [r1]
	lsls r2, 9
	adds r2, r7
	movs r1, 0x1
	bl pokemon_setattr
	b _0818B836
	.pool
_0818B2B0:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gPlayerParty
	adds r0, r1
	ldr r1, =gUnknown_02024064
	ldrb r2, [r1]
	lsls r2, 9
	adds r2, r7
	movs r1, 0x19
	bl pokemon_setattr
	b _0818B836
	.pool
_0818B2D0:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gPlayerParty
	adds r0, r1
	ldr r1, =gUnknown_02024064
	ldrb r2, [r1]
	lsls r2, 9
	adds r2, r7
	movs r1, 0x1A
	bl pokemon_setattr
	b _0818B836
	.pool
_0818B2F0:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gPlayerParty
	adds r0, r1
	ldr r1, =gUnknown_02024064
	ldrb r2, [r1]
	lsls r2, 9
	adds r2, r7
	movs r1, 0x1B
	bl pokemon_setattr
	b _0818B836
	.pool
_0818B310:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gPlayerParty
	adds r0, r1
	ldr r1, =gUnknown_02024064
	ldrb r2, [r1]
	lsls r2, 9
	adds r2, r7
	movs r1, 0x1C
	bl pokemon_setattr
	b _0818B836
	.pool
_0818B330:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gPlayerParty
	adds r0, r1
	ldr r1, =gUnknown_02024064
	ldrb r2, [r1]
	lsls r2, 9
	adds r2, r7
	movs r1, 0x1D
	bl pokemon_setattr
	b _0818B836
	.pool
_0818B350:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gPlayerParty
	adds r0, r1
	ldr r1, =gUnknown_02024064
	ldrb r2, [r1]
	lsls r2, 9
	adds r2, r7
	movs r1, 0x1E
	bl pokemon_setattr
	b _0818B836
	.pool
_0818B370:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gPlayerParty
	adds r0, r1
	ldr r1, =gUnknown_02024064
	ldrb r2, [r1]
	lsls r2, 9
	adds r2, r7
	movs r1, 0x1F
	bl pokemon_setattr
	b _0818B836
	.pool
_0818B390:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gPlayerParty
	adds r0, r1
	ldr r1, =gUnknown_02024064
	ldrb r2, [r1]
	lsls r2, 9
	adds r2, r7
	movs r1, 0x20
	bl pokemon_setattr
	b _0818B836
	.pool
_0818B3B0:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gPlayerParty
	adds r0, r1
	ldr r1, =gUnknown_02024064
	ldrb r2, [r1]
	lsls r2, 9
	adds r2, r7
	movs r1, 0x22
	bl pokemon_setattr
	b _0818B836
	.pool
_0818B3D0:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gPlayerParty
	adds r0, r1
	ldr r1, =gUnknown_02024064
	ldrb r2, [r1]
	lsls r2, 9
	adds r2, r7
	movs r1, 0x23
	bl pokemon_setattr
	b _0818B836
	.pool
_0818B3F0:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gPlayerParty
	adds r0, r1
	ldr r1, =gUnknown_02024064
	ldrb r2, [r1]
	lsls r2, 9
	adds r2, r7
	movs r1, 0x24
	bl pokemon_setattr
	b _0818B836
	.pool
_0818B410:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gPlayerParty
	adds r0, r1
	ldr r1, =gUnknown_02024064
	ldrb r2, [r1]
	lsls r2, 9
	adds r2, r7
	movs r1, 0x25
	bl pokemon_setattr
	b _0818B836
	.pool
_0818B430:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gPlayerParty
	adds r0, r1
	ldr r1, =gUnknown_02024064
	ldrb r2, [r1]
	lsls r2, 9
	adds r2, r7
	movs r1, 0x26
	bl pokemon_setattr
	b _0818B836
	.pool
_0818B450:
	movs r0, 0x64
	adds r4, r5, 0
	muls r4, r0
	ldr r0, =gPlayerParty
	adds r4, r0
	ldr r5, =gUnknown_02024064
	ldrb r2, [r5]
	lsls r2, 9
	adds r2, r7
	adds r0, r4, 0
	movs r1, 0x27
	bl pokemon_setattr
	ldrb r2, [r5]
	lsls r2, 9
	adds r0, r7, 0x1
	adds r2, r0
	adds r0, r4, 0
	movs r1, 0x28
	bl pokemon_setattr
	ldrb r2, [r5]
	lsls r2, 9
	adds r0, r7, 0x2
	adds r2, r0
	adds r0, r4, 0
	movs r1, 0x29
	bl pokemon_setattr
	ldrb r2, [r5]
	lsls r2, 9
	adds r0, r7, 0x3
	adds r2, r0
	adds r0, r4, 0
	movs r1, 0x2A
	bl pokemon_setattr
	ldrb r2, [r5]
	lsls r2, 9
	adds r0, r7, 0x4
	adds r2, r0
	adds r0, r4, 0
	movs r1, 0x2B
	bl pokemon_setattr
	ldrb r2, [r5]
	lsls r2, 9
	adds r0, r7, 0x5
	adds r2, r0
	adds r0, r4, 0
	b _0818B570
	.pool
_0818B4C0:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gPlayerParty
	adds r0, r1
	ldr r1, =gUnknown_02024064
	ldrb r2, [r1]
	lsls r2, 9
	adds r2, r7
	movs r1, 0x27
	bl pokemon_setattr
	b _0818B836
	.pool
_0818B4E0:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gPlayerParty
	adds r0, r1
	ldr r1, =gUnknown_02024064
	ldrb r2, [r1]
	lsls r2, 9
	adds r2, r7
	movs r1, 0x28
	bl pokemon_setattr
	b _0818B836
	.pool
_0818B500:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gPlayerParty
	adds r0, r1
	ldr r1, =gUnknown_02024064
	ldrb r2, [r1]
	lsls r2, 9
	adds r2, r7
	movs r1, 0x29
	bl pokemon_setattr
	b _0818B836
	.pool
_0818B520:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gPlayerParty
	adds r0, r1
	ldr r1, =gUnknown_02024064
	ldrb r2, [r1]
	lsls r2, 9
	adds r2, r7
	movs r1, 0x2A
	bl pokemon_setattr
	b _0818B836
	.pool
_0818B540:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gPlayerParty
	adds r0, r1
	ldr r1, =gUnknown_02024064
	ldrb r2, [r1]
	lsls r2, 9
	adds r2, r7
	movs r1, 0x2B
	bl pokemon_setattr
	b _0818B836
	.pool
_0818B560:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gPlayerParty
	adds r0, r1
	ldr r1, =gUnknown_02024064
	ldrb r2, [r1]
	lsls r2, 9
	adds r2, r7
_0818B570:
	movs r1, 0x2C
	bl pokemon_setattr
	b _0818B836
	.pool
_0818B580:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gPlayerParty
	adds r0, r1
	ldr r1, =gUnknown_02024064
	ldrb r2, [r1]
	lsls r2, 9
	adds r2, r7
	movs r1, 0
	bl pokemon_setattr
	b _0818B836
	.pool
_0818B5A0:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gPlayerParty
	adds r0, r1
	ldr r1, =gUnknown_02024064
	ldrb r2, [r1]
	lsls r2, 9
	adds r2, r7
	movs r1, 0x9
	bl pokemon_setattr
	b _0818B836
	.pool
_0818B5C0:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gPlayerParty
	adds r0, r1
	ldr r1, =gUnknown_02024064
	ldrb r2, [r1]
	lsls r2, 9
	adds r2, r7
	movs r1, 0x37
	bl pokemon_setattr
	b _0818B836
	.pool
_0818B5E0:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gPlayerParty
	adds r0, r1
	ldr r1, =gUnknown_02024064
	ldrb r2, [r1]
	lsls r2, 9
	adds r2, r7
	movs r1, 0x38
	bl pokemon_setattr
	b _0818B836
	.pool
_0818B600:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gPlayerParty
	adds r0, r1
	ldr r1, =gUnknown_02024064
	ldrb r2, [r1]
	lsls r2, 9
	adds r2, r7
	movs r1, 0x39
	bl pokemon_setattr
	b _0818B836
	.pool
_0818B620:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gPlayerParty
	adds r0, r1
	ldr r1, =gUnknown_02024064
	ldrb r2, [r1]
	lsls r2, 9
	adds r2, r7
	movs r1, 0x3A
	bl pokemon_setattr
	b _0818B836
	.pool
_0818B640:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gPlayerParty
	adds r0, r1
	ldr r1, =gUnknown_02024064
	ldrb r2, [r1]
	lsls r2, 9
	adds r2, r7
	movs r1, 0x3B
	bl pokemon_setattr
	b _0818B836
	.pool
_0818B660:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gPlayerParty
	adds r0, r1
	ldr r1, =gUnknown_02024064
	ldrb r2, [r1]
	lsls r2, 9
	adds r2, r7
	movs r1, 0x3C
	bl pokemon_setattr
	b _0818B836
	.pool
_0818B680:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gPlayerParty
	adds r0, r1
	ldr r1, =gUnknown_02024064
	ldrb r2, [r1]
	lsls r2, 9
	adds r2, r7
	movs r1, 0x3D
	bl pokemon_setattr
	b _0818B836
	.pool
_0818B6A0:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gPlayerParty
	adds r0, r1
	ldr r1, =gUnknown_02024064
	ldrb r2, [r1]
	lsls r2, 9
	adds r2, r7
	movs r1, 0x3E
	bl pokemon_setattr
	b _0818B836
	.pool
_0818B6C0:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gPlayerParty
	adds r0, r1
	ldr r1, =gUnknown_02024064
	ldrb r2, [r1]
	lsls r2, 9
	adds r2, r7
	movs r1, 0x3F
	bl pokemon_setattr
	b _0818B836
	.pool
_0818B6E0:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gPlayerParty
	adds r0, r1
	ldr r1, =gUnknown_02024064
	ldrb r2, [r1]
	lsls r2, 9
	adds r2, r7
	movs r1, 0x16
	bl pokemon_setattr
	b _0818B836
	.pool
_0818B700:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gPlayerParty
	adds r0, r1
	ldr r1, =gUnknown_02024064
	ldrb r2, [r1]
	lsls r2, 9
	adds r2, r7
	movs r1, 0x17
	bl pokemon_setattr
	b _0818B836
	.pool
_0818B720:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gPlayerParty
	adds r0, r1
	ldr r1, =gUnknown_02024064
	ldrb r2, [r1]
	lsls r2, 9
	adds r2, r7
	movs r1, 0x18
	bl pokemon_setattr
	b _0818B836
	.pool
_0818B740:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gPlayerParty
	adds r0, r1
	ldr r1, =gUnknown_02024064
	ldrb r2, [r1]
	lsls r2, 9
	adds r2, r7
	movs r1, 0x21
	bl pokemon_setattr
	b _0818B836
	.pool
_0818B760:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gPlayerParty
	adds r0, r1
	ldr r1, =gUnknown_02024064
	ldrb r2, [r1]
	lsls r2, 9
	adds r2, r7
	movs r1, 0x2F
	bl pokemon_setattr
	b _0818B836
	.pool
_0818B780:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gPlayerParty
	adds r0, r1
	ldr r1, =gUnknown_02024064
	ldrb r2, [r1]
	lsls r2, 9
	adds r2, r7
	movs r1, 0x30
	bl pokemon_setattr
	b _0818B836
	.pool
_0818B7A0:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gPlayerParty
	adds r0, r1
	ldr r1, =gUnknown_02024064
	ldrb r2, [r1]
	lsls r2, 9
	adds r2, r7
	movs r1, 0x32
	bl pokemon_setattr
	b _0818B836
	.pool
_0818B7C0:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gPlayerParty
	adds r0, r1
	ldr r1, =gUnknown_02024064
	ldrb r2, [r1]
	lsls r2, 9
	adds r2, r7
	movs r1, 0x33
	bl pokemon_setattr
	b _0818B836
	.pool
_0818B7E0:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gPlayerParty
	adds r0, r1
	ldr r1, =gUnknown_02024064
	ldrb r2, [r1]
	lsls r2, 9
	adds r2, r7
	movs r1, 0x34
	bl pokemon_setattr
	b _0818B836
	.pool
_0818B800:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gPlayerParty
	adds r0, r1
	ldr r1, =gUnknown_02024064
	ldrb r2, [r1]
	lsls r2, 9
	adds r2, r7
	movs r1, 0x35
	bl pokemon_setattr
	b _0818B836
	.pool
_0818B820:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gPlayerParty
	adds r0, r1
	ldr r1, =gUnknown_02024064
	ldrb r2, [r1]
	lsls r2, 9
	adds r2, r7
	movs r1, 0x36
	bl pokemon_setattr
_0818B836:
	ldr r2, =gUnknown_0202406E
	ldr r0, =gUnknown_02024064
	ldrb r1, [r0]
	lsls r0, r1, 1
	adds r0, r2
	ldrh r2, [r0]
	movs r0, 0x64
	muls r0, r2
	ldr r2, =gPlayerParty
	adds r0, r2
	bl sub_805E990
	add sp, 0x34
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818AE70

	thumb_func_start sub_818B86C
sub_818B86C: @ 818B86C
	push {r4-r7,lr}
	ldr r1, =gUnknown_0202406E
	ldr r7, =gUnknown_02024064
	ldrb r2, [r7]
	lsls r0, r2, 1
	adds r0, r1
	ldrh r1, [r0]
	movs r0, 0x64
	adds r3, r1, 0
	muls r3, r0
	ldr r4, =gUnknown_02023064
	lsls r2, 9
	adds r0, r4, 0x1
	adds r0, r2, r0
	ldrb r0, [r0]
	ldr r1, =gPlayerParty
	adds r0, r1
	adds r5, r3, r0
	movs r3, 0
	adds r0, r4, 0x2
	adds r2, r0
	ldrb r2, [r2]
	cmp r3, r2
	bcs _0818B8C4
	adds r6, r4, 0
	adds r2, r7, 0
	adds r4, r0, 0
_0818B8A2:
	adds r1, r5, r3
	ldrb r0, [r2]
	lsls r0, 9
	adds r0, 0x3
	adds r0, r3, r0
	adds r0, r6
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r3, 0x1
	lsls r0, 24
	lsrs r3, r0, 24
	ldrb r0, [r2]
	lsls r0, 9
	adds r0, r4
	ldrb r0, [r0]
	cmp r3, r0
	bcc _0818B8A2
_0818B8C4:
	bl sub_818A514
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818B86C

	thumb_func_start sub_818B8E0
sub_818B8E0: @ 818B8E0
	push {r4-r6,lr}
	mov r6, r8
	push {r6}
	ldr r0, =gUnknown_0202406E
	mov r8, r0
	ldr r6, =gUnknown_02024064
	ldrb r1, [r6]
	lsls r0, r1, 1
	add r0, r8
	ldrh r0, [r0]
	movs r5, 0x64
	muls r0, r5
	ldr r4, =gPlayerParty
	adds r0, r4
	bl sub_805DD7C
	ldrb r0, [r6]
	lsls r0, 1
	add r0, r8
	ldrh r0, [r0]
	muls r0, r5
	adds r0, r4
	movs r1, 0xB
	bl GetMonData
	adds r4, r0, 0
	lsls r4, 16
	lsrs r4, 16
	ldrb r0, [r6]
	bl battle_get_per_side_status
	adds r1, r0, 0
	lsls r1, 24
	lsrs r1, 24
	adds r0, r4, 0
	bl sub_806A068
	ldr r0, =gUnknown_0202499C
	mov r8, r0
	ldrb r0, [r6]
	movs r1, 0x2
	bl sub_80A5C6C
	adds r5, r0, 0
	lsls r5, 24
	lsrs r5, 24
	ldrb r0, [r6]
	bl sub_80A6138
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	ldrb r0, [r6]
	bl sub_80A82E4
	adds r3, r0, 0
	lsls r3, 24
	lsrs r3, 24
	mov r0, r8
	adds r1, r5, 0
	adds r2, r4, 0
	bl AddObjectToFront
	ldr r4, =gUnknown_020241E4
	ldrb r1, [r6]
	adds r1, r4
	strb r0, [r1]
	ldr r5, =gUnknown_02020630
	ldrb r0, [r6]
	adds r0, r4
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	ldr r1, =0x0000ff10
	strh r1, [r0, 0x24]
	ldrb r2, [r6]
	adds r0, r2, r4
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	strh r2, [r0, 0x2E]
	ldrb r3, [r6]
	adds r0, r3, r4
	ldrb r0, [r0]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r5
	lsls r3, 4
	ldrb r2, [r1, 0x5]
	movs r0, 0xF
	ands r0, r2
	orrs r0, r3
	strb r0, [r1, 0x5]
	ldrb r2, [r6]
	adds r4, r2, r4
	ldrb r1, [r4]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	ldr r1, =gUnknown_020244E4
	adds r2, r1
	ldrb r1, [r2]
	bl StartObjectImageAnim
	ldr r1, =gUnknown_03005D60
	ldrb r0, [r6]
	lsls r0, 2
	adds r0, r1
	ldr r1, =sub_818A064
	str r1, [r0]
	pop {r3}
	mov r8, r3
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818B8E0

	thumb_func_start sub_818B9FC
sub_818B9FC: @ 818B9FC
	push {r4-r6,lr}
	ldr r5, =gUnknown_02024064
	ldrb r0, [r5]
	ldr r4, =gUnknown_02023064
	lsls r1, r0, 9
	adds r6, r4, 0x2
	adds r1, r6
	ldrb r1, [r1]
	bl sub_805EF84
	ldr r2, =gUnknown_0202406E
	ldrb r0, [r5]
	lsls r1, r0, 1
	adds r1, r2
	lsls r0, 9
	adds r4, 0x1
	adds r0, r4
	ldrb r0, [r0]
	strh r0, [r1]
	ldrb r1, [r5]
	lsls r0, r1, 1
	adds r0, r2
	ldrh r2, [r0]
	movs r0, 0x64
	muls r0, r2
	ldr r2, =gPlayerParty
	adds r0, r2
	bl sub_805DD7C
	ldrb r0, [r5]
	lsls r1, r0, 9
	adds r1, r6
	ldrb r1, [r1]
	bl sub_818BA6C
	ldr r1, =gUnknown_03005D60
	ldrb r0, [r5]
	lsls r0, 2
	adds r0, r1
	ldr r1, =sub_818A470
	str r1, [r0]
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818B9FC

	thumb_func_start sub_818BA6C
sub_818BA6C: @ 818BA6C
	push {r4-r6,lr}
	mov r6, r10
	mov r5, r9
	mov r4, r8
	push {r4-r6}
	adds r6, r0, 0
	lsls r6, 24
	lsrs r6, 24
	lsls r1, 24
	lsrs r1, 24
	adds r0, r6, 0
	bl sub_805EF84
	ldr r0, =gUnknown_0202406E
	lsls r2, r6, 1
	adds r2, r0
	ldr r0, =gUnknown_02023064
	lsls r1, r6, 9
	adds r0, 0x1
	adds r1, r0
	ldrb r0, [r1]
	strh r0, [r2]
	ldrh r1, [r2]
	movs r0, 0x64
	muls r0, r1
	ldr r1, =gPlayerParty
	adds r0, r1
	movs r1, 0xB
	bl GetMonData
	mov r8, r0
	lsls r0, 16
	lsrs r0, 16
	mov r8, r0
	ldr r0, =sub_805D714
	bl CreateInvisibleSpriteWithCallback
	ldr r1, =gUnknown_03005D7C
	mov r9, r1
	add r9, r6
	mov r1, r9
	strb r0, [r1]
	adds r0, r6, 0
	bl battle_get_per_side_status
	adds r1, r0, 0
	lsls r1, 24
	lsrs r1, 24
	mov r0, r8
	bl sub_806A068
	ldr r0, =gUnknown_0202499C
	mov r10, r0
	adds r0, r6, 0
	movs r1, 0x2
	bl sub_80A5C6C
	adds r5, r0, 0
	lsls r5, 24
	lsrs r5, 24
	adds r0, r6, 0
	bl sub_80A6138
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	adds r0, r6, 0
	bl sub_80A82E4
	adds r3, r0, 0
	lsls r3, 24
	lsrs r3, 24
	mov r0, r10
	adds r1, r5, 0
	adds r2, r4, 0
	bl AddObjectToFront
	ldr r4, =gUnknown_020241E4
	adds r4, r6, r4
	strb r0, [r4]
	ldr r5, =gUnknown_02020630
	mov r0, r9
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	ldrb r1, [r4]
	strh r1, [r0, 0x30]
	mov r0, r9
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	strh r6, [r0, 0x32]
	ldrb r1, [r4]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	strh r6, [r0, 0x2E]
	ldrb r1, [r4]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	mov r1, r8
	strh r1, [r0, 0x32]
	ldrb r0, [r4]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r5
	lsls r3, r6, 4
	ldrb r2, [r1, 0x5]
	movs r0, 0xF
	ands r0, r2
	orrs r0, r3
	strb r0, [r1, 0x5]
	ldrb r1, [r4]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	ldr r1, =gUnknown_020244E4
	adds r6, r1
	ldrb r1, [r6]
	bl StartObjectImageAnim
	ldrb r1, [r4]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	adds r0, 0x3E
	ldrb r1, [r0]
	movs r2, 0x4
	orrs r1, r2
	strb r1, [r0]
	ldrb r1, [r4]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r1, r5, 0
	adds r1, 0x1C
	adds r0, r1
	ldr r1, =DummyObjectCallback
	str r1, [r0]
	movs r0, 0
	movs r1, 0xFF
	bl sub_80753E8
	mov r1, r9
	ldrb r2, [r1]
	lsls r1, r2, 4
	adds r1, r2
	lsls r1, 2
	adds r1, r5
	lsls r0, 24
	lsrs r0, 24
	strh r0, [r1, 0x2E]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818BA6C

	thumb_func_start sub_818BBE8
sub_818BBE8: @ 818BBE8
	push {r4-r6,lr}
	ldr r1, =gUnknown_02023064
	ldr r6, =gUnknown_02024064
	ldrb r2, [r6]
	lsls r0, r2, 9
	adds r1, 0x1
	adds r0, r1
	ldrb r3, [r0]
	cmp r3, 0
	bne _0818BC30
	ldr r0, =gUnknown_020244D0
	ldr r0, [r0]
	ldr r1, [r0, 0x4]
	lsls r0, r2, 1
	adds r0, r2
	lsls r0, 2
	adds r0, r1
	strb r3, [r0, 0x4]
	ldr r1, =gUnknown_03005D60
	ldrb r0, [r6]
	lsls r0, 2
	adds r0, r1
	ldr r1, =sub_818BC78
	str r1, [r0]
	b _0818BC66
	.pool
_0818BC30:
	ldr r5, =gUnknown_020241E4
	adds r0, r2, r5
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	ldr r4, =gUnknown_02020630
	adds r0, r4
	bl obj_free_rotscale_entry
	ldrb r0, [r6]
	adds r0, r5
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	bl RemoveObjectAndFreeTiles
	ldr r1, =gUnknown_03005D70
	ldrb r0, [r6]
	adds r0, r1
	ldrb r0, [r0]
	bl sub_8072984
	bl sub_818A514
_0818BC66:
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818BBE8

	thumb_func_start sub_818BC78
sub_818BC78: @ 818BC78
	push {r4-r6,lr}
	ldr r6, =gUnknown_020244D0
	ldr r4, [r6]
	ldr r5, =gUnknown_02024064
	ldrb r2, [r5]
	ldr r1, [r4, 0x4]
	lsls r0, r2, 1
	adds r0, r2
	lsls r0, 2
	adds r3, r0, r1
	ldrb r0, [r3, 0x4]
	cmp r0, 0
	beq _0818BCA0
	cmp r0, 0x1
	beq _0818BCCE
	b _0818BCF6
	.pool
_0818BCA0:
	ldr r1, [r4]
	lsls r0, r2, 2
	adds r0, r1
	ldrb r1, [r0]
	movs r0, 0x4
	ands r0, r1
	cmp r0, 0
	beq _0818BCBA
	adds r0, r2, 0
	adds r1, r2, 0
	movs r3, 0x5
	bl move_anim_start_t4
_0818BCBA:
	ldr r0, [r6]
	ldrb r1, [r5]
	ldr r2, [r0, 0x4]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	movs r1, 0x1
	strb r1, [r0, 0x4]
	b _0818BCF6
_0818BCCE:
	ldrb r1, [r3]
	movs r0, 0x40
	ands r0, r1
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0
	bne _0818BCF6
	strb r0, [r3, 0x4]
	ldrb r2, [r5]
	adds r0, r2, 0
	adds r1, r2, 0
	movs r3, 0x1
	bl move_anim_start_t4
	ldr r1, =gUnknown_03005D60
	ldrb r0, [r5]
	lsls r0, 2
	adds r0, r1
	ldr r1, =sub_818A1B0
	str r1, [r0]
_0818BCF6:
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818BC78

	thumb_func_start sub_818BD04
sub_818BD04: @ 818BD04
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	ldr r0, =gBattleTypeFlags
	ldr r1, [r0]
	movs r0, 0x80
	lsls r0, 18
	ands r0, r1
	cmp r0, 0
	beq _0818BD48
	movs r0, 0x40
	ands r1, r0
	cmp r1, 0
	beq _0818BD30
	bl sub_8185F40
	lsls r0, 24
	lsrs r4, r0, 24
	b _0818BD4C
	.pool
_0818BD30:
	ldr r2, =gUnknown_020229E8
	ldr r0, =gUnknown_0203C7B4
	ldrb r1, [r0]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	adds r0, r2
	b _0818BD4A
	.pool
_0818BD48:
	ldr r0, =gUnknown_020229E8
_0818BD4A:
	ldrb r4, [r0, 0x13]
_0818BD4C:
	ldr r0, =gBattleTypeFlags
	ldr r1, [r0]
	movs r2, 0x40
	ands r1, r2
	adds r5, r0, 0
	cmp r1, 0
	beq _0818BD98
	ldr r0, =gUnknown_02024064
	ldrb r0, [r0]
	bl battle_get_per_side_status
	movs r1, 0x2
	ands r1, r0
	movs r0, 0x20
	mov r9, r0
	cmp r1, 0
	beq _0818BD72
	movs r1, 0x5A
	mov r9, r1
_0818BD72:
	ldr r0, [r5]
	movs r1, 0x80
	lsls r1, 15
	ands r0, r1
	cmp r0, 0
	beq _0818BD9C
	movs r0, 0x5A
	mov r9, r0
	ldr r1, =gUnknown_083054E0
	b _0818BD9E
	.pool
_0818BD98:
	movs r0, 0x50
	mov r9, r0
_0818BD9C:
	ldr r1, =gUnknown_08305D2C
_0818BD9E:
	lsls r0, r4, 2
	adds r0, r1
	ldrb r1, [r0]
	movs r0, 0x8
	subs r0, r1
	lsls r0, 18
	movs r1, 0xA0
	lsls r1, 15
	adds r0, r1
	lsrs r7, r0, 16
	ldr r0, [r5]
	movs r1, 0x80
	lsls r1, 15
	ands r0, r1
	cmp r0, 0
	bne _0818BDC0
	b _0818BEDC
_0818BDC0:
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldrb r0, [r0, 0x8]
	bl sub_806F000
	lsls r0, 16
	lsrs r4, r0, 16
	adds r5, r4, 0
	ldr r6, =gUnknown_02024064
	ldrb r1, [r6]
	adds r0, r5, 0
	bl sub_805DF38
	ldrb r0, [r6]
	bl battle_get_per_side_status
	adds r1, r0, 0
	lsls r1, 24
	lsrs r1, 24
	adds r0, r5, 0
	bl sub_806A1C0
	ldr r0, =gUnknown_0202499C
	mov r8, r0
	lsls r4, r7, 16
	asrs r4, 16
	ldrb r0, [r6]
	bl sub_80A82E4
	adds r3, r0, 0
	lsls r3, 24
	lsrs r3, 24
	mov r0, r8
	mov r1, r9
	adds r2, r4, 0
	bl AddObjectToFront
	ldr r4, =gUnknown_020241E4
	ldrb r1, [r6]
	adds r1, r4
	strb r0, [r1]
	ldr r0, =gTrainerFrontPicPaletteTable
	lsls r5, 3
	adds r5, r0
	ldrh r0, [r5, 0x4]
	bl IndexOfObjectPaletteTag
	ldr r5, =gUnknown_02020630
	ldrb r1, [r6]
	adds r1, r4
	ldrb r1, [r1]
	lsls r2, r1, 4
	adds r2, r1
	lsls r2, 2
	adds r2, r5
	lsls r0, 4
	ldrb r3, [r2, 0x5]
	movs r1, 0xF
	ands r1, r3
	orrs r1, r0
	strb r1, [r2, 0x5]
	ldrb r0, [r6]
	adds r0, r4
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	movs r1, 0xF0
	strh r1, [r0, 0x24]
	ldrb r0, [r6]
	adds r0, r4
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	movs r1, 0x30
	strh r1, [r0, 0x26]
	ldrb r0, [r6]
	adds r0, r4
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	ldr r1, =0x0000fffe
	strh r1, [r0, 0x2E]
	ldrb r0, [r6]
	adds r0, r4
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r1, r5, 0
	adds r1, 0x1C
	adds r0, r1
	ldr r1, =sub_805D7AC
	str r1, [r0]
	ldrb r0, [r6]
	adds r0, r4
	ldrb r0, [r0]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r5
	ldrb r2, [r1, 0x1]
	movs r0, 0x4
	negs r0, r0
	ands r0, r2
	strb r0, [r1, 0x1]
	ldrb r0, [r6]
	adds r0, r4
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	adds r0, 0x3F
	ldrb r1, [r0]
	movs r2, 0x1
	orrs r1, r2
	strb r1, [r0]
	b _0818BF72
	.pool
_0818BEDC:
	ldr r5, =gUnknown_02024064
	ldrb r1, [r5]
	adds r0, r4, 0
	bl sub_805DF84
	ldrb r0, [r5]
	bl battle_get_per_side_status
	adds r1, r0, 0
	lsls r1, 24
	lsrs r1, 24
	adds r0, r4, 0
	bl template_build_for_pokemon_or_trainer
	ldr r6, =gUnknown_0202499C
	mov r8, r9
	lsls r4, r7, 16
	asrs r4, 16
	ldrb r0, [r5]
	bl sub_80A82E4
	adds r3, r0, 0
	lsls r3, 24
	lsrs r3, 24
	adds r0, r6, 0
	mov r1, r8
	adds r2, r4, 0
	bl AddObjectToFront
	ldr r6, =gUnknown_020241E4
	ldrb r1, [r5]
	adds r1, r6
	strb r0, [r1]
	ldr r4, =gUnknown_02020630
	ldrb r3, [r5]
	adds r0, r3, r6
	ldrb r0, [r0]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r4
	lsls r3, 4
	ldrb r2, [r1, 0x5]
	movs r0, 0xF
	ands r0, r2
	orrs r0, r3
	strb r0, [r1, 0x5]
	ldrb r0, [r5]
	adds r0, r6
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	movs r1, 0xF0
	strh r1, [r0, 0x24]
	ldrb r0, [r5]
	adds r0, r6
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	ldr r1, =0x0000fffe
	strh r1, [r0, 0x2E]
	ldrb r0, [r5]
	adds r0, r6
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r4, 0x1C
	adds r0, r4
	ldr r1, =sub_805D7AC
	str r1, [r0]
_0818BF72:
	ldr r1, =gUnknown_03005D60
	ldr r0, =gUnknown_02024064
	ldrb r0, [r0]
	lsls r0, 2
	adds r0, r1
	ldr r1, =sub_81899B8
	str r1, [r0]
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818BD04

	thumb_func_start sub_818BFAC
sub_818BFAC: @ 818BFAC
	push {lr}
	bl sub_818A514
	pop {r0}
	bx r0
	thumb_func_end sub_818BFAC

	thumb_func_start sub_818BFB8
sub_818BFB8: @ 818BFB8
	push {r4-r6,lr}
	ldr r6, =gUnknown_020241E4
	ldr r4, =gUnknown_02024064
	ldrb r0, [r4]
	adds r0, r6
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	ldr r5, =gUnknown_02020630
	adds r0, r5
	bl oamt_add_pos2_onto_pos1
	ldrb r0, [r4]
	adds r0, r6
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	movs r1, 0x23
	strh r1, [r0, 0x2E]
	ldrb r0, [r4]
	adds r0, r6
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	ldr r1, =0x0000ffd8
	strh r1, [r0, 0x32]
	ldrb r0, [r4]
	adds r0, r6
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	ldrh r1, [r0, 0x22]
	strh r1, [r0, 0x36]
	ldrb r0, [r4]
	adds r0, r6
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r1, r5, 0
	adds r1, 0x1C
	adds r0, r1
	ldr r1, =sub_80A6EEC
	str r1, [r0]
	ldrb r0, [r4]
	adds r0, r6
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	ldr r1, =DummyObjectCallback
	bl oamt_set_x3A_32
	ldr r1, =gUnknown_03005D60
	ldrb r0, [r4]
	lsls r0, 2
	adds r0, r1
	ldr r1, =sub_81899F0
	str r1, [r0]
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818BFB8

	thumb_func_start sub_818C064
sub_818C064: @ 818C064
	push {r4-r6,lr}
	ldr r6, =gUnknown_020244D0
	ldr r4, [r6]
	ldr r5, =gUnknown_02024064
	ldrb r2, [r5]
	ldr r0, [r4, 0x4]
	lsls r1, r2, 1
	adds r1, r2
	lsls r1, 2
	adds r3, r1, r0
	ldrb r0, [r3, 0x4]
	cmp r0, 0
	bne _0818C0B8
	ldr r1, [r4]
	lsls r0, r2, 2
	adds r0, r1
	ldrb r1, [r0]
	movs r0, 0x4
	ands r0, r1
	cmp r0, 0
	beq _0818C098
	adds r0, r2, 0
	adds r1, r2, 0
	movs r3, 0x5
	bl move_anim_start_t4
_0818C098:
	ldr r0, [r6]
	ldrb r1, [r5]
	ldr r2, [r0, 0x4]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r1, [r0, 0x4]
	adds r1, 0x1
	strb r1, [r0, 0x4]
	b _0818C12E
	.pool
_0818C0B8:
	ldrb r1, [r3]
	movs r0, 0x40
	ands r0, r1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0
	bne _0818C12E
	strb r4, [r3, 0x4]
	ldr r2, =gUnknown_0202406E
	ldrb r1, [r5]
	lsls r0, r1, 1
	adds r0, r2
	ldrh r2, [r0]
	movs r0, 0x64
	muls r0, r2
	ldr r2, =gPlayerParty
	adds r0, r2
	bl sub_805E990
	movs r1, 0x40
	negs r1, r1
	movs r0, 0x10
	bl audio_play_and_stuff
	ldr r2, =gUnknown_02020630
	ldr r3, =gUnknown_020241E4
	ldrb r0, [r5]
	adds r0, r3
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	strh r4, [r0, 0x30]
	ldrb r0, [r5]
	adds r0, r3
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	movs r1, 0x5
	strh r1, [r0, 0x32]
	ldrb r0, [r5]
	adds r0, r3
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r2, 0x1C
	adds r0, r2
	ldr r1, =sub_8039C00
	str r1, [r0]
	ldr r1, =gUnknown_03005D60
	ldrb r0, [r5]
	lsls r0, 2
	adds r0, r1
	ldr r1, =sub_818A114
	str r1, [r0]
_0818C12E:
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818C064

	thumb_func_start sub_818C150
sub_818C150: @ 818C150
	push {lr}
	bl sub_818A514
	pop {r0}
	bx r0
	thumb_func_end sub_818C150

	thumb_func_start sub_818C15C
sub_818C15C: @ 818C15C
	push {lr}
	bl sub_818A514
	pop {r0}
	bx r0
	thumb_func_end sub_818C15C

	thumb_func_start sub_818C168
sub_818C168: @ 818C168
	push {lr}
	bl sub_818A514
	pop {r0}
	bx r0
	thumb_func_end sub_818C168

	thumb_func_start sub_818C174
sub_818C174: @ 818C174
	push {lr}
	bl sub_818A514
	pop {r0}
	bx r0
	thumb_func_end sub_818C174

	thumb_func_start sub_818C180
sub_818C180: @ 818C180
	push {r4-r6,lr}
	ldr r6, =gUnknown_02024064
	ldrb r0, [r6]
	bl mplay_80342A4
	lsls r0, 24
	cmp r0, 0
	beq _0818C192
	b _0818C2A6
_0818C192:
	ldr r0, =gUnknown_02023064
	mov r12, r0
	ldrb r2, [r6]
	lsls r2, 9
	adds r0, 0x1
	adds r0, r2, r0
	ldrb r0, [r0]
	mov r1, r12
	adds r1, 0x2
	adds r1, r2, r1
	ldrb r1, [r1]
	lsls r1, 8
	orrs r0, r1
	ldr r5, =gUnknown_02038432
	mov r1, r12
	adds r1, 0x3
	adds r2, r1
	ldrb r1, [r2]
	strb r1, [r5]
	ldr r4, =gUnknown_02038408
	ldrb r2, [r6]
	lsls r2, 9
	mov r1, r12
	adds r1, 0x4
	adds r1, r2, r1
	ldrb r3, [r1]
	mov r1, r12
	adds r1, 0x5
	adds r2, r1
	ldrb r1, [r2]
	lsls r1, 8
	orrs r3, r1
	strh r3, [r4]
	ldr r4, =gUnknown_02038404
	ldrb r2, [r6]
	lsls r2, 9
	mov r1, r12
	adds r1, 0x6
	adds r1, r2, r1
	ldrb r3, [r1]
	mov r1, r12
	adds r1, 0x7
	adds r1, r2, r1
	ldrb r1, [r1]
	lsls r1, 8
	orrs r3, r1
	mov r1, r12
	adds r1, 0x8
	adds r1, r2, r1
	ldrb r1, [r1]
	lsls r1, 16
	orrs r3, r1
	mov r1, r12
	adds r1, 0x9
	adds r2, r1
	ldrb r1, [r2]
	lsls r1, 24
	orrs r3, r1
	str r3, [r4]
	ldr r3, =gUnknown_0203841A
	ldrb r1, [r6]
	lsls r1, 9
	mov r2, r12
	adds r2, 0xA
	adds r1, r2
	ldrb r1, [r1]
	strb r1, [r3]
	ldr r4, =gUnknown_0203841C
	ldrb r2, [r6]
	lsls r2, 9
	mov r1, r12
	adds r1, 0xC
	adds r1, r2, r1
	ldrb r3, [r1]
	mov r1, r12
	adds r1, 0xD
	adds r2, r1
	ldrb r1, [r2]
	lsls r1, 8
	orrs r3, r1
	strh r3, [r4]
	ldr r3, =gUnknown_02038400
	ldrb r2, [r6]
	lsls r2, 9
	mov r1, r12
	adds r1, 0x10
	adds r2, r1
	str r2, [r3]
	ldr r3, =gUnknown_020244BC
	ldrb r1, [r6]
	lsls r1, 2
	adds r1, r3
	ldr r2, [r2]
	str r2, [r1]
	ldrb r1, [r5]
	bl sub_805DB8C
	lsls r0, 24
	lsrs r3, r0, 24
	cmp r3, 0
	beq _0818C288
	bl sub_818A514
	b _0818C2A6
	.pool
_0818C288:
	ldr r0, =gUnknown_020244D0
	ldr r0, [r0]
	ldrb r1, [r6]
	ldr r2, [r0, 0x4]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	strb r3, [r0, 0x4]
	ldr r1, =gUnknown_03005D60
	ldrb r0, [r6]
	lsls r0, 2
	adds r0, r1
	ldr r1, =bx_move_anim_2
	str r1, [r0]
_0818C2A6:
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818C180

	thumb_func_start bx_move_anim_2
bx_move_anim_2: @ 818C2B8
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	ldr r2, =gUnknown_02023064
	ldr r6, =gUnknown_02024064
	ldrb r3, [r6]
	lsls r1, r3, 9
	adds r0, r2, 0x1
	mov r10, r0
	adds r0, r1, r0
	ldrb r4, [r0]
	adds r5, r2, 0x2
	mov r9, r5
	adds r0, r1, r5
	ldrb r0, [r0]
	lsls r0, 8
	orrs r4, r0
	adds r2, 0xB
	adds r1, r2
	ldrb r1, [r1]
	mov r8, r1
	ldr r7, =gUnknown_020244D0
	ldr r5, [r7]
	ldr r1, [r5, 0x4]
	lsls r0, r3, 1
	adds r0, r3
	lsls r0, 2
	adds r0, r1
	ldrb r2, [r0, 0x4]
	cmp r2, 0x1
	beq _0818C350
	cmp r2, 0x1
	bgt _0818C310
	cmp r2, 0
	beq _0818C31A
	b _0818C42C
	.pool
_0818C310:
	cmp r2, 0x2
	beq _0818C37A
	cmp r2, 0x3
	beq _0818C3F0
	b _0818C42C
_0818C31A:
	ldr r1, [r5]
	lsls r0, r3, 2
	adds r1, r0, r1
	ldrb r2, [r1]
	movs r0, 0xC
	ands r0, r2
	cmp r0, 0x4
	bne _0818C33C
	movs r0, 0x8
	orrs r0, r2
	strb r0, [r1]
	ldrb r2, [r6]
	adds r0, r2, 0
	adds r1, r2, 0
	movs r3, 0x5
	bl move_anim_start_t4
_0818C33C:
	ldr r0, [r7]
	ldrb r1, [r6]
	ldr r2, [r0, 0x4]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	movs r1, 0x1
	strb r1, [r0, 0x4]
	b _0818C42C
_0818C350:
	ldrb r1, [r0]
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	bne _0818C42C
	movs r0, 0
	bl sub_805EB9C
	adds r0, r4, 0
	bl move_anim_start_t1
	ldr r0, [r7]
	ldrb r1, [r6]
	ldr r2, [r0, 0x4]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	movs r1, 0x2
	strb r1, [r0, 0x4]
	b _0818C42C
_0818C37A:
	ldr r0, =gUnknown_020383F8
	ldr r0, [r0]
	bl _call_via_r0
	ldr r0, =gUnknown_020383FD
	ldrb r0, [r0]
	cmp r0, 0
	bne _0818C42C
	movs r0, 0x1
	bl sub_805EB9C
	ldr r0, [r7]
	ldrb r2, [r6]
	ldr r1, [r0]
	lsls r0, r2, 2
	adds r0, r1
	ldrb r1, [r0]
	movs r0, 0x4
	ands r0, r1
	cmp r0, 0
	beq _0818C3C8
	mov r0, r8
	cmp r0, 0x1
	bhi _0818C3C8
	adds r0, r2, 0
	adds r1, r2, 0
	movs r3, 0x6
	bl move_anim_start_t4
	ldr r0, [r7]
	ldrb r1, [r6]
	ldr r0, [r0]
	lsls r1, 2
	adds r1, r0
	ldrb r2, [r1]
	movs r0, 0x9
	negs r0, r0
	ands r0, r2
	strb r0, [r1]
_0818C3C8:
	ldr r0, =gUnknown_020244D0
	ldr r2, [r0]
	ldr r0, =gUnknown_02024064
	ldrb r1, [r0]
	ldr r2, [r2, 0x4]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	movs r1, 0x3
	strb r1, [r0, 0x4]
	b _0818C42C
	.pool
_0818C3F0:
	ldrb r1, [r0]
	movs r0, 0x40
	ands r0, r1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0
	bne _0818C42C
	bl sub_805E394
	ldrb r0, [r6]
	lsls r2, r0, 9
	mov r3, r10
	adds r1, r2, r3
	ldrb r1, [r1]
	add r2, r9
	ldrb r2, [r2]
	lsls r2, 8
	orrs r1, r2
	bl sub_805E94C
	ldr r0, [r7]
	ldrb r1, [r6]
	ldr r2, [r0, 0x4]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	strb r4, [r0, 0x4]
	bl sub_818A514
_0818C42C:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end bx_move_anim_2

	thumb_func_start sub_818C43C
sub_818C43C: @ 818C43C
	push {r4,lr}
	ldr r0, =gUnknown_02022E14
	movs r1, 0
	strh r1, [r0]
	ldr r0, =gUnknown_02022E16
	strh r1, [r0]
	ldr r4, =gUnknown_02024064
	ldrb r0, [r4]
	lsls r0, 9
	ldr r1, =gUnknown_02023066
	adds r0, r1
	ldrh r0, [r0]
	bl battle_pick_message
	ldr r0, =gUnknown_02022E2C
	movs r1, 0
	bl battle_show_message_maybe
	ldr r1, =gUnknown_03005D60
	ldrb r0, [r4]
	lsls r0, 2
	adds r0, r1
	ldr r1, =sub_818A220
	str r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818C43C

	thumb_func_start sub_818C490
sub_818C490: @ 818C490
	push {lr}
	bl sub_818A514
	pop {r0}
	bx r0
	thumb_func_end sub_818C490

	thumb_func_start sub_818C49C
sub_818C49C: @ 818C49C
	push {lr}
	ldr r1, =gUnknown_02024332
	ldr r0, =gUnknown_0202406C
	ldrb r0, [r0]
	ldrb r1, [r1, 0x4]
	lsrs r0, 1
	cmp r1, r0
	bcc _0818C4C6
	ldr r0, =gUnknown_02024064
	ldrb r0, [r0]
	bl sub_8185054
	adds r1, r0, 0
	lsls r1, 24
	lsrs r1, 24
	movs r0, 0x1
	movs r2, 0
	bl dp01_build_cmdbuf_x21_a_bb
	bl sub_818A514
_0818C4C6:
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818C49C

	thumb_func_start sub_818C4D8
sub_818C4D8: @ 818C4D8
	push {lr}
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 10
	ands r0, r1
	cmp r0, 0
	beq _0818C508
	ldr r1, =gUnknown_03005D60
	ldr r0, =gUnknown_02024064
	ldrb r0, [r0]
	lsls r0, 2
	adds r0, r1
	ldr r1, =sub_818C49C
	str r1, [r0]
	b _0818C522
	.pool
_0818C508:
	ldr r0, =gUnknown_02024064
	ldrb r0, [r0]
	bl sub_8185054
	adds r1, r0, 0
	lsls r1, 24
	lsrs r1, 24
	movs r0, 0x1
	movs r2, 0
	bl dp01_build_cmdbuf_x21_a_bb
	bl sub_818A514
_0818C522:
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818C4D8

	thumb_func_start sub_818C52C
sub_818C52C: @ 818C52C
	push {lr}
	bl sub_818A514
	pop {r0}
	bx r0
	thumb_func_end sub_818C52C

	thumb_func_start sub_818C538
sub_818C538: @ 818C538
	push {r4,r5,lr}
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 10
	ands r0, r1
	cmp r0, 0
	beq _0818C560
	bl sub_805D19C
	adds r2, r0, 0
	lsls r2, 16
	lsrs r2, 16
	movs r0, 0x1
	movs r1, 0xA
	bl dp01_build_cmdbuf_x21_a_bb
	b _0818C584
	.pool
_0818C560:
	ldr r5, =gUnknown_02024064
	ldrb r0, [r5]
	bl sub_8185054
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	ldrb r0, [r5]
	bl sub_8185054
	adds r2, r0, 0
	lsls r2, 24
	lsrs r2, 16
	orrs r2, r4
	movs r0, 0x1
	movs r1, 0xA
	bl dp01_build_cmdbuf_x21_a_bb
_0818C584:
	bl sub_818A514
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818C538

	thumb_func_start sub_818C594
sub_818C594: @ 818C594
	push {lr}
	bl sub_818A514
	pop {r0}
	bx r0
	thumb_func_end sub_818C594

	thumb_func_start sub_818C5A0
sub_818C5A0: @ 818C5A0
	push {r4,lr}
	ldr r4, =gUnknown_02024064
	ldrb r0, [r4]
	bl sub_8185054
	ldrb r1, [r4]
	ldr r3, =gUnknown_0202449C
	ldr r2, [r3]
	adds r1, r2
	adds r1, 0x5C
	strb r0, [r1]
	ldrb r0, [r4]
	ldr r1, [r3]
	adds r0, r1
	adds r0, 0x5C
	ldrb r1, [r0]
	movs r0, 0x1
	movs r2, 0
	bl dp01_build_cmdbuf_x22_a_three_bytes
	bl sub_818A514
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818C5A0

	thumb_func_start sub_818C5DC
sub_818C5DC: @ 818C5DC
	push {lr}
	bl sub_818A514
	pop {r0}
	bx r0
	thumb_func_end sub_818C5DC

	thumb_func_start sub_818C5E8
sub_818C5E8: @ 818C5E8
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, 0x4
	movs r0, 0
	bl load_gfxc_health_bar
	ldr r3, =gUnknown_02023064
	ldr r0, =gUnknown_02024064
	mov r9, r0
	ldrb r4, [r0]
	lsls r2, r4, 9
	adds r0, r3, 0x2
	adds r0, r2, r0
	ldrb r1, [r0]
	adds r3, 0x3
	adds r2, r3
	ldrb r0, [r2]
	lsls r0, 8
	orrs r1, r0
	lsls r1, 16
	asrs r7, r1, 16
	ldr r0, =0x00007fff
	cmp r7, r0
	beq _0818C678
	ldr r6, =gUnknown_0202406E
	lsls r0, r4, 1
	adds r0, r6
	ldrh r0, [r0]
	movs r5, 0x64
	muls r0, r5
	ldr r4, =gPlayerParty
	adds r0, r4
	movs r1, 0x3A
	bl GetMonData
	mov r8, r0
	mov r1, r9
	ldrb r0, [r1]
	lsls r0, 1
	adds r0, r6
	ldrh r0, [r0]
	muls r0, r5
	adds r0, r4
	movs r1, 0x39
	bl GetMonData
	adds r3, r0, 0
	mov r1, r9
	ldrb r0, [r1]
	ldr r1, =gUnknown_03005D70
	adds r1, r0, r1
	ldrb r1, [r1]
	str r7, [sp]
	mov r2, r8
	bl sub_807294C
	b _0818C6B2
	.pool
_0818C678:
	ldr r1, =gUnknown_0202406E
	lsls r0, r4, 1
	adds r0, r1
	ldrh r1, [r0]
	movs r0, 0x64
	muls r0, r1
	ldr r1, =gPlayerParty
	adds r0, r1
	movs r1, 0x3A
	bl GetMonData
	adds r2, r0, 0
	mov r1, r9
	ldrb r0, [r1]
	ldr r4, =gUnknown_03005D70
	adds r1, r0, r4
	ldrb r1, [r1]
	str r7, [sp]
	movs r3, 0
	bl sub_807294C
	mov r1, r9
	ldrb r0, [r1]
	adds r0, r4
	ldrb r0, [r0]
	movs r1, 0
	movs r2, 0
	bl heathbar_draw_hp
_0818C6B2:
	ldr r1, =gUnknown_03005D60
	ldr r0, =gUnknown_02024064
	ldrb r0, [r0]
	lsls r0, 2
	adds r0, r1
	ldr r1, =sub_818A0A4
	str r1, [r0]
	add sp, 0x4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818C5E8

	thumb_func_start sub_818C6E8
sub_818C6E8: @ 818C6E8
	push {lr}
	bl sub_818A514
	pop {r0}
	bx r0
	thumb_func_end sub_818C6E8

	thumb_func_start sub_818C6F4
sub_818C6F4: @ 818C6F4
	push {r4,lr}
	ldr r4, =gUnknown_02024064
	ldrb r0, [r4]
	bl mplay_80342A4
	lsls r0, 24
	cmp r0, 0
	bne _0818C748
	ldr r0, =gUnknown_03005D70
	ldrb r1, [r4]
	adds r0, r1, r0
	ldrb r0, [r0]
	ldr r2, =gUnknown_0202406E
	lsls r1, 1
	adds r1, r2
	ldrh r2, [r1]
	movs r1, 0x64
	muls r1, r2
	ldr r2, =gPlayerParty
	adds r1, r2
	movs r2, 0x9
	bl healthbar_draw_field_maybe
	ldrb r2, [r4]
	ldr r0, =gUnknown_020244D0
	ldr r0, [r0]
	ldr r0, [r0, 0x4]
	lsls r1, r2, 1
	adds r1, r2
	lsls r1, 2
	adds r1, r0
	ldrb r2, [r1]
	movs r0, 0x11
	negs r0, r0
	ands r0, r2
	strb r0, [r1]
	ldr r1, =gUnknown_03005D60
	ldrb r0, [r4]
	lsls r0, 2
	adds r0, r1
	ldr r1, =sub_818A58C
	str r1, [r0]
_0818C748:
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818C6F4

	thumb_func_start sub_818C76C
sub_818C76C: @ 818C76C
	push {r4,r5,lr}
	ldr r5, =gUnknown_02024064
	ldrb r0, [r5]
	bl mplay_80342A4
	lsls r0, 24
	cmp r0, 0
	bne _0818C7BC
	ldr r4, =gUnknown_02023064
	ldrb r3, [r5]
	lsls r3, 9
	adds r0, r4, 0x1
	adds r0, r3, r0
	ldrb r0, [r0]
	adds r1, r4, 0x2
	adds r1, r3, r1
	ldrb r1, [r1]
	adds r2, r4, 0x3
	adds r2, r3, r2
	ldrb r2, [r2]
	lsls r2, 8
	orrs r1, r2
	adds r2, r4, 0x4
	adds r2, r3, r2
	ldrb r2, [r2]
	lsls r2, 16
	orrs r1, r2
	adds r4, 0x5
	adds r3, r4
	ldrb r2, [r3]
	lsls r2, 24
	orrs r1, r2
	bl move_anim_start_t2_for_situation
	ldr r1, =gUnknown_03005D60
	ldrb r0, [r5]
	lsls r0, 2
	adds r0, r1
	ldr r1, =sub_818A58C
	str r1, [r0]
_0818C7BC:
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818C76C

	thumb_func_start sub_818C7D4
sub_818C7D4: @ 818C7D4
	push {lr}
	bl sub_818A514
	pop {r0}
	bx r0
	thumb_func_end sub_818C7D4

	thumb_func_start sub_818C7E0
sub_818C7E0: @ 818C7E0
	push {lr}
	bl sub_818A514
	pop {r0}
	bx r0
	thumb_func_end sub_818C7E0

	thumb_func_start sub_818C7EC
sub_818C7EC: @ 818C7EC
	push {lr}
	bl sub_818A514
	pop {r0}
	bx r0
	thumb_func_end sub_818C7EC

	thumb_func_start sub_818C7F8
sub_818C7F8: @ 818C7F8
	push {lr}
	bl sub_818A514
	pop {r0}
	bx r0
	thumb_func_end sub_818C7F8

	thumb_func_start sub_818C804
sub_818C804: @ 818C804
	push {lr}
	bl sub_818A514
	pop {r0}
	bx r0
	thumb_func_end sub_818C804

	thumb_func_start sub_818C810
sub_818C810: @ 818C810
	push {lr}
	bl sub_818A514
	pop {r0}
	bx r0
	thumb_func_end sub_818C810

	thumb_func_start sub_818C81C
sub_818C81C: @ 818C81C
	push {lr}
	bl sub_818A514
	pop {r0}
	bx r0
	thumb_func_end sub_818C81C

	thumb_func_start sub_818C828
sub_818C828: @ 818C828
	push {lr}
	bl sub_818A514
	pop {r0}
	bx r0
	thumb_func_end sub_818C828

	thumb_func_start sub_818C834
sub_818C834: @ 818C834
	push {lr}
	bl sub_818A514
	pop {r0}
	bx r0
	thumb_func_end sub_818C834

	thumb_func_start sub_818C840
sub_818C840: @ 818C840
	push {lr}
	ldr r2, =gUnknown_02022D0C
	ldrb r1, [r2]
	movs r0, 0x80
	negs r0, r0
	ands r0, r1
	strb r0, [r2]
	bl sub_818A514
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818C840

	thumb_func_start sub_818C85C
sub_818C85C: @ 818C85C
	push {lr}
	ldr r3, =gUnknown_02022D0C
	ldr r1, =gUnknown_02023064
	ldr r0, =gUnknown_02024064
	ldrb r0, [r0]
	lsls r0, 9
	adds r1, 0x1
	adds r0, r1
	ldrb r0, [r0]
	movs r1, 0x7F
	ands r1, r0
	ldrb r2, [r3]
	movs r0, 0x80
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	bl sub_818A514
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818C85C

	thumb_func_start sub_818C894
sub_818C894: @ 818C894
	push {lr}
	ldr r2, =gUnknown_02022D0C
	ldrb r1, [r2]
	movs r0, 0x7F
	ands r0, r1
	strb r0, [r2]
	bl sub_818A514
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818C894

	thumb_func_start sub_818C8AC
sub_818C8AC: @ 818C8AC
	push {lr}
	ldr r3, =gUnknown_02022D0C
	ldr r1, [r3]
	lsls r1, 24
	lsrs r1, 31
	movs r0, 0x1
	eors r1, r0
	lsls r1, 7
	ldrb r2, [r3]
	movs r0, 0x7F
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	bl sub_818A514
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818C8AC

	thumb_func_start sub_818C8D4
sub_818C8D4: @ 818C8D4
	push {r4,lr}
	ldr r3, =gUnknown_02020630
	ldr r2, =gUnknown_020241E4
	ldr r4, =gUnknown_02024064
	ldrb r0, [r4]
	adds r0, r2
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	adds r0, 0x3E
	ldrb r0, [r0]
	lsls r0, 29
	cmp r0, 0
	bge _0818C908
	bl sub_818A514
	b _0818C932
	.pool
_0818C908:
	ldr r1, =gUnknown_020244B9
	movs r0, 0x1
	strb r0, [r1]
	ldrb r0, [r4]
	adds r0, r2
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	movs r1, 0
	strh r1, [r0, 0x30]
	ldrb r0, [r4]
	bl sub_80769F4
	ldr r1, =gUnknown_03005D60
	ldrb r0, [r4]
	lsls r0, 2
	adds r0, r1
	ldr r1, =sub_818A238
	str r1, [r0]
_0818C932:
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818C8D4

	thumb_func_start sub_818C944
sub_818C944: @ 818C944
	push {lr}
	bl sub_818A514
	pop {r0}
	bx r0
	thumb_func_end sub_818C944

	thumb_func_start sub_818C950
sub_818C950: @ 818C950
	push {r4,lr}
	ldr r4, =gUnknown_02024064
	ldrb r0, [r4]
	bl battle_side_get_owner
	lsls r0, 24
	movs r3, 0x3F
	cmp r0, 0
	bne _0818C964
	movs r3, 0xC0
_0818C964:
	ldr r2, =gUnknown_02023064
	ldrb r1, [r4]
	lsls r1, 9
	adds r0, r2, 0x1
	adds r0, r1, r0
	ldrb r0, [r0]
	adds r2, 0x2
	adds r1, r2
	ldrb r1, [r1]
	lsls r1, 8
	orrs r0, r1
	lsls r1, r3, 24
	asrs r1, 24
	bl audio_play_and_stuff
	bl sub_818A514
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818C950

	thumb_func_start sub_818C994
sub_818C994: @ 818C994
	push {r4,r5,lr}
	ldr r4, =gUnknown_02023064
	ldr r5, =gUnknown_02024064
	ldrb r0, [r5]
	lsls r3, r0, 9
	adds r0, r4, 0x3
	adds r0, r3, r0
	ldrb r0, [r0]
	cmp r0, 0
	beq _0818C9D0
	bl sub_805EA60
	ldrb r1, [r5]
	lsls r1, 9
	adds r0, r4, 0x1
	adds r0, r1, r0
	ldrb r0, [r0]
	adds r2, r4, 0x2
	adds r1, r2
	ldrb r1, [r1]
	lsls r1, 8
	orrs r0, r1
	bl song_play_for_text
	b _0818C9E4
	.pool
_0818C9D0:
	adds r0, r4, 0x1
	adds r0, r3, r0
	ldrb r0, [r0]
	adds r1, r4, 0x2
	adds r1, r3, r1
	ldrb r1, [r1]
	lsls r1, 8
	orrs r0, r1
	bl fanfare_play
_0818C9E4:
	bl sub_818A514
	pop {r4,r5}
	pop {r0}
	bx r0
	thumb_func_end sub_818C994

	thumb_func_start sub_818C9F0
sub_818C9F0: @ 818C9F0
	push {lr}
	ldr r1, =gUnknown_0202406E
	ldr r0, =gUnknown_02024064
	ldrb r0, [r0]
	lsls r0, 1
	adds r0, r1
	ldrh r1, [r0]
	movs r0, 0x64
	muls r0, r1
	ldr r1, =gPlayerParty
	adds r0, r1
	movs r1, 0xB
	bl GetMonData
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x19
	negs r1, r1
	movs r2, 0x5
	bl sub_80A32E4
	bl sub_818A514
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818C9F0

	thumb_func_start dp01t_2E_2_battle_intro
dp01t_2E_2_battle_intro: @ 818CA30
	push {lr}
	ldr r1, =gUnknown_02023064
	ldr r0, =gUnknown_02024064
	ldrb r0, [r0]
	lsls r0, 9
	adds r1, 0x1
	adds r0, r1
	ldrb r0, [r0]
	bl battle_intro_launch
	ldr r2, =gUnknown_020243FC
	ldrh r0, [r2]
	movs r1, 0x1
	orrs r0, r1
	strh r0, [r2]
	bl sub_818A514
	pop {r0}
	bx r0
	.pool
	thumb_func_end dp01t_2E_2_battle_intro

	thumb_func_start sub_818CA64
sub_818CA64: @ 818CA64
	push {r4-r6,lr}
	ldr r5, =gUnknown_020241E4
	ldr r6, =gUnknown_02024064
	ldrb r0, [r6]
	adds r0, r5
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	ldr r4, =gUnknown_02020630
	adds r0, r4
	bl oamt_add_pos2_onto_pos1
	ldrb r0, [r6]
	adds r0, r5
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	movs r1, 0x32
	strh r1, [r0, 0x2E]
	ldrb r0, [r6]
	adds r0, r5
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	ldr r1, =0x0000ffd8
	strh r1, [r0, 0x32]
	ldrb r0, [r6]
	adds r0, r5
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	ldrh r1, [r0, 0x22]
	strh r1, [r0, 0x36]
	ldrb r0, [r6]
	adds r0, r5
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r1, r4, 0
	adds r1, 0x1C
	adds r0, r1
	ldr r1, =sub_80A6EEC
	str r1, [r0]
	ldrb r2, [r6]
	adds r0, r2, r5
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	strh r2, [r0, 0x38]
	ldrb r0, [r6]
	adds r0, r5
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	ldr r1, =sub_805CC00
	bl oamt_set_x3A_32
	ldrb r0, [r6]
	adds r0, r5
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	movs r1, 0x1
	bl StartObjectImageAnim
	ldr r0, =0x0000d6f9
	bl AllocObjectPalette
	lsls r0, 24
	lsrs r5, r0, 24
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 18
	ands r0, r1
	cmp r0, 0
	beq _0818CB54
	ldr r4, =gUnknown_020229E8
	ldrb r0, [r6]
	bl sub_806D864
	lsls r1, r0, 3
	subs r1, r0
	lsls r1, 2
	adds r1, r4
	ldrb r0, [r1, 0x13]
	b _0818CB5A
	.pool
_0818CB54:
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldrb r0, [r0, 0x8]
_0818CB5A:
	ldr r1, =gTrainerBackPicPaletteTable
	lsls r0, 3
	adds r0, r1
	ldr r0, [r0]
	lsls r4, r5, 4
	movs r2, 0x80
	lsls r2, 1
	adds r1, r4, r2
	movs r2, 0x20
	bl LoadCompressedPalette
	ldr r2, =gUnknown_02020630
	ldr r1, =gUnknown_020241E4
	ldr r5, =gUnknown_02024064
	ldrb r0, [r5]
	adds r0, r1
	ldrb r0, [r0]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r2
	ldrb r2, [r1, 0x5]
	movs r0, 0xF
	ands r0, r2
	orrs r0, r4
	strb r0, [r1, 0x5]
	ldr r0, =sub_818CC24
	movs r1, 0x5
	bl CreateTask
	lsls r0, 24
	lsrs r0, 24
	ldr r4, =gTasks
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	adds r1, r4
	ldrb r0, [r5]
	strh r0, [r1, 0x8]
	ldr r3, =gUnknown_020244D0
	ldr r0, [r3]
	ldrb r2, [r5]
	ldr r1, [r0, 0x4]
	lsls r0, r2, 1
	adds r0, r2
	lsls r0, 2
	adds r0, r1
	ldrb r1, [r0]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _0818CBD4
	ldr r0, =gUnknown_020244B4
	adds r0, r2, r0
	ldrb r1, [r0]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 3
	adds r0, r4
	ldr r1, =sub_8073C30
	str r1, [r0]
_0818CBD4:
	ldr r0, [r3]
	ldr r2, [r0, 0x8]
	ldrb r0, [r2, 0x9]
	movs r1, 0x1
	orrs r0, r1
	strb r0, [r2, 0x9]
	ldr r1, =gUnknown_03005D60
	ldrb r0, [r5]
	lsls r0, 2
	adds r0, r1
	ldr r1, =nullsub_120
	str r1, [r0]
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818CA64

	thumb_func_start sub_818CC24
sub_818CC24: @ 818CC24
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
	ldr r1, =gTasks
	lsls r0, 2
	add r0, r8
	lsls r0, 3
	adds r1, r0, r1
	ldrh r2, [r1, 0xA]
	movs r3, 0xA
	ldrsh r0, [r1, r3]
	cmp r0, 0x17
	bgt _0818CC50
	adds r0, r2, 0x1
	strh r0, [r1, 0xA]
	b _0818CD0C
	.pool
_0818CC50:
	ldr r7, =gUnknown_02024064
	ldrb r0, [r7]
	mov r9, r0
	ldrh r0, [r1, 0x8]
	strb r0, [r7]
	bl battle_type_is_double
	lsls r0, 24
	cmp r0, 0
	beq _0818CC70
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x40
	ands r0, r1
	cmp r0, 0
	beq _0818CCA0
_0818CC70:
	ldr r0, =gUnknown_02023064
	ldrb r1, [r7]
	lsls r2, r1, 9
	adds r0, 0x1
	adds r2, r0
	ldr r0, =gUnknown_0202406E
	lsls r1, 1
	adds r1, r0
	ldrh r0, [r1]
	strb r0, [r2]
	ldrb r0, [r7]
	movs r1, 0
	bl sub_818BA6C
	b _0818CCF4
	.pool
_0818CCA0:
	ldr r4, =gUnknown_02023064
	ldrb r0, [r7]
	lsls r1, r0, 9
	adds r4, 0x1
	adds r1, r4
	ldr r5, =gUnknown_0202406E
	lsls r0, 1
	adds r0, r5
	ldrh r0, [r0]
	strb r0, [r1]
	ldrb r0, [r7]
	movs r1, 0
	bl sub_818BA6C
	ldrb r0, [r7]
	movs r6, 0x2
	eors r0, r6
	strb r0, [r7]
	ldrb r0, [r7]
	lsls r1, r0, 9
	adds r1, r4
	lsls r0, 1
	adds r0, r5
	ldrh r0, [r0]
	strb r0, [r1]
	ldrb r1, [r7]
	lsls r0, r1, 1
	adds r0, r5
	ldrh r2, [r0]
	movs r0, 0x64
	muls r0, r2
	ldr r2, =gPlayerParty
	adds r0, r2
	bl sub_805DD7C
	ldrb r0, [r7]
	movs r1, 0
	bl sub_818BA6C
	ldrb r0, [r7]
	eors r0, r6
	strb r0, [r7]
_0818CCF4:
	ldr r1, =gUnknown_03005D60
	ldr r2, =gUnknown_02024064
	ldrb r0, [r2]
	lsls r0, 2
	adds r0, r1
	ldr r1, =sub_8189D40
	str r1, [r0]
	mov r3, r9
	strb r3, [r2]
	mov r0, r8
	bl DestroyTask
_0818CD0C:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818CC24

	thumb_func_start sub_818CD30
sub_818CD30: @ 818CD30
	push {r4-r6,lr}
	ldr r1, =gUnknown_02023064
	ldr r0, =gUnknown_02024064
	ldrb r2, [r0]
	lsls r0, r2, 9
	adds r1, 0x1
	adds r0, r1
	ldrb r0, [r0]
	cmp r0, 0
	beq _0818CD60
	adds r0, r2, 0
	bl battle_side_get_owner
	lsls r0, 24
	cmp r0, 0
	bne _0818CD60
	bl sub_818A514
	b _0818CDD4
	.pool
_0818CD60:
	ldr r6, =gUnknown_020244D0
	ldr r0, [r6]
	ldr r5, =gUnknown_02024064
	ldrb r1, [r5]
	ldr r2, [r0, 0x4]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r1, [r0]
	movs r2, 0x1
	orrs r1, r2
	strb r1, [r0]
	ldrb r0, [r5]
	lsls r3, r0, 9
	ldr r4, =gUnknown_02023068
	adds r1, r3, r4
	subs r2, r4, 0x3
	adds r2, r3, r2
	ldrb r2, [r2]
	subs r4, 0x2
	adds r3, r4
	ldrb r3, [r3]
	bl sub_80735DC
	ldr r2, =gUnknown_020244B4
	ldrb r1, [r5]
	adds r1, r2
	movs r3, 0
	strb r0, [r1]
	ldr r0, [r6]
	ldrb r1, [r5]
	ldr r2, [r0, 0x4]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	strb r3, [r0, 0x5]
	ldrb r2, [r5]
	lsls r0, r2, 9
	adds r0, r4
	ldrb r0, [r0]
	cmp r0, 0
	beq _0818CDC8
	ldr r0, [r6]
	ldr r1, [r0, 0x4]
	lsls r0, r2, 1
	adds r0, r2
	lsls r0, 2
	adds r0, r1
	movs r1, 0x5D
	strb r1, [r0, 0x5]
_0818CDC8:
	ldr r0, =gUnknown_03005D60
	ldrb r1, [r5]
	lsls r1, 2
	adds r1, r0
	ldr r0, =bx_increment_dp11b_field_5_till_x60_then_resume
	str r0, [r1]
_0818CDD4:
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818CD30

	thumb_func_start bx_increment_dp11b_field_5_till_x60_then_resume
bx_increment_dp11b_field_5_till_x60_then_resume: @ 818CDF4
	push {r4,lr}
	ldr r4, =gUnknown_020244D0
	ldr r0, [r4]
	ldr r3, =gUnknown_02024064
	ldrb r1, [r3]
	ldr r2, [r0, 0x4]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r1, [r0, 0x5]
	adds r2, r1, 0x1
	strb r2, [r0, 0x5]
	lsls r1, 24
	lsrs r1, 24
	cmp r1, 0x5C
	bls _0818CE2C
	ldr r0, [r4]
	ldrb r1, [r3]
	ldr r2, [r0, 0x4]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	movs r1, 0
	strb r1, [r0, 0x5]
	bl sub_818A514
_0818CE2C:
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end bx_increment_dp11b_field_5_till_x60_then_resume

	thumb_func_start sub_818CE3C
sub_818CE3C: @ 818CE3C
	push {lr}
	ldr r0, =gUnknown_020244D0
	ldr r1, [r0]
	ldr r0, =gUnknown_02024064
	ldrb r3, [r0]
	ldr r1, [r1, 0x4]
	lsls r0, r3, 1
	adds r0, r3
	lsls r0, 2
	adds r0, r1
	ldrb r1, [r0]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _0818CE6E
	ldr r2, =gTasks
	ldr r0, =gUnknown_020244B4
	adds r0, r3, r0
	ldrb r1, [r0]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 3
	adds r0, r2
	ldr r1, =sub_8073C30
	str r1, [r0]
_0818CE6E:
	bl sub_818A514
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818CE3C

	thumb_func_start sub_818CE8C
sub_818CE8C: @ 818CE8C
	push {lr}
	bl sub_818A514
	pop {r0}
	bx r0
	thumb_func_end sub_818CE8C

	thumb_func_start sub_818CE98
sub_818CE98: @ 818CE98
	push {r4,lr}
	ldr r4, =gUnknown_02024064
	ldrb r0, [r4]
	bl sub_80A6A90
	lsls r0, 24
	cmp r0, 0
	beq _0818CEDE
	ldr r3, =gUnknown_02020630
	ldr r0, =gUnknown_020241E4
	ldrb r1, [r4]
	adds r0, r1, r0
	ldrb r0, [r0]
	lsls r2, r0, 4
	adds r2, r0
	lsls r2, 2
	adds r2, r3
	ldr r0, =gUnknown_02023064
	lsls r1, 9
	adds r0, 0x1
	adds r1, r0
	adds r2, 0x3E
	movs r0, 0x1
	ldrb r1, [r1]
	ands r1, r0
	lsls r1, 2
	ldrb r3, [r2]
	movs r0, 0x5
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r4]
	bl sub_805E408
_0818CEDE:
	bl sub_818A514
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818CE98

	thumb_func_start sub_818CEF8
sub_818CEF8: @ 818CEF8
	push {r4-r6,lr}
	sub sp, 0x4
	ldr r6, =gUnknown_02024064
	ldrb r0, [r6]
	bl mplay_80342A4
	lsls r0, 24
	cmp r0, 0
	bne _0818CF50
	ldr r5, =gUnknown_02023064
	ldrb r2, [r6]
	lsls r1, r2, 9
	adds r0, r5, 0x1
	adds r0, r1, r0
	ldrb r3, [r0]
	adds r0, r5, 0x2
	adds r0, r1, r0
	ldrb r4, [r0]
	adds r5, 0x3
	adds r1, r5
	ldrb r0, [r1]
	lsls r0, 8
	orrs r4, r0
	str r4, [sp]
	adds r0, r2, 0
	adds r1, r2, 0
	bl move_anim_start_t3
	lsls r0, 24
	cmp r0, 0
	beq _0818CF44
	bl sub_818A514
	b _0818CF50
	.pool
_0818CF44:
	ldr r0, =gUnknown_03005D60
	ldrb r1, [r6]
	lsls r1, 2
	adds r1, r0
	ldr r0, =sub_818A5BC
	str r0, [r1]
_0818CF50:
	add sp, 0x4
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818CEF8

	thumb_func_start sub_818CF60
sub_818CF60: @ 818CF60
	push {lr}
	bl sub_818A514
	pop {r0}
	bx r0
	thumb_func_end sub_818CF60

	thumb_func_start sub_818CF6C
sub_818CF6C: @ 818CF6C
	push {lr}
	bl sub_818A514
	pop {r0}
	bx r0
	thumb_func_end sub_818CF6C

	thumb_func_start sub_818CF78
sub_818CF78: @ 818CF78
	push {r4,lr}
	ldr r2, =gUnknown_0202433A
	ldr r1, =gUnknown_02023064
	ldr r4, =gUnknown_02024064
	ldrb r0, [r4]
	lsls r0, 9
	adds r1, 0x1
	adds r0, r1
	ldrb r0, [r0]
	strb r0, [r2]
	movs r0, 0x5
	bl sub_80A2F50
	movs r0, 0x3
	bl BeginFastPaletteFade
	bl sub_818A514
	ldr r1, =gUnknown_03005D60
	ldrb r0, [r4]
	lsls r0, 2
	adds r0, r1
	ldr r1, =sub_80587B0
	str r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818CF78

	thumb_func_start nullsub_121
nullsub_121: @ 818CFC4
	bx lr
	thumb_func_end nullsub_121

	thumb_func_start nullsub_122
nullsub_122: @ 818CFC8
	bx lr
	thumb_func_end nullsub_122

	thumb_func_start dp13_810BB8C
dp13_810BB8C: @ 818CFCC
	push {r4-r7,lr}
	ldr r4, =gUnknown_0860B058
	ldr r3, =gUnknown_0203CD04
	movs r2, 0x7
_0818CFD4:
	adds r1, r3, 0
	adds r0, r4, 0
	ldm r0!, {r5-r7}
	stm r1!, {r5-r7}
	adds r3, 0xC
	subs r2, 0x1
	cmp r2, 0
	bge _0818CFD4
	movs r0, 0
	pop {r4-r7}
	pop {r1}
	bx r1
	.pool
	thumb_func_end dp13_810BB8C

	thumb_func_start load_pokemon_image_TODO
@ int load_pokemon_image_TODO(int species_num, unsigned int a2, u8 a3, void *a4, int a5, u8 a6)
load_pokemon_image_TODO: @ 818CFF4
	push {r4-r7,lr}
	sub sp, 0x4
	adds r6, r1, 0
	adds r5, r3, 0
	ldr r3, [sp, 0x18]
	ldr r1, [sp, 0x1C]
	lsls r0, 16
	lsrs r4, r0, 16
	adds r7, r4, 0
	lsls r2, 24
	lsrs r2, 24
	lsls r3, 24
	lsls r1, 24
	lsrs r1, 24
	adds r0, r1, 0
	cmp r3, 0
	bne _0818D068
	cmp r2, 0
	beq _0818D034
	cmp r1, 0
	bne _0818D028
	lsls r0, r4, 3
	ldr r1, =gMonFrontPicTable
	b _0818D03C
	.pool
_0818D028:
	lsls r0, r4, 3
	ldr r1, =gMonFrontPicTable
	b _0818D054
	.pool
_0818D034:
	cmp r0, 0
	bne _0818D050
	lsls r0, r4, 3
	ldr r1, =gMonBackPicTable
_0818D03C:
	adds r0, r1
	str r2, [sp]
	adds r1, r5, 0
	adds r2, r4, 0
	adds r3, r6, 0
	bl DecompressMonPic
	b _0818D08E
	.pool
_0818D050:
	lsls r0, r4, 3
	ldr r1, =gMonBackPicTable
_0818D054:
	adds r0, r1
	str r2, [sp]
	adds r1, r5, 0
	adds r2, r4, 0
	adds r3, r6, 0
	bl DecompressMonPicWithoutDuplicatingDeoxysTiles
	b _0818D08E
	.pool
_0818D068:
	cmp r2, 0
	beq _0818D080
	lsls r0, r4, 3
	ldr r1, =gTrainerFrontPicTable
	adds r0, r1
	adds r1, r5, 0
	adds r2, r4, 0
	bl DecompressPicFromTable
	b _0818D08E
	.pool
_0818D080:
	lsls r0, r7, 3
	ldr r1, =gTrainerBackPicTable
	adds r0, r1
	adds r1, r5, 0
	adds r2, r7, 0
	bl DecompressPicFromTable
_0818D08E:
	movs r0, 0
	add sp, 0x4
	pop {r4-r7}
	pop {r1}
	bx r1
	.pool
	thumb_func_end load_pokemon_image_TODO

	thumb_func_start sub_818D09C
sub_818D09C: @ 818D09C
	push {r4,lr}
	sub sp, 0x8
	ldr r4, [sp, 0x10]
	lsls r0, 16
	lsrs r0, 16
	lsls r2, 24
	lsrs r2, 24
	lsls r4, 24
	lsrs r4, 24
	str r4, [sp]
	movs r4, 0
	str r4, [sp, 0x4]
	bl load_pokemon_image_TODO
	lsls r0, 16
	lsrs r0, 16
	add sp, 0x8
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_818D09C

	thumb_func_start sub_818D0C4
sub_818D0C4: @ 818D0C4
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	adds r7, r1, 0
	mov r8, r2
	ldr r1, [sp, 0x18]
	ldr r2, [sp, 0x1C]
	lsls r0, 16
	lsrs r4, r0, 16
	adds r6, r4, 0
	lsls r3, 24
	lsrs r5, r3, 24
	mov r12, r5
	lsls r1, 16
	lsrs r3, r1, 16
	adds r1, r3, 0
	lsls r2, 24
	cmp r2, 0
	bne _0818D128
	ldr r0, =0x0000ffff
	cmp r3, r0
	bne _0818D110
	ldr r2, =gUnknown_0203CCEC
	ldrh r1, [r2, 0x2]
	adds r0, r3, 0
	orrs r0, r1
	strh r0, [r2, 0x2]
	adds r0, r4, 0
	adds r1, r7, 0
	mov r2, r8
	bl species_and_otid_get_pal
	lsls r1, r5, 20
	b _0818D144
	.pool
_0818D110:
	ldr r0, =gUnknown_0203CCEC
	strh r3, [r0, 0x2]
	adds r0, r4, 0
	adds r1, r7, 0
	mov r2, r8
	bl sub_806E7CC
	bl LoadCompressedObjectPalette
	b _0818D16E
	.pool
_0818D128:
	ldr r0, =0x0000ffff
	cmp r3, r0
	bne _0818D160
	ldr r2, =gUnknown_0203CCEC
	ldrh r1, [r2, 0x2]
	adds r0, r3, 0
	orrs r0, r1
	strh r0, [r2, 0x2]
	ldr r1, =gTrainerFrontPicPaletteTable
	lsls r0, r4, 3
	adds r0, r1
	ldr r0, [r0]
	mov r2, r12
	lsls r1, r2, 20
_0818D144:
	movs r2, 0x80
	lsls r2, 17
	adds r1, r2
	lsrs r1, 16
	movs r2, 0x20
	bl LoadCompressedPalette
	b _0818D16E
	.pool
_0818D160:
	ldr r0, =gUnknown_0203CCEC
	strh r1, [r0, 0x2]
	lsls r0, r6, 3
	ldr r1, =gTrainerFrontPicPaletteTable
	adds r0, r1
	bl LoadCompressedObjectPalette
_0818D16E:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818D0C4

	thumb_func_start sub_818D180
sub_818D180: @ 818D180
	push {r4,r5,lr}
	adds r5, r1, 0
	ldr r1, [sp, 0xC]
	lsls r0, 16
	lsrs r0, 16
	lsls r3, 24
	lsrs r4, r3, 24
	lsls r1, 24
	cmp r1, 0
	bne _0818D1A4
	adds r1, r5, 0
	bl species_and_otid_get_pal
	lsls r1, r4, 4
	movs r2, 0x20
	bl LoadCompressedPalette
	b _0818D1B4
_0818D1A4:
	ldr r1, =gTrainerFrontPicPaletteTable
	lsls r0, 3
	adds r0, r1
	ldr r0, [r0]
	lsls r1, r4, 4
	movs r2, 0x20
	bl LoadCompressedPalette
_0818D1B4:
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818D180

	thumb_func_start uns_builder_assign_animtable1
uns_builder_assign_animtable1: @ 818D1C0
	push {lr}
	lsls r0, 24
	cmp r0, 0
	bne _0818D1D8
	ldr r1, =gUnknown_0203CCEC
	ldr r0, =gUnknown_082FF70C
	str r0, [r1, 0x8]
	b _0818D1E0
	.pool
_0818D1D8:
	ldr r0, =gUnknown_0203CCEC
	ldr r1, =gUnknown_0830536C
	ldr r1, [r1]
	str r1, [r0, 0x8]
_0818D1E0:
	pop {r0}
	bx r0
	.pool
	thumb_func_end uns_builder_assign_animtable1

	thumb_func_start oamt_spawn_poke_or_trainer_picture
oamt_spawn_poke_or_trainer_picture: @ 818D1EC
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x30
	str r1, [sp, 0xC]
	str r2, [sp, 0x10]
	ldr r1, [sp, 0x50]
	ldr r2, [sp, 0x54]
	ldr r4, [sp, 0x58]
	ldr r5, [sp, 0x5C]
	ldr r6, [sp, 0x60]
	ldr r7, [sp, 0x64]
	mov r8, r7
	lsls r0, 16
	lsrs r0, 16
	str r0, [sp, 0x8]
	lsls r3, 24
	lsrs r3, 24
	str r3, [sp, 0x14]
	lsls r1, 16
	lsrs r1, 16
	str r1, [sp, 0x18]
	lsls r2, 16
	lsrs r2, 16
	str r2, [sp, 0x1C]
	lsls r4, 24
	lsrs r4, 24
	str r4, [sp, 0x20]
	lsls r5, 16
	lsrs r5, 16
	mov r10, r5
	lsls r6, 24
	lsrs r6, 24
	mov r9, r6
	mov r0, r8
	lsls r0, 24
	lsrs r5, r0, 24
	movs r4, 0
	ldr r1, =gUnknown_0203CD04
	ldrb r0, [r1, 0xB]
	cmp r0, 0
	beq _0818D25C
_0818D244:
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x7
	bhi _0818D25C
	lsls r0, r4, 1
	adds r0, r4
	lsls r0, 2
	adds r0, r1
	ldrb r0, [r0, 0xB]
	cmp r0, 0
	bne _0818D244
_0818D25C:
	cmp r4, 0x8
	beq _0818D280
	movs r0, 0x80
	lsls r0, 6
	bl Alloc
	adds r7, r0, 0
	cmp r7, 0
	beq _0818D280
	movs r0, 0x20
	bl Alloc
	mov r8, r0
	cmp r0, 0
	bne _0818D28C
	adds r0, r7, 0
	bl Free
_0818D280:
	ldr r0, =0x0000ffff
	b _0818D356
	.pool
_0818D28C:
	mov r1, r9
	str r1, [sp]
	str r5, [sp, 0x4]
	ldr r0, [sp, 0x8]
	ldr r1, [sp, 0x10]
	ldr r2, [sp, 0x14]
	adds r3, r7, 0
	bl load_pokemon_image_TODO
	lsls r0, 16
	cmp r0, 0
	bne _0818D280
	lsls r2, r4, 1
	str r2, [sp, 0x2C]
	ldr r5, =gUnknown_0203CCEC
	ldr r0, =gUnknown_0860B064
	mov r12, r0
	ldr r1, [sp, 0x18]
	lsls r1, 16
	str r1, [sp, 0x24]
	ldr r2, [sp, 0x1C]
	lsls r2, 16
	str r2, [sp, 0x28]
	movs r3, 0x80
	lsls r3, 4
	mov r0, r8
	adds r1, r7, 0
	adds r6, r3, 0
	movs r2, 0x3
_0818D2C6:
	str r1, [r0]
	strh r3, [r0, 0x4]
	adds r0, 0x8
	adds r1, r6
	subs r2, 0x1
	cmp r2, 0
	bge _0818D2C6
	ldr r0, =0x0000ffff
	strh r0, [r5]
	mov r0, r12
	str r0, [r5, 0x4]
	mov r0, r9
	bl uns_builder_assign_animtable1
	mov r1, r8
	str r1, [r5, 0xC]
	ldr r0, =gDummyObjectRotScalAnimTable
	str r0, [r5, 0x10]
	ldr r0, =nullsub_122
	str r0, [r5, 0x14]
	mov r2, r10
	str r2, [sp]
	mov r0, r9
	str r0, [sp, 0x4]
	ldr r0, [sp, 0x8]
	ldr r1, [sp, 0xC]
	ldr r2, [sp, 0x10]
	ldr r3, [sp, 0x20]
	bl sub_818D0C4
	ldr r2, [sp, 0x24]
	asrs r1, r2, 16
	ldr r0, [sp, 0x28]
	asrs r2, r0, 16
	adds r0, r5, 0
	movs r3, 0
	bl AddObjectToFront
	lsls r0, 24
	lsrs r2, r0, 24
	adds r6, r2, 0
	ldr r0, =0x0000ffff
	cmp r10, r0
	bne _0818D336
	ldr r0, =gUnknown_02020630
	lsls r1, r2, 4
	adds r1, r2
	lsls r1, 2
	adds r1, r0
	ldr r2, [sp, 0x20]
	lsls r3, r2, 4
	ldrb r2, [r1, 0x5]
	movs r0, 0xF
	ands r0, r2
	orrs r0, r3
	strb r0, [r1, 0x5]
_0818D336:
	ldr r1, =gUnknown_0203CD04
	ldr r2, [sp, 0x2C]
	adds r0, r2, r4
	lsls r0, 2
	adds r2, r0, r1
	str r7, [r2]
	adds r1, 0x4
	adds r0, r1
	mov r7, r8
	str r7, [r0]
	mov r0, r10
	strh r0, [r2, 0x8]
	strb r6, [r2, 0xA]
	movs r0, 0x1
	strb r0, [r2, 0xB]
	adds r0, r6, 0
_0818D356:
	add sp, 0x30
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	.pool
	thumb_func_end oamt_spawn_poke_or_trainer_picture

	thumb_func_start sub_818D384
sub_818D384: @ 818D384
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, 0x18
	ldr r4, [sp, 0x34]
	ldr r5, [sp, 0x38]
	ldr r6, [sp, 0x3C]
	ldr r7, [sp, 0x40]
	mov r8, r7
	ldr r7, [sp, 0x44]
	mov r9, r7
	lsls r0, 16
	lsrs r0, 16
	lsls r3, 24
	lsrs r3, 24
	lsls r6, 24
	lsrs r6, 24
	mov r7, r8
	lsls r7, 16
	lsrs r7, 16
	mov r8, r7
	mov r7, r9
	lsls r7, 24
	lsrs r7, 24
	lsls r4, 16
	asrs r4, 16
	str r4, [sp]
	lsls r5, 16
	asrs r5, 16
	str r5, [sp, 0x4]
	str r6, [sp, 0x8]
	mov r4, r8
	str r4, [sp, 0xC]
	str r7, [sp, 0x10]
	movs r4, 0
	str r4, [sp, 0x14]
	bl oamt_spawn_poke_or_trainer_picture
	lsls r0, 16
	lsrs r0, 16
	add sp, 0x18
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end sub_818D384

	thumb_func_start sub_818D3E4
sub_818D3E4: @ 818D3E4
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x2C
	str r1, [sp, 0x8]
	str r2, [sp, 0xC]
	ldr r1, [sp, 0x4C]
	ldr r2, [sp, 0x50]
	ldr r4, [sp, 0x54]
	ldr r5, [sp, 0x58]
	lsls r0, 16
	lsrs r0, 16
	mov r10, r0
	lsls r3, 24
	lsrs r6, r3, 24
	lsls r1, 16
	lsrs r1, 16
	str r1, [sp, 0x10]
	lsls r2, 16
	lsrs r2, 16
	str r2, [sp, 0x14]
	lsls r4, 24
	lsrs r4, 24
	str r4, [sp, 0x18]
	lsls r5, 16
	lsrs r5, 16
	str r5, [sp, 0x1C]
	movs r5, 0
	ldr r1, =gUnknown_0203CD04
	ldrb r0, [r1, 0xB]
	cmp r0, 0
	beq _0818D440
_0818D428:
	adds r0, r5, 0x1
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, 0x7
	bhi _0818D440
	lsls r0, r5, 1
	adds r0, r5
	lsls r0, 2
	adds r0, r1
	ldrb r0, [r0, 0xB]
	cmp r0, 0
	bne _0818D428
_0818D440:
	cmp r5, 0x8
	beq _0818D47C
	movs r0, 0x80
	lsls r0, 6
	bl Alloc
	adds r7, r0, 0
	cmp r7, 0
	beq _0818D47C
	movs r0, 0x80
	ands r0, r6
	cmp r0, 0
	beq _0818D468
	movs r0, 0x7F
	ands r6, r0
	movs r0, 0x3
	mov r9, r0
	b _0818D46A
	.pool
_0818D468:
	mov r9, r6
_0818D46A:
	movs r0, 0x20
	bl Alloc
	mov r8, r0
	cmp r0, 0
	bne _0818D484
	adds r0, r7, 0
	bl Free
_0818D47C:
	ldr r0, =0x0000ffff
	b _0818D588
	.pool
_0818D484:
	movs r0, 0
	str r0, [sp]
	str r0, [sp, 0x4]
	mov r0, r10
	ldr r1, [sp, 0xC]
	adds r2, r6, 0
	adds r3, r7, 0
	bl load_pokemon_image_TODO
	lsls r0, 16
	cmp r0, 0
	bne _0818D47C
	lsls r1, r5, 1
	str r1, [sp, 0x28]
	ldr r4, =gUnknown_0203CCEC
	mov r2, r10
	lsls r2, 2
	mov r12, r2
	ldr r0, [sp, 0x10]
	lsls r0, 16
	str r0, [sp, 0x20]
	ldr r1, [sp, 0x14]
	lsls r1, 16
	str r1, [sp, 0x24]
	movs r3, 0x80
	lsls r3, 4
	mov r0, r8
	adds r1, r7, 0
	adds r6, r3, 0
	movs r2, 0x3
_0818D4C0:
	str r1, [r0]
	strh r3, [r0, 0x4]
	adds r0, 0x8
	adds r1, r6
	subs r2, 0x1
	cmp r2, 0
	bge _0818D4C0
	ldr r0, =0x0000ffff
	strh r0, [r4]
	ldr r0, =gUnknown_08309AAC
	add r0, r12
	ldr r0, [r0]
	str r0, [r4, 0x8]
	mov r2, r8
	str r2, [r4, 0xC]
	mov r0, r9
	cmp r0, 0x1
	bne _0818D4F8
	ldr r0, =gUnknown_082FF694
	b _0818D500
	.pool
_0818D4F8:
	mov r1, r9
	cmp r1, 0
	bne _0818D510
	ldr r0, =gUnknown_082FF618
_0818D500:
	str r0, [r4, 0x10]
	ldr r0, =gUnknown_0860B06C
	str r0, [r4, 0x4]
	b _0818D518
	.pool
_0818D510:
	ldr r0, =gUnknown_0860B064
	str r0, [r4, 0x4]
	ldr r0, =gDummyObjectRotScalAnimTable
	str r0, [r4, 0x10]
_0818D518:
	ldr r2, =nullsub_122
	str r2, [r4, 0x14]
	ldr r0, [sp, 0x1C]
	str r0, [sp]
	movs r0, 0
	str r0, [sp, 0x4]
	mov r0, r10
	ldr r1, [sp, 0x8]
	ldr r2, [sp, 0xC]
	ldr r3, [sp, 0x18]
	bl sub_818D0C4
	ldr r2, [sp, 0x20]
	asrs r1, r2, 16
	ldr r0, [sp, 0x24]
	asrs r2, r0, 16
	adds r0, r4, 0
	movs r3, 0
	bl AddObjectToFront
	lsls r0, 24
	lsrs r2, r0, 24
	adds r6, r2, 0
	ldr r0, =0x0000ffff
	ldr r1, [sp, 0x1C]
	cmp r1, r0
	bne _0818D566
	ldr r0, =gUnknown_02020630
	lsls r1, r2, 4
	adds r1, r2
	lsls r1, 2
	adds r1, r0
	ldr r2, [sp, 0x18]
	lsls r3, r2, 4
	ldrb r2, [r1, 0x5]
	movs r0, 0xF
	ands r0, r2
	orrs r0, r3
	strb r0, [r1, 0x5]
_0818D566:
	ldr r1, =gUnknown_0203CD04
	ldr r2, [sp, 0x28]
	adds r0, r2, r5
	lsls r0, 2
	adds r2, r0, r1
	str r7, [r2]
	adds r1, 0x4
	adds r0, r1
	mov r1, r8
	str r1, [r0]
	mov r0, sp
	ldrh r0, [r0, 0x1C]
	strh r0, [r2, 0x8]
	strb r6, [r2, 0xA]
	movs r0, 0x1
	strb r0, [r2, 0xB]
	adds r0, r6, 0
_0818D588:
	add sp, 0x2C
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_818D3E4

	thumb_func_start sub_818D5B0
sub_818D5B0: @ 818D5B0
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	lsls r0, 16
	lsrs r4, r0, 16
	movs r2, 0
	ldr r0, =gUnknown_0203CD04
	ldrb r1, [r0, 0xA]
	adds r3, r0, 0
	cmp r1, r4
	beq _0818D5E0
	adds r1, r3, 0
_0818D5C8:
	adds r0, r2, 0x1
	lsls r0, 24
	lsrs r2, r0, 24
	cmp r2, 0x7
	bhi _0818D5E0
	lsls r0, r2, 1
	adds r0, r2
	lsls r0, 2
	adds r0, r1
	ldrb r0, [r0, 0xA]
	cmp r0, r4
	bne _0818D5C8
_0818D5E0:
	cmp r2, 0x8
	bne _0818D5F0
	ldr r0, =0x0000ffff
	b _0818D646
	.pool
_0818D5F0:
	lsls r0, r2, 1
	adds r0, r2
	lsls r0, 2
	adds r5, r0, r3
	ldr r1, [r5]
	mov r8, r1
	adds r1, r3, 0x4
	adds r0, r1
	ldr r7, [r0]
	ldrh r1, [r5, 0x8]
	ldr r0, =0x0000ffff
	lsls r6, r4, 4
	cmp r1, r0
	beq _0818D624
	ldr r1, =gUnknown_02020630
	adds r0, r6, r4
	lsls r0, 2
	adds r0, r1
	ldrb r0, [r0, 0x5]
	lsrs r0, 4
	bl GetObjectPaletteTagBySlot
	lsls r0, 16
	lsrs r0, 16
	bl FreeObjectPaletteByTag
_0818D624:
	adds r0, r6, r4
	lsls r0, 2
	ldr r1, =gUnknown_02020630
	adds r0, r1
	bl RemoveObjectAndFreeTiles
	mov r0, r8
	bl Free
	adds r0, r7, 0
	bl Free
	adds r1, r5, 0
	ldr r0, =gUnknown_0860B058
	ldm r0!, {r2-r4}
	stm r1!, {r2-r4}
	movs r0, 0
_0818D646:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_818D5B0

	thumb_func_start sub_818D65C
sub_818D65C: @ 818D65C
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, 0x4
	mov r9, r1
	adds r7, r2, 0
	adds r4, r3, 0
	ldr r1, [sp, 0x20]
	ldr r2, [sp, 0x24]
	ldr r3, [sp, 0x28]
	lsls r0, 16
	lsrs r5, r0, 16
	lsls r4, 24
	lsrs r4, 24
	lsls r1, 24
	lsrs r1, 24
	mov r8, r1
	lsls r2, 24
	lsrs r2, 24
	lsls r3, 24
	lsrs r6, r3, 24
	adds r0, r2, 0
	movs r1, 0x7
	bl GetWindowAttribute
	adds r3, r0, 0
	movs r0, 0
	str r0, [sp]
	adds r0, r5, 0
	adds r1, r7, 0
	adds r2, r4, 0
	bl sub_818D09C
	lsls r0, 16
	cmp r0, 0
	bne _0818D6B8
	str r6, [sp]
	adds r0, r5, 0
	mov r1, r9
	adds r2, r7, 0
	mov r3, r8
	bl sub_818D180
	movs r0, 0
	b _0818D6BA
_0818D6B8:
	ldr r0, =0x0000ffff
_0818D6BA:
	add sp, 0x4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_818D65C

	thumb_func_start sub_818D6CC
sub_818D6CC: @ 818D6CC
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x24
	str r1, [sp, 0x18]
	str r2, [sp, 0x1C]
	ldr r1, [sp, 0x44]
	ldr r2, [sp, 0x48]
	ldr r4, [sp, 0x4C]
	ldr r5, [sp, 0x50]
	ldr r6, [sp, 0x54]
	lsls r0, 16
	lsrs r0, 16
	mov r9, r0
	lsls r3, 24
	lsrs r7, r3, 24
	lsls r1, 16
	lsrs r1, 16
	mov r10, r1
	lsls r2, 16
	lsrs r2, 16
	mov r8, r2
	lsls r4, 24
	lsrs r4, 24
	str r4, [sp, 0x20]
	lsls r5, 24
	lsrs r5, 24
	lsls r6, 24
	lsrs r6, 24
	movs r0, 0x80
	lsls r0, 6
	bl Alloc
	adds r4, r0, 0
	cmp r4, 0
	beq _0818D762
	str r6, [sp]
	mov r0, r9
	ldr r1, [sp, 0x1C]
	adds r2, r7, 0
	adds r3, r4, 0
	bl sub_818D09C
	lsls r0, 16
	cmp r0, 0
	bne _0818D762
	movs r0, 0x40
	str r0, [sp]
	str r0, [sp, 0x4]
	mov r1, r10
	str r1, [sp, 0x8]
	mov r1, r8
	str r1, [sp, 0xC]
	str r0, [sp, 0x10]
	str r0, [sp, 0x14]
	adds r0, r5, 0
	adds r1, r4, 0
	movs r2, 0
	movs r3, 0
	bl BlitBitmapRectToWindow
	str r6, [sp]
	mov r0, r9
	ldr r1, [sp, 0x18]
	ldr r2, [sp, 0x1C]
	ldr r3, [sp, 0x20]
	bl sub_818D180
	adds r0, r4, 0
	bl Free
	movs r0, 0
	b _0818D764
_0818D762:
	ldr r0, =0x0000ffff
_0818D764:
	add sp, 0x24
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_818D6CC

	thumb_func_start sub_818D778
sub_818D778: @ 818D778
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, 0x18
	ldr r4, [sp, 0x34]
	ldr r5, [sp, 0x38]
	ldr r6, [sp, 0x3C]
	ldr r7, [sp, 0x40]
	mov r8, r7
	ldr r7, [sp, 0x44]
	mov r9, r7
	lsls r0, 16
	lsrs r0, 16
	lsls r3, 24
	lsrs r3, 24
	lsls r6, 24
	lsrs r6, 24
	mov r7, r8
	lsls r7, 16
	lsrs r7, 16
	mov r8, r7
	mov r7, r9
	lsls r7, 24
	lsrs r7, 24
	lsls r4, 16
	asrs r4, 16
	str r4, [sp]
	lsls r5, 16
	asrs r5, 16
	str r5, [sp, 0x4]
	str r6, [sp, 0x8]
	mov r4, r8
	str r4, [sp, 0xC]
	movs r4, 0
	str r4, [sp, 0x10]
	str r7, [sp, 0x14]
	bl oamt_spawn_poke_or_trainer_picture
	lsls r0, 16
	lsrs r0, 16
	add sp, 0x18
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end sub_818D778

	thumb_func_start sub_818D7D8
sub_818D7D8: @ 818D7D8
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, 0x14
	ldr r4, [sp, 0x2C]
	ldr r5, [sp, 0x30]
	ldr r6, [sp, 0x34]
	ldr r7, [sp, 0x38]
	lsls r0, 16
	lsrs r0, 16
	lsls r3, 24
	lsrs r3, 24
	lsls r6, 24
	lsrs r6, 24
	lsls r7, 16
	lsrs r7, 16
	lsls r4, 16
	asrs r4, 16
	str r4, [sp]
	lsls r5, 16
	asrs r5, 16
	str r5, [sp, 0x4]
	str r6, [sp, 0x8]
	str r7, [sp, 0xC]
	movs r4, 0
	str r4, [sp, 0x10]
	bl sub_818D778
	lsls r0, 16
	lsrs r0, 16
	add sp, 0x14
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end sub_818D7D8

	thumb_func_start sub_818D820
sub_818D820: @ 818D820
	push {lr}
	lsls r0, 16
	lsrs r0, 16
	bl sub_818D5B0
	lsls r0, 16
	lsrs r0, 16
	pop {r1}
	bx r1
	thumb_func_end sub_818D820

	thumb_func_start sub_818D834
sub_818D834: @ 818D834
	push {r4,r5,lr}
	sub sp, 0xC
	ldr r4, [sp, 0x18]
	ldr r5, [sp, 0x1C]
	lsls r0, 16
	lsrs r0, 16
	lsls r3, 24
	lsrs r3, 24
	lsls r4, 24
	lsrs r4, 24
	lsls r5, 24
	lsrs r5, 24
	str r4, [sp]
	str r5, [sp, 0x4]
	movs r4, 0
	str r4, [sp, 0x8]
	bl sub_818D65C
	lsls r0, 16
	lsrs r0, 16
	add sp, 0xC
	pop {r4,r5}
	pop {r1}
	bx r1
	thumb_func_end sub_818D834

	thumb_func_start sub_818D864
sub_818D864: @ 818D864
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, 0x14
	ldr r4, [sp, 0x2C]
	ldr r5, [sp, 0x30]
	ldr r6, [sp, 0x34]
	ldr r7, [sp, 0x38]
	lsls r0, 16
	lsrs r0, 16
	lsls r3, 24
	lsrs r3, 24
	lsls r4, 16
	lsrs r4, 16
	lsls r5, 16
	lsrs r5, 16
	lsls r6, 24
	lsrs r6, 24
	lsls r7, 24
	lsrs r7, 24
	str r4, [sp]
	str r5, [sp, 0x4]
	str r6, [sp, 0x8]
	str r7, [sp, 0xC]
	movs r4, 0
	str r4, [sp, 0x10]
	bl sub_818D6CC
	lsls r0, 16
	lsrs r0, 16
	add sp, 0x14
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end sub_818D864

	thumb_func_start sub_818D8AC
sub_818D8AC: @ 818D8AC
	push {r4,r5,lr}
	sub sp, 0x14
	adds r5, r1, 0
	ldr r1, [sp, 0x20]
	ldr r4, [sp, 0x24]
	lsls r0, 16
	lsrs r0, 16
	lsls r5, 24
	lsrs r5, 24
	lsls r1, 24
	lsrs r1, 24
	lsls r4, 16
	lsrs r4, 16
	lsls r2, 16
	asrs r2, 16
	str r2, [sp]
	lsls r3, 16
	asrs r3, 16
	str r3, [sp, 0x4]
	str r1, [sp, 0x8]
	str r4, [sp, 0xC]
	movs r1, 0x1
	str r1, [sp, 0x10]
	movs r1, 0
	movs r2, 0
	adds r3, r5, 0
	bl sub_818D384
	lsls r0, 16
	lsrs r0, 16
	add sp, 0x14
	pop {r4,r5}
	pop {r1}
	bx r1
	thumb_func_end sub_818D8AC

	thumb_func_start sub_818D8F0
sub_818D8F0: @ 818D8F0
	push {lr}
	lsls r0, 16
	lsrs r0, 16
	bl sub_818D5B0
	lsls r0, 16
	lsrs r0, 16
	pop {r1}
	bx r1
	thumb_func_end sub_818D8F0

	thumb_func_start sub_818D904
sub_818D904: @ 818D904
	push {r4,lr}
	sub sp, 0xC
	adds r4, r1, 0
	lsls r0, 16
	lsrs r0, 16
	lsls r4, 24
	lsrs r4, 24
	lsls r2, 24
	lsrs r2, 24
	lsls r3, 24
	lsrs r3, 24
	str r2, [sp]
	str r3, [sp, 0x4]
	movs r1, 0x1
	str r1, [sp, 0x8]
	movs r1, 0
	movs r2, 0
	adds r3, r4, 0
	bl sub_818D65C
	lsls r0, 16
	lsrs r0, 16
	add sp, 0xC
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_818D904

	thumb_func_start sub_818D938
sub_818D938: @ 818D938
	push {r4,r5,lr}
	sub sp, 0x14
	adds r5, r1, 0
	ldr r1, [sp, 0x20]
	ldr r4, [sp, 0x24]
	lsls r0, 16
	lsrs r0, 16
	lsls r5, 24
	lsrs r5, 24
	lsls r2, 16
	lsrs r2, 16
	lsls r3, 16
	lsrs r3, 16
	lsls r1, 24
	lsrs r1, 24
	lsls r4, 24
	lsrs r4, 24
	str r2, [sp]
	str r3, [sp, 0x4]
	str r1, [sp, 0x8]
	str r4, [sp, 0xC]
	movs r1, 0x1
	str r1, [sp, 0x10]
	movs r1, 0
	movs r2, 0
	adds r3, r5, 0
	bl sub_818D6CC
	lsls r0, 16
	lsrs r0, 16
	add sp, 0x14
	pop {r4,r5}
	pop {r1}
	bx r1
	thumb_func_end sub_818D938

	thumb_func_start sub_818D97C
sub_818D97C: @ 818D97C
	push {lr}
	lsls r0, 24
	lsrs r0, 24
	lsls r1, 24
	lsrs r1, 24
	cmp r1, 0x1
	bne _0818D9A2
	cmp r0, 0
	beq _0818D99C
	ldr r0, =gTrainerPicIndices
	adds r0, 0x3F
	ldrb r0, [r0]
	b _0818D9A2
	.pool
_0818D99C:
	ldr r0, =gTrainerPicIndices
	adds r0, 0x3C
	ldrb r0, [r0]
_0818D9A2:
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_818D97C

	thumb_func_start sub_818D9AC
sub_818D9AC: @ 818D9AC
	ldr r0, =gSaveBlock1Ptr
	ldr r0, [r0]
	ldr r1, =0x00003b58
	adds r0, r1
	ldrb r0, [r0]
	bx lr
	.pool
	thumb_func_end sub_818D9AC

	thumb_func_start sub_818D9C0
sub_818D9C0: @ 818D9C0
	push {r4,r5,lr}
	ldr r5, =0x00004010
	ldr r4, =gUnknown_0860B07E
	bl sub_818D9AC
	lsls r0, 24
	lsrs r0, 23
	adds r0, r4
	ldrh r1, [r0]
	adds r0, r5, 0
	bl VarSet
	bl sub_818D9AC
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x2
	bne _0818DA20
	ldr r0, =gSaveBlock1Ptr
	ldr r1, [r0]
	ldr r0, =0x00003b58
	adds r1, r0
	ldr r0, =0x00004011
	ldr r2, =gUnknown_0860B074
	ldrb r1, [r1, 0xD]
	lsls r1, 1
	adds r1, r2
	ldrh r1, [r1]
	bl VarSet
	ldr r1, =gUnknown_020375F0
	movs r0, 0x1
	b _0818DA24
	.pool
_0818DA20:
	ldr r1, =gUnknown_020375F0
	movs r0, 0
_0818DA24:
	strh r0, [r1]
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818D9C0

	thumb_func_start sub_818DA30
sub_818DA30: @ 818DA30
	push {lr}
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldrb r1, [r0, 0xB]
	lsls r1, 8
	ldrb r0, [r0, 0xA]
	orrs r0, r1
	movs r1, 0x6
	bl __umodsi3
	lsls r0, 16
	lsrs r0, 17
	adds r1, r0, 0
	cmp r0, 0x1
	beq _0818DA68
	cmp r0, 0x1
	bgt _0818DA5C
	cmp r0, 0
	beq _0818DA62
	b _0818DA72
	.pool
_0818DA5C:
	cmp r1, 0x2
	beq _0818DA6E
	b _0818DA72
_0818DA62:
	bl sub_818DF68
	b _0818DA72
_0818DA68:
	bl sub_818DB7C
	b _0818DA72
_0818DA6E:
	bl sub_818E638
_0818DA72:
	pop {r0}
	bx r0
	thumb_func_end sub_818DA30

	thumb_func_start sub_818DA78
sub_818DA78: @ 818DA78
	push {lr}
	bl sub_818D9AC
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	beq _0818DA9C
	cmp r0, 0x1
	bgt _0818DA90
	cmp r0, 0
	beq _0818DA96
	b _0818DAA6
_0818DA90:
	cmp r0, 0x2
	beq _0818DAA2
	b _0818DAA6
_0818DA96:
	bl sub_818E004
	b _0818DAA6
_0818DA9C:
	bl sub_818DBC4
	b _0818DAA6
_0818DAA2:
	bl sub_818E674
_0818DAA6:
	pop {r0}
	bx r0
	thumb_func_end sub_818DA78

	thumb_func_start sub_818DAAC
sub_818DAAC: @ 818DAAC
	push {lr}
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x3
	bl __umodsi3
	lsls r0, 24
	lsrs r0, 24
	adds r1, r0, 0
	cmp r0, 0x1
	beq _0818DADC
	cmp r0, 0x1
	bgt _0818DAD0
	cmp r0, 0
	beq _0818DAD6
	b _0818DAE6
_0818DAD0:
	cmp r1, 0x2
	beq _0818DAE2
	b _0818DAE6
_0818DAD6:
	bl sub_818DF68
	b _0818DAE6
_0818DADC:
	bl sub_818DB7C
	b _0818DAE6
_0818DAE2:
	bl sub_818E638
_0818DAE6:
	pop {r0}
	bx r0
	thumb_func_end sub_818DAAC

	thumb_func_start sub_818DAEC
sub_818DAEC: @ 818DAEC
	push {r4,lr}
	ldr r4, =gUnknown_020375F0
	bl sub_818D9AC
	lsls r0, 24
	lsrs r0, 24
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818DAEC

	thumb_func_start sub_818DB04
sub_818DB04: @ 818DB04
	push {lr}
	adds r1, r0, 0
	movs r2, 0
	b _0818DB14
_0818DB0C:
	adds r0, r2, 0x1
	lsls r0, 24
	lsrs r2, r0, 24
	adds r1, 0x2
_0818DB14:
	ldrh r0, [r1]
	cmp r0, 0
	bne _0818DB0C
	adds r0, r2, 0
	pop {r1}
	bx r1
	thumb_func_end sub_818DB04

	thumb_func_start sub_818DB20
sub_818DB20: @ 818DB20
	push {r4-r6,lr}
	bl Random
	ldr r5, =gUnknown_0203CD64
	ldr r4, [r5]
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x6
	bl __umodsi3
	strb r0, [r4, 0xC]
	ldr r6, =gUnknown_0860B2EC
	ldr r0, [r5]
	ldrb r0, [r0, 0xC]
	lsls r0, 2
	adds r0, r6
	ldr r0, [r0]
	bl sub_818DB04
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	bl Random
	lsls r0, 16
	lsrs r0, 16
	adds r1, r4, 0
	bl __modsi3
	lsls r0, 24
	ldr r2, [r5]
	ldrb r1, [r2, 0xC]
	lsls r1, 2
	adds r1, r6
	ldr r1, [r1]
	lsrs r0, 23
	adds r0, r1
	ldrh r0, [r0]
	strh r0, [r2, 0x10]
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818DB20

	thumb_func_start sub_818DB7C
sub_818DB7C: @ 818DB7C
	push {lr}
	ldr r2, =gUnknown_0203CD64
	ldr r0, =gSaveBlock1Ptr
	ldr r0, [r0]
	ldr r1, =0x00003b58
	adds r0, r1
	str r0, [r2]
	movs r3, 0
	movs r1, 0x1
	strb r1, [r0]
	ldr r0, [r2]
	strb r3, [r0, 0x1]
	ldr r1, [r2]
	movs r0, 0xFF
	strb r0, [r1, 0x4]
	ldr r0, [r2]
	strb r3, [r0, 0x2]
	ldr r0, [r2]
	strb r3, [r0, 0x3]
	ldr r1, [r2]
	strh r3, [r1, 0xE]
	ldr r0, =gGameLanguage
	ldrb r0, [r0]
	strb r0, [r1, 0x12]
	bl sub_818DB20
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818DB7C

	thumb_func_start sub_818DBC4
sub_818DBC4: @ 818DBC4
	ldr r3, =gUnknown_0203CD64
	ldr r0, =gSaveBlock1Ptr
	ldr r0, [r0]
	ldr r1, =0x00003b58
	adds r0, r1
	str r0, [r3]
	movs r2, 0
	movs r1, 0x1
	strb r1, [r0]
	ldr r0, [r3]
	strb r2, [r0, 0x1]
	bx lr
	.pool
	thumb_func_end sub_818DBC4

	thumb_func_start sub_818DBE8
sub_818DBE8: @ 818DBE8
	push {lr}
	ldr r1, =gUnknown_0203CD64
	ldr r0, =gSaveBlock1Ptr
	ldr r0, [r0]
	ldr r2, =0x00003b58
	adds r0, r2
	str r0, [r1]
	ldrb r0, [r0, 0x1]
	cmp r0, 0x2
	bne _0818DC0C
	movs r0, 0x2
	b _0818DC16
	.pool
_0818DC0C:
	cmp r0, 0x1
	beq _0818DC14
	movs r0, 0
	b _0818DC16
_0818DC14:
	movs r0, 0x1
_0818DC16:
	pop {r1}
	bx r1
	thumb_func_end sub_818DBE8

	thumb_func_start sub_818DC1C
sub_818DC1C: @ 818DC1C
	lsls r0, 24
	ldr r1, =gUnknown_0860B224
	lsrs r0, 22
	adds r0, r1
	ldr r0, [r0]
	bx lr
	.pool
	thumb_func_end sub_818DC1C

	thumb_func_start sub_818DC2C
sub_818DC2C: @ 818DC2C
	push {r4,lr}
	ldr r1, =gUnknown_0203CD64
	ldr r0, =gSaveBlock1Ptr
	ldr r0, [r0]
	ldr r2, =0x00003b58
	adds r0, r2
	str r0, [r1]
	ldr r4, =gStringVar1
	ldrb r0, [r0, 0xC]
	bl sub_818DC1C
	adds r1, r0, 0
	adds r0, r4, 0
	bl StringCopy
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818DC2C

	thumb_func_start sub_818DC60
sub_818DC60: @ 818DC60
	push {r4,r5,lr}
	ldr r5, =gUnknown_0203CD64
	ldr r0, =gSaveBlock1Ptr
	ldr r1, [r0]
	ldr r2, =0x00003b58
	adds r0, r1, r2
	str r0, [r5]
	ldrb r0, [r0, 0x4]
	cmp r0, 0xFF
	bne _0818DC84
	movs r0, 0
	b _0818DC9C
	.pool
_0818DC84:
	ldr r4, =gStringVar3
	ldr r0, =0x00003b5c
	adds r1, r0
	adds r0, r4, 0
	bl StringCopy7
	ldr r0, [r5]
	ldrb r1, [r0, 0x12]
	adds r0, r4, 0
	bl ConvertInternationalString
	movs r0, 0x1
_0818DC9C:
	pop {r4,r5}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_818DC60

	thumb_func_start sub_818DCAC
sub_818DCAC: @ 818DCAC
	push {r4,lr}
	adds r4, r0, 0
	lsls r0, r1, 16
	lsrs r0, 16
	bl itemid_get_item
	adds r1, r0, 0
	adds r0, r4, 0
	bl StringCopy
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_818DCAC

	thumb_func_start sub_818DCC8
sub_818DCC8: @ 818DCC8
	push {lr}
	ldr r2, =gUnknown_0203CD64
	ldr r0, =gSaveBlock1Ptr
	ldr r1, [r0]
	ldr r0, =0x00003b58
	adds r1, r0
	str r1, [r2]
	ldr r0, =gStringVar2
	ldrh r1, [r1, 0xE]
	bl sub_818DCAC
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818DCC8

	thumb_func_start sub_818DCF4
sub_818DCF4: @ 818DCF4
	push {r4,r5,lr}
	adds r5, r0, 0
	adds r4, r1, 0
	adds r0, r4, 0
	movs r1, 0xFF
	movs r2, 0x8
	bl memset
	adds r0, r4, 0
	adds r1, r5, 0
	bl StringCopy7
	pop {r4,r5}
	pop {r0}
	bx r0
	thumb_func_end sub_818DCF4

	thumb_func_start sub_818DD14
sub_818DD14: @ 818DD14
	push {r4,r5,lr}
	ldr r5, =gUnknown_0203CD64
	ldr r0, =gSaveBlock1Ptr
	ldr r0, [r0]
	ldr r2, =0x00003b58
	adds r1, r0, r2
	str r1, [r5]
	ldr r1, =0x00003b5c
	adds r0, r1
	ldr r4, =gStringVar3
	adds r1, r4, 0
	bl sub_818DCF4
	ldr r0, [r5]
	ldrb r1, [r0, 0x12]
	adds r0, r4, 0
	bl ConvertInternationalString
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818DD14

	thumb_func_start sub_818DD54
sub_818DD54: @ 818DD54
	ldr r1, =gUnknown_0203CD64
	ldr r0, =gSaveBlock1Ptr
	ldr r0, [r0]
	ldr r2, =0x00003b58
	adds r0, r2
	str r0, [r1]
	ldrb r1, [r0, 0x2]
	negs r0, r1
	orrs r0, r1
	lsrs r0, 31
	bx lr
	.pool
	thumb_func_end sub_818DD54

	thumb_func_start sub_818DD78
sub_818DD78: @ 818DD78
	push {lr}
	bl sub_81AAC50
	pop {r0}
	bx r0
	thumb_func_end sub_818DD78

	thumb_func_start sub_818DD84
sub_818DD84: @ 818DD84
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	lsls r0, 16
	lsrs r5, r0, 16
	ldr r4, =gUnknown_0203CD64
	ldr r0, =gSaveBlock1Ptr
	ldr r0, [r0]
	ldr r1, =0x00003b58
	adds r0, r1
	str r0, [r4]
	ldr r1, =gUnknown_0860B2EC
	mov r8, r1
	ldrb r0, [r0, 0xC]
	lsls r0, 2
	add r0, r8
	ldr r0, [r0]
	bl sub_818DB04
	lsls r0, 24
	lsrs r6, r0, 24
	ldr r1, [r4]
	movs r0, 0x1
	strb r0, [r1, 0x1]
	ldr r0, =gStringVar2
	adds r1, r5, 0
	bl sub_818DCAC
	ldr r1, [r4]
	strh r5, [r1, 0xE]
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	adds r1, 0x4
	bl sub_818DCF4
	ldr r1, [r4]
	ldr r0, =gGameLanguage
	ldrb r0, [r0]
	strb r0, [r1, 0x12]
	movs r7, 0
	movs r3, 0
	cmp r7, r6
	bcs _0818DE36
	mov r12, r8
_0818DDDC:
	ldr r2, [r4]
	ldrb r0, [r2, 0xC]
	lsls r0, 2
	add r0, r12
	ldr r1, [r0]
	lsls r0, r3, 1
	adds r0, r1
	ldrh r0, [r0]
	cmp r0, r5
	bne _0818DE28
	movs r7, 0x1
	ldrb r0, [r2, 0x3]
	adds r0, 0x1
	strb r0, [r2, 0x3]
	ldr r0, [r4]
	strb r7, [r0, 0x2]
	ldr r1, [r4]
	ldrh r0, [r1, 0x10]
	cmp r0, r5
	bne _0818DE36
	movs r0, 0x5
	strb r0, [r1, 0x3]
	b _0818DE36
	.pool
_0818DE28:
	movs r0, 0
	strb r0, [r2, 0x2]
	adds r0, r3, 0x1
	lsls r0, 24
	lsrs r3, r0, 24
	cmp r3, r6
	bcc _0818DDDC
_0818DE36:
	adds r0, r7, 0
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end sub_818DD84

	thumb_func_start sub_818DE44
sub_818DE44: @ 818DE44
	push {lr}
	ldr r0, =gUnknown_0203CE7C
	ldrh r0, [r0]
	bl sub_818DD84
	lsls r0, 24
	lsrs r0, 24
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_818DE44

	thumb_func_start sub_818DE5C
sub_818DE5C: @ 818DE5C
	push {lr}
	ldr r1, =gUnknown_0203CD64
	ldr r0, =gSaveBlock1Ptr
	ldr r0, [r0]
	ldr r2, =0x00003b58
	adds r0, r2
	str r0, [r1]
	ldrb r0, [r0, 0x3]
	movs r1, 0
	cmp r0, 0x4
	bls _0818DE74
	movs r1, 0x1
_0818DE74:
	adds r0, r1, 0
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_818DE5C

	thumb_func_start sub_818DE88
sub_818DE88: @ 818DE88
	push {lr}
	adds r1, r0, 0
	lsls r1, 16
	lsrs r1, 16
	ldr r0, =gStringVar2
	bl sub_818DCAC
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818DE88

	thumb_func_start sub_818DEA0
sub_818DEA0: @ 818DEA0
	push {r4,r5,lr}
	ldr r5, =gUnknown_0203CD64
	ldr r0, =gSaveBlock1Ptr
	ldr r0, [r0]
	ldr r1, =0x00003b58
	adds r0, r1
	str r0, [r5]
	ldr r1, =gUnknown_0860B304
	ldrb r0, [r0, 0xC]
	lsls r0, 1
	adds r0, r1
	ldrh r4, [r0]
	adds r0, r4, 0
	bl sub_818DE88
	ldr r1, [r5]
	movs r0, 0x2
	strb r0, [r1, 0x1]
	adds r0, r4, 0
	pop {r4,r5}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_818DEA0

	thumb_func_start sub_818DEDC
sub_818DEDC: @ 818DEDC
	push {lr}
	bl sub_818DB7C
	ldr r0, =gUnknown_0203CD64
	ldr r1, [r0]
	movs r0, 0x1
	strb r0, [r1, 0x1]
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818DEDC

	thumb_func_start sub_818DEF4
sub_818DEF4: @ 818DEF4
	push {lr}
	bl script_env_2_enable_and_set_ctx_running
	pop {r0}
	bx r0
	thumb_func_end sub_818DEF4

	thumb_func_start sub_818DF00
sub_818DF00: @ 818DF00
	push {r4-r7,lr}
	bl Random
	lsls r0, 16
	lsrs r4, r0, 16
	movs r0, 0xF
	ands r4, r0
	movs r3, 0
	ldr r5, =gUnknown_0203CD68
	ldr r1, =gUnknown_0860B1A4
	lsls r0, r4, 2
	adds r6, r0, r1
	adds r7, r5, 0
_0818DF1A:
	ldr r2, [r5]
	lsls r1, r3, 1
	adds r2, 0x2
	adds r2, r1
	ldr r0, [r6]
	adds r1, r0
	ldrh r0, [r1]
	strh r0, [r2]
	adds r0, r3, 0x1
	lsls r0, 24
	lsrs r3, r0, 24
	cmp r3, 0x8
	bls _0818DF1A
	ldr r2, [r7]
	ldr r0, =gUnknown_0860B1E4
	lsls r1, r4, 1
	adds r0, r1, r0
	ldrh r0, [r0]
	strh r0, [r2, 0x14]
	ldr r0, =gUnknown_0860B204
	adds r1, r0
	ldrh r0, [r1]
	strh r0, [r2, 0x28]
	adds r2, 0x2B
	strb r4, [r2]
	ldr r1, [r7]
	movs r0, 0xFF
	strb r0, [r1, 0x18]
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818DF00

	thumb_func_start sub_818DF68
sub_818DF68: @ 818DF68
	push {r4-r6,lr}
	ldr r2, =gUnknown_0203CD68
	ldr r0, =gSaveBlock1Ptr
	ldr r0, [r0]
	ldr r1, =0x00003b58
	adds r0, r1
	str r0, [r2]
	movs r1, 0
	strb r1, [r0]
	ldr r0, [r2]
	strb r1, [r0, 0x1]
	movs r3, 0
	adds r4, r2, 0
	ldr r6, =gGameLanguage
	adds r5, r4, 0
	ldr r0, =0x0000ffff
	adds r2, r0, 0
_0818DF8A:
	ldr r1, [r5]
	lsls r0, r3, 1
	adds r1, 0x2
	adds r1, r0
	ldrh r0, [r1]
	orrs r0, r2
	strh r0, [r1]
	adds r0, r3, 0x1
	lsls r0, 24
	lsrs r3, r0, 24
	cmp r3, 0x8
	bls _0818DF8A
	ldr r0, [r4]
	ldr r1, =0x0000ffff
	strh r1, [r0, 0x14]
	movs r1, 0x1
	negs r1, r1
	strh r1, [r0, 0x16]
	movs r3, 0
	adds r5, r4, 0
	movs r2, 0
_0818DFB4:
	ldr r0, [r5]
	lsls r1, r3, 1
	adds r0, 0x20
	adds r0, r1
	strh r2, [r0]
	adds r0, r3, 0x1
	lsls r0, 24
	lsrs r3, r0, 24
	cmp r3, 0x3
	bls _0818DFB4
	ldr r0, [r4]
	movs r2, 0
	movs r1, 0
	strh r1, [r0, 0x28]
	adds r0, 0x2A
	strb r2, [r0]
	ldr r0, [r4]
	adds r0, 0x2C
	movs r1, 0x10
	strb r1, [r0]
	ldr r0, [r4]
	ldrb r1, [r6]
	adds r0, 0x2D
	strb r1, [r0]
	bl sub_818DF00
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818DF68

	thumb_func_start sub_818E004
sub_818E004: @ 818E004
	ldr r2, =gUnknown_0203CD68
	ldr r0, =gSaveBlock1Ptr
	ldr r0, [r0]
	ldr r1, =0x00003b58
	adds r0, r1
	str r0, [r2]
	movs r1, 0
	strb r1, [r0]
	ldr r0, [r2]
	strb r1, [r0, 0x1]
	ldr r0, [r2]
	adds r0, 0x2A
	strb r1, [r0]
	ldr r1, [r2]
	ldr r0, =0x0000ffff
	strh r0, [r1, 0x16]
	bx lr
	.pool
	thumb_func_end sub_818E004

	thumb_func_start sub_818E038
sub_818E038: @ 818E038
	push {lr}
	ldr r1, =gUnknown_0203CD68
	ldr r0, =gSaveBlock1Ptr
	ldr r0, [r0]
	ldr r2, =0x00003b58
	adds r0, r2
	str r0, [r1]
	ldrb r0, [r0, 0x1]
	cmp r0, 0x2
	bne _0818E05C
	movs r0, 0x2
	b _0818E066
	.pool
_0818E05C:
	cmp r0, 0x1
	beq _0818E064
	movs r0, 0
	b _0818E066
_0818E064:
	movs r0, 0x1
_0818E066:
	pop {r1}
	bx r1
	thumb_func_end sub_818E038

	thumb_func_start sub_818E06C
sub_818E06C: @ 818E06C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	ldr r0, =gSaveBlock1Ptr
	ldr r4, [r0]
	ldr r0, =0x00003b58
	adds r7, r4, r0
	ldrh r0, [r7, 0x14]
	bl sub_811F8D8
	cmp r0, 0
	bne _0818E0EC
	ldr r1, =0x00003b83
	adds r0, r4, r1
	ldrb r5, [r0]
	ldr r0, =0x00003b5a
	adds r0, r4
	mov r8, r0
	adds r1, r4
	mov r10, r1
	ldr r6, =gUnknown_0860B1E4
_0818E09A:
	adds r5, 0x1
	cmp r5, 0xF
	ble _0818E0A2
	movs r5, 0
_0818E0A2:
	lsls r4, r5, 1
	adds r0, r4, r6
	ldrh r0, [r0]
	bl sub_811F8D8
	cmp r0, 0
	beq _0818E09A
	movs r3, 0
	ldr r0, =gUnknown_0860B1E4
	mov r12, r0
	lsls r1, r5, 2
	ldr r0, =gUnknown_0860B204
	mov r9, r0
	ldr r0, =gUnknown_0860B1A4
	adds r6, r1, r0
	mov r2, r8
_0818E0C2:
	lsls r0, r3, 1
	ldr r1, [r6]
	adds r0, r1
	ldrh r0, [r0]
	strh r0, [r2]
	adds r2, 0x2
	adds r3, 0x1
	cmp r3, 0x8
	ble _0818E0C2
	mov r1, r12
	adds r0, r4, r1
	ldrh r0, [r0]
	strh r0, [r7, 0x14]
	mov r1, r9
	adds r0, r4, r1
	ldrh r0, [r0]
	strh r0, [r7, 0x28]
	mov r0, r10
	strb r5, [r0]
	movs r0, 0xFF
	strb r0, [r7, 0x18]
_0818E0EC:
	bl sub_818E13C
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0
	bne _0818E118
	movs r0, 0x2
	b _0818E12C
	.pool
_0818E118:
	cmp r0, 0x2
	beq _0818E126
	bl sub_818E1F4
	lsls r0, 24
	cmp r0, 0
	beq _0818E12A
_0818E126:
	movs r0, 0x1
	b _0818E12C
_0818E12A:
	movs r0, 0
_0818E12C:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end sub_818E06C

	thumb_func_start sub_818E13C
sub_818E13C: @ 818E13C
	push {r4-r7,lr}
	movs r7, 0x1
	ldr r5, =gUnknown_0203CD68
	ldr r0, =gSaveBlock1Ptr
	ldr r1, [r0]
	ldr r2, =0x00003b58
	adds r0, r1, r2
	str r0, [r5]
	ldrb r0, [r0, 0x18]
	cmp r0, 0xFF
	bne _0818E174
	ldr r0, =gStringVar1
	ldr r1, =gUnknown_085EEB7E
	bl StringCopy7
	movs r7, 0
	b _0818E1DC
	.pool
_0818E174:
	ldr r4, =gStringVar1
	ldr r0, =0x00003b70
	adds r1, r0
	adds r0, r4, 0
	bl StringCopy7
	ldr r0, [r5]
	adds r0, 0x2D
	ldrb r1, [r0]
	adds r0, r4, 0
	bl ConvertInternationalString
	ldr r0, [r5]
	adds r0, 0x18
	bl sub_818E258
	lsls r0, 24
	lsrs r4, r0, 24
	ldr r6, =gSaveBlock2Ptr
	ldr r0, [r6]
	bl sub_818E258
	lsls r0, 24
	lsrs r0, 24
	cmp r4, r0
	bne _0818E1DC
	ldr r0, [r5]
	movs r2, 0
	cmp r2, r4
	bcs _0818E1DC
	ldr r1, [r6]
	ldrb r0, [r0, 0x18]
	ldrb r1, [r1]
	cmp r0, r1
	bne _0818E1DA
_0818E1BA:
	adds r0, r2, 0x1
	lsls r0, 24
	lsrs r2, r0, 24
	cmp r2, r4
	bcs _0818E1DC
	ldr r0, =gUnknown_0203CD68
	ldr r1, [r0]
	adds r1, 0x18
	adds r1, r2
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	adds r0, r2
	ldrb r1, [r1]
	ldrb r0, [r0]
	cmp r1, r0
	beq _0818E1BA
_0818E1DA:
	movs r7, 0x2
_0818E1DC:
	adds r0, r7, 0
	pop {r4-r7}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_818E13C

	thumb_func_start sub_818E1F4
sub_818E1F4: @ 818E1F4
	push {r4-r6,lr}
	ldr r3, =gUnknown_0203CD68
	ldr r0, =gSaveBlock1Ptr
	ldr r1, [r0]
	ldr r2, =0x00003b58
	adds r0, r1, r2
	str r0, [r3]
	movs r5, 0
	movs r4, 0
	ldr r0, =0x00003b78
	adds r1, r0
	ldr r0, =gSaveBlock2Ptr
	ldr r2, [r0]
	ldrh r1, [r1]
	adds r6, r3, 0
	adds r3, r0, 0
	ldrb r2, [r2, 0xA]
	cmp r1, r2
	bne _0818E23A
_0818E21A:
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x3
	bhi _0818E23C
	ldr r1, [r6]
	lsls r0, r4, 1
	adds r1, 0x20
	adds r1, r0
	ldr r0, [r3]
	adds r0, 0xA
	adds r0, r4
	ldrh r1, [r1]
	ldrb r0, [r0]
	cmp r1, r0
	beq _0818E21A
_0818E23A:
	movs r5, 0x1
_0818E23C:
	adds r0, r5, 0
	pop {r4-r6}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_818E1F4

	thumb_func_start sub_818E258
sub_818E258: @ 818E258
	push {lr}
	movs r2, 0
	adds r1, r0, 0
	b _0818E268
_0818E260:
	adds r0, r2, 0x1
	lsls r0, 24
	lsrs r2, r0, 24
	adds r1, 0x1
_0818E268:
	ldrb r0, [r1]
	cmp r0, 0xFF
	bne _0818E260
	adds r0, r2, 0
	pop {r1}
	bx r1
	thumb_func_end sub_818E258

	thumb_func_start sub_818E274
sub_818E274: @ 818E274
	push {r4,lr}
	ldr r4, =gStringVar1
	ldr r0, =gUnknown_0203CD68
	ldr r0, [r0]
	ldrh r0, [r0, 0x28]
	bl itemid_get_item
	adds r1, r0, 0
	adds r0, r4, 0
	bl StringCopy
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818E274

	thumb_func_start sub_818E298
sub_818E298: @ 818E298
	push {r4,lr}
	ldr r4, =gUnknown_0203CD68
	ldr r0, =gSaveBlock1Ptr
	ldr r0, [r0]
	ldr r1, =0x00003b58
	adds r0, r1
	str r0, [r4]
	bl sub_818E13C
	lsls r0, 24
	cmp r0, 0
	beq _0818E2C0
	movs r0, 0
	b _0818E2CC
	.pool
_0818E2C0:
	ldr r0, [r4]
	ldr r1, =gGameLanguage
	ldrb r1, [r1]
	adds r0, 0x2D
	strb r1, [r0]
	movs r0, 0x1
_0818E2CC:
	pop {r4}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_818E298

	thumb_func_start sub_818E2D8
sub_818E2D8: @ 818E2D8
	ldr r2, =gUnknown_0203CD68
	ldr r0, =gSaveBlock1Ptr
	ldr r0, [r0]
	ldr r3, =0x00003b58
	adds r1, r0, r3
	str r1, [r2]
	ldr r1, =0x00003b82
	adds r0, r1
	ldrb r0, [r0]
	bx lr
	.pool
	thumb_func_end sub_818E2D8

	thumb_func_start sub_818E2FC
sub_818E2FC: @ 818E2FC
	push {lr}
	bl easy_chat_input_maybe
	pop {r0}
	bx r0
	thumb_func_end sub_818E2FC

	thumb_func_start sub_818E308
sub_818E308: @ 818E308
	push {r4-r6,lr}
	ldr r5, =gUnknown_0203CD68
	ldr r0, =gSaveBlock1Ptr
	ldr r0, [r0]
	ldr r1, =0x00003b58
	adds r0, r1
	str r0, [r5]
	ldr r6, =gStringVar1
	ldrh r1, [r0, 0x14]
	adds r0, r6, 0
	bl CopyEasyChatWord
	ldr r4, =gStringVar2
	ldr r0, [r5]
	ldrh r1, [r0, 0x16]
	adds r0, r4, 0
	bl CopyEasyChatWord
	adds r0, r6, 0
	adds r1, r4, 0
	bl StringCompare
	movs r1, 0
	cmp r0, 0
	bne _0818E33C
	movs r1, 0x1
_0818E33C:
	adds r0, r1, 0
	pop {r4-r6}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_818E308

	thumb_func_start sub_818E358
sub_818E358: @ 818E358
	ldr r1, =gUnknown_0203CD68
	ldr r0, =gSaveBlock1Ptr
	ldr r0, [r0]
	ldr r2, =0x00003b58
	adds r0, r2
	str r0, [r1]
	ldr r1, =gUnknown_020375E2
	ldrh r0, [r0, 0x28]
	strh r0, [r1]
	bx lr
	.pool
	thumb_func_end sub_818E358

	thumb_func_start sub_818E37C
sub_818E37C: @ 818E37C
	ldr r1, =gUnknown_0203CD68
	ldr r0, =gSaveBlock1Ptr
	ldr r0, [r0]
	ldr r2, =0x00003b58
	adds r0, r2
	str r0, [r1]
	movs r1, 0x1
	strb r1, [r0, 0x1]
	bx lr
	.pool
	thumb_func_end sub_818E37C

	thumb_func_start sub_818E39C
sub_818E39C: @ 818E39C
	ldr r1, =gUnknown_0203CD68
	ldr r0, =gSaveBlock1Ptr
	ldr r0, [r0]
	ldr r2, =0x00003b58
	adds r0, r2
	str r0, [r1]
	movs r1, 0x2
	strb r1, [r0, 0x1]
	bx lr
	.pool
	thumb_func_end sub_818E39C

	thumb_func_start sub_818E3BC
sub_818E3BC: @ 818E3BC
	ldr r1, =gUnknown_0203CD68
	ldr r0, =gSaveBlock1Ptr
	ldr r0, [r0]
	ldr r2, =0x00003b58
	adds r0, r2
	str r0, [r1]
	ldr r1, =0x0000ffff
	strh r1, [r0, 0x16]
	bx lr
	.pool
	thumb_func_end sub_818E3BC

	thumb_func_start sub_818E3E0
sub_818E3E0: @ 818E3E0
	push {lr}
	bl sub_81AAC70
	pop {r0}
	bx r0
	thumb_func_end sub_818E3E0

	thumb_func_start sub_818E3EC
sub_818E3EC: @ 818E3EC
	push {r4,lr}
	ldr r4, =gUnknown_0203CD68
	ldr r0, =gSaveBlock1Ptr
	ldr r0, [r0]
	ldr r1, =0x00003b58
	adds r0, r1
	str r0, [r4]
	bl sub_818E298
	lsls r0, 24
	cmp r0, 0
	beq _0818E41C
	ldr r0, [r4]
	adds r1, r0, 0
	adds r1, 0x2B
	ldrb r1, [r1]
	adds r0, 0x2C
	b _0818E422
	.pool
_0818E41C:
	ldr r0, [r4]
	adds r0, 0x2C
	movs r1, 0x10
_0818E422:
	strb r1, [r0]
	bl sub_818DF00
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_818E3EC

	thumb_func_start sub_818E430
sub_818E430: @ 818E430
	push {r4,r5,lr}
	ldr r1, =gUnknown_0203CD68
	ldr r0, =gSaveBlock1Ptr
	ldr r0, [r0]
	ldr r2, =0x00003b58
	adds r0, r2
	str r0, [r1]
	movs r2, 0
	adds r5, r1, 0
	adds r4, r5, 0
	ldr r0, =0x0000ffff
	adds r3, r0, 0
_0818E448:
	ldr r1, [r4]
	lsls r0, r2, 1
	adds r1, 0x2
	adds r1, r0
	ldrh r0, [r1]
	orrs r0, r3
	strh r0, [r1]
	adds r0, r2, 0x1
	lsls r0, 24
	lsrs r2, r0, 24
	cmp r2, 0x8
	bls _0818E448
	ldr r1, [r5]
	ldr r0, =0x0000ffff
	strh r0, [r1, 0x14]
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818E430

	thumb_func_start sub_818E47C
sub_818E47C: @ 818E47C
	push {lr}
	ldr r1, =gUnknown_020375E0
	movs r0, 0x11
	strh r0, [r1]
	bl easy_chat_input_maybe
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818E47C

	thumb_func_start sub_818E490
sub_818E490: @ 818E490
	push {lr}
	ldr r0, =gUnknown_0203CE7C
	ldrh r0, [r0]
	movs r1, 0x1
	bl remove_item
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818E490

	thumb_func_start sub_818E4A4
sub_818E4A4: @ 818E4A4
	push {r4-r6,lr}
	ldr r2, =gUnknown_0203CD68
	ldr r0, =gSaveBlock1Ptr
	ldr r0, [r0]
	ldr r1, =0x00003b58
	adds r0, r1
	str r0, [r2]
	ldr r1, =gUnknown_0203CE7C
	ldrh r1, [r1]
	strh r1, [r0, 0x28]
	movs r3, 0
	adds r4, r2, 0
	ldr r6, =gSaveBlock2Ptr
	adds r5, r4, 0
	adds r2, r6, 0
_0818E4C2:
	ldr r1, [r5]
	lsls r0, r3, 1
	adds r1, 0x20
	adds r1, r0
	ldr r0, [r2]
	adds r0, 0xA
	adds r0, r3
	ldrb r0, [r0]
	strh r0, [r1]
	adds r0, r3, 0x1
	lsls r0, 24
	lsrs r3, r0, 24
	cmp r3, 0x3
	bls _0818E4C2
	ldr r0, [r4]
	adds r0, 0x18
	ldr r1, [r6]
	bl StringCopy7
	ldr r0, [r4]
	ldr r1, =gGameLanguage
	ldrb r1, [r1]
	adds r0, 0x2D
	strb r1, [r0]
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818E4A4

	thumb_func_start sub_818E510
sub_818E510: @ 818E510
	ldr r2, =gUnknown_0203CD68
	ldr r0, =gSaveBlock1Ptr
	ldr r0, [r0]
	ldr r3, =0x00003b58
	adds r1, r0, r3
	str r1, [r2]
	ldr r1, =0x00003b82
	adds r0, r1
	movs r1, 0x1
	strb r1, [r0]
	bx lr
	.pool
	thumb_func_end sub_818E510

	thumb_func_start sub_818E538
sub_818E538: @ 818E538
	push {lr}
	ldr r2, =gUnknown_0203CD68
	ldr r0, =gSaveBlock1Ptr
	ldr r1, [r0]
	ldr r0, =0x00003b58
	adds r1, r0
	str r1, [r2]
	ldr r0, =gStringVar3
	ldrh r1, [r1, 0x14]
	bl CopyEasyChatWord
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818E538

	thumb_func_start sub_818E564
sub_818E564: @ 818E564
	push {lr}
	bl script_env_2_enable_and_set_ctx_running
	pop {r0}
	bx r0
	thumb_func_end sub_818E564

	thumb_func_start sub_818E570
sub_818E570: @ 818E570
	push {r4-r7,lr}
	ldr r2, =gUnknown_0203CD68
	ldr r1, =gSaveBlock1Ptr
	ldr r1, [r1]
	ldr r4, =0x00003b58
	adds r3, r1, r4
	str r3, [r2]
	adds r6, r0, 0
	adds r6, 0x2C
	ldrb r4, [r6]
	adds r7, r2, 0
	cmp r4, 0xF
	bhi _0818E5EC
	ldrb r0, [r3]
	cmp r0, 0
	bne _0818E5EC
	movs r5, 0
	ldr r2, =0x00003b83
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r4, r0
	bne _0818E5E4
	adds r4, r7, 0
_0818E59E:
	bl Random
	ldr r2, [r4]
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0xF
	ands r0, r1
	adds r2, 0x2B
	strb r0, [r2]
	adds r0, r5, 0x1
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, 0x3
	bhi _0818E5C6
	ldr r0, [r4]
	adds r0, 0x2B
	ldrb r1, [r6]
	ldrb r0, [r0]
	cmp r1, r0
	beq _0818E59E
_0818E5C6:
	ldr r0, [r4]
	adds r2, r0, 0
	adds r2, 0x2B
	ldrb r0, [r6]
	ldr r7, =gUnknown_0203CD68
	ldrb r4, [r2]
	cmp r0, r4
	bne _0818E5E4
	ldrb r1, [r2]
	adds r3, r1, 0x1
	adds r0, r3, 0
	asrs r0, 4
	lsls r0, 4
	subs r0, r3, r0
	strb r0, [r2]
_0818E5E4:
	ldr r0, [r7]
	ldrb r1, [r6]
	adds r0, 0x2C
	strb r1, [r0]
_0818E5EC:
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818E570

	thumb_func_start sub_818E604
sub_818E604: @ 818E604
	push {r4,lr}
	ldr r4, =gUnknown_0203CD6C
	ldr r1, [r4]
	movs r0, 0xFF
	strb r0, [r1, 0x4]
	ldr r0, [r4]
	movs r1, 0
	strb r1, [r0, 0x2]
	ldr r0, [r4]
	strb r1, [r0, 0x3]
	ldr r0, [r4]
	strb r1, [r0, 0xC]
	bl Random
	ldr r4, [r4]
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x5
	bl __umodsi3
	strb r0, [r4, 0xD]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818E604

	thumb_func_start sub_818E638
sub_818E638: @ 818E638
	push {r4,lr}
	ldr r4, =gUnknown_0203CD6C
	ldr r0, =gSaveBlock1Ptr
	ldr r0, [r0]
	ldr r1, =0x00003b58
	adds r0, r1
	str r0, [r4]
	movs r2, 0
	movs r1, 0x2
	strb r1, [r0]
	ldr r0, [r4]
	strb r2, [r0, 0x1]
	bl sub_818E604
	ldr r1, [r4]
	ldr r0, =gGameLanguage
	ldrb r0, [r0]
	strb r0, [r1, 0xE]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818E638

	thumb_func_start sub_818E674
sub_818E674: @ 818E674
	push {lr}
	ldr r2, =gUnknown_0203CD6C
	ldr r0, =gSaveBlock1Ptr
	ldr r0, [r0]
	ldr r1, =0x00003b58
	adds r0, r1
	str r0, [r2]
	movs r3, 0
	movs r1, 0x2
	strb r1, [r0]
	ldr r0, [r2]
	strb r3, [r0, 0x1]
	ldr r2, [r2]
	ldrb r0, [r2, 0x2]
	cmp r0, 0x5
	beq _0818E69A
	ldrb r0, [r2, 0x3]
	cmp r0, 0x5
	bne _0818E69E
_0818E69A:
	bl sub_818E604
_0818E69E:
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818E674

	thumb_func_start sub_818E6B0
sub_818E6B0: @ 818E6B0
	push {r4,lr}
	lsls r0, 24
	lsrs r2, r0, 24
	ldr r4, =gUnknown_0203CD6C
	ldr r0, =gSaveBlock1Ptr
	ldr r0, [r0]
	ldr r3, =0x00003b58
	adds r1, r0, r3
	str r1, [r4]
	ldrb r0, [r1, 0xC]
	cmp r0, r2
	bhi _0818E6EA
	strb r2, [r1, 0xC]
	ldr r0, [r4]
	adds r0, 0x4
	movs r1, 0xFF
	movs r2, 0x8
	bl memset
	ldr r1, [r4]
	ldr r0, =gSaveBlock2Ptr
	adds r1, 0x4
	ldr r0, [r0]
	ldm r0!, {r2,r3}
	stm r1!, {r2,r3}
	ldr r1, [r4]
	ldr r0, =gGameLanguage
	ldrb r0, [r0]
	strb r0, [r1, 0xE]
_0818E6EA:
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818E6B0

	thumb_func_start sub_818E704
sub_818E704: @ 818E704
	push {r4,r5,lr}
	adds r2, r0, 0
	movs r3, 0
	movs r4, 0
	ldr r1, =gUnknown_0203CD6C
	ldr r0, =gSaveBlock1Ptr
	ldr r0, [r0]
	ldr r5, =0x00003b58
	adds r0, r5
	str r0, [r1]
	ldrb r0, [r0, 0xD]
	adds r5, r1, 0
	cmp r0, 0x4
	bhi _0818E76A
	lsls r0, 2
	ldr r1, =_0818E73C
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_0818E73C:
	.4byte _0818E750
	.4byte _0818E754
	.4byte _0818E758
	.4byte _0818E75C
	.4byte _0818E760
_0818E750:
	ldrb r0, [r2, 0x1]
	b _0818E762
_0818E754:
	ldrb r0, [r2, 0x2]
	b _0818E762
_0818E758:
	ldrb r0, [r2, 0x3]
	b _0818E762
_0818E75C:
	ldrb r0, [r2, 0x4]
	b _0818E762
_0818E760:
	ldrb r0, [r2, 0x5]
_0818E762:
	cmp r0, 0
	beq _0818E76A
	adds r3, r0, 0
	movs r4, 0x1
_0818E76A:
	cmp r4, 0x1
	bne _0818E784
	adds r0, r3, 0
	bl sub_818E6B0
	ldr r0, =gUnknown_0203CD6C
	ldr r1, [r0]
	ldrb r0, [r1, 0x2]
	adds r0, 0x1
	strb r0, [r1, 0x2]
	b _0818E78C
	.pool
_0818E784:
	ldr r1, [r5]
	ldrb r0, [r1, 0x3]
	adds r0, 0x1
	strb r0, [r1, 0x3]
_0818E78C:
	adds r0, r4, 0
	pop {r4,r5}
	pop {r1}
	bx r1
	thumb_func_end sub_818E704

	thumb_func_start sub_818E794
sub_818E794: @ 818E794
	push {r4,r5,lr}
	adds r5, r1, 0
	ldr r4, =gUnknown_0203CD6C
	ldr r1, =gSaveBlock1Ptr
	ldr r1, [r1]
	ldr r2, =0x00003b58
	adds r1, r2
	str r1, [r4]
	ldr r2, =gUnknown_0860B324
	ldrb r1, [r1, 0xD]
	lsls r1, 2
	adds r1, r2
	ldr r1, [r1]
	bl StringCopy
	ldr r1, =gUnknown_0860B310
	ldr r0, [r4]
	ldrb r0, [r0, 0xD]
	lsls r0, 2
	adds r0, r1
	ldr r1, [r0]
	adds r0, r5, 0
	bl StringCopy10
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818E794

	thumb_func_start sub_818E7E0
sub_818E7E0: @ 818E7E0
	push {r4,lr}
	adds r3, r1, 0
	ldr r2, =gUnknown_0203CD6C
	ldr r1, =gSaveBlock1Ptr
	ldr r1, [r1]
	ldr r4, =0x00003b58
	adds r1, r4
	str r1, [r2]
	ldrb r2, [r1, 0xD]
	strb r2, [r0]
	ldr r2, =gUnknown_0860B310
	ldrb r0, [r1, 0xD]
	lsls r0, 2
	adds r0, r2
	ldr r1, [r0]
	adds r0, r3, 0
	bl StringCopy
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818E7E0

	thumb_func_start sub_818E81C
sub_818E81C: @ 818E81C
	push {r4,lr}
	ldr r3, =gUnknown_0203CD6C
	ldr r1, =gSaveBlock1Ptr
	ldr r1, [r1]
	ldr r4, =0x00003b58
	adds r2, r1, r4
	str r2, [r3]
	ldr r2, =0x00003b5c
	adds r1, r2
	bl StringCopy
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818E81C

	thumb_func_start sub_818E848
sub_818E848: @ 818E848
	ldr r2, =gUnknown_0203CD6C
	ldr r1, =gSaveBlock1Ptr
	ldr r1, [r1]
	ldr r3, =0x00003b58
	adds r1, r3
	str r1, [r2]
	ldrb r1, [r1, 0xE]
	strb r1, [r0]
	bx lr
	.pool
	thumb_func_end sub_818E848

	thumb_func_start sub_818E868
sub_818E868: @ 818E868
	push {lr}
	lsls r1, 24
	ldr r2, =gUnknown_0860B338
	lsrs r1, 22
	adds r1, r2
	ldr r1, [r1]
	bl StringCopy
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818E868

	thumb_func_start sub_818E880
sub_818E880: @ 818E880
	push {lr}
	ldr r1, =gUnknown_0203CD6C
	ldr r0, =gSaveBlock1Ptr
	ldr r0, [r0]
	ldr r2, =0x00003b58
	adds r0, r2
	str r0, [r1]
	ldrb r0, [r0, 0x2]
	cmp r0, 0x4
	bls _0818E8A4
	movs r0, 0x1
	b _0818E8AE
	.pool
_0818E8A4:
	cmp r0, 0
	beq _0818E8AC
	movs r0, 0
	b _0818E8AE
_0818E8AC:
	movs r0, 0x2
_0818E8AE:
	pop {r1}
	bx r1
	thumb_func_end sub_818E880

	thumb_func_start sub_818E8B4
sub_818E8B4: @ 818E8B4
	push {lr}
	ldr r1, =gUnknown_0203CD6C
	ldr r0, =gSaveBlock1Ptr
	ldr r0, [r0]
	ldr r2, =0x00003b58
	adds r0, r2
	str r0, [r1]
	ldrb r0, [r0, 0x1]
	cmp r0, 0x1
	beq _0818E8D8
	movs r0, 0
	b _0818E8DA
	.pool
_0818E8D8:
	movs r0, 0x1
_0818E8DA:
	pop {r1}
	bx r1
	thumb_func_end sub_818E8B4

	thumb_func_start sub_818E8E0
sub_818E8E0: @ 818E8E0
	push {r4,lr}
	movs r3, 0
	ldr r1, =gUnknown_0203CD6C
	ldr r0, =gSaveBlock1Ptr
	ldr r0, [r0]
	ldr r4, =0x00003b58
	adds r2, r0, r4
	str r2, [r1]
	ldrb r0, [r2, 0x2]
	cmp r0, 0x4
	bhi _0818E8FC
	ldrb r0, [r2, 0x3]
	cmp r0, 0x4
	bls _0818E8FE
_0818E8FC:
	movs r3, 0x1
_0818E8FE:
	adds r0, r3, 0
	pop {r4}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_818E8E0

	thumb_func_start sub_818E914
sub_818E914: @ 818E914
	push {lr}
	ldr r0, =gStringVar2
	ldr r1, =gStringVar1
	bl sub_818E794
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818E914

	thumb_func_start sub_818E92C
sub_818E92C: @ 818E92C
	push {lr}
	ldr r1, =c2_exit_to_overworld_2_switch
	movs r0, 0x3
	bl sub_81357FC
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818E92C

	thumb_func_start sub_818E940
sub_818E940: @ 818E940
	ldr r1, =gUnknown_0203CD6C
	ldr r0, =gSaveBlock1Ptr
	ldr r0, [r0]
	ldr r2, =0x00003b58
	adds r0, r2
	str r0, [r1]
	movs r1, 0x1
	strb r1, [r0, 0x1]
	bx lr
	.pool
	thumb_func_end sub_818E940

	thumb_func_start sub_818E960
sub_818E960: @ 818E960
	ldr r1, =gUnknown_0203CD6C
	ldr r0, =gSaveBlock1Ptr
	ldr r0, [r0]
	ldr r2, =0x00003b58
	adds r0, r2
	str r0, [r1]
	ldr r2, =gUnknown_020375E2
	ldr r1, =gUnknown_0860B34C
	ldrb r0, [r0, 0xD]
	lsls r0, 1
	adds r0, r1
	ldrh r0, [r0]
	strh r0, [r2]
	bx lr
	.pool
	thumb_func_end sub_818E960

	thumb_func_start sub_818E990
sub_818E990: @ 818E990
	ldr r1, =gUnknown_0203CD6C
	ldr r0, =gSaveBlock1Ptr
	ldr r0, [r0]
	ldr r2, =0x00003b58
	adds r0, r2
	str r0, [r1]
	ldrb r0, [r0, 0xD]
	bx lr
	.pool
	thumb_func_end sub_818E990

	thumb_func_start sub_818E9AC
sub_818E9AC: @ 818E9AC
	push {lr}
	ldr r1, =gUnknown_0860D090
	ldr r0, =gUnknown_020375E0
	ldrh r0, [r0]
	lsls r0, 2
	adds r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818E9AC

	thumb_func_start sub_818E9CC
sub_818E9CC: @ 818E9CC
	push {r4-r7,lr}
	ldr r4, =gSaveBlock2Ptr
	ldr r0, [r4]
	ldr r1, =0x00000ca9
	adds r0, r1
	ldrb r0, [r0]
	lsls r0, 30
	lsrs r5, r0, 30
	ldr r0, =0x000040ce
	bl VarGet
	lsls r0, 16
	lsrs r7, r0, 16
	ldr r0, [r4]
	ldr r2, =0x00000ca8
	adds r0, r2
	movs r6, 0
	strb r6, [r0]
	ldr r1, [r4]
	adds r2, 0xA
	adds r0, r1, r2
	strh r6, [r0]
	ldr r0, =0x00000ca9
	adds r1, r0
	ldrb r2, [r1]
	movs r0, 0x5
	negs r0, r0
	ands r0, r2
	strb r0, [r1]
	ldr r1, [r4]
	ldr r2, =0x00000ca9
	adds r1, r2
	ldrb r2, [r1]
	movs r0, 0x9
	negs r0, r0
	ands r0, r2
	strb r0, [r1]
	ldr r4, [r4]
	ldr r0, =0x00000cdc
	adds r3, r4, r0
	ldr r2, =gUnknown_0860D0EC
	lsls r1, r5, 2
	lsls r0, r7, 3
	adds r1, r0
	adds r1, r2
	ldr r0, [r3]
	ldr r1, [r1]
	ands r0, r1
	cmp r0, 0
	bne _0818EA3E
	lsls r0, r5, 1
	lsls r1, r7, 2
	adds r0, r1
	ldr r2, =0x00000d0c
	adds r1, r4, r2
	adds r1, r0
	strh r6, [r1]
_0818EA3E:
	ldr r0, =gSaveBlock1Ptr
	ldr r0, [r0]
	movs r1, 0x4
	ldrsb r1, [r0, r1]
	movs r2, 0x5
	ldrsb r2, [r0, r2]
	movs r3, 0x1
	negs r3, r3
	movs r0, 0
	bl saved_warp2_set
	ldr r0, =gUnknown_02038BCA
	strh r6, [r0]
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818E9CC

	thumb_func_start sub_818EA84
sub_818EA84: @ 818EA84
	push {r4-r6,lr}
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r1, =0x00000ca9
	adds r0, r1
	ldrb r0, [r0]
	lsls r0, 30
	lsrs r5, r0, 30
	ldr r0, =0x000040ce
	bl VarGet
	lsls r0, 16
	lsrs r6, r0, 16
	ldr r0, =gUnknown_020375E2
	ldrh r0, [r0]
	cmp r0, 0x9
	bls _0818EAA8
	b _0818ED10
_0818EAA8:
	lsls r0, 2
	ldr r1, =_0818EAC8
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_0818EAC8:
	.4byte _0818EAF0
	.4byte _0818EB14
	.4byte _0818EB48
	.4byte _0818EB64
	.4byte _0818EB80
	.4byte _0818EB98
	.4byte _0818EBB4
	.4byte _0818EC40
	.4byte _0818ECD0
	.4byte _0818ECF4
_0818EAF0:
	ldr r3, =gUnknown_020375F0
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	lsls r1, r5, 1
	lsls r2, r6, 2
	adds r1, r2
	ldr r2, =0x00000d0c
	adds r0, r2
	adds r0, r1
	ldrh r0, [r0]
	strh r0, [r3]
	b _0818ED10
	.pool
_0818EB14:
	ldr r4, =gUnknown_020375F0
	ldr r0, =gSaveBlock2Ptr
	ldr r2, [r0]
	ldr r3, =0x00000cdc
	adds r2, r3
	ldr r3, =gUnknown_0860D0EC
	lsls r0, r5, 2
	lsls r1, r6, 3
	adds r0, r1
	adds r0, r3
	ldr r1, [r2]
	ldr r0, [r0]
	ands r1, r0
	negs r0, r1
	orrs r0, r1
	lsrs r0, 31
	strh r0, [r4]
	b _0818ED10
	.pool
_0818EB48:
	ldr r1, =gUnknown_020375F0
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r2, =0x00000d08
	adds r0, r2
	ldrb r0, [r0]
	lsls r0, 31
	b _0818ECBE
	.pool
_0818EB64:
	ldr r1, =gUnknown_020375F0
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r3, =0x00000d08
	adds r0, r3
	ldrb r0, [r0]
	lsls r0, 30
	b _0818ECBE
	.pool
_0818EB80:
	ldr r1, =gUnknown_020375F0
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r2, =0x00000d08
	adds r0, r2
	b _0818ECBA
	.pool
_0818EB98:
	ldr r1, =gUnknown_020375F0
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r3, =0x00000d08
	adds r0, r3
	ldrb r0, [r0]
	lsls r0, 28
	b _0818ECBE
	.pool
_0818EBB4:
	ldr r0, =0x000040ce
	bl VarGet
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0x1
	bne _0818EC04
	cmp r5, 0
	beq _0818EBE8
	ldr r1, =gUnknown_020375F0
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r2, =0x00000d08
	adds r0, r2
	ldrb r0, [r0]
	lsls r0, 26
	b _0818ECBE
	.pool
_0818EBE8:
	ldr r1, =gUnknown_020375F0
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r3, =0x00000d08
	adds r0, r3
	ldrb r0, [r0]
	lsls r0, 27
	b _0818ECBE
	.pool
_0818EC04:
	cmp r5, 0
	beq _0818EC24
	ldr r1, =gUnknown_020375F0
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r2, =0x00000d08
	adds r0, r2
	ldrb r0, [r0]
	lsls r0, 30
	b _0818ECBE
	.pool
_0818EC24:
	ldr r1, =gUnknown_020375F0
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r3, =0x00000d08
	adds r0, r3
	ldrb r0, [r0]
	lsls r0, 31
	b _0818ECBE
	.pool
_0818EC40:
	ldr r0, =0x000040ce
	bl VarGet
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0x1
	bne _0818EC90
	cmp r5, 0
	beq _0818EC74
	ldr r1, =gUnknown_020375F0
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r2, =0x00000d08
	adds r0, r2
	ldrb r0, [r0]
	lsrs r0, 7
	strh r0, [r1]
	b _0818ED10
	.pool
_0818EC74:
	ldr r1, =gUnknown_020375F0
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r3, =0x00000d08
	adds r0, r3
	ldrb r0, [r0]
	lsls r0, 25
	b _0818ECBE
	.pool
_0818EC90:
	cmp r5, 0
	beq _0818ECB0
	ldr r1, =gUnknown_020375F0
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r2, =0x00000d08
	adds r0, r2
	ldrb r0, [r0]
	lsls r0, 28
	b _0818ECBE
	.pool
_0818ECB0:
	ldr r1, =gUnknown_020375F0
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r3, =0x00000d08
	adds r0, r3
_0818ECBA:
	ldrb r0, [r0]
	lsls r0, 29
_0818ECBE:
	lsrs r0, 31
	strh r0, [r1]
	b _0818ED10
	.pool
_0818ECD0:
	bl sub_81B8558
	ldr r2, =gUnknown_0203CEF8
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	movs r1, 0xCB
	lsls r1, 4
	adds r0, r1
	ldrh r1, [r0]
	strb r1, [r2]
	ldrh r0, [r0]
	lsrs r0, 8
	strb r0, [r2, 0x1]
	b _0818ED10
	.pool
_0818ECF4:
	ldr r2, =gUnknown_020375F0
	ldr r0, =gSaveBlock2Ptr
	ldr r1, [r0]
	ldr r3, =0x00000d0a
	adds r0, r1, r3
	ldrb r0, [r0]
	lsls r0, 1
	adds r3, 0x1
	adds r1, r3
	ldr r3, =0x0000fffd
	adds r0, r3
	ldrb r1, [r1]
	adds r0, r1
	strh r0, [r2]
_0818ED10:
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818EA84

	thumb_func_start sub_818ED28
sub_818ED28: @ 818ED28
	push {r4,r5,lr}
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r1, =0x00000ca9
	adds r0, r1
	ldrb r0, [r0]
	lsls r0, 30
	lsrs r4, r0, 30
	ldr r0, =0x000040ce
	bl VarGet
	lsls r0, 16
	lsrs r5, r0, 16
	ldr r0, =gUnknown_020375E2
	ldrh r0, [r0]
	cmp r0, 0x8
	bls _0818ED4C
	b _0818F01E
_0818ED4C:
	lsls r0, 2
	ldr r1, =_0818ED6C
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_0818ED6C:
	.4byte _0818ED90
	.4byte _0818EDB4
	.4byte _0818EE10
	.4byte _0818EE34
	.4byte _0818EE5C
	.4byte _0818EE78
	.4byte _0818EEA0
	.4byte _0818EF50
	.4byte _0818F008
_0818ED90:
	ldr r0, =gSaveBlock2Ptr
	ldr r2, [r0]
	lsls r0, r4, 1
	lsls r1, r5, 2
	adds r0, r1
	ldr r1, =0x00000d0c
	adds r2, r1
	adds r2, r0
	ldr r0, =gUnknown_020375E4
	ldrh r0, [r0]
	strh r0, [r2]
	b _0818F01E
	.pool
_0818EDB4:
	ldr r0, =gUnknown_020375E4
	ldrh r0, [r0]
	cmp r0, 0
	beq _0818EDE8
	ldr r0, =gSaveBlock2Ptr
	ldr r2, [r0]
	ldr r0, =0x00000cdc
	adds r2, r0
	ldr r3, =gUnknown_0860D0EC
	lsls r1, r4, 2
	lsls r0, r5, 3
	adds r1, r0
	adds r1, r3
	ldr r0, [r2]
	ldr r1, [r1]
	orrs r0, r1
	str r0, [r2]
	b _0818F01E
	.pool
_0818EDE8:
	ldr r0, =gSaveBlock2Ptr
	ldr r2, [r0]
	ldr r1, =0x00000cdc
	adds r2, r1
	ldr r3, =gUnknown_0860D0FC
	lsls r1, r4, 2
	lsls r0, r5, 3
	adds r1, r0
	adds r1, r3
	ldr r0, [r2]
	ldr r1, [r1]
	ands r0, r1
	str r0, [r2]
	b _0818F01E
	.pool
_0818EE10:
	ldr r0, =gSaveBlock2Ptr
	ldr r2, [r0]
	ldr r0, =gUnknown_020375E4
	ldrb r0, [r0]
	ldr r1, =0x00000d08
	adds r2, r1
	movs r1, 0x1
	ands r1, r0
	ldrb r3, [r2]
	movs r0, 0x2
	negs r0, r0
	b _0818EF74
	.pool
_0818EE34:
	ldr r0, =gSaveBlock2Ptr
	ldr r3, [r0]
	ldr r0, =gUnknown_020375E4
	ldrb r0, [r0]
	ldr r2, =0x00000d08
	adds r3, r2
	movs r1, 0x1
	ands r1, r0
	lsls r1, 1
	ldrb r2, [r3]
	movs r0, 0x3
	negs r0, r0
	b _0818EFF4
	.pool
_0818EE5C:
	ldr r0, =gSaveBlock2Ptr
	ldr r3, [r0]
	ldr r0, =gUnknown_020375E4
	ldrb r0, [r0]
	ldr r1, =0x00000d08
	adds r3, r1
	b _0818EFE8
	.pool
_0818EE78:
	ldr r0, =gSaveBlock2Ptr
	ldr r3, [r0]
	ldr r0, =gUnknown_020375E4
	ldrb r0, [r0]
	ldr r2, =0x00000d08
	adds r3, r2
	movs r1, 0x1
	ands r1, r0
	lsls r1, 3
	ldrb r2, [r3]
	movs r0, 0x9
	negs r0, r0
	b _0818EFF4
	.pool
_0818EEA0:
	ldr r0, =0x000040ce
	bl VarGet
	lsls r0, 16
	lsrs r1, r0, 16
	cmp r1, 0x1
	bne _0818EF00
	cmp r4, 0
	beq _0818EEDC
	ldr r0, =gSaveBlock2Ptr
	ldr r3, [r0]
	ldr r0, =gUnknown_020375E4
	ldrb r0, [r0]
	ldr r2, =0x00000d08
	adds r3, r2
	ands r1, r0
	lsls r1, 5
	ldrb r2, [r3]
	movs r0, 0x21
	negs r0, r0
	b _0818EFF4
	.pool
_0818EEDC:
	ldr r0, =gSaveBlock2Ptr
	ldr r3, [r0]
	ldr r0, =gUnknown_020375E4
	ldrb r0, [r0]
	ldr r2, =0x00000d08
	adds r3, r2
	ands r1, r0
	lsls r1, 4
	ldrb r2, [r3]
	movs r0, 0x11
	negs r0, r0
	b _0818EFF4
	.pool
_0818EF00:
	cmp r4, 0
	beq _0818EF2C
	ldr r0, =gSaveBlock2Ptr
	ldr r3, [r0]
	ldr r0, =gUnknown_020375E4
	ldrb r0, [r0]
	ldr r1, =0x00000d08
	adds r3, r1
	movs r1, 0x1
	ands r1, r0
	lsls r1, 1
	ldrb r2, [r3]
	movs r0, 0x3
	negs r0, r0
	b _0818EFF4
	.pool
_0818EF2C:
	ldr r0, =gSaveBlock2Ptr
	ldr r2, [r0]
	ldr r0, =gUnknown_020375E4
	ldrb r0, [r0]
	ldr r1, =0x00000d08
	adds r2, r1
	movs r1, 0x1
	ands r1, r0
	ldrb r3, [r2]
	movs r0, 0x2
	negs r0, r0
	b _0818EF74
	.pool
_0818EF50:
	ldr r0, =0x000040ce
	bl VarGet
	lsls r0, 16
	lsrs r1, r0, 16
	cmp r1, 0x1
	bne _0818EFB0
	cmp r4, 0
	beq _0818EF8C
	ldr r0, =gSaveBlock2Ptr
	ldr r2, [r0]
	ldr r0, =gUnknown_020375E4
	ldrb r1, [r0]
	ldr r0, =0x00000d08
	adds r2, r0
	lsls r1, 7
	ldrb r3, [r2]
	movs r0, 0x7F
_0818EF74:
	ands r0, r3
	orrs r0, r1
	strb r0, [r2]
	b _0818F01E
	.pool
_0818EF8C:
	ldr r0, =gSaveBlock2Ptr
	ldr r3, [r0]
	ldr r0, =gUnknown_020375E4
	ldrb r0, [r0]
	ldr r2, =0x00000d08
	adds r3, r2
	ands r1, r0
	lsls r1, 6
	ldrb r2, [r3]
	movs r0, 0x41
	negs r0, r0
	b _0818EFF4
	.pool
_0818EFB0:
	cmp r4, 0
	beq _0818EFDC
	ldr r0, =gSaveBlock2Ptr
	ldr r3, [r0]
	ldr r0, =gUnknown_020375E4
	ldrb r0, [r0]
	ldr r1, =0x00000d08
	adds r3, r1
	movs r1, 0x1
	ands r1, r0
	lsls r1, 3
	ldrb r2, [r3]
	movs r0, 0x9
	negs r0, r0
	b _0818EFF4
	.pool
_0818EFDC:
	ldr r0, =gSaveBlock2Ptr
	ldr r3, [r0]
	ldr r0, =gUnknown_020375E4
	ldrb r0, [r0]
	ldr r2, =0x00000d08
	adds r3, r2
_0818EFE8:
	movs r1, 0x1
	ands r1, r0
	lsls r1, 2
	ldrb r2, [r3]
	movs r0, 0x5
	negs r0, r0
_0818EFF4:
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	b _0818F01E
	.pool
_0818F008:
	ldr r0, =gSaveBlock2Ptr
	ldr r2, [r0]
	ldr r0, =gUnknown_0203CEF8
	ldrb r1, [r0]
	ldrb r0, [r0, 0x1]
	lsls r0, 8
	orrs r1, r0
	movs r0, 0xCB
	lsls r0, 4
	adds r2, r0
	strh r1, [r2]
_0818F01E:
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818ED28

	thumb_func_start sub_818F02C
sub_818F02C: @ 818F02C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x3C
	movs r0, 0
	str r0, [sp, 0x8]
	str r0, [sp, 0xC]
	str r0, [sp, 0x10]
	movs r0, 0x20
	bl AllocZeroed
	str r0, [sp, 0x18]
	movs r0, 0x18
	bl AllocZeroed
	str r0, [sp, 0x1C]
	ldr r4, =gSaveBlock2Ptr
	ldr r1, [r4]
	ldr r2, =0x00000ca9
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r0, 30
	lsrs r0, 30
	adds r0, 0x1
	ldr r3, =0x00000d0a
	adds r1, r3
	strb r0, [r1]
	ldr r0, =0x000040ce
	bl VarGet
	ldr r1, [r4]
	adds r0, 0x1
	ldr r5, =0x00000d0b
	adds r1, r5
	strb r0, [r1]
	ldr r2, [r4]
	ldr r7, =0x00000d24
	adds r3, r2, r7
	ldrh r0, [r3]
	ldr r5, =0x000003ff
	adds r1, r5, 0
	orrs r0, r1
	strh r0, [r3]
	ldr r3, =0x00000d25
	adds r2, r3
	ldrb r1, [r2]
	movs r0, 0x5
	negs r0, r0
	ands r0, r1
	strb r0, [r2]
	ldr r1, [r4]
	adds r1, r3
	ldrb r2, [r1]
	movs r0, 0x19
	negs r0, r0
	ands r0, r2
	strb r0, [r1]
	ldr r1, [r4]
	adds r1, r3
	ldrb r2, [r1]
	movs r0, 0x1F
	ands r0, r2
	strb r0, [r1]
	movs r7, 0
	mov r10, r7
	mov r8, r4
	ldr r0, =gUnknown_02024488
	mov r9, r0
	movs r4, 0
_0818F0BA:
	mov r1, r8
	ldr r0, [r1]
	ldr r2, =0x00000caa
	adds r0, r2
	adds r0, r4
	ldrh r0, [r0]
	movs r3, 0x64
	muls r0, r3
	add r0, r9
	movs r1, 0xB
	movs r2, 0
	bl GetMonData
	mov r5, r8
	ldr r1, [r5]
	ldr r7, =0x00000d64
	adds r1, r7
	adds r1, r4
	strh r0, [r1]
	movs r5, 0
	mov r0, r10
	lsls r7, r0, 4
	adds r6, r7, 0
_0818F0E8:
	mov r1, r8
	ldr r0, [r1]
	ldr r2, =0x00000caa
	adds r0, r2
	adds r0, r4
	ldrh r0, [r0]
	movs r3, 0x64
	muls r0, r3
	add r0, r9
	adds r1, r5, 0
	adds r1, 0xD
	movs r2, 0
	bl GetMonData
	mov r2, r8
	ldr r1, [r2]
	ldr r3, =0x00000efc
	adds r1, r3
	adds r1, r6
	strh r0, [r1]
	adds r6, 0x2
	adds r5, 0x1
	cmp r5, 0x3
	ble _0818F0E8
	movs r5, 0
	ldr r6, =gSaveBlock2Ptr
_0818F11C:
	ldr r0, [r6]
	ldr r1, =0x00000caa
	adds r0, r1
	adds r0, r4
	ldrh r0, [r0]
	movs r2, 0x64
	muls r0, r2
	add r0, r9
	adds r1, r5, 0
	adds r1, 0x1A
	movs r2, 0
	bl GetMonData
	ldr r1, [r6]
	adds r2, r5, r7
	ldr r3, =0x00000f04
	adds r1, r3
	adds r1, r2
	strb r0, [r1]
	adds r5, 0x1
	cmp r5, 0x5
	ble _0818F11C
	mov r5, r8
	ldr r0, [r5]
	ldr r1, =0x00000caa
	adds r0, r1
	adds r0, r4
	ldrh r0, [r0]
	movs r2, 0x64
	muls r0, r2
	add r0, r9
	bl GetNature
	ldr r1, [r5]
	adds r1, r7
	ldr r3, =0x00000f0a
	adds r1, r3
	strb r0, [r1]
	adds r4, 0x2
	movs r5, 0x1
	add r10, r5
	mov r7, r10
	cmp r7, 0x2
	ble _0818F0BA
	mov r10, r5
	movs r0, 0x4
	str r0, [sp, 0x34]
	movs r1, 0x6
	str r1, [sp, 0x38]
_0818F17E:
	mov r2, r10
	cmp r2, 0x5
	ble _0818F22C
_0818F184:
	bl sub_81A39C4
	lsls r0, 24
	lsrs r0, 24
	movs r1, 0
	bl sub_8162548
	lsls r0, 16
	lsrs r4, r0, 16
	movs r5, 0x1
	cmp r5, r10
	bge _0818F1CA
	ldr r3, =gSaveBlock2Ptr
	ldr r0, [r3]
	ldr r7, =0x00000d28
	adds r0, r7
	ldrh r0, [r0]
	lsls r0, 22
	lsrs r0, 22
	adds r2, r3, 0
	cmp r0, r4
	beq _0818F1CA
	ldr r3, =0x00000d24
_0818F1B2:
	adds r5, 0x1
	cmp r5, r10
	bge _0818F1CA
	ldr r0, [r2]
	lsls r1, r5, 2
	adds r0, r1
	adds r0, r3
	ldrh r0, [r0]
	lsls r0, 22
	lsrs r0, 22
	cmp r0, r4
	bne _0818F1B2
_0818F1CA:
	cmp r5, r10
	bne _0818F184
	ldr r0, =gSaveBlock2Ptr
	ldr r3, [r0]
	ldr r1, [sp, 0x34]
	adds r3, r1
	ldr r2, =0x00000d24
	adds r3, r2
	ldr r5, =0x000003ff
	adds r0, r5, 0
	adds r2, r4, 0
	ands r2, r0
	ldrh r0, [r3]
	ldr r7, =0xfffffc00
	adds r1, r7, 0
	b _0818F292
	.pool
_0818F22C:
	bl sub_81A39C4
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	movs r1, 0
	bl sub_8162548
	lsls r0, 16
	lsrs r4, r0, 16
	movs r5, 0x1
	cmp r5, r10
	bge _0818F274
	ldr r1, =gSaveBlock2Ptr
	ldr r0, [r1]
	ldr r2, =0x00000d28
	adds r0, r2
	ldrh r0, [r0]
	lsls r0, 22
	lsrs r0, 22
	adds r2, r1, 0
	cmp r0, r4
	beq _0818F274
	ldr r3, =0x00000d24
_0818F25C:
	adds r5, 0x1
	cmp r5, r10
	bge _0818F274
	ldr r0, [r2]
	lsls r1, r5, 2
	adds r0, r1
	adds r0, r3
	ldrh r0, [r0]
	lsls r0, 22
	lsrs r0, 22
	cmp r0, r4
	bne _0818F25C
_0818F274:
	cmp r5, r10
	bne _0818F22C
	ldr r5, =gSaveBlock2Ptr
	ldr r3, [r5]
	ldr r7, [sp, 0x34]
	adds r3, r7
	ldr r0, =0x00000d24
	adds r3, r0
	ldr r1, =0x000003ff
	adds r0, r1, 0
	adds r2, r4, 0
	ands r2, r0
	ldrh r0, [r3]
	ldr r5, =0xfffffc00
	adds r1, r5, 0
_0818F292:
	ands r0, r1
	orrs r0, r2
	strh r0, [r3]
	movs r5, 0
	lsls r4, 16
	str r4, [sp, 0x2C]
	ldr r7, [sp, 0x38]
	str r7, [sp, 0x20]
_0818F2A2:
	lsls r0, r5, 1
	mov r9, r0
	adds r1, r5, 0x1
	str r1, [sp, 0x24]
	lsls r2, r5, 2
	str r2, [sp, 0x28]
_0818F2AE:
	ldr r3, [sp, 0x2C]
	lsrs r0, r3, 16
	bl sub_8163524
	lsls r0, 16
	lsrs r6, r0, 16
	movs r7, 0
	cmp r7, r5
	bge _0818F300
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r1, [sp, 0x8]
	mov r8, r1
	ldr r2, [sp, 0xC]
	mov r12, r2
	ldr r3, =0x00000d64
	adds r0, r3
	ldr r1, [sp, 0x20]
	adds r4, r1, r0
_0818F2D4:
	ldrh r3, [r4]
	cmp r3, r6
	beq _0818F300
	ldr r2, =gUnknown_0203BC8C
	ldr r1, [r2]
	lsls r0, r6, 4
	adds r2, r0, r1
	ldrh r0, [r2]
	cmp r8, r0
	beq _0818F300
	cmp r12, r0
	beq _0818F300
	lsls r0, r3, 4
	adds r0, r1
	ldrb r0, [r0, 0xA]
	ldrb r2, [r2, 0xA]
	cmp r0, r2
	beq _0818F300
	adds r4, 0x2
	adds r7, 0x1
	cmp r7, r5
	blt _0818F2D4
_0818F300:
	cmp r7, r5
	bne _0818F2AE
	ldr r3, =gSaveBlock2Ptr
	ldr r0, [r3]
	ldr r1, [sp, 0x38]
	add r1, r9
	ldr r5, =0x00000d64
	adds r0, r5
	adds r0, r1
	strh r6, [r0]
	ldr r2, [sp, 0x28]
	add r2, sp
	adds r2, 0x8
	ldr r0, =gUnknown_0203BC8C
	ldr r1, [r0]
	lsls r0, r6, 4
	adds r0, r1
	ldrh r0, [r0]
	str r0, [r2]
	ldr r5, [sp, 0x24]
	cmp r5, 0x2
	ble _0818F2A2
	ldr r2, [r3]
	ldr r7, [sp, 0x34]
	adds r2, r7
	ldr r0, =0x00000d25
	adds r2, r0
	ldrb r0, [r2]
	movs r3, 0x5
	negs r3, r3
	adds r1, r3, 0
	ands r0, r1
	strb r0, [r2]
	ldr r5, =gSaveBlock2Ptr
	ldr r2, [r5]
	adds r2, r7
	ldr r7, =0x00000d25
	adds r2, r7
	ldrb r0, [r2]
	subs r3, 0x14
	adds r1, r3, 0
	ands r0, r1
	strb r0, [r2]
	ldr r1, [r5]
	ldr r5, [sp, 0x34]
	adds r1, r5
	adds r1, r7
	ldrb r2, [r1]
	movs r0, 0x1F
	ands r0, r2
	strb r0, [r1]
	adds r5, 0x4
	str r5, [sp, 0x34]
	ldr r7, [sp, 0x38]
	adds r7, 0x6
	str r7, [sp, 0x38]
	movs r0, 0x1
	add r10, r0
	mov r1, r10
	cmp r1, 0xF
	bgt _0818F37C
	b _0818F17E
_0818F37C:
	movs r7, 0
	ldr r2, [sp, 0x18]
	strh r7, [r2]
	movs r3, 0
	mov r10, r3
	ldr r6, =gBitTable
	ldr r5, =gBaseStats
_0818F38A:
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	mov r2, r10
	lsls r1, r2, 1
	ldr r3, =0x00000caa
	adds r0, r3
	adds r0, r1
	ldrh r0, [r0]
	subs r4, r0, 0x1
	movs r0, 0x64
	muls r4, r0
	ldr r0, =gPlayerParty
	adds r4, r0
	adds r0, r4, 0
	movs r1, 0x3B
	movs r2, 0
	bl GetMonData
	ldr r2, [sp, 0x18]
	ldrh r1, [r2]
	adds r1, r0
	strh r1, [r2]
	adds r0, r4, 0
	movs r1, 0x3C
	movs r2, 0
	bl GetMonData
	ldr r3, [sp, 0x18]
	ldrh r1, [r3]
	adds r1, r0
	strh r1, [r3]
	adds r0, r4, 0
	movs r1, 0x3E
	movs r2, 0
	bl GetMonData
	ldr r2, [sp, 0x18]
	ldrh r1, [r2]
	adds r1, r0
	strh r1, [r2]
	adds r0, r4, 0
	movs r1, 0x3F
	movs r2, 0
	bl GetMonData
	ldr r3, [sp, 0x18]
	ldrh r1, [r3]
	adds r1, r0
	strh r1, [r3]
	adds r0, r4, 0
	movs r1, 0x3D
	movs r2, 0
	bl GetMonData
	ldr r2, [sp, 0x18]
	ldrh r1, [r2]
	adds r1, r0
	strh r1, [r2]
	adds r0, r4, 0
	movs r1, 0x3A
	movs r2, 0
	bl GetMonData
	ldr r3, [sp, 0x18]
	ldrh r1, [r3]
	adds r1, r0
	strh r1, [r3]
	adds r0, r4, 0
	movs r1, 0xB
	movs r2, 0
	bl GetMonData
	lsls r1, r0, 3
	subs r1, r0
	lsls r1, 2
	adds r1, r5
	ldrb r0, [r1, 0x6]
	lsls r0, 2
	adds r0, r6
	ldr r0, [r0]
	orrs r7, r0
	adds r0, r4, 0
	movs r1, 0xB
	movs r2, 0
	bl GetMonData
	lsls r1, r0, 3
	subs r1, r0
	lsls r1, 2
	adds r1, r5
	ldrb r0, [r1, 0x7]
	lsls r0, 2
	adds r0, r6
	ldr r0, [r0]
	orrs r7, r0
	movs r0, 0x1
	add r10, r0
	mov r1, r10
	cmp r1, 0x2
	ble _0818F38A
	movs r4, 0
	movs r1, 0x1
	movs r5, 0x1F
_0818F458:
	adds r0, r7, 0
	ands r0, r1
	cmp r0, 0
	beq _0818F462
	adds r4, 0x1
_0818F462:
	asrs r7, 1
	subs r5, 0x1
	cmp r5, 0
	bge _0818F458
	bl sub_8165C40
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp, 0x14]
	adds r2, r0, 0
	adds r0, r4, 0
	muls r0, r2
	movs r1, 0x14
	bl __divsi3
	ldr r3, [sp, 0x18]
	ldrh r1, [r3]
	adds r1, r0
	strh r1, [r3]
	movs r5, 0x1
	mov r10, r5
	adds r6, r3, 0
	adds r6, 0x2
	movs r7, 0x2
	str r7, [sp, 0x30]
_0818F494:
	movs r7, 0
	strh r7, [r6]
	ldr r1, =gSaveBlock2Ptr
	ldr r0, [r1]
	mov r2, r10
	lsls r1, r2, 2
	adds r0, r1
	ldr r3, =0x00000d24
	adds r0, r3
	ldrh r0, [r0]
	lsls r0, 22
	lsrs r0, 22
	bl sub_8190168
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
	movs r5, 0
	ldr r0, [sp, 0x30]
	mov r9, r0
_0818F4BC:
	ldr r1, =gSaveBlock2Ptr
	ldr r0, [r1]
	mov r4, r9
	add r4, r10
	adds r4, r5
	lsls r4, 1
	ldr r2, =0x00000d64
	adds r0, r2
	adds r0, r4
	ldrh r1, [r0]
	ldr r3, =gUnknown_0203BC8C
	ldr r0, [r3]
	lsls r1, 4
	adds r1, r0
	ldrh r0, [r1]
	ldrb r3, [r1, 0xB]
	ldrb r1, [r1, 0xC]
	str r1, [sp]
	ldr r1, [sp, 0x1C]
	str r1, [sp, 0x4]
	ldr r1, [sp, 0x14]
	mov r2, r8
	bl sub_818F720
	ldr r2, [sp, 0x1C]
	ldr r1, [r2, 0x4]
	ldrh r0, [r6]
	adds r0, r1
	ldr r1, [r2, 0x8]
	adds r0, r1
	ldr r1, [r2, 0x10]
	adds r0, r1
	ldr r1, [r2, 0x14]
	adds r0, r1
	ldr r1, [r2, 0xC]
	adds r0, r1
	ldr r1, [r2]
	adds r0, r1
	strh r0, [r6]
	ldr r3, =gSaveBlock2Ptr
	ldr r0, [r3]
	ldr r1, =0x00000d64
	adds r0, r1
	adds r0, r4
	ldrh r0, [r0]
	ldr r2, =gUnknown_0203BC8C
	ldr r1, [r2]
	lsls r0, 4
	adds r0, r1
	ldrh r0, [r0]
	lsls r1, r0, 3
	subs r1, r0
	lsls r1, 2
	ldr r3, =gBaseStats
	adds r1, r3
	ldrb r0, [r1, 0x6]
	lsls r0, 2
	ldr r2, =gBitTable
	adds r0, r2
	ldr r0, [r0]
	orrs r7, r0
	ldrb r0, [r1, 0x7]
	lsls r0, 2
	adds r0, r2
	ldr r0, [r0]
	orrs r7, r0
	adds r5, 0x1
	cmp r5, 0x2
	ble _0818F4BC
	movs r4, 0
	movs r1, 0x1
	movs r5, 0x1F
_0818F54C:
	adds r0, r7, 0
	ands r0, r1
	cmp r0, 0
	beq _0818F556
	adds r4, 0x1
_0818F556:
	asrs r7, 1
	subs r5, 0x1
	cmp r5, 0
	bge _0818F54C
	ldr r3, [sp, 0x14]
	adds r0, r4, 0
	muls r0, r3
	movs r1, 0x14
	bl __divsi3
	ldrh r1, [r6]
	adds r1, r0
	strh r1, [r6]
	adds r6, 0x2
	ldr r5, [sp, 0x30]
	adds r5, 0x2
	str r5, [sp, 0x30]
	movs r7, 0x1
	add r10, r7
	mov r0, r10
	cmp r0, 0xF
	ble _0818F494
	movs r1, 0
	mov r10, r1
	ldr r2, =0x000003ff
	mov r8, r2
_0818F58A:
	mov r5, r10
	adds r5, 0x1
	adds r7, r5, 0
	cmp r5, 0xF
	bgt _0818F626
	mov r3, r10
	lsls r0, r3, 1
	ldr r1, [sp, 0x18]
	adds r6, r0, r1
	lsls r0, r5, 1
	adds r4, r0, r1
_0818F5A0:
	ldrh r1, [r6]
	ldrh r0, [r4]
	cmp r1, r0
	bcc _0818F5C2
	cmp r1, r0
	bne _0818F61E
	ldr r0, =gSaveBlock2Ptr
	ldr r1, [r0]
	lsls r0, r5, 2
	adds r0, r1, r0
	ldr r2, =0x00000d24
	adds r0, r2
	ldrh r0, [r0]
	lsls r2, r0, 22
	lsrs r0, r2, 22
	cmp r0, r8
	bne _0818F602
_0818F5C2:
	mov r0, r10
	adds r1, r5, 0
	ldr r2, [sp, 0x18]
	bl sub_818F904
	b _0818F600
	.pool
_0818F600:
	b _0818F61E
_0818F602:
	mov r3, r10
	lsls r0, r3, 2
	adds r0, r1, r0
	ldr r1, =0x00000d24
	adds r0, r1
	ldrh r0, [r0]
	lsls r0, 22
	cmp r0, r2
	bls _0818F61E
	mov r0, r10
	adds r1, r5, 0
	ldr r2, [sp, 0x18]
	bl sub_818F904
_0818F61E:
	adds r4, 0x2
	adds r5, 0x1
	cmp r5, 0xF
	ble _0818F5A0
_0818F626:
	mov r10, r7
	mov r2, r10
	cmp r2, 0xE
	ble _0818F58A
	bl sub_81A3610
	lsls r0, 24
	cmp r0, 0
	beq _0818F6EE
	movs r3, 0
	mov r10, r3
	ldr r0, =gSaveBlock2Ptr
	ldr r1, [r0]
	ldr r4, =0x00000d24
	adds r1, r4
	ldrh r1, [r1]
	lsls r1, 22
	lsrs r1, 22
	ldr r3, =0x000003ff
	adds r2, r0, 0
	ldr r6, =gUnknown_0860D3F1
	cmp r1, r3
	beq _0818F674
	adds r5, r2, 0
_0818F656:
	movs r7, 0x1
	add r10, r7
	mov r0, r10
	cmp r0, 0xF
	bgt _0818F674
	ldr r0, [r5]
	mov r7, r10
	lsls r1, r7, 2
	adds r0, r1
	adds r0, r4
	ldrh r0, [r0]
	lsls r0, 22
	lsrs r0, 22
	cmp r0, r3
	bne _0818F656
_0818F674:
	mov r1, r10
	lsls r0, r1, 1
	adds r0, r6
	ldrb r0, [r0]
	cmp r0, 0
	beq _0818F6AC
	movs r5, 0
	ldr r2, [r2]
	ldr r3, =0x00000d24
	adds r2, r3
	ldrh r1, [r2]
	ldr r0, =0xfffffc00
	ands r0, r1
	ldr r7, =0x000003fe
	adds r1, r7, 0
	b _0818F6BE
	.pool
_0818F6AC:
	movs r5, 0x1
	ldr r2, [r2]
	ldr r0, =0x00000d28
	adds r2, r0
	ldrh r1, [r2]
	ldr r0, =0xfffffc00
	ands r0, r1
	ldr r3, =0x000003fe
	adds r1, r3, 0
_0818F6BE:
	orrs r0, r1
	strh r0, [r2]
	movs r7, 0
	mov r10, r7
	lsls r0, r5, 1
	adds r0, r5
	lsls r4, r0, 1
_0818F6CC:
	mov r1, r10
	lsls r0, r1, 24
	lsrs r0, 24
	bl sub_81A4FF0
	ldr r1, =gSaveBlock2Ptr
	ldr r1, [r1]
	ldr r2, =0x00000d64
	adds r1, r2
	adds r1, r4
	strh r0, [r1]
	adds r4, 0x2
	movs r3, 0x1
	add r10, r3
	mov r5, r10
	cmp r5, 0x2
	ble _0818F6CC
_0818F6EE:
	ldr r0, [sp, 0x18]
	bl Free
	ldr r0, [sp, 0x1C]
	bl Free
	add sp, 0x3C
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818F02C

	thumb_func_start sub_818F720
sub_818F720: @ 818F720
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x1C
	adds r7, r1, 0
	mov r9, r2
	ldr r1, [sp, 0x3C]
	ldr r2, [sp, 0x40]
	mov r8, r2
	lsls r0, 16
	lsrs r6, r0, 16
	lsls r3, 24
	lsrs r5, r3, 24
	lsls r1, 24
	lsrs r1, 24
	str r1, [sp, 0x18]
	movs r1, 0
	adds r4, r5, 0
	movs r3, 0x1
	movs r2, 0x5
_0818F74C:
	adds r0, r4, 0
	ands r0, r3
	cmp r0, 0
	beq _0818F756
	adds r1, 0x1
_0818F756:
	lsrs r4, 1
	subs r2, 0x1
	cmp r2, 0
	bge _0818F74C
	movs r0, 0xFF
	lsls r0, 1
	bl __divsi3
	lsls r0, 16
	lsrs r3, r0, 16
	lsls r0, r6, 3
	mov r10, r0
	movs r1, 0
	mov r12, r1
	mov r1, sp
	movs r2, 0x5
_0818F776:
	mov r0, r12
	str r0, [r1]
	adds r0, r5, 0
	ands r0, r4
	cmp r0, 0
	beq _0818F784
	str r3, [r1]
_0818F784:
	lsls r0, r4, 25
	lsrs r4, r0, 24
	adds r1, 0x4
	subs r2, 0x1
	cmp r2, 0
	bge _0818F776
	ldr r0, =0x0000012f
	cmp r6, r0
	bne _0818F7A0
	movs r0, 0x1
	b _0818F7CA
	.pool
_0818F7A0:
	mov r2, r10
	subs r0, r2, r6
	lsls r0, 2
	ldr r1, =gBaseStats
	adds r0, r1
	ldrb r0, [r0]
	lsls r0, 1
	mov r2, r9
	adds r1, r0, r2
	ldr r0, [sp]
	cmp r0, 0
	bge _0818F7BA
	adds r0, 0x3
_0818F7BA:
	asrs r0, 2
	adds r0, r1, r0
	muls r0, r7
	movs r1, 0x64
	bl __divsi3
	adds r0, r7
	adds r0, 0xA
_0818F7CA:
	mov r1, r8
	str r0, [r1]
	mov r2, r10
	subs r0, r2, r6
	lsls r0, 2
	ldr r1, =gBaseStats
	adds r4, r0, r1
	ldrb r0, [r4, 0x1]
	lsls r0, 1
	mov r2, r9
	adds r1, r0, r2
	ldr r0, [sp, 0x4]
	cmp r0, 0
	bge _0818F7E8
	adds r0, 0x3
_0818F7E8:
	asrs r0, 2
	adds r0, r1, r0
	muls r0, r7
	movs r1, 0x64
	bl __divsi3
	adds r1, r0, 0
	adds r1, 0x5
	mov r0, r8
	str r1, [r0, 0x4]
	lsls r1, 16
	lsrs r1, 16
	ldr r0, [sp, 0x18]
	movs r2, 0x1
	bl nature_stat_mod
	lsls r0, 24
	lsrs r0, 24
	mov r1, r8
	str r0, [r1, 0x4]
	ldrb r0, [r4, 0x2]
	lsls r0, 1
	mov r2, r9
	adds r1, r0, r2
	ldr r0, [sp, 0x8]
	cmp r0, 0
	bge _0818F820
	adds r0, 0x3
_0818F820:
	asrs r0, 2
	adds r0, r1, r0
	muls r0, r7
	movs r1, 0x64
	bl __divsi3
	adds r1, r0, 0
	adds r1, 0x5
	mov r0, r8
	str r1, [r0, 0x8]
	lsls r1, 16
	lsrs r1, 16
	ldr r0, [sp, 0x18]
	movs r2, 0x2
	bl nature_stat_mod
	lsls r0, 24
	lsrs r0, 24
	mov r1, r8
	str r0, [r1, 0x8]
	ldrb r0, [r4, 0x3]
	lsls r0, 1
	mov r2, r9
	adds r1, r0, r2
	ldr r0, [sp, 0xC]
	cmp r0, 0
	bge _0818F858
	adds r0, 0x3
_0818F858:
	asrs r0, 2
	adds r0, r1, r0
	muls r0, r7
	movs r1, 0x64
	bl __divsi3
	adds r1, r0, 0
	adds r1, 0x5
	mov r0, r8
	str r1, [r0, 0xC]
	lsls r1, 16
	lsrs r1, 16
	ldr r0, [sp, 0x18]
	movs r2, 0x3
	bl nature_stat_mod
	lsls r0, 24
	lsrs r0, 24
	mov r1, r8
	str r0, [r1, 0xC]
	ldrb r0, [r4, 0x4]
	lsls r0, 1
	mov r2, r9
	adds r1, r0, r2
	ldr r0, [sp, 0x10]
	cmp r0, 0
	bge _0818F890
	adds r0, 0x3
_0818F890:
	asrs r0, 2
	adds r0, r1, r0
	muls r0, r7
	movs r1, 0x64
	bl __divsi3
	adds r1, r0, 0
	adds r1, 0x5
	mov r0, r8
	str r1, [r0, 0x10]
	lsls r1, 16
	lsrs r1, 16
	ldr r0, [sp, 0x18]
	movs r2, 0x4
	bl nature_stat_mod
	lsls r0, 24
	lsrs r0, 24
	mov r1, r8
	str r0, [r1, 0x10]
	ldrb r0, [r4, 0x5]
	lsls r0, 1
	mov r1, r9
	adds r2, r0, r1
	ldr r0, [sp, 0x14]
	cmp r0, 0
	bge _0818F8C8
	adds r0, 0x3
_0818F8C8:
	asrs r0, 2
	adds r0, r2, r0
	muls r0, r7
	movs r1, 0x64
	bl __divsi3
	adds r1, r0, 0
	adds r1, 0x5
	mov r2, r8
	str r1, [r2, 0x14]
	lsls r1, 16
	lsrs r1, 16
	ldr r0, [sp, 0x18]
	movs r2, 0x5
	bl nature_stat_mod
	lsls r0, 24
	lsrs r0, 24
	mov r1, r8
	str r0, [r1, 0x14]
	add sp, 0x1C
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818F720

	thumb_func_start sub_818F904
sub_818F904: @ 818F904
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	lsls r3, r0, 1
	mov r12, r3
	adds r4, r3, r2
	ldrh r5, [r4]
	lsls r7, r1, 1
	mov r9, r7
	add r2, r9
	ldrh r3, [r2]
	strh r3, [r4]
	strh r5, [r2]
	ldr r2, =gSaveBlock2Ptr
	ldr r5, [r2]
	lsls r6, r0, 2
	adds r6, r5, r6
	ldr r3, =0x00000d24
	adds r6, r3
	ldrh r7, [r6]
	mov r10, r7
	mov r2, r10
	lsls r2, 22
	mov r8, r2
	lsls r2, r1, 2
	adds r5, r2
	adds r5, r3
	ldrh r4, [r5]
	lsls r4, 22
	lsrs r4, 22
	ldr r3, =0xfffffc00
	adds r2, r3, 0
	mov r7, r10
	ands r2, r7
	orrs r2, r4
	strh r2, [r6]
	mov r2, r8
	lsrs r2, 22
	mov r8, r2
	ldrh r2, [r5]
	ands r3, r2
	mov r7, r8
	orrs r3, r7
	strh r3, [r5]
	ldr r2, =gSaveBlock2Ptr
	mov r8, r2
	add r12, r0
	add r9, r1
	mov r3, r9
	lsls r4, r3, 1
	mov r7, r12
	lsls r3, r7, 1
	ldr r7, =0x00000d64
	movs r6, 0x2
_0818F974:
	mov r1, r8
	ldr r0, [r1]
	adds r0, r7
	adds r2, r0, r3
	ldrh r5, [r2]
	adds r0, r4
	ldrh r1, [r0]
	strh r1, [r2]
	strh r5, [r0]
	adds r4, 0x2
	adds r3, 0x2
	subs r6, 0x1
	cmp r6, 0
	bge _0818F974
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818F904

	thumb_func_start sub_818F9B0
sub_818F9B0: @ 818F9B0
	push {lr}
	ldr r0, =gStringVar1
	ldr r2, =gUnknown_085CCD20
	ldr r1, =gSaveBlock2Ptr
	ldr r1, [r1]
	ldr r3, =0x00000cb2
	adds r1, r3
	ldrh r1, [r1]
	lsls r1, 2
	adds r1, r2
	ldr r1, [r1]
	bl StringCopy
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818F9B0

	thumb_func_start sub_818F9E0
sub_818F9E0: @ 818F9E0
	push {lr}
	ldr r0, =gStringVar1
	ldr r2, =gUnknown_085CCD20
	ldr r1, =gSaveBlock2Ptr
	ldr r1, [r1]
	ldr r3, =0x00000cb2
	adds r1, r3
	ldrh r1, [r1]
	lsls r1, 2
	adds r1, r2
	ldr r1, [r1]
	bl StringCopy
	ldr r0, =gStringVar2
	ldr r1, =gUnknown_02038BCA
	ldrh r1, [r1]
	bl sub_8195898
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818F9E0

	thumb_func_start sub_818FA20
sub_818FA20: @ 818FA20
	push {r4,r5,lr}
	ldr r1, =gUnknown_0203CD70
	movs r0, 0
	str r0, [r1]
	ldr r4, =gPlayerParty
	adds r0, r4, 0
	movs r1, 0x3A
	movs r2, 0
	bl GetMonData
	ldr r5, =gUnknown_0203CD74
	str r0, [r5]
	adds r4, 0x64
	adds r0, r4, 0
	movs r1, 0x3A
	movs r2, 0
	bl GetMonData
	ldr r1, [r5]
	adds r1, r0
	str r1, [r5]
	bl calc_player_party_count
	ldr r0, =gUnknown_02038BCA
	ldrh r0, [r0]
	bl sub_8195358
	lsls r0, 16
	lsrs r0, 16
	bl sub_818FBDC
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818FA20

	thumb_func_start sub_818FA74
sub_818FA74: @ 818FA74
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x30
	adds r5, r2, 0
	str r3, [sp, 0x14]
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp, 0x10]
	lsls r1, 16
	lsrs r1, 16
	str r1, [sp, 0x28]
	lsls r5, 24
	lsrs r5, 24
	add r0, sp, 0xC
	movs r1, 0x1
	negs r1, r1
	strb r1, [r0]
	ldr r0, [sp, 0x28]
	bl sub_8190168
	adds r6, r0, 0
	lsls r6, 24
	lsrs r6, 24
	str r6, [sp, 0x2C]
	bl sub_8165C40
	adds r2, r0, 0
	lsls r2, 24
	lsrs r2, 24
	movs r0, 0x64
	ldr r4, [sp, 0x10]
	adds r3, r4, 0
	muls r3, r0
	str r3, [sp, 0x18]
	ldr r6, =gEnemyParty
	adds r0, r3, r6
	ldr r7, =gSaveBlock2Ptr
	ldr r4, [r7]
	lsls r5, 1
	ldr r3, [sp, 0x28]
	lsls r1, r3, 1
	adds r1, r3
	lsls r1, 1
	adds r1, r5, r1
	ldr r6, =0x00000d64
	adds r4, r6
	adds r4, r1
	ldrh r3, [r4]
	ldr r7, =gUnknown_0203BC8C
	ldr r7, [r7]
	mov r8, r7
	lsls r3, 4
	add r3, r8
	ldrh r1, [r3]
	ldrb r3, [r3, 0xC]
	ldr r6, [sp, 0x2C]
	str r6, [sp]
	ldrh r4, [r4]
	lsls r4, 4
	add r4, r8
	ldrb r4, [r4, 0xB]
	str r4, [sp, 0x4]
	ldr r7, [sp, 0x14]
	str r7, [sp, 0x8]
	bl sub_8068634
	add r0, sp, 0xC
	movs r1, 0x1
	negs r1, r1
	strb r1, [r0]
	movs r6, 0
	ldr r2, [sp, 0x18]
	str r2, [sp, 0x1C]
	mov r10, r5
	ldr r3, =0x00000d64
	mov r9, r3
	ldr r3, =gUnknown_0203BC8C
	mov r4, r10
	str r4, [sp, 0x20]
_0818FB18:
	ldr r7, =gSaveBlock2Ptr
	ldr r1, [r7]
	ldr r2, [sp, 0x28]
	lsls r0, r2, 1
	adds r0, r2
	lsls r0, 1
	mov r8, r0
	mov r5, r10
	add r5, r8
	add r1, r9
	adds r1, r5
	ldrh r0, [r1]
	ldr r1, [r3]
	lsls r0, 4
	adds r0, r1
	lsls r4, r6, 1
	adds r0, 0x2
	adds r0, r4
	ldrh r1, [r0]
	lsls r2, r6, 24
	lsrs r2, 24
	mov r12, r2
	ldr r7, [sp, 0x1C]
	ldr r2, =gEnemyParty
	adds r0, r7, r2
	mov r2, r12
	str r3, [sp, 0x24]
	bl sub_80691F4
	ldr r7, =gSaveBlock2Ptr
	ldr r0, [r7]
	add r0, r9
	adds r0, r5
	ldrh r0, [r0]
	ldr r3, [sp, 0x24]
	ldr r1, [r3]
	lsls r0, 4
	adds r0, r1
	adds r0, 0x2
	adds r0, r4
	ldrh r0, [r0]
	cmp r0, 0xDA
	bne _0818FB74
	movs r1, 0
	add r0, sp, 0xC
	strb r1, [r0]
_0818FB74:
	adds r6, 0x1
	cmp r6, 0x3
	ble _0818FB18
	movs r0, 0x64
	ldr r1, [sp, 0x10]
	adds r4, r1, 0
	muls r4, r0
	ldr r0, =gEnemyParty
	adds r4, r0
	adds r0, r4, 0
	movs r1, 0x20
	add r2, sp, 0xC
	bl pokemon_setattr
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r1, [sp, 0x20]
	add r1, r8
	ldr r2, =0x00000d64
	adds r0, r2
	adds r0, r1
	ldrh r0, [r0]
	ldr r1, =gUnknown_0203BC8C
	ldr r1, [r1]
	lsls r0, 4
	adds r0, r1
	ldrb r2, [r0, 0xA]
	lsls r2, 1
	ldr r0, =gBattleFrontierHeldItems
	adds r2, r0
	adds r0, r4, 0
	movs r1, 0xC
	bl pokemon_setattr
	add sp, 0x30
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818FA74

	thumb_func_start sub_818FBDC
sub_818FBDC: @ 818FBDC
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	lsls r0, 16
	lsrs r0, 16
	mov r8, r0
	movs r6, 0
	bl zero_enemy_party_data
	mov r0, r8
	bl sub_818FC78
	adds r5, r0, 0
	bl Random
	adds r4, r0, 0
	bl Random
	lsls r4, 16
	lsrs r7, r4, 16
	lsls r0, 16
	orrs r7, r0
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0xA
	bl __umodsi3
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0x5
	bls _0818FC46
	movs r4, 0
_0818FC20:
	movs r0, 0x1
	ands r0, r5
	cmp r0, 0
	beq _0818FC3C
	lsls r2, r4, 24
	lsrs r2, 24
	adds r0, r6, 0
	mov r1, r8
	adds r3, r7, 0
	bl sub_818FA74
	adds r0, r6, 0x1
	lsls r0, 24
	lsrs r6, r0, 24
_0818FC3C:
	asrs r5, 1
	adds r4, 0x1
	cmp r4, 0x2
	ble _0818FC20
	b _0818FC6C
_0818FC46:
	movs r4, 0x2
_0818FC48:
	movs r0, 0x4
	ands r0, r5
	cmp r0, 0
	beq _0818FC64
	lsls r2, r4, 24
	lsrs r2, 24
	adds r0, r6, 0
	mov r1, r8
	adds r3, r7, 0
	bl sub_818FA74
	adds r0, r6, 0x1
	lsls r0, 24
	lsrs r6, r0, 24
_0818FC64:
	lsls r5, 1
	subs r4, 0x1
	cmp r4, 0
	bge _0818FC48
_0818FC6C:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_818FBDC

	thumb_func_start sub_818FC78
sub_818FC78: @ 818FC78
	push {r4,r5,lr}
	lsls r0, 16
	lsrs r4, r0, 16
	adds r5, r4, 0
	bl Random
	movs r1, 0x1
	ands r1, r0
	cmp r1, 0
	beq _0818FCA2
	adds r0, r4, 0
	movs r1, 0
	bl sub_818FCBC
	cmp r0, 0
	bne _0818FCB6
	adds r0, r4, 0
	movs r1, 0x1
	bl sub_818FDB8
	b _0818FCB6
_0818FCA2:
	adds r0, r5, 0
	movs r1, 0
	bl sub_818FDB8
	cmp r0, 0
	bne _0818FCB6
	adds r0, r5, 0
	movs r1, 0x1
	bl sub_818FCBC
_0818FCB6:
	pop {r4,r5}
	pop {r1}
	bx r1
	thumb_func_end sub_818FC78

	thumb_func_start sub_818FCBC
sub_818FCBC: @ 818FCBC
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x1C
	lsls r0, 16
	lsrs r0, 16
	mov r8, r0
	lsls r1, 24
	lsrs r1, 24
	str r1, [sp, 0xC]
	movs r0, 0
	mov r9, r0
	mov r1, r8
	lsls r1, 2
	str r1, [sp, 0x18]
_0818FCDE:
	mov r2, r9
	lsls r0, r2, 2
	mov r2, sp
	adds r1, r2, r0
	movs r0, 0
	str r0, [r1]
	movs r7, 0
	mov r0, r9
	adds r0, 0x1
	str r0, [sp, 0x14]
	adds r5, r1, 0
	mov r1, r9
	lsls r1, 1
	str r1, [sp, 0x10]
_0818FCFA:
	movs r6, 0
	adds r2, r7, 0x1
	mov r10, r2
_0818FD00:
	ldr r0, =gSaveBlock2Ptr
	ldr r1, [r0]
	ldr r2, [sp, 0x18]
	adds r0, r1, r2
	ldr r2, =0x00000d24
	adds r0, r2
	ldrh r0, [r0]
	lsls r0, 22
	lsrs r0, 22
	ldr r2, =0x000003fe
	cmp r0, r2
	bne _0818FD3C
	mov r1, r9
	lsls r0, r1, 24
	lsls r1, r7, 24
	lsrs r0, 24
	lsrs r1, 24
	bl sub_81A5060
	adds r4, r0, 0
	lsls r4, 16
	lsrs r4, 16
	b _0818FD60
	.pool
_0818FD3C:
	mov r2, r8
	lsls r0, r2, 1
	add r0, r8
	lsls r0, 1
	ldr r2, [sp, 0x10]
	adds r0, r2, r0
	ldr r2, =0x00000d64
	adds r1, r2
	adds r1, r0
	ldrh r0, [r1]
	ldr r1, =gUnknown_0203BC8C
	ldr r1, [r1]
	lsls r0, 4
	adds r0, r1
	lsls r1, r7, 1
	adds r0, 0x2
	adds r0, r1
	ldrh r4, [r0]
_0818FD60:
	movs r0, 0x64
	muls r0, r6
	ldr r1, =gPlayerParty
	adds r0, r1
	movs r1, 0xB
	movs r2, 0
	bl GetMonData
	adds r1, r0, 0
	adds r0, r4, 0
	movs r2, 0
	bl sub_818FFC0
	ldr r1, [r5]
	adds r1, r0
	str r1, [r5]
	adds r6, 0x1
	cmp r6, 0x2
	ble _0818FD00
	mov r7, r10
	cmp r7, 0x3
	ble _0818FCFA
	ldr r0, [sp, 0x14]
	mov r9, r0
	cmp r0, 0x2
	ble _0818FCDE
	mov r0, sp
	ldr r1, [sp, 0xC]
	bl sub_818FEB4
	add sp, 0x1C
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_818FCBC

	thumb_func_start sub_818FDB8
sub_818FDB8: @ 818FDB8
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x1C
	lsls r0, 16
	lsrs r0, 16
	mov r8, r0
	lsls r1, 24
	lsrs r1, 24
	str r1, [sp, 0xC]
	movs r0, 0
	mov r9, r0
	mov r1, r8
	lsls r1, 2
	str r1, [sp, 0x18]
_0818FDDA:
	mov r2, r9
	lsls r0, r2, 2
	mov r2, sp
	adds r1, r2, r0
	movs r0, 0
	str r0, [r1]
	movs r7, 0
	mov r0, r9
	adds r0, 0x1
	str r0, [sp, 0x14]
	adds r5, r1, 0
	mov r1, r9
	lsls r1, 1
	str r1, [sp, 0x10]
_0818FDF6:
	movs r6, 0
	adds r2, r7, 0x1
	mov r10, r2
_0818FDFC:
	ldr r0, =gSaveBlock2Ptr
	ldr r1, [r0]
	ldr r2, [sp, 0x18]
	adds r0, r1, r2
	ldr r2, =0x00000d24
	adds r0, r2
	ldrh r0, [r0]
	lsls r0, 22
	lsrs r0, 22
	ldr r2, =0x000003fe
	cmp r0, r2
	bne _0818FE38
	mov r1, r9
	lsls r0, r1, 24
	lsls r1, r7, 24
	lsrs r0, 24
	lsrs r1, 24
	bl sub_81A5060
	adds r4, r0, 0
	lsls r4, 16
	lsrs r4, 16
	b _0818FE5C
	.pool
_0818FE38:
	mov r2, r8
	lsls r0, r2, 1
	add r0, r8
	lsls r0, 1
	ldr r2, [sp, 0x10]
	adds r0, r2, r0
	ldr r2, =0x00000d64
	adds r1, r2
	adds r1, r0
	ldrh r0, [r1]
	ldr r1, =gUnknown_0203BC8C
	ldr r1, [r1]
	lsls r0, 4
	adds r0, r1
	lsls r1, r7, 1
	adds r0, 0x2
	adds r0, r1
	ldrh r4, [r0]
_0818FE5C:
	movs r0, 0x64
	muls r0, r6
	ldr r1, =gPlayerParty
	adds r0, r1
	movs r1, 0xB
	movs r2, 0
	bl GetMonData
	adds r1, r0, 0
	adds r0, r4, 0
	movs r2, 0x1
	bl sub_818FFC0
	ldr r1, [r5]
	adds r1, r0
	str r1, [r5]
	adds r6, 0x1
	cmp r6, 0x2
	ble _0818FDFC
	mov r7, r10
	cmp r7, 0x3
	ble _0818FDF6
	ldr r0, [sp, 0x14]
	mov r9, r0
	cmp r0, 0x2
	ble _0818FDDA
	mov r0, sp
	ldr r1, [sp, 0xC]
	bl sub_818FEB4
	add sp, 0x1C
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_818FDB8

	thumb_func_start sub_818FEB4
sub_818FEB4: @ 818FEB4
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x18
	mov r10, r0
	lsls r1, 24
	lsrs r1, 24
	movs r0, 0
	str r0, [sp, 0xC]
	movs r3, 0x2
	add r0, sp, 0x8
_0818FECE:
	str r3, [r0]
	subs r0, 0x4
	subs r3, 0x1
	cmp r3, 0
	bge _0818FECE
	mov r3, r10
	ldr r2, [r3]
	ldr r0, [r3, 0x4]
	cmp r2, r0
	bne _0818FF20
	ldr r0, [r3, 0x8]
	cmp r2, r0
	bne _0818FF20
	cmp r1, 0
	beq _0818FFAA
	movs r3, 0
	ldr r4, =gBitTable
_0818FEF0:
	str r3, [sp, 0x14]
	bl Random
	movs r1, 0x3
	ands r1, r0
	ldr r3, [sp, 0x14]
	cmp r1, 0x3
	beq _0818FF16
	lsls r0, r1, 2
	adds r0, r4
	ldr r1, [r0]
	ldr r0, [sp, 0xC]
	ands r0, r1
	cmp r0, 0
	bne _0818FF16
	ldr r0, [sp, 0xC]
	orrs r0, r1
	str r0, [sp, 0xC]
	adds r3, 0x1
_0818FF16:
	cmp r3, 0x2
	bne _0818FEF0
	b _0818FFAA
	.pool
_0818FF20:
	movs r3, 0
	mov r9, sp
	mov r8, r10
_0818FF26:
	adds r2, r3, 0x1
	cmp r2, 0x2
	bgt _0818FF84
	mov r6, r8
	mov r7, r9
	lsls r0, r2, 2
	mov r1, sp
	adds r5, r0, r1
	mov r1, r10
	adds r4, r0, r1
_0818FF3A:
	ldr r0, [r6]
	ldr r1, [r4]
	cmp r0, r1
	bge _0818FF4E
	str r1, [r6]
	str r0, [r4]
	ldr r1, [r7]
	ldr r0, [r5]
	str r0, [r7]
	str r1, [r5]
_0818FF4E:
	ldr r1, [r6]
	ldr r0, [r4]
	cmp r1, r0
	bne _0818FF7A
	str r2, [sp, 0x10]
	str r3, [sp, 0x14]
	bl Random
	movs r1, 0x1
	ands r1, r0
	ldr r2, [sp, 0x10]
	ldr r3, [sp, 0x14]
	cmp r1, 0
	beq _0818FF7A
	ldr r1, [r6]
	ldr r0, [r4]
	str r0, [r6]
	str r1, [r4]
	ldr r1, [r7]
	ldr r0, [r5]
	str r0, [r7]
	str r1, [r5]
_0818FF7A:
	adds r5, 0x4
	adds r4, 0x4
	adds r2, 0x1
	cmp r2, 0x2
	ble _0818FF3A
_0818FF84:
	movs r4, 0x4
	add r9, r4
	add r8, r4
	adds r3, 0x1
	cmp r3, 0x1
	ble _0818FF26
	ldr r2, =gBitTable
	mov r1, sp
	movs r3, 0x1
_0818FF96:
	ldm r1!, {r0}
	lsls r0, 2
	adds r0, r2
	ldr r0, [r0]
	ldr r4, [sp, 0xC]
	orrs r4, r0
	str r4, [sp, 0xC]
	subs r3, 0x1
	cmp r3, 0
	bge _0818FF96
_0818FFAA:
	ldr r0, [sp, 0xC]
	add sp, 0x18
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_818FEB4

	thumb_func_start sub_818FFC0
sub_818FFC0: @ 818FFC0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x8
	adds r3, r0, 0
	adds r4, r1, 0
	str r2, [sp]
	movs r6, 0
	movs r2, 0x14
	cmp r3, 0
	beq _0818FFF0
	ldr r0, =0x0000ffff
	cmp r3, r0
	beq _0818FFF0
	ldr r0, =gBattleMoves
	lsls r1, r3, 1
	adds r1, r3
	lsls r1, 2
	adds r3, r1, r0
	ldrb r0, [r3, 0x1]
	cmp r0, 0
	bne _0818FFFC
_0818FFF0:
	movs r0, 0
	b _08190156
	.pool
_0818FFFC:
	ldr r1, =gBaseStats
	lsls r0, r4, 3
	subs r0, r4
	lsls r0, 2
	adds r0, r1
	ldrb r1, [r0, 0x6]
	mov r10, r1
	ldrb r1, [r0, 0x7]
	mov r9, r1
	ldrb r0, [r0, 0x16]
	mov r8, r0
	ldrb r3, [r3, 0x2]
	str r3, [sp, 0x4]
	cmp r0, 0x1A
	bne _0819002C
	cmp r3, 0x4
	bne _0819002C
	ldr r0, [sp]
	cmp r0, 0x1
	bne _081900AA
	movs r2, 0x8
	b _081900A4
	.pool
_0819002C:
	ldr r0, =gUnknown_0831ACE8
	adds r1, r6, r0
	ldrb r0, [r1]
	ldr r7, =gUnknown_0831ACE8
	cmp r0, 0xFF
	beq _081900A4
	adds r4, r1, 0
_0819003A:
	ldrb r0, [r4]
	cmp r0, 0xFE
	beq _08190096
	ldrb r0, [r4]
	ldr r1, [sp, 0x4]
	cmp r0, r1
	bne _08190096
	ldrb r0, [r4, 0x1]
	adds r5, r6, 0x1
	cmp r0, r10
	bne _0819006C
	adds r1, r6, 0x2
	mov r0, r8
	cmp r0, 0x19
	bne _0819005E
	ldrb r0, [r4, 0x2]
	cmp r0, 0x28
	bne _0819006C
_0819005E:
	adds r0, r1, r7
	ldrb r0, [r0]
	muls r0, r2
	movs r1, 0xA
	bl __divsi3
	adds r2, r0, 0
_0819006C:
	adds r0, r5, r7
	ldrb r0, [r0]
	cmp r0, r9
	bne _08190096
	cmp r10, r9
	beq _08190096
	adds r1, r6, 0x2
	mov r0, r8
	cmp r0, 0x19
	bne _08190088
	adds r0, r1, r7
	ldrb r0, [r0]
	cmp r0, 0x28
	bne _08190096
_08190088:
	adds r0, r1, r7
	ldrb r0, [r0]
	muls r0, r2
	movs r1, 0xA
	bl __divsi3
	adds r2, r0, 0
_08190096:
	adds r4, 0x3
	adds r6, 0x3
	ldr r1, =gUnknown_0831ACE8
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, 0xFF
	bne _0819003A
_081900A4:
	ldr r0, [sp]
	cmp r0, 0x1
	beq _081900E0
_081900AA:
	ldr r1, [sp]
	cmp r1, 0x1
	bgt _081900BC
	cmp r1, 0
	beq _081900C4
	b _08190154
	.pool
_081900BC:
	ldr r0, [sp]
	cmp r0, 0x2
	beq _08190114
	b _08190154
_081900C4:
	cmp r2, 0xA
	beq _08190146
	cmp r2, 0xA
	ble _08190146
	cmp r2, 0x28
	beq _0819014A
	cmp r2, 0x28
	bgt _081900DA
	cmp r2, 0x14
	beq _08190104
	b _08190146
_081900DA:
	cmp r2, 0x50
	bne _08190146
	b _08190100
_081900E0:
	cmp r2, 0xA
	beq _08190104
	cmp r2, 0xA
	bgt _081900F2
	cmp r2, 0
	beq _08190100
	cmp r2, 0x5
	beq _0819014A
	b _08190146
_081900F2:
	cmp r2, 0x28
	beq _08190108
	cmp r2, 0x28
	ble _08190146
	cmp r2, 0x50
	beq _0819010E
	b _08190146
_08190100:
	movs r2, 0x8
	b _08190154
_08190104:
	movs r2, 0x2
	b _08190154
_08190108:
	movs r2, 0x2
	negs r2, r2
	b _08190154
_0819010E:
	movs r2, 0x4
	negs r2, r2
	b _08190154
_08190114:
	cmp r2, 0xA
	beq _08190146
	cmp r2, 0xA
	bgt _08190126
	cmp r2, 0
	beq _0819013A
	cmp r2, 0x5
	beq _08190140
	b _08190146
_08190126:
	cmp r2, 0x28
	beq _0819014E
	cmp r2, 0x28
	bgt _08190134
	cmp r2, 0x14
	beq _0819014A
	b _08190146
_08190134:
	cmp r2, 0x50
	beq _08190152
	b _08190146
_0819013A:
	movs r2, 0x10
	negs r2, r2
	b _08190154
_08190140:
	movs r2, 0x8
	negs r2, r2
	b _08190154
_08190146:
	movs r2, 0
	b _08190154
_0819014A:
	movs r2, 0x4
	b _08190154
_0819014E:
	movs r2, 0xC
	b _08190154
_08190152:
	movs r2, 0x14
_08190154:
	adds r0, r2, 0
_08190156:
	add sp, 0x8
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end sub_818FFC0

	thumb_func_start sub_8190168
sub_8190168: @ 8190168
	push {lr}
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x3
	cmp r0, 0x63
	bls _0819019A
	movs r1, 0x6
	cmp r0, 0x77
	bls _0819019A
	movs r1, 0x9
	cmp r0, 0x8B
	bls _0819019A
	movs r1, 0xC
	cmp r0, 0x9F
	bls _0819019A
	movs r1, 0xF
	cmp r0, 0xB3
	bls _0819019A
	movs r1, 0x12
	cmp r0, 0xC7
	bls _0819019A
	movs r1, 0x1F
	cmp r0, 0xDB
	bhi _0819019A
	movs r1, 0x15
_0819019A:
	adds r0, r1, 0
	pop {r1}
	bx r1
	thumb_func_end sub_8190168

	thumb_func_start sub_81901A0
sub_81901A0: @ 81901A0
	push {r4-r7,lr}
	adds r3, r0, 0
	adds r2, r1, 0
	movs r5, 0
	ldr r0, =gSaveBlock2Ptr
	ldr r1, [r0]
	ldr r4, =0x00000d24
	adds r1, r4
	ldrh r1, [r1]
	lsls r1, 22
	lsrs r1, 22
	mov r12, r0
	ldr r6, =gUnknown_0860D10C
	cmp r1, r2
	beq _081901D8
	mov r7, r12
_081901C0:
	adds r5, 0x1
	cmp r5, 0xF
	bgt _081901D8
	ldr r0, [r7]
	lsls r1, r5, 2
	adds r0, r1
	adds r0, r4
	ldrh r0, [r0]
	lsls r0, 22
	lsrs r0, 22
	cmp r0, r2
	bne _081901C0
_081901D8:
	cmp r3, 0
	beq _0819026C
	cmp r3, 0x3
	bne _081901FC
	lsls r0, r5, 2
	adds r1, r0, 0x3
	adds r1, r6
	ldrb r1, [r1]
	adds r4, r1, 0
	adds r4, 0x8
	b _08190206
	.pool
_081901FC:
	lsls r0, r5, 2
	adds r1, r3, r0
	adds r1, r6
	ldrb r1, [r1]
	adds r4, r1, 0x4
_08190206:
	adds r0, r3, r0
	adds r0, r6
	ldrb r2, [r0]
	cmp r2, r4
	bge _08190256
	ldr r1, =gUnknown_0860D14C
	adds r0, r2, r1
	ldrb r3, [r0]
	adds r6, r1, 0
	cmp r3, r5
	beq _08190234
	mov r1, r12
	ldr r0, [r1]
	lsls r1, r3, 2
	adds r0, r1
	ldr r3, =0x00000d25
	adds r0, r3
	b _0819024E
	.pool
_08190234:
	adds r2, 0x1
	cmp r2, r4
	bge _08190256
	adds r0, r2, r6
	ldrb r1, [r0]
	cmp r1, r5
	beq _08190234
	mov r3, r12
	ldr r0, [r3]
	lsls r1, 2
	adds r0, r1
	ldr r1, =0x00000d25
	adds r0, r1
_0819024E:
	ldrb r0, [r0]
	lsls r0, 29
	cmp r0, 0
	blt _08190234
_08190256:
	cmp r2, r4
	beq _08190286
	ldr r0, =gUnknown_0860D14C
	adds r0, r2, r0
	ldrb r0, [r0]
	b _08190292
	.pool
_0819026C:
	mov r3, r12
	ldr r1, [r3]
	lsls r0, r5, 2
	adds r0, r6
	ldrb r2, [r0]
	lsls r0, r2, 2
	adds r1, r0
	ldr r0, =0x00000d25
	adds r1, r0
	ldrb r0, [r1]
	lsls r0, 29
	cmp r0, 0
	bge _08190290
_08190286:
	movs r0, 0xFF
	b _08190292
	.pool
_08190290:
	adds r0, r2, 0
_08190292:
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end sub_81901A0

	thumb_func_start sub_8190298
sub_8190298: @ 8190298
	push {lr}
	bl sub_81902AC
	ldr r1, =gUnknown_02038BCA
	strh r0, [r1]
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8190298

	thumb_func_start sub_81902AC
sub_81902AC: @ 81902AC
	push {r4,lr}
	ldr r0, =gSaveBlock2Ptr
	ldr r4, [r0]
	ldr r1, =0x00000cb2
	adds r0, r4, r1
	ldrh r0, [r0]
	ldr r1, =0x000003ff
	bl sub_81901A0
	lsls r0, 2
	adds r4, r0
	ldr r0, =0x00000d24
	adds r4, r0
	ldrh r0, [r4]
	lsls r0, 22
	lsrs r0, 22
	pop {r4}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_81902AC

	thumb_func_start sub_81902E4
sub_81902E4: @ 81902E4
	push {lr}
	ldr r0, =gUnknown_02038BCA
	ldrh r0, [r0]
	movs r1, 0
	bl sub_8162614
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81902E4

	thumb_func_start sub_81902F8
sub_81902F8: @ 81902F8
	push {r4,lr}
	ldr r4, =gSaveBlock2Ptr
	ldr r0, [r4]
	ldr r1, =gUnknown_020375E2
	ldrh r1, [r1]
	ldr r2, =0x00000ca8
	adds r0, r2
	strb r1, [r0]
	movs r0, 0x80
	lsls r0, 7
	movs r1, 0
	bl VarSet
	ldr r1, [r4]
	ldr r0, =0x00000ca9
	adds r1, r0
	ldrb r0, [r1]
	movs r2, 0x4
	orrs r0, r2
	strb r0, [r1]
	bl sub_81A4C30
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81902F8

	thumb_func_start sub_819033C
sub_819033C: @ 819033C
	push {r4,r5,lr}
	ldr r5, =gSaveBlock2Ptr
	ldr r0, [r5]
	ldr r1, =0x00000ca9
	adds r0, r1
	ldrb r4, [r0]
	lsls r4, 30
	lsrs r4, 30
	ldr r0, =0x000040ce
	bl VarGet
	lsls r0, 24
	ldr r1, [r5]
	lsls r4, 1
	lsrs r0, 22
	adds r4, r0
	ldr r3, =0x00000d0c
	adds r1, r3
	adds r1, r4
	ldrh r0, [r1]
	ldr r2, =0x000003e6
	cmp r0, r2
	bhi _0819036E
	adds r0, 0x1
	strh r0, [r1]
_0819036E:
	ldr r0, [r5]
	ldr r1, =0x00000d1c
	adds r0, r1
	adds r1, r0, r4
	ldrh r0, [r1]
	cmp r0, r2
	bhi _08190380
	adds r0, 0x1
	strh r0, [r1]
_08190380:
	ldr r0, [r5]
	adds r1, r0, r3
	adds r1, r4
	ldr r2, =0x00000d14
	adds r0, r2
	adds r0, r4
	ldrh r1, [r1]
	ldrh r2, [r0]
	cmp r1, r2
	bls _08190396
	strh r1, [r0]
_08190396:
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819033C

	thumb_func_start sub_81903B8
sub_81903B8: @ 81903B8
	push {r4,r5,lr}
	ldr r0, =sub_8190400
	movs r1, 0
	bl CreateTask
	lsls r0, 24
	lsrs r0, 24
	ldr r1, =gTasks
	lsls r4, r0, 2
	adds r4, r0
	lsls r4, 3
	adds r4, r1
	movs r5, 0
	strh r5, [r4, 0x8]
	bl sub_81902AC
	lsls r0, 16
	lsrs r0, 16
	bl sub_8195358
	strh r0, [r4, 0xA]
	strh r5, [r4, 0xC]
	strh r5, [r4, 0xE]
	ldr r0, =sub_8194B54
	bl SetMainCallback2
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81903B8

	thumb_func_start sub_8190400
sub_8190400: @ 8190400
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0xC
	lsls r0, 24
	lsrs r0, 24
	mov r10, r0
	ldr r1, =gTasks
	lsls r0, 2
	add r0, r10
	lsls r0, 3
	adds r6, r0, r1
	movs r0, 0xA
	ldrsh r5, [r6, r0]
	movs r2, 0xC
	ldrsh r1, [r6, r2]
	mov r9, r1
	movs r0, 0xE
	ldrsh r7, [r6, r0]
	movs r1, 0x8
	ldrsh r4, [r6, r1]
	cmp r4, 0x1
	beq _08190508
	cmp r4, 0x1
	bgt _08190440
	cmp r4, 0
	beq _0819044E
	b _08190772
	.pool
_08190440:
	cmp r4, 0x2
	bne _08190446
	b _08190570
_08190446:
	cmp r4, 0x3
	bne _0819044C
	b _08190634
_0819044C:
	b _08190772
_0819044E:
	movs r0, 0
	bl SetHBlankCallback
	movs r0, 0
	bl SetVBlankCallback
	movs r0, 0x1
	bl EnableInterrupts
	str r4, [sp, 0x4]
	movs r1, 0xC0
	lsls r1, 19
	ldr r2, =0x05006000
	add r0, sp, 0x4
	bl CpuSet
	movs r0, 0
	bl ResetBgsAndClearDma3BusyFlags
	ldr r1, =gUnknown_0860CE84
	movs r0, 0
	movs r2, 0x4
	bl InitBgsFromTemplates
	ldr r0, =gUnknown_0860CEB4
	bl InitWindows
	bl DeactivateAllTextPrinters
	ldr r0, =gUnknown_02022E14
	strh r4, [r0]
	ldr r0, =gUnknown_02022E16
	strh r4, [r0]
	ldr r0, =gUnknown_02022E18
	strh r4, [r0]
	ldr r0, =gUnknown_02022E1A
	strh r4, [r0]
	ldr r0, =gUnknown_02022E20
	strh r4, [r0]
	ldr r0, =gUnknown_02022E22
	strh r4, [r0]
	mov r2, r9
	cmp r2, 0x2
	bne _081904DC
	ldr r0, =gUnknown_02022E1C
	strh r4, [r0]
	ldr r0, =gUnknown_02022E1E
	strh r4, [r0]
	b _081904E6
	.pool
_081904DC:
	ldr r0, =gUnknown_02022E1C
	strh r4, [r0]
	ldr r1, =gUnknown_02022E1E
	movs r0, 0xA0
	strh r0, [r1]
_081904E6:
	ldr r0, =gTasks
	mov r2, r10
	lsls r1, r2, 2
	add r1, r10
	lsls r1, 3
	adds r1, r0
	ldrh r0, [r1, 0x8]
	adds r0, 0x1
	strh r0, [r1, 0x8]
	b _08190772
	.pool
_08190508:
	movs r0, 0x50
	movs r1, 0
	bl SetGpuReg
	movs r0, 0x52
	movs r1, 0
	bl SetGpuReg
	movs r0, 0x54
	movs r1, 0
	bl SetGpuReg
	movs r0, 0x4C
	movs r1, 0
	bl SetGpuReg
	movs r0, 0x40
	movs r1, 0
	bl SetGpuReg
	movs r0, 0x44
	movs r1, 0
	bl SetGpuReg
	movs r0, 0x42
	movs r1, 0
	bl SetGpuReg
	movs r0, 0x46
	movs r1, 0
	bl SetGpuReg
	movs r0, 0x48
	movs r1, 0
	bl SetGpuReg
	movs r0, 0x4A
	movs r1, 0x3F
	bl SetGpuReg
	bl ResetPaletteFade
	bl ResetAllObjectData
	bl ResetObjectPaletteAllocator
	ldr r1, =gUnknown_0300301C
	movs r0, 0x4
	strb r0, [r1]
	b _08190602
	.pool
_08190570:
	ldr r1, =gUnknown_08D83D50
	movs r5, 0x80
	lsls r5, 6
	movs r7, 0
	str r7, [sp]
	movs r0, 0x2
	adds r2, r5, 0
	movs r3, 0
	bl copy_decompressed_tile_data_to_vram_autofree
	ldr r1, =gUnknown_08D84970
	movs r4, 0x1
	str r4, [sp]
	movs r0, 0x2
	adds r2, r5, 0
	movs r3, 0
	bl copy_decompressed_tile_data_to_vram_autofree
	ldr r1, =gUnknown_08D84F00
	movs r2, 0x80
	lsls r2, 4
	str r4, [sp]
	movs r0, 0x3
	movs r3, 0
	bl copy_decompressed_tile_data_to_vram_autofree
	ldr r0, =gUnknown_0860CF50
	bl LoadCompressedObjectPic
	ldr r0, =gUnknown_08D85358
	movs r4, 0x80
	lsls r4, 2
	movs r1, 0
	adds r2, r4, 0
	bl LoadCompressedPalette
	ldr r0, =gUnknown_08D85444
	movs r1, 0x80
	lsls r1, 1
	adds r2, r4, 0
	bl LoadCompressedPalette
	ldr r0, =gUnknown_08D85600
	movs r1, 0xF0
	movs r2, 0x20
	bl LoadCompressedPalette
	mov r0, r9
	cmp r0, 0x2
	bne _081905DE
	ldr r0, =gUnknown_08D854C8
	movs r1, 0x50
	movs r2, 0x20
	bl LoadCompressedPalette
_081905DE:
	str r7, [sp, 0x8]
	add r0, sp, 0x8
	ldr r1, =gPlttBufferFaded
	ldr r2, =0x05000100
	bl CpuSet
	movs r0, 0
	bl ShowBg
	movs r0, 0x1
	bl ShowBg
	movs r0, 0x2
	bl ShowBg
	movs r0, 0x3
	bl ShowBg
_08190602:
	ldrh r0, [r6, 0x8]
	adds r0, 0x1
	strh r0, [r6, 0x8]
	b _08190772
	.pool
_08190634:
	ldr r0, =sub_8194B70
	bl SetVBlankCallback
	ldr r4, =gUnknown_0203CD78
	movs r0, 0x14
	bl AllocZeroed
	str r0, [r4]
	movs r6, 0
	lsls r5, 24
	movs r2, 0xFF
_0819064A:
	ldr r1, [r4]
	adds r1, r6
	ldrb r0, [r1]
	orrs r0, r2
	strb r0, [r1]
	adds r6, 0x1
	cmp r6, 0xF
	ble _0819064A
	bl sub_80D2F04
	ldr r0, =sub_8190CD4
	movs r1, 0
	bl CreateTask
	lsls r0, 24
	lsrs r6, r0, 24
	ldr r1, =gTasks
	lsls r0, r6, 2
	adds r0, r6
	lsls r0, 3
	adds r0, r1
	movs r1, 0
	strh r1, [r0, 0x8]
	strh r1, [r0, 0xC]
	mov r1, r9
	strh r1, [r0, 0xE]
	strh r7, [r0, 0x10]
	mov r2, r9
	cmp r2, 0x2
	bne _081906A8
	lsrs r1, r5, 24
	movs r0, 0
	bl sub_819314C
	ldr r0, =gUnknown_0203CD78
	ldr r1, [r0]
	movs r0, 0x1
	strb r0, [r1, 0x10]
	b _081906B0
	.pool
_081906A8:
	lsrs r1, r5, 24
	movs r0, 0
	bl sub_81924E0
_081906B0:
	movs r1, 0xFA
	lsls r1, 5
	movs r0, 0
	bl SetGpuReg
	mov r0, r9
	cmp r0, 0
	beq _0819076C
	ldr r5, =gUnknown_0860D068
	adds r0, r5, 0
	movs r1, 0x78
	movs r2, 0x4
	movs r3, 0
	bl AddObjectToFront
	lsls r0, 24
	lsrs r7, r0, 24
	lsls r4, r7, 4
	adds r4, r7
	lsls r4, 2
	ldr r1, =gUnknown_02020630
	mov r8, r1
	add r4, r8
	adds r0, r4, 0
	movs r1, 0
	bl StartObjectImageAnim
	strh r6, [r4, 0x2E]
	adds r0, r5, 0
	movs r1, 0x78
	movs r2, 0x9C
	movs r3, 0
	bl AddObjectToFront
	lsls r0, 24
	lsrs r7, r0, 24
	lsls r4, r7, 4
	adds r4, r7
	lsls r4, 2
	add r4, r8
	adds r0, r4, 0
	movs r1, 0x1
	bl StartObjectImageAnim
	strh r6, [r4, 0x2E]
	ldr r5, =gUnknown_0860D050
	adds r0, r5, 0
	movs r1, 0x6
	movs r2, 0x50
	movs r3, 0
	bl AddObjectToFront
	lsls r0, 24
	lsrs r7, r0, 24
	lsls r0, r7, 4
	adds r0, r7
	lsls r0, 2
	mov r2, r8
	adds r4, r0, r2
	adds r0, r4, 0
	movs r1, 0
	bl StartObjectImageAnim
	strh r6, [r4, 0x2E]
	movs r0, 0
	strh r0, [r4, 0x30]
	mov r1, r9
	cmp r1, 0x1
	bne _08190746
	adds r0, r4, 0
	adds r0, 0x3E
	ldrb r1, [r0]
	movs r2, 0x4
	orrs r1, r2
	strb r1, [r0]
_08190746:
	adds r0, r5, 0
	movs r1, 0xEA
	movs r2, 0x50
	movs r3, 0
	bl AddObjectToFront
	lsls r0, 24
	lsrs r7, r0, 24
	lsls r4, r7, 4
	adds r4, r7
	lsls r4, 2
	add r4, r8
	adds r0, r4, 0
	movs r1, 0x1
	bl StartObjectImageAnim
	strh r6, [r4, 0x2E]
	movs r0, 0x1
	strh r0, [r4, 0x30]
_0819076C:
	mov r0, r10
	bl DestroyTask
_08190772:
	add sp, 0xC
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8190400

	thumb_func_start sub_8190790
sub_8190790: @ 8190790
	push {lr}
	adds r2, r0, 0
	ldrh r0, [r2, 0x22]
	adds r1, r0, 0x4
	strh r1, [r2, 0x22]
	movs r3, 0x2E
	ldrsh r0, [r2, r3]
	cmp r0, 0
	beq _081907D4
	lsls r0, r1, 16
	asrs r0, 16
	movs r1, 0x20
	negs r1, r1
	cmp r0, r1
	blt _081907BC
	adds r3, r2, 0
	adds r3, 0x3E
	ldrb r1, [r3]
	movs r0, 0x5
	negs r0, r0
	ands r0, r1
	strb r0, [r3]
_081907BC:
	ldrh r0, [r2, 0x30]
	adds r0, 0x1
	strh r0, [r2, 0x30]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0x28
	bne _081907F0
	ldr r0, =DummyObjectCallback
	str r0, [r2, 0x1C]
	b _081907F0
	.pool
_081907D4:
	lsls r0, r1, 16
	asrs r0, 16
	cmp r0, 0xBF
	ble _081907F0
	ldr r0, =gUnknown_0203CD78
	ldr r0, [r0]
	movs r3, 0x32
	ldrsh r1, [r2, r3]
	adds r0, r1
	movs r1, 0xFF
	strb r1, [r0]
	ldrh r0, [r2, 0x34]
	bl sub_818D8F0
_081907F0:
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8190790

	thumb_func_start sub_81907F8
sub_81907F8: @ 81907F8
	push {lr}
	adds r2, r0, 0
	ldrh r0, [r2, 0x22]
	subs r1, r0, 0x4
	strh r1, [r2, 0x22]
	movs r3, 0x2E
	ldrsh r0, [r2, r3]
	cmp r0, 0
	beq _08190838
	lsls r0, r1, 16
	asrs r0, 16
	cmp r0, 0xC0
	bgt _08190820
	adds r3, r2, 0
	adds r3, 0x3E
	ldrb r1, [r3]
	movs r0, 0x5
	negs r0, r0
	ands r0, r1
	strb r0, [r3]
_08190820:
	ldrh r0, [r2, 0x30]
	adds r0, 0x1
	strh r0, [r2, 0x30]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0x28
	bne _08190858
	ldr r0, =DummyObjectCallback
	str r0, [r2, 0x1C]
	b _08190858
	.pool
_08190838:
	lsls r0, r1, 16
	asrs r0, 16
	movs r1, 0x20
	negs r1, r1
	cmp r0, r1
	bgt _08190858
	ldr r0, =gUnknown_0203CD78
	ldr r0, [r0]
	movs r3, 0x32
	ldrsh r1, [r2, r3]
	adds r0, r1
	movs r1, 0xFF
	strb r1, [r0]
	ldrh r0, [r2, 0x34]
	bl sub_818D8F0
_08190858:
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81907F8

	thumb_func_start sub_8190860
sub_8190860: @ 8190860
	push {lr}
	adds r2, r0, 0
	ldrh r0, [r2, 0x20]
	adds r1, r0, 0x4
	strh r1, [r2, 0x20]
	movs r3, 0x2E
	ldrsh r0, [r2, r3]
	cmp r0, 0
	beq _081908A4
	lsls r0, r1, 16
	asrs r0, 16
	movs r1, 0x20
	negs r1, r1
	cmp r0, r1
	blt _0819088C
	adds r3, r2, 0
	adds r3, 0x3E
	ldrb r1, [r3]
	movs r0, 0x5
	negs r0, r0
	ands r0, r1
	strb r0, [r3]
_0819088C:
	ldrh r0, [r2, 0x30]
	adds r0, 0x1
	strh r0, [r2, 0x30]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0x40
	bne _081908C0
	ldr r0, =DummyObjectCallback
	str r0, [r2, 0x1C]
	b _081908C0
	.pool
_081908A4:
	lsls r1, 16
	ldr r0, =0x010f0000
	cmp r1, r0
	ble _081908C0
	ldr r0, =gUnknown_0203CD78
	ldr r0, [r0]
	movs r3, 0x32
	ldrsh r1, [r2, r3]
	adds r0, r1
	movs r1, 0xFF
	strb r1, [r0]
	ldrh r0, [r2, 0x34]
	bl sub_818D8F0
_081908C0:
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8190860

	thumb_func_start sub_81908CC
sub_81908CC: @ 81908CC
	push {lr}
	adds r2, r0, 0
	ldrh r0, [r2, 0x20]
	subs r1, r0, 0x4
	strh r1, [r2, 0x20]
	movs r3, 0x2E
	ldrsh r0, [r2, r3]
	cmp r0, 0
	beq _08190910
	lsls r1, 16
	movs r0, 0x88
	lsls r0, 17
	cmp r1, r0
	bgt _081908F6
	adds r3, r2, 0
	adds r3, 0x3E
	ldrb r1, [r3]
	movs r0, 0x5
	negs r0, r0
	ands r0, r1
	strb r0, [r3]
_081908F6:
	ldrh r0, [r2, 0x30]
	adds r0, 0x1
	strh r0, [r2, 0x30]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0x40
	bne _08190930
	ldr r0, =DummyObjectCallback
	str r0, [r2, 0x1C]
	b _08190930
	.pool
_08190910:
	lsls r0, r1, 16
	asrs r0, 16
	movs r1, 0x20
	negs r1, r1
	cmp r0, r1
	bgt _08190930
	ldr r0, =gUnknown_0203CD78
	ldr r0, [r0]
	movs r3, 0x32
	ldrsh r1, [r2, r3]
	adds r0, r1
	movs r1, 0xFF
	strb r1, [r0]
	ldrh r0, [r2, 0x34]
	bl sub_818D8F0
_08190930:
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81908CC

	thumb_func_start sub_8190938
sub_8190938: @ 8190938
	push {lr}
	adds r1, r0, 0
	movs r2, 0x34
	ldrsh r0, [r1, r2]
	cmp r0, 0
	bne _0819094A
	adds r0, r1, 0
	bl sub_80D30DC
_0819094A:
	pop {r0}
	bx r0
	thumb_func_end sub_8190938

	thumb_func_start sub_8190950
sub_8190950: @ 8190950
	push {r4,lr}
	adds r4, r0, 0
	movs r1, 0x34
	ldrsh r0, [r4, r1]
	cmp r0, 0
	bne _08190962
	adds r0, r4, 0
	bl sub_80D30DC
_08190962:
	ldrh r0, [r4, 0x22]
	adds r1, r0, 0x4
	strh r1, [r4, 0x22]
	movs r2, 0x2E
	ldrsh r0, [r4, r2]
	cmp r0, 0
	beq _081909A4
	lsls r0, r1, 16
	asrs r0, 16
	movs r1, 0x10
	negs r1, r1
	cmp r0, r1
	blt _0819098A
	adds r2, r4, 0
	adds r2, 0x3E
	ldrb r1, [r2]
	movs r0, 0x5
	negs r0, r0
	ands r0, r1
	strb r0, [r2]
_0819098A:
	ldrh r0, [r4, 0x30]
	adds r0, 0x1
	strh r0, [r4, 0x30]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0x28
	bne _081909C0
	ldr r0, =sub_8190938
	str r0, [r4, 0x1C]
	b _081909C0
	.pool
_081909A4:
	lsls r0, r1, 16
	asrs r0, 16
	cmp r0, 0xAF
	ble _081909C0
	ldr r0, =gUnknown_0203CD78
	ldr r0, [r0]
	movs r2, 0x32
	ldrsh r1, [r4, r2]
	adds r0, r1
	movs r1, 0xFF
	strb r1, [r0]
	adds r0, r4, 0
	bl sub_80D2EF8
_081909C0:
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8190950

	thumb_func_start sub_81909CC
sub_81909CC: @ 81909CC
	push {r4,lr}
	adds r4, r0, 0
	movs r1, 0x34
	ldrsh r0, [r4, r1]
	cmp r0, 0
	bne _081909DE
	adds r0, r4, 0
	bl sub_80D30DC
_081909DE:
	ldrh r0, [r4, 0x22]
	subs r1, r0, 0x4
	strh r1, [r4, 0x22]
	movs r2, 0x2E
	ldrsh r0, [r4, r2]
	cmp r0, 0
	beq _08190A1C
	lsls r0, r1, 16
	asrs r0, 16
	cmp r0, 0xB0
	bgt _08190A02
	adds r2, r4, 0
	adds r2, 0x3E
	ldrb r1, [r2]
	movs r0, 0x5
	negs r0, r0
	ands r0, r1
	strb r0, [r2]
_08190A02:
	ldrh r0, [r4, 0x30]
	adds r0, 0x1
	strh r0, [r4, 0x30]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0x28
	bne _08190A3C
	ldr r0, =sub_8190938
	str r0, [r4, 0x1C]
	b _08190A3C
	.pool
_08190A1C:
	lsls r0, r1, 16
	asrs r0, 16
	movs r1, 0x10
	negs r1, r1
	cmp r0, r1
	bgt _08190A3C
	ldr r0, =gUnknown_0203CD78
	ldr r0, [r0]
	movs r2, 0x32
	ldrsh r1, [r4, r2]
	adds r0, r1
	movs r1, 0xFF
	strb r1, [r0]
	adds r0, r4, 0
	bl sub_80D2EF8
_08190A3C:
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81909CC

	thumb_func_start sub_8190A48
sub_8190A48: @ 8190A48
	push {r4,lr}
	adds r4, r0, 0
	movs r1, 0x34
	ldrsh r0, [r4, r1]
	cmp r0, 0
	bne _08190A5A
	adds r0, r4, 0
	bl sub_80D30DC
_08190A5A:
	ldrh r0, [r4, 0x20]
	adds r1, r0, 0x4
	strh r1, [r4, 0x20]
	movs r2, 0x2E
	ldrsh r0, [r4, r2]
	cmp r0, 0
	beq _08190A9C
	lsls r0, r1, 16
	asrs r0, 16
	movs r1, 0x10
	negs r1, r1
	cmp r0, r1
	blt _08190A82
	adds r2, r4, 0
	adds r2, 0x3E
	ldrb r1, [r2]
	movs r0, 0x5
	negs r0, r0
	ands r0, r1
	strb r0, [r2]
_08190A82:
	ldrh r0, [r4, 0x30]
	adds r0, 0x1
	strh r0, [r4, 0x30]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0x40
	bne _08190AB8
	ldr r0, =sub_8190938
	str r0, [r4, 0x1C]
	b _08190AB8
	.pool
_08190A9C:
	lsls r0, r1, 16
	asrs r0, 16
	cmp r0, 0xFF
	ble _08190AB8
	ldr r0, =gUnknown_0203CD78
	ldr r0, [r0]
	movs r2, 0x32
	ldrsh r1, [r4, r2]
	adds r0, r1
	movs r1, 0xFF
	strb r1, [r0]
	adds r0, r4, 0
	bl sub_80D2EF8
_08190AB8:
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8190A48

	thumb_func_start sub_8190AC4
sub_8190AC4: @ 8190AC4
	push {r4,lr}
	adds r4, r0, 0
	movs r1, 0x34
	ldrsh r0, [r4, r1]
	cmp r0, 0
	bne _08190AD6
	adds r0, r4, 0
	bl sub_80D30DC
_08190AD6:
	ldrh r0, [r4, 0x20]
	subs r1, r0, 0x4
	strh r1, [r4, 0x20]
	movs r2, 0x2E
	ldrsh r0, [r4, r2]
	cmp r0, 0
	beq _08190B14
	lsls r1, 16
	movs r0, 0x80
	lsls r0, 17
	cmp r1, r0
	bgt _08190AFC
	adds r2, r4, 0
	adds r2, 0x3E
	ldrb r1, [r2]
	movs r0, 0x5
	negs r0, r0
	ands r0, r1
	strb r0, [r2]
_08190AFC:
	ldrh r0, [r4, 0x30]
	adds r0, 0x1
	strh r0, [r4, 0x30]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0x40
	bne _08190B34
	ldr r0, =sub_8190938
	str r0, [r4, 0x1C]
	b _08190B34
	.pool
_08190B14:
	lsls r0, r1, 16
	asrs r0, 16
	movs r1, 0x10
	negs r1, r1
	cmp r0, r1
	bgt _08190B34
	ldr r0, =gUnknown_0203CD78
	ldr r0, [r0]
	movs r2, 0x32
	ldrsh r1, [r4, r2]
	adds r0, r1
	movs r1, 0xFF
	strb r1, [r0]
	adds r0, r4, 0
	bl sub_80D2EF8
_08190B34:
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8190AC4

	thumb_func_start sub_8190B40
sub_8190B40: @ 8190B40
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	adds r3, r0, 0
	movs r0, 0x2E
	ldrsh r6, [r3, r0]
	ldr r2, =gTasks
	lsls r0, r6, 2
	adds r0, r6
	lsls r0, 3
	adds r4, r0, r2
	movs r7, 0x10
	ldrsh r1, [r4, r7]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 3
	adds r0, r2
	movs r1, 0xA
	ldrsh r0, [r0, r1]
	ldr r1, =gUnknown_0860D080
	adds r0, r1
	ldrb r0, [r0]
	mov r10, r0
	ldr r1, =gSaveBlock2Ptr
	ldr r5, [r1]
	ldr r7, =0x00000cb2
	adds r0, r5, r7
	ldrh r0, [r0]
	mov r12, r0
	movs r7, 0xE
	ldrsh r0, [r4, r7]
	mov r9, r2
	mov r8, r1
	cmp r0, 0x1
	bne _08190C0C
	movs r1, 0x30
	ldrsh r0, [r3, r1]
	cmp r0, 0
	beq _08190BFC
	mov r2, r10
	lsls r0, r2, 2
	adds r1, r5, r0
	ldr r7, =0x00000d25
	adds r1, r7
	ldrb r2, [r1]
	lsls r1, r2, 29
	adds r4, r0, 0
	cmp r1, 0
	bge _08190BB6
	ldr r0, =gUnknown_0203CD78
	ldr r0, [r0]
	ldrb r1, [r0, 0x10]
	subs r1, 0x1
	lsls r0, r2, 27
	lsrs r0, 30
	cmp r1, r0
	blt _08190C32
_08190BB6:
	mov r1, r8
	ldr r0, [r1]
	adds r0, r4
	ldr r2, =0x00000d25
	adds r0, r2
	ldrb r0, [r0]
	lsls r0, 29
	cmp r0, 0
	blt _08190BD4
	ldr r0, =gUnknown_0203CD78
	ldr r0, [r0]
	ldrb r0, [r0, 0x10]
	subs r0, 0x1
	cmp r0, r12
	blt _08190C32
_08190BD4:
	lsls r0, r6, 2
	adds r0, r6
	lsls r0, 3
	add r0, r9
	movs r7, 0x8
	ldrsh r0, [r0, r7]
	b _08190C4C
	.pool
_08190BFC:
	ldr r0, =gUnknown_0203CD78
	ldr r0, [r0]
	ldrb r0, [r0, 0x10]
	cmp r0, 0
	bne _08190C32
	b _08190C48
	.pool
_08190C0C:
	movs r2, 0x30
	ldrsh r0, [r3, r2]
	cmp r0, 0
	beq _08190C28
	ldr r0, =gUnknown_0203CD78
	ldr r0, [r0]
	ldrb r0, [r0, 0x10]
	cmp r0, 0x1
	bls _08190C32
	movs r7, 0x8
	ldrsh r0, [r4, r7]
	b _08190C4C
	.pool
_08190C28:
	ldr r0, =gUnknown_0203CD78
	ldr r0, [r0]
	ldrb r0, [r0, 0x10]
	cmp r0, 0
	beq _08190C48
_08190C32:
	adds r2, r3, 0
	adds r2, 0x3E
	ldrb r1, [r2]
	movs r0, 0x5
	negs r0, r0
	ands r0, r1
	strb r0, [r2]
	b _08190C5C
	.pool
_08190C48:
	movs r1, 0x8
	ldrsh r0, [r4, r1]
_08190C4C:
	cmp r0, 0x2
	bne _08190C5C
	adds r0, r3, 0
	adds r0, 0x3E
	ldrb r1, [r0]
	movs r2, 0x4
	orrs r1, r2
	strb r1, [r0]
_08190C5C:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_8190B40

	thumb_func_start sub_8190C6C
sub_8190C6C: @ 8190C6C
	push {lr}
	adds r3, r0, 0
	movs r0, 0x2E
	ldrsh r1, [r3, r0]
	ldr r2, =gTasks
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 3
	adds r1, r0, r2
	movs r2, 0xE
	ldrsh r0, [r1, r2]
	cmp r0, 0x1
	bne _08190C9C
	ldr r0, =gUnknown_0203CD78
	ldr r0, [r0]
	ldrb r0, [r0, 0x10]
	cmp r0, 0
	bne _08190CA6
	b _08190CC0
	.pool
_08190C9C:
	ldr r0, =gUnknown_0203CD78
	ldr r0, [r0]
	ldrb r0, [r0, 0x10]
	cmp r0, 0x1
	beq _08190CC0
_08190CA6:
	movs r2, 0x8
	ldrsh r0, [r1, r2]
	cmp r0, 0x2
	bne _08190CCE
	adds r0, r3, 0
	adds r0, 0x3E
	ldrb r1, [r0]
	movs r2, 0x4
	orrs r1, r2
	strb r1, [r0]
	b _08190CCE
	.pool
_08190CC0:
	adds r2, r3, 0
	adds r2, 0x3E
	ldrb r1, [r2]
	movs r0, 0x5
	negs r0, r0
	ands r0, r1
	strb r0, [r2]
_08190CCE:
	pop {r0}
	bx r0
	thumb_func_end sub_8190C6C

	thumb_func_start sub_8190CD4
sub_8190CD4: @ 8190CD4
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x4
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
	ldr r1, =gTasks
	lsls r0, 2
	add r0, r8
	lsls r0, 3
	adds r0, r1
	movs r3, 0xE
	ldrsh r2, [r0, r3]
	mov r9, r2
	movs r4, 0x10
	ldrsh r7, [r0, r4]
	movs r5, 0x8
	ldrsh r0, [r0, r5]
	cmp r0, 0x8
	bls _08190D06
	bl _08192202
_08190D06:
	lsls r0, 2
	ldr r1, =_08190D18
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_08190D18:
	.4byte _08190D3C
	.4byte _08190D7C
	.4byte _08190DA8
	.4byte _08190E48
	.4byte _08191FF8
	.4byte _08192038
	.4byte _08192078
	.4byte _081920BC
	.4byte _08192106
_08190D3C:
	ldr r0, =gPaletteFade
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	lsls r0, 24
	lsrs r1, r0, 24
	cmp r1, 0
	beq _08190D50
	bl _08192202
_08190D50:
	movs r0, 0x1
	negs r0, r0
	str r1, [sp]
	movs r1, 0
	movs r2, 0x10
	movs r3, 0
	bl BeginNormalPaletteFade
	ldr r1, =gTasks
	mov r6, r8
	lsls r0, r6, 2
	add r0, r8
	lsls r0, 3
	adds r0, r1
	movs r1, 0x1
	strh r1, [r0, 0x8]
	bl _08192202
	.pool
_08190D7C:
	ldr r0, =gPaletteFade
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _08190D8C
	bl _08192202
_08190D8C:
	mov r1, r8
	lsls r0, r1, 2
	add r0, r8
	lsls r0, 3
	ldr r2, =gTasks
	adds r0, r2
	movs r1, 0x2
	strh r1, [r0, 0x8]
	bl _08192202
	.pool
_08190DA8:
	mov r0, r8
	bl sub_819221C
	lsls r0, 24
	lsrs r6, r0, 24
	cmp r6, 0x8
	bgt _08190DBE
	cmp r6, 0x1
	bge _08190DF0
	bl _08192202
_08190DBE:
	cmp r6, 0x9
	beq _08190DC6
	bl _08192202
_08190DC6:
	movs r0, 0x1
	negs r0, r0
	movs r1, 0
	str r1, [sp]
	movs r2, 0
	movs r3, 0x10
	bl BeginNormalPaletteFade
	ldr r1, =gTasks
	mov r3, r8
	lsls r0, r3, 2
	add r0, r8
	lsls r0, 3
	adds r0, r1
	movs r1, 0x8
	strh r1, [r0, 0x8]
	bl _08192202
	.pool
_08190DF0:
	ldr r1, =gTasks
	mov r4, r8
	lsls r2, r4, 2
	adds r0, r2, r4
	lsls r0, 3
	adds r0, r1
	strh r6, [r0, 0x12]
	movs r5, 0xC
	ldrsh r0, [r0, r5]
	movs r1, 0
	mov r9, r2
	cmp r0, 0
	beq _08190E0C
	movs r1, 0x9
_08190E0C:
	adds r6, r1, 0
	adds r0, r6, 0
	adds r0, 0x9
	cmp r6, r0
	bge _08190E32
	adds r5, r0, 0
_08190E18:
	lsls r4, r6, 24
	lsrs r4, 24
	adds r0, r4, 0
	movs r1, 0x2
	bl CopyWindowToVram
	adds r0, r4, 0
	movs r1, 0
	bl FillWindowPixelBuffer
	adds r6, 0x1
	cmp r6, r5
	blt _08190E18
_08190E32:
	ldr r0, =gTasks
	mov r1, r9
	add r1, r8
	lsls r1, 3
	adds r1, r0
	movs r0, 0x3
	strh r0, [r1, 0x8]
	bl _08192202
	.pool
_08190E48:
	mov r6, r8
	lsls r1, r6, 2
	adds r0, r1, r6
	lsls r0, 3
	ldr r2, =gTasks
	adds r0, r2
	movs r3, 0x12
	ldrsh r6, [r0, r3]
	subs r0, r6, 0x1
	mov r9, r1
	cmp r0, 0x7
	bls _08190E64
	bl _08192202
_08190E64:
	lsls r0, 2
	ldr r1, =_08190E78
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_08190E78:
	.4byte _08190E98
	.4byte _08191234
	.4byte _081915CC
	.4byte _08191B08
	.4byte _08190E98
	.4byte _08191234
	.4byte _0819187C
	.4byte _08191D68
_08190E98:
	mov r0, r9
	add r0, r8
	lsls r0, 3
	ldr r4, =gTasks
	adds r0, r4
	movs r5, 0xC
	ldrsh r2, [r0, r5]
	cmp r2, 0
	beq _08190ED4
	ldr r0, =gUnknown_02022E14
	movs r1, 0
	strh r1, [r0]
	ldr r0, =gUnknown_02022E16
	strh r1, [r0]
	ldr r0, =gUnknown_02022E18
	strh r1, [r0]
	ldr r1, =gUnknown_02022E1A
	movs r0, 0xA0
	strh r0, [r1]
	b _08190EE6
	.pool
_08190ED4:
	ldr r0, =gUnknown_02022E14
	strh r2, [r0]
	ldr r1, =gUnknown_02022E16
	movs r0, 0xA0
	strh r0, [r1]
	ldr r0, =gUnknown_02022E18
	strh r2, [r0]
	ldr r0, =gUnknown_02022E1A
	strh r2, [r0]
_08190EE6:
	cmp r6, 0x1
	bne _08190F9C
	ldr r5, =gUnknown_0203CD78
	ldr r0, [r5]
	ldrb r1, [r0, 0x10]
	cmp r1, 0
	bne _08190F50
	ldr r0, =gUnknown_02022E1C
	strh r1, [r0]
	ldr r1, =gUnknown_02022E1E
	movs r6, 0xA0
	lsls r6, 1
	adds r0, r6, 0
	strh r0, [r1]
	ldr r3, =gUnknown_0860D080
	ldr r2, =gTasks
	lsls r0, r7, 2
	adds r0, r7
	lsls r0, 3
	adds r0, r2
	movs r4, 0xA
	ldrsh r1, [r0, r4]
	adds r1, r3
	mov r0, r9
	add r0, r8
	lsls r0, 3
	adds r0, r2
	ldrb r2, [r0, 0xC]
	movs r0, 0x10
	orrs r0, r2
	ldrb r1, [r1]
	bl sub_81924E0
	b _08191084
	.pool
_08190F50:
	ldr r1, =gUnknown_02022E1C
	movs r6, 0x80
	lsls r6, 1
	adds r0, r6, 0
	strh r0, [r1]
	ldr r0, =gUnknown_02022E1E
	movs r4, 0
	strh r4, [r0]
	ldr r3, =gUnknown_0860D080
	ldr r2, =gTasks
	lsls r0, r7, 2
	adds r0, r7
	lsls r0, 3
	adds r0, r2
	movs r6, 0xA
	ldrsh r1, [r0, r6]
	adds r1, r3
	mov r0, r9
	add r0, r8
	lsls r0, 3
	adds r0, r2
	ldrb r2, [r0, 0xC]
	movs r0, 0x10
	orrs r0, r2
	ldrb r1, [r1]
	bl sub_81924E0
	ldr r0, [r5]
	strb r4, [r0, 0x10]
	b _08191084
	.pool
_08190F9C:
	ldr r6, =gUnknown_0203CD78
	ldr r1, [r6]
	ldrb r5, [r1, 0x10]
	cmp r5, 0
	bne _08190FF8
	ldr r4, =gTasks
	lsls r0, r7, 2
	adds r0, r7
	lsls r0, 3
	adds r0, r4
	movs r2, 0xA
	ldrsh r0, [r0, r2]
	adds r2, r0, 0
	subs r2, 0x10
	lsls r0, r2, 24
	lsrs r0, 24
	adds r1, 0x11
	bl sub_8192F08
	ldr r0, =gUnknown_02022E1C
	strh r5, [r0]
	ldr r1, =gUnknown_02022E1E
	movs r3, 0xA0
	lsls r3, 1
	adds r0, r3, 0
	strh r0, [r1]
	ldr r2, [r6]
	mov r0, r9
	add r0, r8
	lsls r0, 3
	adds r0, r4
	ldrb r1, [r0, 0xC]
	movs r0, 0x10
	orrs r0, r1
	ldrb r1, [r2, 0x11]
	bl sub_81924E0
	b _08191084
	.pool
_08190FF8:
	cmp r5, 0x2
	bne _0819104C
	ldr r4, =gTasks
	lsls r0, r7, 2
	adds r0, r7
	lsls r0, 3
	adds r0, r4
	movs r5, 0xA
	ldrsh r0, [r0, r5]
	adds r2, r0, 0
	subs r2, 0x10
	lsls r0, r2, 24
	lsrs r0, 24
	adds r1, 0x11
	bl sub_8192F08
	ldr r1, =gUnknown_02022E1C
	movs r0, 0
	strh r0, [r1]
	ldr r1, =gUnknown_02022E1E
	movs r2, 0xA0
	lsls r2, 1
	adds r0, r2, 0
	strh r0, [r1]
	ldr r2, [r6]
	mov r0, r9
	add r0, r8
	lsls r0, 3
	adds r0, r4
	ldrb r1, [r0, 0xC]
	movs r0, 0x10
	orrs r0, r1
	ldrb r1, [r2, 0x12]
	bl sub_81924E0
	b _08191084
	.pool
_0819104C:
	ldr r1, =gUnknown_02022E1C
	movs r3, 0x80
	lsls r3, 1
	adds r0, r3, 0
	strh r0, [r1]
	ldr r1, =gUnknown_02022E1E
	movs r0, 0xA0
	strh r0, [r1]
	ldr r1, =gTasks
	lsls r0, r7, 2
	adds r0, r7
	lsls r0, 3
	adds r0, r1
	movs r4, 0xA
	ldrsh r0, [r0, r4]
	adds r2, r0, 0
	subs r2, 0x10
	mov r0, r9
	add r0, r8
	lsls r0, 3
	adds r0, r1
	ldrb r1, [r0, 0xC]
	movs r0, 0x10
	orrs r0, r1
	lsls r1, r2, 24
	lsrs r1, 24
	bl sub_819314C
_08191084:
	movs r6, 0
	ldr r5, =gUnknown_0203CD78
	mov r10, r5
	ldr r3, =gUnknown_02020630
	mov r0, r9
	add r0, r8
	lsls r0, 3
	ldr r1, =gTasks
	adds r5, r0, r1
	mov r12, r6
	adds r4, r3, 0
	adds r4, 0x1C
	movs r7, 0x1
_0819109E:
	cmp r6, 0x1
	bgt _0819110C
	mov r2, r10
	ldr r0, [r2]
	adds r2, r0, r6
	ldrb r0, [r2]
	cmp r0, 0xFF
	beq _08191150
	adds r1, r0, 0
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	ldr r1, =sub_8190790
	str r1, [r0]
	ldrb r0, [r2]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r3
	ldrh r0, [r5, 0xC]
	eors r0, r7
	strh r0, [r1, 0x2E]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	mov r1, r12
	strh r1, [r0, 0x30]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	strh r6, [r0, 0x32]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	strh r1, [r0, 0x34]
	b _08191150
	.pool
_0819110C:
	mov r2, r10
	ldr r0, [r2]
	adds r2, r0, r6
	ldrb r0, [r2]
	cmp r0, 0xFF
	beq _08191150
	adds r1, r0, 0
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	ldr r1, =sub_8190950
	str r1, [r0]
	ldrb r0, [r2]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r3
	ldrh r0, [r5, 0xC]
	eors r0, r7
	strh r0, [r1, 0x2E]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	mov r1, r12
	strh r1, [r0, 0x30]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	strh r6, [r0, 0x32]
_08191150:
	adds r6, 0x1
	cmp r6, 0x7
	ble _0819109E
	movs r6, 0x8
	ldr r2, =gUnknown_0203CD78
	mov r12, r2
	ldr r3, =gUnknown_02020630
	ldr r1, =gTasks
	mov r0, r9
	add r0, r8
	lsls r0, 3
	adds r5, r0, r1
	movs r4, 0
	adds r7, r3, 0
	adds r7, 0x1C
_0819116E:
	cmp r6, 0x9
	bgt _081911D4
	mov r1, r12
	ldr r0, [r1]
	adds r2, r0, r6
	ldrb r0, [r2]
	cmp r0, 0xFF
	beq _08191214
	adds r1, r0, 0
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r7
	ldr r1, =sub_8190790
	str r1, [r0]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	ldrh r1, [r5, 0xC]
	strh r1, [r0, 0x2E]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	strh r4, [r0, 0x30]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	strh r6, [r0, 0x32]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	strh r1, [r0, 0x34]
	b _08191214
	.pool
_081911D4:
	mov r2, r12
	ldr r0, [r2]
	adds r2, r0, r6
	ldrb r0, [r2]
	cmp r0, 0xFF
	beq _08191214
	adds r1, r0, 0
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r7
	ldr r1, =sub_8190950
	str r1, [r0]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	ldrh r1, [r5, 0xC]
	strh r1, [r0, 0x2E]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	strh r4, [r0, 0x30]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	strh r6, [r0, 0x32]
_08191214:
	adds r6, 0x1
	cmp r6, 0xF
	ble _0819116E
	mov r0, r9
	add r0, r8
	lsls r0, 3
	ldr r3, =gTasks
	adds r0, r3
	movs r2, 0
	movs r1, 0x4
	bl _08191FE8
	.pool
_08191234:
	mov r0, r9
	add r0, r8
	lsls r0, 3
	ldr r4, =gTasks
	adds r0, r4
	movs r5, 0xC
	ldrsh r2, [r0, r5]
	cmp r2, 0
	beq _08191278
	ldr r0, =gUnknown_02022E14
	movs r1, 0
	strh r1, [r0]
	ldr r0, =gUnknown_02022E16
	strh r1, [r0]
	ldr r0, =gUnknown_02022E18
	strh r1, [r0]
	ldr r1, =gUnknown_02022E1A
	ldr r2, =0x0000ff60
	adds r0, r2, 0
	strh r0, [r1]
	b _0819128C
	.pool
_08191278:
	ldr r0, =gUnknown_02022E14
	strh r2, [r0]
	ldr r1, =gUnknown_02022E16
	ldr r3, =0x0000ff60
	adds r0, r3, 0
	strh r0, [r1]
	ldr r0, =gUnknown_02022E18
	strh r2, [r0]
	ldr r0, =gUnknown_02022E1A
	strh r2, [r0]
_0819128C:
	cmp r6, 0x2
	bne _0819133C
	ldr r5, =gUnknown_0203CD78
	ldr r0, [r5]
	ldrb r1, [r0, 0x10]
	cmp r1, 0
	bne _081912F4
	ldr r0, =gUnknown_02022E1C
	strh r1, [r0]
	ldr r1, =gUnknown_02022E1E
	movs r0, 0xA0
	strh r0, [r1]
	ldr r3, =gUnknown_0860D080
	ldr r2, =gTasks
	lsls r0, r7, 2
	adds r0, r7
	lsls r0, 3
	adds r0, r2
	movs r4, 0xA
	ldrsh r1, [r0, r4]
	adds r1, r3
	mov r0, r9
	add r0, r8
	lsls r0, 3
	adds r0, r2
	ldrb r2, [r0, 0xC]
	movs r0, 0x4
	orrs r0, r2
	ldrb r1, [r1]
	bl sub_81924E0
	b _0819141C
	.pool
_081912F4:
	ldr r0, =gUnknown_02022E1C
	movs r4, 0
	strh r4, [r0]
	ldr r0, =gUnknown_02022E1E
	strh r4, [r0]
	ldr r3, =gUnknown_0860D080
	ldr r2, =gTasks
	lsls r0, r7, 2
	adds r0, r7
	lsls r0, 3
	adds r0, r2
	movs r6, 0xA
	ldrsh r1, [r0, r6]
	adds r1, r3
	mov r0, r9
	add r0, r8
	lsls r0, 3
	adds r0, r2
	ldrb r2, [r0, 0xC]
	movs r0, 0x4
	orrs r0, r2
	ldrb r1, [r1]
	bl sub_81924E0
	ldr r0, [r5]
	strb r4, [r0, 0x10]
	b _0819141C
	.pool
_0819133C:
	ldr r6, =gUnknown_0203CD78
	ldr r1, [r6]
	ldrb r5, [r1, 0x10]
	cmp r5, 0
	bne _08191394
	ldr r4, =gTasks
	lsls r0, r7, 2
	adds r0, r7
	lsls r0, 3
	adds r0, r4
	movs r2, 0xA
	ldrsh r0, [r0, r2]
	adds r2, r0, 0
	subs r2, 0x10
	lsls r0, r2, 24
	lsrs r0, 24
	adds r1, 0x11
	bl sub_8192F08
	ldr r0, =gUnknown_02022E1C
	strh r5, [r0]
	ldr r1, =gUnknown_02022E1E
	movs r0, 0xA0
	strh r0, [r1]
	ldr r2, [r6]
	mov r0, r9
	add r0, r8
	lsls r0, 3
	adds r0, r4
	ldrb r1, [r0, 0xC]
	movs r0, 0x4
	orrs r0, r1
	ldrb r1, [r2, 0x11]
	bl sub_81924E0
	b _0819141C
	.pool
_08191394:
	cmp r5, 0x2
	bne _081913E4
	ldr r4, =gTasks
	lsls r0, r7, 2
	adds r0, r7
	lsls r0, 3
	adds r0, r4
	movs r3, 0xA
	ldrsh r0, [r0, r3]
	adds r2, r0, 0
	subs r2, 0x10
	lsls r0, r2, 24
	lsrs r0, 24
	adds r1, 0x11
	bl sub_8192F08
	ldr r1, =gUnknown_02022E1C
	movs r0, 0
	strh r0, [r1]
	ldr r1, =gUnknown_02022E1E
	movs r0, 0xA0
	strh r0, [r1]
	ldr r2, [r6]
	mov r0, r9
	add r0, r8
	lsls r0, 3
	adds r0, r4
	ldrb r1, [r0, 0xC]
	movs r0, 0x4
	orrs r0, r1
	ldrb r1, [r2, 0x12]
	bl sub_81924E0
	b _0819141C
	.pool
_081913E4:
	ldr r1, =gUnknown_02022E1C
	movs r4, 0x80
	lsls r4, 1
	adds r0, r4, 0
	strh r0, [r1]
	ldr r1, =gUnknown_02022E1E
	movs r0, 0
	strh r0, [r1]
	ldr r1, =gTasks
	lsls r0, r7, 2
	adds r0, r7
	lsls r0, 3
	adds r0, r1
	movs r5, 0xA
	ldrsh r0, [r0, r5]
	adds r2, r0, 0
	subs r2, 0x10
	mov r0, r9
	add r0, r8
	lsls r0, 3
	adds r0, r1
	ldrb r1, [r0, 0xC]
	movs r0, 0x4
	orrs r0, r1
	lsls r1, r2, 24
	lsrs r1, 24
	bl sub_819314C
_0819141C:
	movs r6, 0
	ldr r0, =gUnknown_0203CD78
	mov r10, r0
	ldr r3, =gUnknown_02020630
	mov r0, r9
	add r0, r8
	lsls r0, 3
	ldr r1, =gTasks
	adds r5, r0, r1
	mov r12, r6
	adds r4, r3, 0
	adds r4, 0x1C
	movs r7, 0x1
_08191436:
	cmp r6, 0x1
	bgt _081914A4
	mov r2, r10
	ldr r0, [r2]
	adds r2, r0, r6
	ldrb r0, [r2]
	cmp r0, 0xFF
	beq _081914E8
	adds r1, r0, 0
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	ldr r1, =sub_81907F8
	str r1, [r0]
	ldrb r0, [r2]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r3
	ldrh r0, [r5, 0xC]
	eors r0, r7
	strh r0, [r1, 0x2E]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	mov r1, r12
	strh r1, [r0, 0x30]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	strh r6, [r0, 0x32]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	strh r1, [r0, 0x34]
	b _081914E8
	.pool
_081914A4:
	mov r2, r10
	ldr r0, [r2]
	adds r2, r0, r6
	ldrb r0, [r2]
	cmp r0, 0xFF
	beq _081914E8
	adds r1, r0, 0
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	ldr r1, =sub_81909CC
	str r1, [r0]
	ldrb r0, [r2]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r3
	ldrh r0, [r5, 0xC]
	eors r0, r7
	strh r0, [r1, 0x2E]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	mov r1, r12
	strh r1, [r0, 0x30]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	strh r6, [r0, 0x32]
_081914E8:
	adds r6, 0x1
	cmp r6, 0x7
	ble _08191436
	movs r6, 0x8
	ldr r2, =gUnknown_0203CD78
	mov r12, r2
	ldr r3, =gUnknown_02020630
	ldr r1, =gTasks
	mov r0, r9
	add r0, r8
	lsls r0, 3
	adds r5, r0, r1
	movs r4, 0
	adds r7, r3, 0
	adds r7, 0x1C
_08191506:
	cmp r6, 0x9
	bgt _0819156C
	mov r1, r12
	ldr r0, [r1]
	adds r2, r0, r6
	ldrb r0, [r2]
	cmp r0, 0xFF
	beq _081915AC
	adds r1, r0, 0
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r7
	ldr r1, =sub_81907F8
	str r1, [r0]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	ldrh r1, [r5, 0xC]
	strh r1, [r0, 0x2E]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	strh r4, [r0, 0x30]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	strh r6, [r0, 0x32]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	strh r1, [r0, 0x34]
	b _081915AC
	.pool
_0819156C:
	mov r2, r12
	ldr r0, [r2]
	adds r2, r0, r6
	ldrb r0, [r2]
	cmp r0, 0xFF
	beq _081915AC
	adds r1, r0, 0
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r7
	ldr r1, =sub_81909CC
	str r1, [r0]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	ldrh r1, [r5, 0xC]
	strh r1, [r0, 0x2E]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	strh r4, [r0, 0x30]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	strh r6, [r0, 0x32]
_081915AC:
	adds r6, 0x1
	cmp r6, 0xF
	ble _08191506
	mov r0, r9
	add r0, r8
	lsls r0, 3
	ldr r3, =gTasks
	adds r0, r3
	movs r2, 0
	movs r1, 0x5
	bl _08191FE8
	.pool
_081915CC:
	mov r0, r9
	add r0, r8
	lsls r0, 3
	ldr r4, =gTasks
	adds r0, r4
	movs r5, 0xC
	ldrsh r2, [r0, r5]
	cmp r2, 0
	beq _0819160C
	ldr r0, =gUnknown_02022E14
	movs r1, 0
	strh r1, [r0]
	ldr r0, =gUnknown_02022E16
	strh r1, [r0]
	ldr r2, =gUnknown_02022E18
	movs r6, 0x80
	lsls r6, 1
	adds r0, r6, 0
	strh r0, [r2]
	ldr r0, =gUnknown_02022E1A
	strh r1, [r0]
	b _08191622
	.pool
_0819160C:
	ldr r1, =gUnknown_02022E14
	movs r3, 0x80
	lsls r3, 1
	adds r0, r3, 0
	strh r0, [r1]
	ldr r0, =gUnknown_02022E16
	strh r2, [r0]
	ldr r0, =gUnknown_02022E18
	strh r2, [r0]
	ldr r0, =gUnknown_02022E1A
	strh r2, [r0]
_08191622:
	ldr r0, =gUnknown_0203CD78
	ldr r4, [r0]
	ldrb r0, [r4, 0x10]
	cmp r0, 0
	bne _08191688
	ldr r1, =gUnknown_02022E1C
	movs r4, 0x80
	lsls r4, 1
	adds r0, r4, 0
	strh r0, [r1]
	ldr r1, =gUnknown_02022E1E
	movs r0, 0xA0
	strh r0, [r1]
	ldr r3, =gUnknown_0860D080
	ldr r2, =gTasks
	lsls r0, r7, 2
	adds r0, r7
	lsls r0, 3
	adds r0, r2
	movs r5, 0xA
	ldrsh r1, [r0, r5]
	adds r1, r3
	mov r0, r9
	add r0, r8
	lsls r0, 3
	adds r0, r2
	ldrb r2, [r0, 0xC]
	movs r0, 0x8
	orrs r0, r2
	ldrb r1, [r1]
	bl sub_81924E0
	b _081916C6
	.pool
_08191688:
	ldr r1, =gUnknown_02022E1C
	movs r6, 0x80
	lsls r6, 1
	adds r0, r6, 0
	strh r0, [r1]
	ldr r1, =gUnknown_02022E1E
	movs r0, 0
	strh r0, [r1]
	ldr r3, =gUnknown_0860D15C
	ldr r2, =gTasks
	lsls r0, r7, 2
	adds r0, r7
	lsls r0, 3
	adds r0, r2
	movs r5, 0xA
	ldrsh r1, [r0, r5]
	lsls r1, 2
	subs r1, 0x1
	ldrb r4, [r4, 0x10]
	adds r1, r4
	adds r1, r3
	mov r0, r9
	add r0, r8
	lsls r0, 3
	adds r0, r2
	ldrb r2, [r0, 0xC]
	movs r0, 0x8
	orrs r0, r2
	ldrb r1, [r1]
	bl sub_819314C
_081916C6:
	movs r6, 0
	ldr r0, =gUnknown_0203CD78
	mov r10, r0
	ldr r3, =gUnknown_02020630
	mov r0, r9
	add r0, r8
	lsls r0, 3
	ldr r1, =gTasks
	adds r5, r0, r1
	mov r12, r6
	adds r4, r3, 0
	adds r4, 0x1C
	movs r7, 0x1
_081916E0:
	cmp r6, 0x1
	bgt _08191754
	mov r2, r10
	ldr r0, [r2]
	adds r2, r0, r6
	ldrb r0, [r2]
	cmp r0, 0xFF
	beq _08191798
	adds r1, r0, 0
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	ldr r1, =sub_8190860
	str r1, [r0]
	ldrb r0, [r2]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r3
	ldrh r0, [r5, 0xC]
	eors r0, r7
	strh r0, [r1, 0x2E]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	mov r1, r12
	strh r1, [r0, 0x30]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	strh r6, [r0, 0x32]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	strh r1, [r0, 0x34]
	b _08191798
	.pool
_08191754:
	mov r2, r10
	ldr r0, [r2]
	adds r2, r0, r6
	ldrb r0, [r2]
	cmp r0, 0xFF
	beq _08191798
	adds r1, r0, 0
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	ldr r1, =sub_8190A48
	str r1, [r0]
	ldrb r0, [r2]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r3
	ldrh r0, [r5, 0xC]
	eors r0, r7
	strh r0, [r1, 0x2E]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	mov r1, r12
	strh r1, [r0, 0x30]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	strh r6, [r0, 0x32]
_08191798:
	adds r6, 0x1
	cmp r6, 0x7
	ble _081916E0
	movs r6, 0x8
	ldr r2, =gUnknown_0203CD78
	mov r12, r2
	ldr r3, =gUnknown_02020630
	ldr r1, =gTasks
	mov r0, r9
	add r0, r8
	lsls r0, 3
	adds r5, r0, r1
	movs r4, 0
	adds r7, r3, 0
	adds r7, 0x1C
_081917B6:
	cmp r6, 0x9
	bgt _0819181C
	mov r1, r12
	ldr r0, [r1]
	adds r2, r0, r6
	ldrb r0, [r2]
	cmp r0, 0xFF
	beq _0819185C
	adds r1, r0, 0
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r7
	ldr r1, =sub_8190860
	str r1, [r0]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	ldrh r1, [r5, 0xC]
	strh r1, [r0, 0x2E]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	strh r4, [r0, 0x30]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	strh r6, [r0, 0x32]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	strh r1, [r0, 0x34]
	b _0819185C
	.pool
_0819181C:
	mov r2, r12
	ldr r0, [r2]
	adds r2, r0, r6
	ldrb r0, [r2]
	cmp r0, 0xFF
	beq _0819185C
	adds r1, r0, 0
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r7
	ldr r1, =sub_8190A48
	str r1, [r0]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	ldrh r1, [r5, 0xC]
	strh r1, [r0, 0x2E]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	strh r4, [r0, 0x30]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	strh r6, [r0, 0x32]
_0819185C:
	adds r6, 0x1
	cmp r6, 0xF
	ble _081917B6
	mov r0, r9
	add r0, r8
	lsls r0, 3
	ldr r3, =gTasks
	adds r0, r3
	movs r2, 0
	movs r1, 0x6
	b _08191FE8
	.pool
_0819187C:
	mov r0, r9
	add r0, r8
	lsls r0, 3
	ldr r4, =gTasks
	adds r0, r4
	movs r5, 0xC
	ldrsh r2, [r0, r5]
	cmp r2, 0
	beq _081918BC
	ldr r0, =gUnknown_02022E14
	movs r1, 0
	strh r1, [r0]
	ldr r0, =gUnknown_02022E16
	strh r1, [r0]
	ldr r2, =gUnknown_02022E18
	movs r6, 0x80
	lsls r6, 1
	adds r0, r6, 0
	strh r0, [r2]
	ldr r0, =gUnknown_02022E1A
	strh r1, [r0]
	b _081918D2
	.pool
_081918BC:
	ldr r1, =gUnknown_02022E14
	movs r3, 0x80
	lsls r3, 1
	adds r0, r3, 0
	strh r0, [r1]
	ldr r0, =gUnknown_02022E16
	strh r2, [r0]
	ldr r0, =gUnknown_02022E18
	strh r2, [r0]
	ldr r0, =gUnknown_02022E1A
	strh r2, [r0]
_081918D2:
	ldr r0, =gUnknown_0203CD78
	ldr r2, [r0]
	ldrb r0, [r2, 0x10]
	cmp r0, 0
	bne _08191924
	ldr r1, =gUnknown_02022E1C
	movs r4, 0x80
	lsls r4, 1
	adds r0, r4, 0
	strh r0, [r1]
	ldr r1, =gUnknown_02022E1E
	movs r0, 0xA0
	strh r0, [r1]
	ldr r1, =gTasks
	mov r0, r9
	add r0, r8
	lsls r0, 3
	adds r0, r1
	ldrb r1, [r0, 0xC]
	movs r0, 0x8
	orrs r0, r1
	ldrb r1, [r2, 0x11]
	bl sub_81924E0
	b _08191958
	.pool
_08191924:
	ldr r1, =gUnknown_02022E1C
	movs r0, 0
	strh r0, [r1]
	ldr r1, =gUnknown_02022E1E
	movs r0, 0xA0
	strh r0, [r1]
	ldr r1, =gTasks
	lsls r0, r7, 2
	adds r0, r7
	lsls r0, 3
	adds r0, r1
	movs r5, 0xA
	ldrsh r0, [r0, r5]
	adds r2, r0, 0
	subs r2, 0x10
	mov r0, r9
	add r0, r8
	lsls r0, 3
	adds r0, r1
	ldrb r1, [r0, 0xC]
	movs r0, 0x8
	orrs r0, r1
	lsls r1, r2, 24
	lsrs r1, 24
	bl sub_819314C
_08191958:
	movs r6, 0
	ldr r0, =gUnknown_0203CD78
	mov r10, r0
	ldr r3, =gUnknown_02020630
	mov r0, r9
	add r0, r8
	lsls r0, 3
	ldr r1, =gTasks
	adds r5, r0, r1
	mov r12, r6
	adds r4, r3, 0
	adds r4, 0x1C
	movs r7, 0x1
_08191972:
	cmp r6, 0x1
	bgt _081919E0
	mov r2, r10
	ldr r0, [r2]
	adds r2, r0, r6
	ldrb r0, [r2]
	cmp r0, 0xFF
	beq _08191A24
	adds r1, r0, 0
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	ldr r1, =sub_8190860
	str r1, [r0]
	ldrb r0, [r2]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r3
	ldrh r0, [r5, 0xC]
	eors r0, r7
	strh r0, [r1, 0x2E]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	mov r1, r12
	strh r1, [r0, 0x30]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	strh r6, [r0, 0x32]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	strh r1, [r0, 0x34]
	b _08191A24
	.pool
_081919E0:
	mov r2, r10
	ldr r0, [r2]
	adds r2, r0, r6
	ldrb r0, [r2]
	cmp r0, 0xFF
	beq _08191A24
	adds r1, r0, 0
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	ldr r1, =sub_8190A48
	str r1, [r0]
	ldrb r0, [r2]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r3
	ldrh r0, [r5, 0xC]
	eors r0, r7
	strh r0, [r1, 0x2E]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	mov r1, r12
	strh r1, [r0, 0x30]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	strh r6, [r0, 0x32]
_08191A24:
	adds r6, 0x1
	cmp r6, 0x7
	ble _08191972
	movs r6, 0x8
	ldr r2, =gUnknown_0203CD78
	mov r12, r2
	ldr r3, =gUnknown_02020630
	ldr r1, =gTasks
	mov r0, r9
	add r0, r8
	lsls r0, 3
	adds r5, r0, r1
	movs r4, 0
	adds r7, r3, 0
	adds r7, 0x1C
_08191A42:
	cmp r6, 0x9
	bgt _08191AA8
	mov r1, r12
	ldr r0, [r1]
	adds r2, r0, r6
	ldrb r0, [r2]
	cmp r0, 0xFF
	beq _08191AE8
	adds r1, r0, 0
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r7
	ldr r1, =sub_8190860
	str r1, [r0]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	ldrh r1, [r5, 0xC]
	strh r1, [r0, 0x2E]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	strh r4, [r0, 0x30]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	strh r6, [r0, 0x32]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	strh r1, [r0, 0x34]
	b _08191AE8
	.pool
_08191AA8:
	mov r2, r12
	ldr r0, [r2]
	adds r2, r0, r6
	ldrb r0, [r2]
	cmp r0, 0xFF
	beq _08191AE8
	adds r1, r0, 0
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r7
	ldr r1, =sub_8190A48
	str r1, [r0]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	ldrh r1, [r5, 0xC]
	strh r1, [r0, 0x2E]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	strh r4, [r0, 0x30]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	strh r6, [r0, 0x32]
_08191AE8:
	adds r6, 0x1
	cmp r6, 0xF
	ble _08191A42
	mov r0, r9
	add r0, r8
	lsls r0, 3
	ldr r3, =gTasks
	adds r0, r3
	movs r2, 0
	movs r1, 0x6
	b _08191FE8
	.pool
_08191B08:
	mov r0, r9
	add r0, r8
	lsls r0, 3
	ldr r4, =gTasks
	adds r0, r4
	movs r5, 0xC
	ldrsh r2, [r0, r5]
	cmp r2, 0
	beq _08191B48
	ldr r0, =gUnknown_02022E14
	movs r1, 0
	strh r1, [r0]
	ldr r0, =gUnknown_02022E16
	strh r1, [r0]
	ldr r2, =gUnknown_02022E18
	movs r6, 0xFF
	lsls r6, 8
	adds r0, r6, 0
	strh r0, [r2]
	ldr r0, =gUnknown_02022E1A
	strh r1, [r0]
	b _08191B5E
	.pool
_08191B48:
	ldr r1, =gUnknown_02022E14
	movs r3, 0xFF
	lsls r3, 8
	adds r0, r3, 0
	strh r0, [r1]
	ldr r0, =gUnknown_02022E16
	strh r2, [r0]
	ldr r0, =gUnknown_02022E18
	strh r2, [r0]
	ldr r0, =gUnknown_02022E1A
	strh r2, [r0]
_08191B5E:
	ldr r0, =gUnknown_0203CD78
	ldr r0, [r0]
	ldrb r0, [r0, 0x10]
	cmp r0, 0x1
	bne _08191B94
	ldr r1, =gUnknown_02022E1C
	movs r0, 0
	strh r0, [r1]
	ldr r1, =gUnknown_02022E1E
	movs r0, 0xA0
	strh r0, [r1]
	b _08191B9E
	.pool
_08191B94:
	ldr r0, =gUnknown_02022E1C
	movs r1, 0
	strh r1, [r0]
	ldr r0, =gUnknown_02022E1E
	strh r1, [r0]
_08191B9E:
	ldr r4, =gUnknown_0860D15C
	ldr r5, =gUnknown_0203CD78
	ldr r3, [r5]
	ldr r2, =gTasks
	lsls r0, r7, 2
	adds r0, r7
	lsls r0, 3
	adds r0, r2
	movs r6, 0xA
	ldrsh r1, [r0, r6]
	lsls r1, 2
	subs r1, 0x1
	ldrb r3, [r3, 0x10]
	adds r1, r3
	adds r1, r4
	mov r4, r9
	add r4, r8
	lsls r4, 3
	adds r4, r2
	ldrb r2, [r4, 0xC]
	movs r0, 0x2
	orrs r0, r2
	ldrb r1, [r1]
	bl sub_819314C
	movs r6, 0
	ldr r7, =gUnknown_02020630
	mov r12, r6
	mov r10, r5
	adds r5, r7, 0
	adds r5, 0x1C
_08191BDC:
	cmp r6, 0x1
	bgt _08191C50
	mov r1, r10
	ldr r0, [r1]
	adds r3, r0, r6
	ldrb r0, [r3]
	cmp r0, 0xFF
	beq _08191C96
	adds r1, r0, 0
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	ldr r1, =sub_81908CC
	str r1, [r0]
	ldrb r1, [r3]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r7
	ldrh r1, [r4, 0xC]
	movs r2, 0x1
	eors r1, r2
	strh r1, [r0, 0x2E]
	ldrb r1, [r3]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r7
	mov r2, r12
	strh r2, [r0, 0x30]
	ldrb r1, [r3]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r7
	strh r6, [r0, 0x32]
	ldrb r1, [r3]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r7
	strh r1, [r0, 0x34]
	b _08191C96
	.pool
_08191C50:
	mov r3, r10
	ldr r0, [r3]
	adds r3, r0, r6
	ldrb r0, [r3]
	cmp r0, 0xFF
	beq _08191C96
	adds r1, r0, 0
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	ldr r1, =sub_8190AC4
	str r1, [r0]
	ldrb r1, [r3]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r7
	ldrh r1, [r4, 0xC]
	movs r2, 0x1
	eors r1, r2
	strh r1, [r0, 0x2E]
	ldrb r1, [r3]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r7
	mov r1, r12
	strh r1, [r0, 0x30]
	ldrb r1, [r3]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r7
	strh r6, [r0, 0x32]
_08191C96:
	adds r6, 0x1
	cmp r6, 0x7
	ble _08191BDC
	movs r6, 0x8
	ldr r2, =gUnknown_0203CD78
	mov r12, r2
	ldr r3, =gUnknown_02020630
	ldr r1, =gTasks
	mov r0, r9
	add r0, r8
	lsls r0, 3
	adds r5, r0, r1
	movs r4, 0
	adds r7, r3, 0
	adds r7, 0x1C
_08191CB4:
	cmp r6, 0x9
	bgt _08191D1C
	mov r1, r12
	ldr r0, [r1]
	adds r2, r0, r6
	ldrb r0, [r2]
	cmp r0, 0xFF
	beq _08191D5C
	adds r1, r0, 0
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r7
	ldr r1, =sub_81908CC
	str r1, [r0]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	ldrh r1, [r5, 0xC]
	strh r1, [r0, 0x2E]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	strh r4, [r0, 0x30]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	strh r6, [r0, 0x32]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	strh r1, [r0, 0x34]
	b _08191D5C
	.pool
_08191D1C:
	mov r2, r12
	ldr r0, [r2]
	adds r2, r0, r6
	ldrb r0, [r2]
	cmp r0, 0xFF
	beq _08191D5C
	adds r1, r0, 0
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r7
	ldr r1, =sub_8190AC4
	str r1, [r0]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	ldrh r1, [r5, 0xC]
	strh r1, [r0, 0x2E]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	strh r4, [r0, 0x30]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	strh r6, [r0, 0x32]
_08191D5C:
	adds r6, 0x1
	cmp r6, 0xF
	ble _08191CB4
	b _08191FDA
	.pool
_08191D68:
	mov r0, r9
	add r0, r8
	lsls r0, 3
	ldr r4, =gTasks
	adds r0, r4
	movs r5, 0xC
	ldrsh r2, [r0, r5]
	cmp r2, 0
	beq _08191DA8
	ldr r0, =gUnknown_02022E14
	movs r1, 0
	strh r1, [r0]
	ldr r0, =gUnknown_02022E16
	strh r1, [r0]
	ldr r2, =gUnknown_02022E18
	movs r6, 0xFF
	lsls r6, 8
	adds r0, r6, 0
	strh r0, [r2]
	ldr r0, =gUnknown_02022E1A
	strh r1, [r0]
	b _08191DBE
	.pool
_08191DA8:
	ldr r1, =gUnknown_02022E14
	movs r3, 0xFF
	lsls r3, 8
	adds r0, r3, 0
	strh r0, [r1]
	ldr r0, =gUnknown_02022E16
	strh r2, [r0]
	ldr r0, =gUnknown_02022E18
	strh r2, [r0]
	ldr r0, =gUnknown_02022E1A
	strh r2, [r0]
_08191DBE:
	ldr r0, =gUnknown_0203CD78
	ldr r2, [r0]
	ldrb r0, [r2, 0x10]
	cmp r0, 0x2
	bne _08191E10
	ldr r1, =gUnknown_02022E1C
	movs r4, 0x80
	lsls r4, 1
	adds r0, r4, 0
	strh r0, [r1]
	ldr r1, =gUnknown_02022E1E
	movs r0, 0xA0
	strh r0, [r1]
	ldr r1, =gTasks
	mov r0, r9
	add r0, r8
	lsls r0, 3
	adds r0, r1
	ldrb r1, [r0, 0xC]
	movs r0, 0x2
	orrs r0, r1
	ldrb r1, [r2, 0x12]
	bl sub_81924E0
	b _08191E44
	.pool
_08191E10:
	ldr r1, =gUnknown_02022E1C
	movs r0, 0
	strh r0, [r1]
	ldr r1, =gUnknown_02022E1E
	movs r0, 0xA0
	strh r0, [r1]
	ldr r1, =gTasks
	lsls r0, r7, 2
	adds r0, r7
	lsls r0, 3
	adds r0, r1
	movs r5, 0xA
	ldrsh r0, [r0, r5]
	adds r2, r0, 0
	subs r2, 0x10
	mov r0, r9
	add r0, r8
	lsls r0, 3
	adds r0, r1
	ldrb r1, [r0, 0xC]
	movs r0, 0x2
	orrs r0, r1
	lsls r1, r2, 24
	lsrs r1, 24
	bl sub_819314C
_08191E44:
	movs r6, 0
	ldr r0, =gUnknown_0203CD78
	mov r10, r0
	ldr r3, =gUnknown_02020630
	mov r0, r9
	add r0, r8
	lsls r0, 3
	ldr r1, =gTasks
	adds r5, r0, r1
	mov r12, r6
	adds r4, r3, 0
	adds r4, 0x1C
	movs r7, 0x1
_08191E5E:
	cmp r6, 0x1
	bgt _08191ECC
	mov r2, r10
	ldr r0, [r2]
	adds r2, r0, r6
	ldrb r0, [r2]
	cmp r0, 0xFF
	beq _08191F10
	adds r1, r0, 0
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	ldr r1, =sub_81908CC
	str r1, [r0]
	ldrb r0, [r2]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r3
	ldrh r0, [r5, 0xC]
	eors r0, r7
	strh r0, [r1, 0x2E]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	mov r1, r12
	strh r1, [r0, 0x30]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	strh r6, [r0, 0x32]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	strh r1, [r0, 0x34]
	b _08191F10
	.pool
_08191ECC:
	mov r2, r10
	ldr r0, [r2]
	adds r2, r0, r6
	ldrb r0, [r2]
	cmp r0, 0xFF
	beq _08191F10
	adds r1, r0, 0
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	ldr r1, =sub_8190AC4
	str r1, [r0]
	ldrb r0, [r2]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r3
	ldrh r0, [r5, 0xC]
	eors r0, r7
	strh r0, [r1, 0x2E]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	mov r1, r12
	strh r1, [r0, 0x30]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	strh r6, [r0, 0x32]
_08191F10:
	adds r6, 0x1
	cmp r6, 0x7
	ble _08191E5E
	movs r6, 0x8
	ldr r2, =gUnknown_0203CD78
	mov r12, r2
	ldr r3, =gUnknown_02020630
	ldr r1, =gTasks
	mov r0, r9
	add r0, r8
	lsls r0, 3
	adds r5, r0, r1
	movs r4, 0
	adds r7, r3, 0
	adds r7, 0x1C
_08191F2E:
	cmp r6, 0x9
	bgt _08191F94
	mov r1, r12
	ldr r0, [r1]
	adds r2, r0, r6
	ldrb r0, [r2]
	cmp r0, 0xFF
	beq _08191FD4
	adds r1, r0, 0
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r7
	ldr r1, =sub_81908CC
	str r1, [r0]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	ldrh r1, [r5, 0xC]
	strh r1, [r0, 0x2E]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	strh r4, [r0, 0x30]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	strh r6, [r0, 0x32]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	strh r1, [r0, 0x34]
	b _08191FD4
	.pool
_08191F94:
	mov r2, r12
	ldr r0, [r2]
	adds r2, r0, r6
	ldrb r0, [r2]
	cmp r0, 0xFF
	beq _08191FD4
	adds r1, r0, 0
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r7
	ldr r1, =sub_8190AC4
	str r1, [r0]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	ldrh r1, [r5, 0xC]
	strh r1, [r0, 0x2E]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	strh r4, [r0, 0x30]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	strh r6, [r0, 0x32]
_08191FD4:
	adds r6, 0x1
	cmp r6, 0xF
	ble _08191F2E
_08191FDA:
	mov r0, r9
	add r0, r8
	lsls r0, 3
	ldr r3, =gTasks
	adds r0, r3
	movs r2, 0
	movs r1, 0x7
_08191FE8:
	strh r1, [r0, 0x8]
	strh r2, [r0, 0x12]
	b _08192202
	.pool
_08191FF8:
	mov r4, r8
	lsls r0, r4, 2
	add r0, r8
	lsls r0, 3
	ldr r5, =gTasks
	adds r1, r0, r5
	ldrh r0, [r1, 0x12]
	adds r0, 0x1
	strh r0, [r1, 0x12]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0x29
	beq _08192100
	ldr r1, =gUnknown_02022E16
	ldrh r0, [r1]
	subs r0, 0x4
	strh r0, [r1]
	ldr r1, =gUnknown_02022E1A
	ldrh r0, [r1]
	subs r0, 0x4
	strh r0, [r1]
	ldr r1, =gUnknown_02022E1E
	b _081920A4
	.pool
_08192038:
	mov r6, r8
	lsls r0, r6, 2
	add r0, r8
	lsls r0, 3
	ldr r2, =gTasks
	adds r1, r0, r2
	ldrh r0, [r1, 0x12]
	adds r0, 0x1
	strh r0, [r1, 0x12]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0x29
	beq _08192100
	ldr r1, =gUnknown_02022E16
	ldrh r0, [r1]
	adds r0, 0x4
	strh r0, [r1]
	ldr r1, =gUnknown_02022E1A
	ldrh r0, [r1]
	adds r0, 0x4
	strh r0, [r1]
	ldr r1, =gUnknown_02022E1E
	b _081920E8
	.pool
_08192078:
	mov r3, r8
	lsls r0, r3, 2
	add r0, r8
	lsls r0, 3
	ldr r4, =gTasks
	adds r1, r0, r4
	ldrh r0, [r1, 0x12]
	adds r0, 0x1
	strh r0, [r1, 0x12]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0x41
	beq _08192100
	ldr r1, =gUnknown_02022E14
	ldrh r0, [r1]
	subs r0, 0x4
	strh r0, [r1]
	ldr r1, =gUnknown_02022E18
	ldrh r0, [r1]
	subs r0, 0x4
	strh r0, [r1]
	ldr r1, =gUnknown_02022E1C
_081920A4:
	ldrh r0, [r1]
	subs r0, 0x4
	strh r0, [r1]
	b _08192202
	.pool
_081920BC:
	mov r5, r8
	lsls r0, r5, 2
	add r0, r8
	lsls r0, 3
	ldr r6, =gTasks
	adds r1, r0, r6
	ldrh r0, [r1, 0x12]
	adds r0, 0x1
	strh r0, [r1, 0x12]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0x41
	beq _08192100
	ldr r1, =gUnknown_02022E14
	ldrh r0, [r1]
	adds r0, 0x4
	strh r0, [r1]
	ldr r1, =gUnknown_02022E18
	ldrh r0, [r1]
	adds r0, 0x4
	strh r0, [r1]
	ldr r1, =gUnknown_02022E1C
_081920E8:
	ldrh r0, [r1]
	adds r0, 0x4
	strh r0, [r1]
	b _08192202
	.pool
_08192100:
	movs r0, 0x2
	strh r0, [r1, 0x8]
	b _08192202
_08192106:
	ldr r0, =gPaletteFade
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	bne _08192202
	movs r6, 0
	ldr r4, =gUnknown_0203CD78
_08192116:
	cmp r6, 0x1
	bgt _08192134
	ldr r0, [r4]
	adds r1, r0, r6
	ldrb r0, [r1]
	cmp r0, 0xFF
	beq _0819214E
	bl sub_818D8F0
	b _0819214E
	.pool
_08192134:
	ldr r0, [r4]
	adds r1, r0, r6
	ldrb r0, [r1]
	cmp r0, 0xFF
	beq _0819214E
	adds r1, r0, 0
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	ldr r1, =gUnknown_02020630
	adds r0, r1
	bl sub_80D2EF8
_0819214E:
	adds r6, 0x1
	cmp r6, 0x7
	ble _08192116
	movs r6, 0x8
	ldr r4, =gUnknown_0203CD78
_08192158:
	cmp r6, 0x9
	bgt _08192174
	ldr r0, [r4]
	adds r1, r0, r6
	ldrb r0, [r1]
	cmp r0, 0xFF
	beq _0819218E
	bl sub_818D8F0
	b _0819218E
	.pool
_08192174:
	ldr r0, [r4]
	adds r1, r0, r6
	ldrb r0, [r1]
	cmp r0, 0xFF
	beq _0819218E
	adds r1, r0, 0
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	ldr r1, =gUnknown_02020630
	adds r0, r1
	bl sub_80D2EF8
_0819218E:
	adds r6, 0x1
	cmp r6, 0xF
	ble _08192158
	bl sub_80D2F9C
	ldr r4, =gUnknown_0203CD78
	ldr r0, [r4]
	bl Free
	movs r5, 0
	str r5, [r4]
	bl FreeAllWindowBuffers
	mov r0, r9
	cmp r0, 0
	bne _081921C4
	ldr r0, =c2_exit_to_overworld_1_continue_scripts_restart_music
	bl SetMainCallback2
	b _081921FC
	.pool
_081921C4:
	ldr r0, =sub_8194220
	movs r1, 0
	bl CreateTask
	lsls r0, 24
	lsrs r6, r0, 24
	ldr r2, =gTasks
	lsls r1, r6, 2
	adds r1, r6
	lsls r1, 3
	adds r1, r2
	strh r5, [r1, 0x8]
	strh r5, [r1, 0xA]
	movs r0, 0x3
	strh r0, [r1, 0xC]
	mov r3, r8
	lsls r0, r3, 2
	add r0, r8
	lsls r0, 3
	adds r0, r2
	ldrh r0, [r0, 0x10]
	strh r0, [r1, 0xE]
	lsls r0, r7, 2
	adds r0, r7
	lsls r0, 3
	adds r0, r2
	ldrh r0, [r0, 0x14]
	strh r0, [r1, 0x10]
_081921FC:
	mov r0, r8
	bl DestroyTask
_08192202:
	add sp, 0x4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8190CD4

	thumb_func_start sub_819221C
sub_819221C: @ 819221C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	lsls r0, 24
	lsrs r0, 24
	mov r9, r0
	movs r7, 0
	ldr r2, =gTasks
	lsls r0, 2
	add r0, r9
	lsls r0, 3
	adds r0, r2
	mov r12, r0
	movs r1, 0x10
	ldrsh r6, [r0, r1]
	lsls r0, r6, 2
	adds r0, r6
	lsls r0, 3
	adds r0, r2
	movs r3, 0xA
	ldrsh r5, [r0, r3]
	ldr r0, =gUnknown_0860D080
	adds r0, r5, r0
	ldrb r0, [r0]
	mov r10, r0
	ldr r3, =gSaveBlock2Ptr
	ldr r0, [r3]
	ldr r1, =0x00000cb2
	adds r0, r1
	ldrh r0, [r0]
	mov r8, r0
	ldr r1, =gMain
	ldrh r4, [r1, 0x2E]
	movs r0, 0x3
	ands r0, r4
	adds r2, r1, 0
	cmp r0, 0
	beq _0819226E
	movs r7, 0x9
_0819226E:
	mov r3, r12
	movs r1, 0xE
	ldrsh r0, [r3, r1]
	cmp r0, 0
	bne _0819227A
	b _081924CC
_0819227A:
	cmp r0, 0x1
	beq _08192280
	b _081923B0
_08192280:
	movs r0, 0x40
	ands r0, r4
	cmp r0, 0
	beq _081922BA
	ldr r0, =gUnknown_0203CD78
	ldr r0, [r0]
	ldrb r0, [r0, 0x10]
	cmp r0, 0
	bne _081922BA
	cmp r5, 0
	bne _081922B4
	movs r5, 0xF
	b _081922B6
	.pool
_081922B4:
	subs r5, 0x1
_081922B6:
	movs r7, 0x1
	b _08192360
_081922BA:
	ldrh r1, [r2, 0x2E]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _081922E2
	ldr r0, =gUnknown_0203CD78
	ldr r0, [r0]
	ldrb r0, [r0, 0x10]
	cmp r0, 0
	bne _081922E2
	cmp r5, 0xF
	bne _081922DC
	movs r5, 0
	b _081922DE
	.pool
_081922DC:
	adds r5, 0x1
_081922DE:
	movs r7, 0x2
	b _08192360
_081922E2:
	ldrh r1, [r2, 0x2E]
	movs r0, 0x20
	ands r0, r1
	cmp r0, 0
	beq _08192304
	ldr r0, =gUnknown_0203CD78
	ldr r1, [r0]
	ldrb r0, [r1, 0x10]
	cmp r0, 0
	beq _08192304
	subs r0, 0x1
	strb r0, [r1, 0x10]
	movs r7, 0x3
	b _08192360
	.pool
_08192304:
	ldrh r1, [r2, 0x2E]
	movs r0, 0x10
	ands r0, r1
	cmp r0, 0
	beq _08192360
	ldr r2, =gSaveBlock2Ptr
	ldr r0, [r2]
	mov r3, r10
	lsls r1, r3, 2
	adds r0, r1
	ldr r2, =0x00000d25
	adds r0, r2
	ldrb r3, [r0]
	lsls r0, r3, 29
	mov r12, r1
	cmp r0, 0
	bge _0819233C
	ldr r0, =gUnknown_0203CD78
	ldr r2, [r0]
	ldrb r4, [r2, 0x10]
	subs r1, r4, 0x1
	lsls r0, r3, 27
	lsrs r0, 30
	cmp r1, r0
	bge _0819233C
	adds r0, r4, 0x1
	strb r0, [r2, 0x10]
	movs r7, 0x4
_0819233C:
	ldr r3, =gSaveBlock2Ptr
	ldr r0, [r3]
	add r0, r12
	ldr r1, =0x00000d25
	adds r0, r1
	ldrb r0, [r0]
	lsls r0, 29
	cmp r0, 0
	blt _08192360
	ldr r0, =gUnknown_0203CD78
	ldr r3, [r0]
	ldrb r1, [r3, 0x10]
	subs r0, r1, 0x1
	cmp r0, r8
	bge _08192360
	adds r0, r1, 0x1
	strb r0, [r3, 0x10]
	movs r7, 0x4
_08192360:
	cmp r7, 0x9
	beq _08192366
	b _081924A0
_08192366:
	ldr r0, =gUnknown_0203CD78
	ldr r3, [r0]
	ldrb r0, [r3, 0x10]
	cmp r0, 0
	beq _081923A0
	lsls r1, r6, 2
	adds r1, r6
	lsls r1, 3
	ldr r2, =gTasks
	adds r1, r2
	ldr r2, =gUnknown_0860D1A0
	lsrs r0, r5, 31
	adds r0, r5, r0
	asrs r0, 1
	lsls r0, 2
	subs r0, 0x1
	ldrb r3, [r3, 0x10]
	adds r0, r3
	b _08192482
	.pool
_081923A0:
	lsls r0, r6, 2
	adds r0, r6
	lsls r0, 3
	ldr r3, =gTasks
	adds r0, r3
	b _0819249E
	.pool
_081923B0:
	movs r0, 0x40
	ands r0, r4
	cmp r0, 0
	beq _081923DE
	ldr r0, =gUnknown_0203CD78
	ldr r0, [r0]
	ldrb r0, [r0, 0x10]
	cmp r0, 0x1
	bne _081923DE
	cmp r5, 0x10
	bne _081923D8
	ldr r0, =gUnknown_0860D19C
	add r0, r8
	ldrb r5, [r0]
	b _081923DA
	.pool
_081923D8:
	subs r5, 0x1
_081923DA:
	movs r7, 0x5
	b _08192446
_081923DE:
	ldrh r1, [r2, 0x2E]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _0819240E
	ldr r0, =gUnknown_0203CD78
	ldr r0, [r0]
	ldrb r0, [r0, 0x10]
	cmp r0, 0x1
	bne _0819240E
	ldr r0, =gUnknown_0860D19C
	add r0, r8
	ldrb r0, [r0]
	cmp r5, r0
	bne _08192408
	movs r5, 0x10
	b _0819240A
	.pool
_08192408:
	adds r5, 0x1
_0819240A:
	movs r7, 0x6
	b _08192446
_0819240E:
	ldrh r1, [r2, 0x2E]
	movs r0, 0x20
	ands r0, r1
	cmp r0, 0
	beq _0819242C
	ldr r0, =gUnknown_0203CD78
	ldr r1, [r0]
	ldrb r0, [r1, 0x10]
	cmp r0, 0
	beq _0819242C
	movs r7, 0x7
	subs r0, 0x1
	b _08192444
	.pool
_0819242C:
	ldrh r1, [r2, 0x2E]
	movs r0, 0x10
	ands r0, r1
	cmp r0, 0
	beq _08192446
	ldr r0, =gUnknown_0203CD78
	ldr r1, [r0]
	ldrb r0, [r1, 0x10]
	cmp r0, 0x1
	bhi _08192446
	movs r7, 0x8
	adds r0, 0x1
_08192444:
	strb r0, [r1, 0x10]
_08192446:
	cmp r7, 0x9
	bne _081924A0
	ldr r0, =gUnknown_0203CD78
	ldr r0, [r0]
	ldrb r1, [r0, 0x10]
	cmp r1, 0
	bne _08192470
	lsls r1, r6, 2
	adds r1, r6
	lsls r1, 3
	ldr r2, =gTasks
	adds r1, r2
	ldr r2, =gUnknown_0860D1C0
	ldrb r0, [r0, 0x11]
	b _08192482
	.pool
_08192470:
	cmp r1, 0x2
	bne _08192494
	lsls r1, r6, 2
	adds r1, r6
	lsls r1, 3
	ldr r3, =gTasks
	adds r1, r3
	ldr r2, =gUnknown_0860D1C0
	ldrb r0, [r0, 0x12]
_08192482:
	adds r0, r2
	ldrb r0, [r0]
	strh r0, [r1, 0xA]
	b _081924A0
	.pool
_08192494:
	lsls r0, r6, 2
	adds r0, r6
	lsls r0, 3
	ldr r1, =gTasks
	adds r0, r1
_0819249E:
	strh r5, [r0, 0xA]
_081924A0:
	cmp r7, 0
	beq _081924CC
	cmp r7, 0x9
	beq _081924CC
	movs r0, 0x5
	bl audio_play
	ldr r1, =gTasks
	lsls r0, r6, 2
	adds r0, r6
	lsls r0, 3
	adds r0, r1
	strh r5, [r0, 0xA]
	mov r2, r9
	lsls r0, r2, 2
	add r0, r9
	lsls r0, 3
	adds r0, r1
	ldrh r1, [r0, 0xC]
	movs r2, 0x1
	eors r1, r2
	strh r1, [r0, 0xC]
_081924CC:
	adds r0, r7, 0
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_819221C

	thumb_func_start sub_81924E0
sub_81924E0: @ 81924E0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x58
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp, 0x1C]
	lsls r1, 24
	lsrs r1, 24
	str r1, [sp, 0x20]
	movs r5, 0
	movs r0, 0
	str r0, [sp, 0x28]
	movs r1, 0
	str r1, [sp, 0x2C]
	movs r2, 0
	str r2, [sp, 0x30]
	movs r4, 0
	movs r0, 0x24
	bl AllocZeroed
	mov r8, r0
	ldr r0, =gSaveBlock2Ptr
	ldr r1, [r0]
	ldr r3, [sp, 0x20]
	lsls r0, r3, 2
	adds r0, r1, r0
	ldr r2, =0x00000d24
	adds r0, r2
	ldrh r0, [r0]
	lsls r0, 22
	lsrs r0, 22
	str r0, [sp, 0x24]
	movs r0, 0x1
	ldr r3, [sp, 0x1C]
	ands r0, r3
	cmp r0, 0
	beq _08192538
	movs r5, 0x8
	movs r4, 0x9
	str r4, [sp, 0x28]
	movs r4, 0x2
_08192538:
	movs r0, 0x2
	ldr r2, [sp, 0x1C]
	ands r0, r2
	cmp r0, 0
	beq _08192548
	movs r3, 0x80
	lsls r3, 1
	str r3, [sp, 0x2C]
_08192548:
	movs r0, 0x4
	ldr r2, [sp, 0x1C]
	ands r0, r2
	cmp r0, 0
	beq _08192556
	movs r3, 0xA0
	str r3, [sp, 0x30]
_08192556:
	movs r0, 0x8
	ldr r2, [sp, 0x1C]
	ands r0, r2
	cmp r0, 0
	beq _08192564
	ldr r3, =0xffffff00
	str r3, [sp, 0x2C]
_08192564:
	movs r0, 0x10
	ldr r2, [sp, 0x1C]
	ands r0, r2
	cmp r0, 0
	beq _08192574
	movs r3, 0xA0
	negs r3, r3
	str r3, [sp, 0x30]
_08192574:
	ldr r0, =0x000003ff
	ldr r2, [sp, 0x24]
	cmp r2, r0
	bne _08192598
	ldrb r0, [r1, 0x8]
	bl sub_806F000
	lsls r0, 16
	lsrs r0, 16
	b _081925B6
	.pool
_08192598:
	ldr r0, =0x000003fe
	ldr r3, [sp, 0x24]
	cmp r3, r0
	bne _081925AC
	bl sub_8195910
	b _081925B2
	.pool
_081925AC:
	ldr r0, [sp, 0x24]
	bl sub_8162AA0
_081925B2:
	lsls r0, 24
	lsrs r0, 24
_081925B6:
	ldr r2, [sp, 0x2C]
	adds r2, 0x30
	ldr r3, [sp, 0x30]
	adds r3, 0x40
	adds r1, r4, 0
	adds r1, 0xC
	str r1, [sp]
	ldr r1, =0x0000ffff
	str r1, [sp, 0x4]
	movs r1, 0x1
	bl sub_818D8AC
	ldr r1, =gUnknown_0203CD78
	ldr r1, [r1]
	adds r1, r5
	strb r0, [r1]
	movs r0, 0x1E
	ldr r4, [sp, 0x1C]
	ands r0, r4
	cmp r0, 0
	beq _081925FC
	ldr r2, =gUnknown_02020630
	ldr r0, =gUnknown_0203CD78
	ldr r0, [r0]
	adds r0, r5
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	adds r0, 0x3E
	ldrb r1, [r0]
	movs r2, 0x4
	orrs r1, r2
	strb r1, [r0]
_081925FC:
	movs r7, 0
	ldr r0, [sp, 0x20]
	lsls r0, 1
	str r0, [sp, 0x3C]
	adds r1, r5, 0x2
	ldr r2, [sp, 0x28]
	lsls r2, 24
	str r2, [sp, 0x44]
	ldr r3, [sp, 0x28]
	adds r3, 0x4
	str r3, [sp, 0x40]
	ldr r4, [sp, 0x20]
	adds r0, r4
	ldr r6, =gUnknown_0203CD78
	ldr r2, =gUnknown_02020630
	mov r10, r2
	adds r4, r1, 0
	lsls r5, r0, 1
	movs r3, 0
	mov r9, r3
_08192624:
	ldr r0, =0x000003ff
	ldr r1, [sp, 0x24]
	cmp r1, r0
	bne _08192660
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r2, =0x00000d64
	adds r0, r2
	adds r0, r5
	ldrh r0, [r0]
	ldr r1, =gUnknown_0860D340
	adds r1, r7, r1
	ldrb r2, [r1]
	ldr r3, [sp, 0x2C]
	orrs r2, r3
	b _081926B0
	.pool
_08192660:
	ldr r0, =0x000003fe
	ldr r3, [sp, 0x24]
	cmp r3, r0
	bne _08192690
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r1, =0x00000d64
	adds r0, r1
	adds r0, r5
	ldrh r0, [r0]
	ldr r1, =gUnknown_0860D340
	adds r1, r7, r1
	ldrb r2, [r1]
	ldr r3, [sp, 0x2C]
	orrs r2, r3
	b _081926B0
	.pool
_08192690:
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r3, =0x00000d64
	adds r0, r3
	adds r0, r5
	ldrh r1, [r0]
	ldr r0, =gUnknown_0203BC8C
	ldr r0, [r0]
	lsls r1, 4
	adds r1, r0
	ldrh r0, [r1]
	ldr r1, =gUnknown_0860D340
	adds r1, r7, r1
	ldrb r2, [r1]
	ldr r1, [sp, 0x2C]
	orrs r2, r1
_081926B0:
	ldr r1, =gUnknown_0860D343
	adds r1, r7, r1
	ldrb r3, [r1]
	ldr r1, [sp, 0x30]
	adds r3, r1
	mov r1, r9
	str r1, [sp]
	str r1, [sp, 0x4]
	movs r1, 0x1
	str r1, [sp, 0x8]
	ldr r1, =sub_8190938
	bl sub_80D2CC4
	ldr r1, [r6]
	adds r1, r4
	strb r0, [r1]
	ldr r0, [r6]
	adds r0, r4
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	add r0, r10
	ldrb r1, [r0, 0x5]
	movs r2, 0xD
	negs r2, r2
	ands r1, r2
	strb r1, [r0, 0x5]
	movs r0, 0x1E
	ldr r3, [sp, 0x1C]
	ands r0, r3
	cmp r0, 0
	beq _0819270A
	ldr r0, [r6]
	adds r0, r4
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	add r0, r10
	adds r0, 0x3E
	ldrb r1, [r0]
	movs r2, 0x4
	orrs r1, r2
	strb r1, [r0]
_0819270A:
	adds r4, 0x1
	adds r5, 0x2
	adds r7, 0x1
	cmp r7, 0x2
	ble _08192624
	add r0, sp, 0xC
	movs r2, 0
	movs r3, 0x2
	strb r3, [r0, 0x5]
	strb r2, [r0, 0x6]
	strb r2, [r0, 0x7]
	adds r1, r0, 0
	adds r0, r2, 0
	strb r0, [r1, 0x8]
	adds r0, r1, 0
	ldrb r0, [r0, 0x7]
	strb r0, [r1, 0x9]
	adds r0, r1, 0
	strb r3, [r0, 0xA]
	strb r2, [r0, 0xB]
	adds r3, r0, 0
	ldrb r2, [r3, 0xC]
	movs r1, 0x10
	negs r1, r1
	adds r0, r1, 0
	ands r0, r2
	strb r0, [r3, 0xC]
	adds r2, r3, 0
	movs r0, 0xE0
	strb r0, [r2, 0xC]
	ldrb r0, [r2, 0xD]
	ands r1, r0
	strb r1, [r2, 0xD]
	adds r1, r2, 0
	movs r0, 0xD0
	strb r0, [r1, 0xD]
	movs r7, 0
	ldr r0, =0x000003ff
	ldr r4, [sp, 0x24]
	cmp r4, r0
	bne _08192784
	ldr r0, =gTrainerClassNameIndices
	adds r0, 0x3C
	ldrb r5, [r0]
	b _081927A2
	.pool
_08192784:
	ldr r0, =0x000003fe
	ldr r1, [sp, 0x24]
	cmp r1, r0
	bne _08192798
	bl sub_8195924
	b _0819279E
	.pool
_08192798:
	ldr r0, [sp, 0x24]
	bl sub_8162BD8
_0819279E:
	lsls r0, 24
	lsrs r5, r0, 24
_081927A2:
	ldr r2, =gTrainerClassNames
	movs r0, 0xD
	adds r1, r5, 0
	muls r1, r0
	adds r0, r7, r1
	adds r0, r2
	ldrb r0, [r0]
	cmp r0, 0xFF
	beq _081927CA
	ldr r3, =gStringVar1
	adds r0, r1, r2
	adds r2, r7, r0
_081927BA:
	adds r0, r7, r3
	ldrb r1, [r2]
	strb r1, [r0]
	adds r2, 0x1
	adds r7, 0x1
	ldrb r0, [r2]
	cmp r0, 0xFF
	bne _081927BA
_081927CA:
	ldr r5, =gStringVar1
	adds r1, r7, r5
	movs r0, 0
	strb r0, [r1]
	adds r0, r7, 0x1
	adds r0, r5
	movs r1, 0xFF
	strb r1, [r0]
	ldr r0, =0x000003ff
	ldr r2, [sp, 0x24]
	cmp r2, r0
	bne _08192800
	ldr r0, =gSaveBlock2Ptr
	ldr r1, [r0]
	adds r0, r5, 0
	bl StringAppend
	b _08192836
	.pool
_08192800:
	ldr r0, =0x000003fe
	ldr r3, [sp, 0x24]
	cmp r3, r0
	bne _08192824
	ldr r4, =gStringVar2
	adds r0, r4, 0
	bl sub_8195938
	adds r0, r5, 0
	adds r1, r4, 0
	bl StringAppend
	b _08192836
	.pool
_08192824:
	ldr r4, =gStringVar2
	ldr r1, [sp, 0x24]
	adds r0, r4, 0
	bl sub_8195898
	adds r0, r5, 0
	adds r1, r4, 0
	bl StringAppend
_08192836:
	add r0, sp, 0xC
	ldrb r0, [r0, 0x5]
	ldr r4, =gStringVar1
	add r1, sp, 0xC
	ldrb r3, [r1, 0xA]
	adds r1, r4, 0
	movs r2, 0xD0
	bl GetStringCenterAlignXOffsetWithLetterSpacing
	add r1, sp, 0xC
	movs r5, 0
	strb r0, [r1, 0x8]
	str r4, [sp, 0xC]
	adds r0, r1, 0
	add r4, sp, 0x28
	ldrb r4, [r4]
	strb r4, [r0, 0x4]
	ldr r0, [sp, 0x44]
	lsrs r4, r0, 24
	adds r0, r4, 0
	bl PutWindowTilemap
	adds r0, r4, 0
	movs r1, 0x3
	bl CopyWindowToVram
	add r0, sp, 0xC
	movs r1, 0
	movs r2, 0
	bl AddTextPrinter
	add r0, sp, 0xC
	strb r5, [r0, 0xA]
	movs r7, 0
	adds r6, r0, 0
	ldr r1, [sp, 0x3C]
	ldr r2, [sp, 0x20]
	adds r0, r1, r2
	lsls r0, 1
	mov r9, r0
	movs r3, 0xB
	mov r10, r3
_0819288A:
	ldr r0, =gUnknown_0860D346
	adds r0, r7, r0
	ldrb r0, [r0]
	strb r0, [r6, 0x9]
	ldr r0, =0x000003ff
	ldr r4, [sp, 0x24]
	cmp r4, r0
	bne _081928C0
	ldr r0, =gSaveBlock2Ptr
	ldr r1, [r0]
	lsls r0, r7, 1
	add r0, r9
	ldr r2, =0x00000d64
	adds r1, r2
	b _081928FA
	.pool
_081928C0:
	ldr r0, =0x000003fe
	ldr r4, [sp, 0x24]
	cmp r4, r0
	bne _081928E4
	ldr r0, =gSaveBlock2Ptr
	ldr r1, [r0]
	lsls r0, r7, 1
	add r0, r9
	ldr r2, =0x00000d64
	adds r1, r2
	b _081928FA
	.pool
_081928E4:
	ldr r4, =gSaveBlock2Ptr
	ldr r1, [r4]
	lsls r0, r7, 1
	add r0, r9
	ldr r2, =0x00000d64
	adds r1, r2
	adds r1, r0
	ldrh r1, [r1]
	ldr r0, =gUnknown_0203BC8C
	ldr r0, [r0]
	lsls r1, 4
_081928FA:
	adds r1, r0
	ldrh r0, [r1]
	mov r3, r10
	muls r3, r0
	adds r0, r3, 0
	ldr r1, =gSpeciesNames
	adds r0, r1
	str r0, [sp, 0xC]
	adds r0, r7, 0x1
	ldr r4, [sp, 0x28]
	adds r0, r4
	movs r1, 0
	strb r0, [r6, 0x4]
	cmp r7, 0x1
	bne _08192930
	movs r0, 0x7
	strb r0, [r6, 0x8]
	b _08192932
	.pool
_08192930:
	strb r1, [r6, 0x8]
_08192932:
	adds r5, r7, 0x1
	ldr r0, [sp, 0x28]
	adds r4, r5, r0
	lsls r4, 24
	lsrs r4, 24
	adds r0, r4, 0
	bl PutWindowTilemap
	adds r0, r4, 0
	movs r1, 0x3
	bl CopyWindowToVram
	add r0, sp, 0xC
	movs r1, 0
	movs r2, 0
	bl AddTextPrinter
	adds r7, r5, 0
	cmp r7, 0x2
	ble _0819288A
	ldr r4, [sp, 0x40]
	adds r0, r4, 0
	bl PutWindowTilemap
	adds r0, r4, 0
	movs r1, 0x3
	bl CopyWindowToVram
	ldr r0, =0x000003fe
	ldr r1, [sp, 0x24]
	cmp r1, r0
	bne _08192980
	ldr r0, =gUnknown_0860D1D0
	ldr r0, [r0, 0x40]
	b _0819298A
	.pool
_08192980:
	ldr r0, =gUnknown_0860D1D0
	ldr r2, [sp, 0x20]
	lsls r1, r2, 2
	adds r1, r0
	ldr r0, [r1]
_0819298A:
	str r0, [sp, 0xC]
	add r1, sp, 0xC
	movs r2, 0
	movs r0, 0x1
	strb r0, [r1, 0x5]
	adds r0, r1, 0
	add r3, sp, 0x40
	ldrb r3, [r3]
	strb r3, [r0, 0x4]
	strb r2, [r0, 0x8]
	movs r1, 0x4
	strb r1, [r0, 0x7]
	strb r1, [r0, 0x9]
	movs r1, 0
	bl AddTextPrinter
	movs r7, 0
	ldr r3, =gUnknown_0860B358
_081929AE:
	movs r5, 0
	adds r4, r7, 0x1
	str r4, [sp, 0x38]
	lsls r0, r7, 1
	str r0, [sp, 0x34]
	lsls r2, r7, 4
_081929BA:
	movs r6, 0
	lsls r1, r5, 1
	mov r10, r1
	mov r4, r8
	mov r9, r2
_081929C4:
	ldr r0, =0x000003fe
	ldr r1, [sp, 0x24]
	cmp r1, r0
	bne _08192A00
	lsls r0, r7, 24
	lsls r1, r5, 24
	lsrs r0, 24
	lsrs r1, 24
	str r2, [sp, 0x48]
	str r3, [sp, 0x4C]
	bl sub_81A5060
	lsls r0, 16
	lsrs r0, 12
	adds r0, r6, r0
	ldr r3, [sp, 0x4C]
	adds r0, r3
	ldrh r1, [r4]
	ldrb r0, [r0]
	adds r1, r0
	strh r1, [r4]
	ldr r2, [sp, 0x48]
	b _08192A58
	.pool
_08192A00:
	ldr r0, =0x000003ff
	ldr r1, [sp, 0x24]
	cmp r1, r0
	bne _08192A20
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r1, =0x00000efc
	adds r0, r1
	add r0, r9
	b _08192A48
	.pool
_08192A20:
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	mov r12, r0
	ldr r0, [sp, 0x3C]
	ldr r1, [sp, 0x20]
	adds r0, r1
	str r0, [sp, 0x50]
	lsls r0, 1
	ldr r1, [sp, 0x34]
	adds r0, r1, r0
	ldr r1, =0x00000d64
	add r1, r12
	adds r1, r0
	ldrh r0, [r1]
	ldr r1, =gUnknown_0203BC8C
	ldr r1, [r1]
	lsls r0, 4
	adds r0, r1
	adds r0, 0x2
	add r0, r10
_08192A48:
	ldrh r0, [r0]
	lsls r0, 4
	adds r0, r6, r0
	adds r0, r3
	ldrh r1, [r4]
	ldrb r0, [r0]
	adds r1, r0
	strh r1, [r4]
_08192A58:
	adds r4, 0x2
	adds r6, 0x1
	cmp r6, 0xF
	ble _081929C4
	adds r2, 0x2
	adds r5, 0x1
	cmp r5, 0x3
	ble _081929BA
	ldr r7, [sp, 0x38]
	cmp r7, 0x2
	ble _081929AE
	movs r7, 0
	ldr r2, =gUnknown_0860D214
	mov r9, r2
	ldr r3, =gUnknown_0860C988
	mov r10, r3
_08192A78:
	movs r4, 0
	movs r6, 0
	movs r5, 0
	mov r3, r8
	lsls r0, r7, 4
	mov r1, r10
	adds r2, r0, r1
_08192A86:
	ldrb r0, [r2]
	cmp r0, 0
	beq _08192A9E
	adds r4, 0x1
	movs r1, 0
	ldrsh r0, [r3, r1]
	cmp r0, 0
	beq _08192A9E
	ldrb r1, [r2]
	cmp r0, r1
	blt _08192A9E
	adds r6, 0x1
_08192A9E:
	adds r3, 0x2
	adds r2, 0x1
	adds r5, 0x1
	cmp r5, 0xF
	ble _08192A86
	cmp r4, r6
	beq _08192AB2
	adds r7, 0x1
	cmp r7, 0x1E
	bls _08192A78
_08192AB2:
	lsls r0, r7, 2
	add r0, r9
	ldr r0, [r0]
	str r0, [sp, 0xC]
	add r0, sp, 0xC
	movs r1, 0x14
	strb r1, [r0, 0x7]
	strb r1, [r0, 0x9]
	movs r1, 0
	movs r2, 0
	bl AddTextPrinter
	movs r1, 0
	mov r0, r8
	adds r0, 0x22
_08192AD0:
	strh r1, [r0]
	subs r0, 0x2
	cmp r0, r8
	bge _08192AD0
	ldr r2, [sp, 0x24]
	ldr r3, =0xfffffc02
	adds r0, r2, r3
	cmp r0, 0x1
	bls _08192AE4
	b _08192C24
_08192AE4:
	movs r7, 0
	movs r4, 0
	mov r9, r4
_08192AEA:
	movs r5, 0
	mov r4, r8
	mov r6, r9
_08192AF0:
	ldr r0, =0x000003fe
	ldr r1, [sp, 0x24]
	cmp r1, r0
	bne _08192B24
	lsls r1, r5, 24
	lsrs r1, 24
	lsrs r0, r6, 24
	bl sub_81A50F0
	lsls r0, 24
	lsrs r0, 24
	b _08192B34
	.pool
_08192B24:
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	lsls r1, r7, 4
	adds r1, r5, r1
	ldr r2, =0x00000f04
	adds r0, r2
	adds r0, r1
	ldrb r0, [r0]
_08192B34:
	strh r0, [r4]
	adds r4, 0x2
	adds r5, 0x1
	cmp r5, 0x5
	ble _08192AF0
	mov r3, r8
	ldrh r0, [r3]
	ldrh r4, [r3, 0xC]
	adds r0, r4
	strh r0, [r3, 0xC]
	movs r5, 0
	mov r4, r8
_08192B4C:
	ldr r0, =0x000003fe
	ldr r1, [sp, 0x24]
	cmp r1, r0
	bne _08192B70
	mov r2, r9
	lsrs r0, r2, 24
	bl sub_81A50B0
	lsls r0, 24
	lsrs r2, r0, 24
	b _08192B7E
	.pool
_08192B70:
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	lsls r1, r7, 4
	adds r0, r1
	ldr r3, =0x00000f0a
	adds r0, r3
	ldrb r2, [r0]
_08192B7E:
	ldr r1, =gNatureStatTable
	lsls r0, r2, 2
	adds r0, r2
	adds r0, r5, r0
	adds r0, r1
	ldrb r0, [r0]
	lsls r0, 24
	asrs r0, 24
	cmp r0, 0
	ble _08192BB4
	movs r0, 0x2
	ldrsh r1, [r4, r0]
	movs r0, 0x6E
	muls r0, r1
	movs r1, 0x64
	bl __divsi3
	ldrh r1, [r4, 0xE]
	adds r1, r0
	strh r1, [r4, 0xE]
	b _08192BDC
	.pool
_08192BB4:
	cmp r0, 0
	bge _08192BD4
	movs r2, 0x2
	ldrsh r1, [r4, r2]
	movs r0, 0x5A
	muls r0, r1
	movs r1, 0x64
	bl __divsi3
	ldrh r1, [r4, 0xE]
	adds r1, r0
	strh r1, [r4, 0xE]
	ldrh r0, [r4, 0x1A]
	adds r0, 0x1
	strh r0, [r4, 0x1A]
	b _08192BDC
_08192BD4:
	ldrh r0, [r4, 0x2]
	ldrh r3, [r4, 0xE]
	adds r0, r3
	strh r0, [r4, 0xE]
_08192BDC:
	adds r4, 0x2
	adds r5, 0x1
	cmp r5, 0x4
	ble _08192B4C
	movs r4, 0x80
	lsls r4, 17
	add r9, r4
	adds r7, 0x1
	cmp r7, 0x2
	bgt _08192BF2
	b _08192AEA
_08192BF2:
	movs r5, 0
	mov r1, r8
	movs r7, 0x5
_08192BF8:
	movs r2, 0xC
	ldrsh r0, [r1, r2]
	adds r5, r0
	adds r1, 0x2
	subs r7, 0x1
	cmp r7, 0
	bge _08192BF8
	movs r6, 0x64
	mov r4, r8
	movs r7, 0x5
_08192C0C:
	movs r3, 0xC
	ldrsh r0, [r4, r3]
	muls r0, r6
	adds r1, r5, 0
	bl __divsi3
	strh r0, [r4]
	adds r4, 0x2
	subs r7, 0x1
	cmp r7, 0
	bge _08192C0C
	b _08192D70
_08192C24:
	ldr r4, =gUnknown_0203BC8C
	mov r10, r4
	ldr r1, [sp, 0x3C]
	ldr r2, [sp, 0x20]
	adds r0, r1, r2
	lsls r0, 1
	mov r9, r0
	movs r7, 0x2
_08192C34:
	ldr r3, =gSaveBlock2Ptr
	ldr r0, [r3]
	ldr r4, =0x00000d64
	adds r0, r4
	add r0, r9
	ldrh r0, [r0]
	mov r2, r10
	ldr r1, [r2]
	lsls r0, 4
	adds r0, r1
	ldrb r2, [r0, 0xB]
	movs r6, 0
	movs r4, 0
	movs r3, 0x1
	mov r1, r8
	movs r5, 0x5
_08192C54:
	strh r4, [r1]
	adds r0, r2, 0
	ands r0, r3
	cmp r0, 0
	beq _08192C60
	adds r6, 0x1
_08192C60:
	asrs r2, 1
	adds r1, 0x2
	subs r5, 0x1
	cmp r5, 0
	bge _08192C54
	movs r0, 0xFF
	lsls r0, 1
	adds r1, r6, 0
	bl __divsi3
	adds r6, r0, 0
	ldr r3, =gSaveBlock2Ptr
	ldr r0, [r3]
	ldr r4, =0x00000d64
	adds r0, r4
	add r0, r9
	ldrh r0, [r0]
	mov r2, r10
	ldr r1, [r2]
	lsls r0, 4
	adds r0, r1
	ldrb r2, [r0, 0xB]
	movs r3, 0x1
	mov r1, r8
	movs r5, 0x5
_08192C92:
	adds r0, r2, 0
	ands r0, r3
	cmp r0, 0
	beq _08192C9C
	strh r6, [r1]
_08192C9C:
	asrs r2, 1
	adds r1, 0x2
	subs r5, 0x1
	cmp r5, 0
	bge _08192C92
	mov r3, r8
	ldrh r0, [r3]
	ldrh r4, [r3, 0xC]
	adds r0, r4
	strh r0, [r3, 0xC]
	movs r5, 0
	mov r4, r8
_08192CB4:
	ldr r1, =gSaveBlock2Ptr
	ldr r0, [r1]
	ldr r2, =0x00000d64
	adds r0, r2
	add r0, r9
	ldrh r0, [r0]
	mov r3, r10
	ldr r1, [r3]
	lsls r0, 4
	adds r0, r1
	ldrb r2, [r0, 0xC]
	lsls r0, r2, 2
	adds r0, r2
	adds r0, r5, r0
	ldr r1, =gNatureStatTable
	adds r0, r1
	ldrb r0, [r0]
	lsls r0, 24
	asrs r0, 24
	cmp r0, 0
	ble _08192D04
	movs r2, 0x2
	ldrsh r1, [r4, r2]
	movs r0, 0x6E
	muls r0, r1
	movs r1, 0x64
	bl __divsi3
	ldrh r1, [r4, 0xE]
	adds r1, r0
	strh r1, [r4, 0xE]
	b _08192D2C
	.pool
_08192D04:
	cmp r0, 0
	bge _08192D24
	movs r3, 0x2
	ldrsh r1, [r4, r3]
	movs r0, 0x5A
	muls r0, r1
	movs r1, 0x64
	bl __divsi3
	ldrh r1, [r4, 0xE]
	adds r1, r0
	strh r1, [r4, 0xE]
	ldrh r0, [r4, 0x1A]
	adds r0, 0x1
	strh r0, [r4, 0x1A]
	b _08192D2C
_08192D24:
	ldrh r0, [r4, 0x2]
	ldrh r1, [r4, 0xE]
	adds r0, r1
	strh r0, [r4, 0xE]
_08192D2C:
	adds r4, 0x2
	adds r5, 0x1
	cmp r5, 0x4
	ble _08192CB4
	movs r2, 0x2
	add r9, r2
	subs r7, 0x1
	cmp r7, 0
	blt _08192D40
	b _08192C34
_08192D40:
	movs r5, 0
	mov r1, r8
	movs r7, 0x5
_08192D46:
	movs r3, 0xC
	ldrsh r0, [r1, r3]
	adds r5, r0
	adds r1, 0x2
	subs r7, 0x1
	cmp r7, 0
	bge _08192D46
	movs r6, 0x64
	mov r4, r8
	movs r7, 0x5
_08192D5A:
	movs r1, 0xC
	ldrsh r0, [r4, r1]
	muls r0, r6
	adds r1, r5, 0
	bl __divsi3
	strh r0, [r4]
	adds r4, 0x2
	subs r7, 0x1
	cmp r7, 0
	bge _08192D5A
_08192D70:
	movs r7, 0
	movs r5, 0
	movs r6, 0
	mov r4, r8
	mov r10, r8
	mov r9, r8
_08192D7C:
	movs r2, 0
	ldrsh r1, [r4, r2]
	cmp r1, 0x1D
	ble _08192DDE
	cmp r7, 0x2
	bne _08192DD4
	mov r3, r8
	movs r0, 0xC
	ldrsh r3, [r3, r0]
	mov r12, r3
	cmp r12, r1
	bge _08192DC6
	mov r2, r8
	ldrh r2, [r2, 0xE]
	add r3, sp, 0x54
	strh r2, [r3]
	mov r2, r8
	movs r3, 0xE
	ldrsh r0, [r2, r3]
	cmp r0, r1
	bge _08192DBA
	cmp r12, r0
	bge _08192DB4
	add r0, sp, 0x54
	ldrh r0, [r0]
	strh r0, [r2, 0xC]
	strh r6, [r2, 0xE]
	b _08192DDE
_08192DB4:
	mov r1, r8
	strh r6, [r1, 0xE]
	b _08192DDE
_08192DBA:
	add r2, sp, 0x54
	ldrh r3, [r2]
	mov r2, r8
	strh r3, [r2, 0xC]
	strh r6, [r2, 0xE]
	b _08192DDE
_08192DC6:
	mov r3, r8
	movs r2, 0xE
	ldrsh r0, [r3, r2]
	cmp r0, r1
	bge _08192DDE
	strh r6, [r3, 0xE]
	b _08192DDE
_08192DD4:
	mov r3, r9
	strh r6, [r3, 0xC]
	movs r0, 0x2
	add r9, r0
	adds r7, 0x1
_08192DDE:
	movs r1, 0
	ldrsh r0, [r4, r1]
	cmp r0, 0
	bne _08192E64
	cmp r5, 0x2
	bne _08192E5A
	movs r2, 0x18
	ldrsh r0, [r4, r2]
	cmp r0, 0x1
	bgt _08192E18
	cmp r0, 0x1
	bne _08192E64
	mov r3, r8
	movs r1, 0x10
	ldrsh r0, [r3, r1]
	lsls r0, 1
	add r0, r8
	movs r2, 0x18
	ldrsh r0, [r0, r2]
	cmp r0, 0
	bne _08192E22
	movs r1, 0x12
	ldrsh r0, [r3, r1]
	lsls r0, 1
	add r0, r8
	movs r2, 0x18
	ldrsh r0, [r0, r2]
	cmp r0, 0
	bne _08192E22
_08192E18:
	mov r3, r8
	ldrh r0, [r3, 0x12]
	strh r0, [r3, 0x10]
	strh r6, [r3, 0x12]
	b _08192E64
_08192E22:
	movs r1, 0x18
	ldrsh r0, [r4, r1]
	cmp r0, 0x1
	bne _08192E64
	mov r2, r8
	movs r3, 0x10
	ldrsh r0, [r2, r3]
	lsls r0, 1
	add r0, r8
	movs r1, 0x18
	ldrsh r0, [r0, r1]
	cmp r0, 0
	bne _08192E44
	ldrh r0, [r2, 0x12]
	strh r0, [r2, 0x10]
	strh r6, [r2, 0x12]
	b _08192E64
_08192E44:
	mov r2, r8
	movs r3, 0x12
	ldrsh r0, [r2, r3]
	lsls r0, 1
	add r0, r8
	movs r1, 0x18
	ldrsh r0, [r0, r1]
	cmp r0, 0
	bne _08192E64
	strh r6, [r2, 0x12]
	b _08192E64
_08192E5A:
	mov r2, r10
	strh r6, [r2, 0x10]
	movs r3, 0x2
	add r10, r3
	adds r5, 0x1
_08192E64:
	adds r4, 0x2
	adds r6, 0x1
	cmp r6, 0x5
	ble _08192D7C
	cmp r7, 0x2
	bne _08192E8C
	ldr r0, =gUnknown_0860D349
	mov r4, r8
	movs r1, 0xC
	ldrsh r2, [r4, r1]
	adds r0, r2, r0
	movs r3, 0xE
	ldrsh r1, [r4, r3]
	subs r1, 0x1
	subs r1, r2
	ldrb r0, [r0]
	adds r7, r1, r0
	b _08192ED2
	.pool
_08192E8C:
	cmp r7, 0x1
	bne _08192E9C
	mov r4, r8
	movs r1, 0xC
	ldrsh r0, [r4, r1]
	adds r7, r0, 0
	adds r7, 0xF
	b _08192ED2
_08192E9C:
	cmp r5, 0x2
	bne _08192EC0
	ldr r0, =gUnknown_0860D349
	mov r3, r8
	movs r4, 0x10
	ldrsh r2, [r3, r4]
	adds r0, r2, r0
	movs r4, 0x12
	ldrsh r1, [r3, r4]
	subs r1, 0x1
	subs r1, r2
	ldrb r0, [r0]
	adds r1, r0
	adds r7, r1, 0
	adds r7, 0x15
	b _08192ED2
	.pool
_08192EC0:
	cmp r5, 0x1
	bne _08192ED0
	mov r1, r8
	movs r2, 0x10
	ldrsh r0, [r1, r2]
	adds r7, r0, 0
	adds r7, 0x24
	b _08192ED2
_08192ED0:
	movs r7, 0x2A
_08192ED2:
	lsls r0, r7, 2
	ldr r3, =gUnknown_0860D294
	adds r0, r3
	ldr r0, [r0]
	str r0, [sp, 0xC]
	add r0, sp, 0xC
	movs r1, 0x24
	strb r1, [r0, 0x7]
	strb r1, [r0, 0x9]
	movs r1, 0
	movs r2, 0
	bl AddTextPrinter
	mov r0, r8
	bl Free
	add sp, 0x58
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81924E0

	thumb_func_start sub_8192F08
sub_8192F08: @ 8192F08
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x10
	str r1, [sp]
	lsls r0, 24
	lsrs r7, r0, 24
	movs r0, 0
	str r0, [sp, 0x4]
	mov r8, r0
	ldr r2, =gUnknown_0860D3C4
	lsls r0, r7, 1
	adds r0, r7
	adds r1, r0, r2
	ldrb r6, [r1]
	adds r1, r2, 0x1
	adds r0, r1
	ldrb r0, [r0]
	adds r0, r6, r0
	adds r3, r2, 0
	cmp r6, r0
	bge _08192FD4
	ldr r5, =gSaveBlock2Ptr
	ldr r1, =0x000003ff
	mov r10, r1
	ldr r2, =0x000003fe
	mov r9, r2
_08192F42:
	ldr r0, =gUnknown_0860D3B4
	adds r0, r6, r0
	ldrb r4, [r0]
	ldr r0, [r5]
	lsls r1, r4, 2
	adds r0, r1
	ldr r2, =0x00000d25
	adds r0, r2
	ldrb r0, [r0]
	lsls r0, 29
	cmp r0, 0
	blt _08192FBE
	ldr r0, [sp]
	add r0, r8
	strb r4, [r0]
	ldr r2, [r5]
	adds r0, r2, r1
	ldr r1, =0x00000d24
	adds r0, r1
	ldrh r0, [r0]
	lsls r1, r0, 22
	lsrs r0, r1, 22
	cmp r0, r10
	bne _08192F9C
	ldr r0, =gStringVar1
	adds r1, r2, 0
	bl StringCopy
	b _08192FB8
	.pool
_08192F9C:
	lsrs r0, r1, 22
	cmp r0, r9
	bne _08192FB0
	ldr r0, =gStringVar1
	bl sub_8195938
	b _08192FB8
	.pool
_08192FB0:
	lsrs r1, 22
	ldr r0, =gStringVar1
	bl sub_8195898
_08192FB8:
	movs r2, 0x1
	add r8, r2
	ldr r3, =gUnknown_0860D3C4
_08192FBE:
	adds r6, 0x1
	lsls r1, r7, 1
	adds r1, r7
	adds r0, r1, r3
	ldrb r2, [r0]
	adds r0, r3, 0x1
	adds r1, r0
	ldrb r0, [r1]
	adds r2, r0
	cmp r6, r2
	blt _08192F42
_08192FD4:
	mov r5, r8
	cmp r5, 0x2
	bne _08192FE8
	movs r0, 0
	b _0819313C
	.pool
_08192FE8:
	mov r12, r3
	lsls r3, r7, 1
	adds r0, r3, r7
	mov r2, r12
	adds r1, r0, r2
	ldrb r6, [r1]
	mov r1, r12
	adds r1, 0x1
	adds r0, r1
	ldrb r0, [r0]
	adds r0, r6, r0
	str r3, [sp, 0x8]
	cmp r6, r0
	blt _08193006
	b _08193126
_08193006:
	ldr r5, =gSaveBlock2Ptr
	mov r10, r5
	ldr r0, =0x00000d25
	mov r9, r0
_0819300E:
	ldr r0, =gUnknown_0860D3B4
	adds r0, r6, r0
	ldrb r4, [r0]
	mov r1, r10
	ldr r0, [r1]
	lsls r2, r4, 2
	str r2, [sp, 0xC]
	adds r0, r2
	add r0, r9
	ldrb r2, [r0]
	lsls r0, r2, 29
	cmp r0, 0
	bge _08193100
	lsls r2, 27
	adds r1, r3, r7
	mov r0, r12
	adds r0, 0x2
	adds r1, r0
	lsrs r2, 30
	ldrb r1, [r1]
	cmp r2, r1
	bcc _08193100
	ldr r0, [sp]
	add r0, r8
	strb r4, [r0]
	movs r5, 0x1
	add r8, r5
	mov r0, r10
	ldr r3, [r0]
	ldr r5, [sp, 0xC]
	adds r2, r3, r5
	adds r0, r2, 0
	add r0, r9
	ldrb r5, [r0]
	mov r12, r5
	mov r0, r12
	lsls r0, 27
	lsrs r0, 30
	cmp r0, r1
	bne _081930BC
	lsls r4, 1
	movs r1, 0xEC
	lsls r1, 4
	adds r0, r3, r1
	adds r0, r4
	ldrh r1, [r0]
	movs r0, 0xD
	muls r1, r0
	ldr r0, =gMoveNames
	adds r1, r0
	ldr r0, =gStringVar2
	bl StringCopy
	mov r2, r10
	ldr r1, [r2]
	ldr r5, [sp, 0xC]
	adds r0, r1, r5
	add r0, r9
	ldrb r0, [r0]
	lsls r2, r0, 24
	lsrs r0, r2, 29
	lsls r0, 1
	str r0, [sp, 0x4]
	movs r0, 0xEC
	lsls r0, 4
	adds r1, r0
	adds r1, r4
	ldrh r0, [r1]
	cmp r0, 0
	bne _08193100
	lsrs r0, r2, 29
	cmp r0, 0
	bne _08193100
	movs r1, 0x4
	str r1, [sp, 0x4]
	b _08193100
	.pool
_081930BC:
	ldr r5, =0x00000d24
	adds r0, r2, r5
	ldrh r0, [r0]
	lsls r1, r0, 22
	ldr r0, =0xffc00000
	cmp r1, r0
	bne _081930E0
	ldr r0, =gStringVar1
	adds r1, r3, 0
	bl StringCopy
	b _08193100
	.pool
_081930E0:
	ldr r0, =0xff800000
	cmp r1, r0
	bne _081930F8
	ldr r0, =gStringVar1
	bl sub_8195938
	b _08193100
	.pool
_081930F8:
	lsrs r1, 22
	ldr r0, =gStringVar1
	bl sub_8195898
_08193100:
	mov r0, r8
	cmp r0, 0x2
	beq _08193126
	adds r6, 0x1
	ldr r1, =gUnknown_0860D3C4
	mov r12, r1
	ldr r3, [sp, 0x8]
	adds r1, r3, r7
	mov r2, r12
	adds r0, r1, r2
	ldrb r2, [r0]
	mov r0, r12
	adds r0, 0x1
	adds r1, r0
	ldrb r0, [r1]
	adds r2, r0
	cmp r6, r2
	bge _08193126
	b _0819300E
_08193126:
	cmp r7, 0xE
	beq _08193138
	ldr r0, [sp, 0x4]
	adds r0, 0x1
	b _0819313C
	.pool
_08193138:
	ldr r0, [sp, 0x4]
	adds r0, 0x2
_0819313C:
	add sp, 0x10
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end sub_8192F08

	thumb_func_start sub_819314C
sub_819314C: @ 819314C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x80
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp, 0x34]
	lsls r1, 24
	lsrs r6, r1, 24
	movs r0, 0
	str r0, [sp, 0x3C]
	movs r7, 0
	movs r1, 0
	str r1, [sp, 0x40]
	movs r2, 0
	str r2, [sp, 0x44]
	mov r9, r2
	movs r0, 0x1
	ldr r3, [sp, 0x34]
	ands r0, r3
	cmp r0, 0
	beq _08193186
	movs r7, 0x8
	str r7, [sp, 0x3C]
	movs r7, 0x9
	movs r0, 0x2
	mov r9, r0
_08193186:
	movs r0, 0x2
	ldr r1, [sp, 0x34]
	ands r0, r1
	cmp r0, 0
	beq _08193196
	movs r2, 0x80
	lsls r2, 1
	str r2, [sp, 0x40]
_08193196:
	movs r0, 0x4
	ldr r3, [sp, 0x34]
	ands r0, r3
	cmp r0, 0
	beq _081931A4
	movs r0, 0xA0
	str r0, [sp, 0x44]
_081931A4:
	movs r0, 0x8
	ldr r1, [sp, 0x34]
	ands r0, r1
	cmp r0, 0
	beq _081931B2
	ldr r2, =0xffffff00
	str r2, [sp, 0x40]
_081931B2:
	movs r0, 0x10
	ldr r3, [sp, 0x34]
	ands r0, r3
	cmp r0, 0
	beq _081931C2
	movs r0, 0xA0
	negs r0, r0
	str r0, [sp, 0x44]
_081931C2:
	ldr r4, =gUnknown_0203CD78
	ldr r1, [r4]
	adds r1, 0x11
	adds r0, r6, 0
	bl sub_8192F08
	str r0, [sp, 0x38]
	movs r5, 0
	mov r1, sp
	adds r1, 0x1C
	str r1, [sp, 0x48]
	mov r2, sp
	adds r2, 0x24
	str r2, [sp, 0x4C]
	lsls r1, r6, 1
	mov r3, sp
	adds r3, 0x2C
	str r3, [sp, 0x50]
	ldr r0, [sp, 0x40]
	adds r0, 0x30
	mov r8, r0
	ldr r2, [sp, 0x44]
	adds r2, 0x58
	str r2, [sp, 0x78]
	movs r3, 0xC
	add r3, r9
	mov r10, r3
	ldr r0, [sp, 0x40]
	adds r0, 0xC0
	str r0, [sp, 0x7C]
	mov r2, r9
	adds r2, 0xD
	str r2, [sp, 0x74]
	ldr r3, [sp, 0x3C]
	adds r3, 0x1
	mov r9, r3
	ldr r0, [sp, 0x3C]
	adds r0, 0x2
	str r0, [sp, 0x54]
	ldr r2, [sp, 0x3C]
	adds r2, 0x5
	str r2, [sp, 0x5C]
	adds r3, r7, 0
	adds r3, 0x8
	str r3, [sp, 0x6C]
	adds r0, r7, 0x6
	str r0, [sp, 0x64]
	adds r2, r7, 0x7
	str r2, [sp, 0x68]
	lsls r3, r6, 2
	str r3, [sp, 0x58]
	adds r0, r7, 0x5
	str r0, [sp, 0x60]
	ldr r0, [r4]
	adds r0, 0x11
	mov r12, r0
	ldr r0, =gSaveBlock2Ptr
	ldr r4, [r0]
	ldr r0, =gUnknown_0860D3C6
	movs r3, 0
	adds r1, r6
	adds r1, r0
	ldrb r6, [r1]
_08193240:
	ldr r1, [sp, 0x48]
	adds r2, r3, r1
	mov r7, r12
	adds r0, r7, r5
	ldrb r0, [r0]
	str r0, [r2]
	ldr r7, [sp, 0x4C]
	adds r1, r3, r7
	lsls r0, 2
	adds r0, r4, r0
	ldr r7, =0x00000d24
	adds r0, r7
	ldrh r0, [r0]
	lsls r0, 22
	lsrs r0, 22
	str r0, [r1]
	ldr r0, [r2]
	lsls r0, 2
	adds r0, r4, r0
	ldr r1, =0x00000d25
	adds r0, r1
	ldrb r1, [r0]
	lsls r0, r1, 27
	lsrs r0, 30
	cmp r0, r6
	bhi _0819329C
	lsls r0, r1, 29
	cmp r0, 0
	bge _0819329C
	ldr r2, [sp, 0x50]
	adds r1, r3, r2
	movs r0, 0x1
	b _081932A2
	.pool
_0819329C:
	ldr r7, [sp, 0x50]
	adds r1, r3, r7
	movs r0, 0
_081932A2:
	str r0, [r1]
	adds r3, 0x4
	adds r5, 0x1
	cmp r5, 0x1
	ble _08193240
	ldr r1, [sp, 0x24]
	ldr r0, =0x000003ff
	cmp r1, r0
	bne _081932D4
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldrb r0, [r0, 0x8]
	bl sub_806F000
	lsls r0, 16
	lsrs r0, 16
	mov r2, r8
	ldr r3, [sp, 0x78]
	mov r1, r10
	str r1, [sp]
	b _081932F8
	.pool
_081932D4:
	ldr r0, =0x000003fe
	cmp r1, r0
	bne _081932E4
	bl sub_8195910
	b _081932EC
	.pool
_081932E4:
	lsls r0, r1, 16
	lsrs r0, 16
	bl sub_8162AA0
_081932EC:
	lsls r0, 24
	lsrs r0, 24
	mov r2, r8
	ldr r3, [sp, 0x78]
	mov r7, r10
	str r7, [sp]
_081932F8:
	ldr r1, =0x0000ffff
	str r1, [sp, 0x4]
	movs r1, 0x1
	bl sub_818D8AC
	ldr r1, =gUnknown_0203CD78
	ldr r1, [r1]
	ldr r2, [sp, 0x3C]
	adds r1, r2
	strb r0, [r1]
	movs r0, 0x1E
	ldr r3, [sp, 0x34]
	ands r0, r3
	cmp r0, 0
	beq _08193334
	ldr r2, =gUnknown_02020630
	ldr r0, =gUnknown_0203CD78
	ldr r0, [r0]
	ldr r7, [sp, 0x3C]
	adds r0, r7
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	adds r0, 0x3E
	ldrb r1, [r0]
	movs r2, 0x4
	orrs r1, r2
	strb r1, [r0]
_08193334:
	ldr r0, [sp, 0x2C]
	cmp r0, 0
	beq _0819335A
	ldr r2, =gUnknown_02020630
	ldr r0, =gUnknown_0203CD78
	ldr r0, [r0]
	ldr r1, [sp, 0x3C]
	adds r0, r1
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r2, [r0, 0x5]
	movs r1, 0xF
	ands r1, r2
	movs r2, 0x30
	orrs r1, r2
	strb r1, [r0, 0x5]
_0819335A:
	ldr r2, [sp, 0x4C]
	ldr r1, [r2, 0x4]
	ldr r0, =0x000003ff
	cmp r1, r0
	bne _08193388
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldrb r0, [r0, 0x8]
	bl sub_806F000
	lsls r0, 16
	lsrs r0, 16
	b _081933B0
	.pool
_08193388:
	ldr r0, =0x000003fe
	cmp r1, r0
	bne _081933A4
	bl sub_8195910
	lsls r0, 24
	lsrs r0, 24
	ldr r2, [sp, 0x7C]
	ldr r3, [sp, 0x78]
	ldr r1, [sp, 0x74]
	str r1, [sp]
	b _081933B8
	.pool
_081933A4:
	lsls r0, r1, 16
	lsrs r0, 16
	bl sub_8162AA0
	lsls r0, 24
	lsrs r0, 24
_081933B0:
	ldr r2, [sp, 0x7C]
	ldr r3, [sp, 0x78]
	ldr r7, [sp, 0x74]
	str r7, [sp]
_081933B8:
	ldr r1, =0x0000ffff
	str r1, [sp, 0x4]
	movs r1, 0x1
	bl sub_818D8AC
	ldr r1, =gUnknown_0203CD78
	ldr r1, [r1]
	add r1, r9
	strb r0, [r1]
	movs r0, 0x1E
	ldr r1, [sp, 0x34]
	ands r0, r1
	cmp r0, 0
	beq _081933F0
	ldr r2, =gUnknown_02020630
	ldr r0, =gUnknown_0203CD78
	ldr r0, [r0]
	add r0, r9
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	adds r0, 0x3E
	ldrb r1, [r0]
	movs r2, 0x4
	orrs r1, r2
	strb r1, [r0]
_081933F0:
	ldr r2, [sp, 0x50]
	ldr r0, [r2, 0x4]
	cmp r0, 0
	beq _08193416
	ldr r2, =gUnknown_02020630
	ldr r0, =gUnknown_0203CD78
	ldr r0, [r0]
	add r0, r9
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r2, [r0, 0x5]
	movs r1, 0xF
	ands r1, r2
	movs r2, 0x30
	orrs r1, r2
	strb r1, [r0, 0x5]
_08193416:
	movs r5, 0
	ldr r3, [sp, 0x38]
	lsls r3, 2
	str r3, [sp, 0x70]
	mov r8, r5
	ldr r6, =gUnknown_0203CD78
	ldr r7, =gUnknown_02020630
	ldr r4, [sp, 0x54]
	mov r9, r5
	movs r0, 0x1
	mov r10, r0
_0819342C:
	ldr r1, [sp, 0x24]
	ldr r0, =0x000003ff
	cmp r1, r0
	bne _08193464
	ldr r0, =gSaveBlock2Ptr
	ldr r2, [r0]
	ldr r1, [sp, 0x1C]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 1
	add r0, r9
	ldr r1, =0x00000d64
	adds r2, r1
	adds r2, r0
	ldrh r0, [r2]
	b _081934B0
	.pool
_08193464:
	ldr r0, =0x000003fe
	cmp r1, r0
	bne _08193490
	ldr r0, =gSaveBlock2Ptr
	ldr r2, [r0]
	ldr r1, [sp, 0x1C]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 1
	add r0, r9
	ldr r1, =0x00000d64
	adds r2, r1
	adds r2, r0
	ldrh r0, [r2]
	b _081934B0
	.pool
_08193490:
	ldr r0, =gSaveBlock2Ptr
	ldr r2, [r0]
	ldr r1, [sp, 0x1C]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 1
	add r0, r9
	ldr r1, =0x00000d64
	adds r2, r1
	adds r2, r0
	ldrh r1, [r2]
	ldr r0, =gUnknown_0203BC8C
	ldr r0, [r0]
	lsls r1, 4
	adds r1, r0
	ldrh r0, [r1]
_081934B0:
	ldr r1, =gUnknown_0860D3A8
	adds r1, r5, r1
	ldrb r2, [r1]
	ldr r3, [sp, 0x40]
	orrs r2, r3
	ldr r1, =gUnknown_0860D3AB
	adds r1, r5, r1
	ldrb r3, [r1]
	ldr r1, [sp, 0x44]
	adds r3, r1
	mov r1, r8
	str r1, [sp]
	str r1, [sp, 0x4]
	mov r1, r10
	str r1, [sp, 0x8]
	ldr r1, =sub_8190938
	bl sub_80D2CC4
	ldr r1, [r6]
	adds r1, r4
	strb r0, [r1]
	ldr r0, [r6]
	adds r0, r4
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r7
	ldrb r1, [r0, 0x5]
	movs r3, 0xD
	negs r3, r3
	adds r2, r3, 0
	ands r1, r2
	strb r1, [r0, 0x5]
	movs r0, 0x1E
	ldr r1, [sp, 0x34]
	ands r0, r1
	cmp r0, 0
	beq _08193516
	ldr r0, [r6]
	adds r0, r4
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r7
	adds r0, 0x3E
	ldrb r1, [r0]
	movs r2, 0x4
	orrs r1, r2
	strb r1, [r0]
_08193516:
	ldr r0, [sp, 0x2C]
	cmp r0, 0
	beq _08193548
	ldr r0, [r6]
	adds r0, r4
	ldrb r0, [r0]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r7
	ldrb r2, [r1, 0x5]
	movs r0, 0xF
	ands r0, r2
	movs r2, 0x30
	orrs r0, r2
	strb r0, [r1, 0x5]
	ldr r0, [r6]
	adds r0, r4
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r7
	mov r2, r10
	strh r2, [r0, 0x34]
_08193548:
	adds r4, 0x1
	movs r3, 0x2
	add r9, r3
	adds r5, 0x1
	cmp r5, 0x2
	bgt _08193556
	b _0819342C
_08193556:
	movs r5, 0
	ldr r6, =gUnknown_0203CD78
	ldr r7, =gUnknown_02020630
	mov r8, r7
	ldr r4, [sp, 0x5C]
	mov r9, r5
	movs r7, 0
_08193564:
	ldr r0, [sp, 0x4C]
	ldr r1, [r0, 0x4]
	ldr r0, =0x000003ff
	cmp r1, r0
	bne _081935AC
	ldr r0, =gSaveBlock2Ptr
	ldr r2, [r0]
	ldr r3, [sp, 0x48]
	ldr r1, [r3, 0x4]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 1
	add r0, r9
	ldr r1, =0x00000d64
	adds r2, r1
	adds r2, r0
	ldrh r0, [r2]
	b _081935FA
	.pool
_081935AC:
	ldr r0, =0x000003fe
	cmp r1, r0
	bne _081935D8
	ldr r0, =gSaveBlock2Ptr
	ldr r2, [r0]
	ldr r0, [sp, 0x48]
	ldr r1, [r0, 0x4]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 1
	add r0, r9
	ldr r1, =0x00000d64
	adds r2, r1
	adds r2, r0
	ldrh r0, [r2]
	b _081935FA
	.pool
_081935D8:
	ldr r0, =gSaveBlock2Ptr
	ldr r2, [r0]
	ldr r0, [sp, 0x48]
	ldr r1, [r0, 0x4]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 1
	add r0, r9
	ldr r1, =0x00000d64
	adds r2, r1
	adds r2, r0
	ldrh r1, [r2]
	ldr r0, =gUnknown_0203BC8C
	ldr r0, [r0]
	lsls r1, 4
	adds r1, r0
	ldrh r0, [r1]
_081935FA:
	ldr r1, =gUnknown_0860D3AE
	adds r1, r5, r1
	ldrb r2, [r1]
	ldr r3, [sp, 0x40]
	orrs r2, r3
	ldr r1, =gUnknown_0860D3B1
	adds r1, r5, r1
	ldrb r3, [r1]
	ldr r1, [sp, 0x44]
	adds r3, r1
	str r7, [sp]
	str r7, [sp, 0x4]
	movs r1, 0x1
	str r1, [sp, 0x8]
	ldr r1, =sub_8190938
	bl sub_80D2CC4
	ldr r1, [r6]
	adds r1, r4
	strb r0, [r1]
	ldr r0, [r6]
	adds r0, r4
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	add r0, r8
	ldrb r1, [r0, 0x5]
	movs r3, 0xD
	negs r3, r3
	adds r2, r3, 0
	ands r1, r2
	strb r1, [r0, 0x5]
	movs r0, 0x1E
	ldr r1, [sp, 0x34]
	ands r0, r1
	cmp r0, 0
	beq _0819365E
	ldr r0, [r6]
	adds r0, r4
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	add r0, r8
	adds r0, 0x3E
	ldrb r1, [r0]
	movs r2, 0x4
	orrs r1, r2
	strb r1, [r0]
_0819365E:
	ldr r2, [sp, 0x50]
	ldr r0, [r2, 0x4]
	cmp r0, 0
	beq _08193692
	ldr r0, [r6]
	adds r0, r4
	ldrb r0, [r0]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	add r1, r8
	ldrb r2, [r1, 0x5]
	movs r0, 0xF
	ands r0, r2
	movs r2, 0x30
	orrs r0, r2
	strb r0, [r1, 0x5]
	ldr r0, [r6]
	adds r0, r4
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	add r0, r8
	movs r1, 0x1
	strh r1, [r0, 0x34]
_08193692:
	adds r4, 0x1
	movs r3, 0x2
	add r9, r3
	adds r5, 0x1
	cmp r5, 0x2
	bgt _081936A0
	b _08193564
_081936A0:
	add r0, sp, 0xC
	movs r5, 0
	strb r5, [r0, 0x6]
	adds r1, r0, 0
	movs r0, 0x2
	strb r0, [r1, 0x7]
	adds r0, r1, 0
	ldrb r0, [r0, 0x6]
	strb r0, [r1, 0x8]
	adds r0, r1, 0
	ldrb r0, [r0, 0x7]
	strb r0, [r1, 0x9]
	adds r0, r1, 0
	strb r5, [r0, 0xA]
	strb r5, [r0, 0xB]
	adds r3, r0, 0
	ldrb r2, [r3, 0xC]
	movs r1, 0x10
	negs r1, r1
	adds r0, r1, 0
	ands r0, r2
	strb r0, [r3, 0xC]
	adds r2, r3, 0
	movs r0, 0xE0
	strb r0, [r2, 0xC]
	ldrb r0, [r2, 0xD]
	ands r1, r0
	strb r1, [r2, 0xD]
	adds r1, r2, 0
	movs r0, 0xD0
	strb r0, [r1, 0xD]
	ldr r4, =gStringVar4
	ldr r0, =gUnknown_0860D38C
	ldr r7, [sp, 0x70]
	adds r0, r7, r0
	ldr r1, [r0]
	adds r0, r4, 0
	bl StringExpandPlaceholders
	str r4, [sp, 0xC]
	add r0, sp, 0xC
	add r1, sp, 0x6C
	ldrb r1, [r1]
	strb r1, [r0, 0x4]
	adds r1, r0, 0
	movs r0, 0x1
	strb r0, [r1, 0x5]
	ldr r4, [sp, 0x6C]
	adds r0, r4, 0
	bl PutWindowTilemap
	adds r0, r4, 0
	movs r1, 0x3
	bl CopyWindowToVram
	add r0, sp, 0xC
	strb r5, [r0, 0x8]
	adds r1, r0, 0
	strb r5, [r0, 0x7]
	strb r5, [r1, 0x9]
	movs r1, 0
	movs r2, 0
	bl AddTextPrinter
	ldr r1, [sp, 0x24]
	ldr r0, =0x000003ff
	cmp r1, r0
	bne _0819375C
	ldr r0, =gStringVar1
	ldr r1, =gSaveBlock2Ptr
	ldr r1, [r1]
	bl StringCopy
	b _0819377E
	.pool
_0819375C:
	ldr r0, =0x000003fe
	cmp r1, r0
	bne _08193774
	ldr r0, =gStringVar1
	bl sub_8195938
	b _0819377E
	.pool
_08193774:
	ldr r0, =gStringVar1
	lsls r1, 16
	lsrs r1, 16
	bl sub_8195898
_0819377E:
	add r0, sp, 0xC
	movs r4, 0x2
	strb r4, [r0, 0x5]
	strb r4, [r0, 0xA]
	ldr r5, =gStringVar1
	str r5, [sp, 0xC]
	add r2, sp, 0x64
	ldrb r2, [r2]
	strb r2, [r0, 0x4]
	ldrb r0, [r0, 0x5]
	ldr r1, [sp, 0xC]
	add r2, sp, 0xC
	ldrb r3, [r2, 0xA]
	movs r2, 0x40
	bl GetStringCenterAlignXOffsetWithLetterSpacing
	add r1, sp, 0xC
	strb r0, [r1, 0x8]
	adds r0, r1, 0
	strb r4, [r0, 0x7]
	strb r4, [r1, 0x9]
	ldr r4, [sp, 0x64]
	adds r0, r4, 0
	bl PutWindowTilemap
	adds r0, r4, 0
	movs r1, 0x3
	bl CopyWindowToVram
	add r0, sp, 0xC
	movs r1, 0
	movs r2, 0
	bl AddTextPrinter
	ldr r3, [sp, 0x4C]
	ldr r1, [r3, 0x4]
	ldr r0, =0x000003ff
	cmp r1, r0
	bne _081937E4
	ldr r0, =gSaveBlock2Ptr
	ldr r1, [r0]
	adds r0, r5, 0
	bl StringCopy
	b _08193802
	.pool
_081937E4:
	ldr r0, =0x000003fe
	cmp r1, r0
	bne _081937F8
	adds r0, r5, 0
	bl sub_8195938
	b _08193802
	.pool
_081937F8:
	lsls r1, 16
	lsrs r1, 16
	adds r0, r5, 0
	bl sub_8195898
_08193802:
	ldr r0, =gStringVar1
	str r0, [sp, 0xC]
	add r0, sp, 0xC
	movs r6, 0
	add r7, sp, 0x68
	ldrb r7, [r7]
	strb r7, [r0, 0x4]
	ldrb r0, [r0, 0x5]
	ldr r1, [sp, 0xC]
	add r2, sp, 0xC
	ldrb r3, [r2, 0xA]
	movs r2, 0x40
	bl GetStringCenterAlignXOffsetWithLetterSpacing
	add r1, sp, 0xC
	strb r0, [r1, 0x8]
	adds r0, r1, 0
	movs r5, 0x2
	strb r5, [r0, 0x7]
	strb r5, [r1, 0x9]
	ldr r4, [sp, 0x68]
	adds r0, r4, 0
	bl PutWindowTilemap
	adds r0, r4, 0
	movs r1, 0x3
	bl CopyWindowToVram
	add r0, sp, 0xC
	movs r1, 0
	movs r2, 0
	bl AddTextPrinter
	add r0, sp, 0xC
	strb r6, [r0, 0xA]
	ldr r0, =gUnknown_0860D350
	ldr r1, [sp, 0x58]
	adds r0, r1, r0
	ldr r0, [r0]
	str r0, [sp, 0xC]
	add r0, sp, 0xC
	add r2, sp, 0x60
	ldrb r2, [r2]
	strb r2, [r0, 0x4]
	ldrb r0, [r0, 0x5]
	ldr r1, [sp, 0xC]
	add r2, sp, 0xC
	ldrb r3, [r2, 0xA]
	movs r2, 0xA0
	bl GetStringCenterAlignXOffsetWithLetterSpacing
	add r1, sp, 0xC
	strb r0, [r1, 0x8]
	adds r0, r1, 0
	strb r5, [r0, 0x7]
	strb r5, [r1, 0x9]
	ldr r4, [sp, 0x60]
	adds r0, r4, 0
	bl PutWindowTilemap
	adds r0, r4, 0
	movs r1, 0x3
	bl CopyWindowToVram
	add r0, sp, 0xC
	movs r1, 0
	movs r2, 0
	bl AddTextPrinter
	add sp, 0x80
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819314C

	thumb_func_start sub_81938A4
sub_81938A4: @ 81938A4
	push {lr}
	ldr r0, =sub_8194220
	movs r1, 0
	bl CreateTask
	lsls r0, 24
	lsrs r0, 24
	ldr r2, =gTasks
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	adds r1, r2
	movs r2, 0
	strh r2, [r1, 0x8]
	strh r2, [r1, 0xA]
	movs r0, 0x2
	strh r0, [r1, 0xC]
	strh r2, [r1, 0x10]
	ldr r0, =sub_8194B54
	bl SetMainCallback2
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81938A4

	thumb_func_start sub_81938E0
sub_81938E0: @ 81938E0
	push {r4,lr}
	bl sub_8194D48
	ldr r4, =gSaveBlock2Ptr
	ldr r2, [r4]
	ldr r1, =0x00000d0a
	adds r0, r2, r1
	ldrb r1, [r0]
	subs r1, 0x1
	ldr r0, =0x00000ca9
	adds r2, r0
	movs r0, 0x3
	ands r1, r0
	ldrb r3, [r2]
	movs r0, 0x4
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [r4]
	ldr r1, =0x00000cb2
	adds r0, r1
	movs r4, 0
	movs r1, 0x3
	strh r1, [r0]
	ldr r0, =sub_8194220
	movs r1, 0
	bl CreateTask
	lsls r0, 24
	lsrs r0, 24
	ldr r2, =gTasks
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	adds r1, r2
	strh r4, [r1, 0x8]
	strh r4, [r1, 0xA]
	movs r0, 0x2
	strh r0, [r1, 0xC]
	movs r0, 0x1
	strh r0, [r1, 0x10]
	ldr r0, =sub_8194B54
	bl SetMainCallback2
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81938E0

	thumb_func_start sub_819395C
sub_819395C: @ 819395C
	push {r4-r7,lr}
	sub sp, 0x4
	lsls r0, 24
	lsrs r5, r0, 24
	ldr r1, =gTasks
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	adds r0, r1
	movs r2, 0xA
	ldrsh r7, [r0, r2]
	movs r2, 0x8
	ldrsh r0, [r0, r2]
	adds r2, r1, 0
	cmp r0, 0x7
	bls _0819397E
	b _08193BC2
_0819397E:
	lsls r0, 2
	ldr r1, =_08193990
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_08193990:
	.4byte _081939B0
	.4byte _08193A00
	.4byte _08193A20
	.4byte _08193AA8
	.4byte _08193BC2
	.4byte _08193B20
	.4byte _08193BC2
	.4byte _08193B84
_081939B0:
	ldr r0, =gPaletteFade
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	lsls r0, 24
	lsrs r1, r0, 24
	cmp r1, 0
	beq _081939C2
	b _08193BC2
_081939C2:
	movs r0, 0x1
	negs r0, r0
	str r1, [sp]
	movs r1, 0
	movs r2, 0x10
	movs r3, 0
	bl BeginNormalPaletteFade
	ldr r1, =gTasks
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	adds r0, r1
	movs r1, 0x1
	strh r1, [r0, 0x8]
	lsls r0, r7, 4
	adds r0, r7
	lsls r0, 2
	ldr r1, =gUnknown_02020630
	adds r0, r1
	movs r1, 0x1
	bl StartObjectImageAnim
	b _08193BC2
	.pool
_08193A00:
	ldr r0, =gPaletteFade
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _08193A0E
	b _08193BC2
_08193A0E:
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	adds r0, r2
	movs r1, 0x2
	strh r1, [r0, 0x8]
	b _08193BC2
	.pool
_08193A20:
	adds r0, r5, 0
	bl sub_8193BDC
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _08193A30
	b _08193BC2
_08193A30:
	cmp r0, 0x1
	ble _08193A3C
	cmp r0, 0x2
	beq _08193A60
	cmp r0, 0x3
	beq _08193A84
_08193A3C:
	movs r0, 0x1
	negs r0, r0
	movs r1, 0
	str r1, [sp]
	movs r2, 0
	movs r3, 0x10
	bl BeginNormalPaletteFade
	ldr r1, =gTasks
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	adds r0, r1
	movs r1, 0x7
	strh r1, [r0, 0x8]
	b _08193BC2
	.pool
_08193A60:
	movs r0, 0x1
	negs r0, r0
	movs r1, 0
	str r1, [sp]
	movs r2, 0
	movs r3, 0x10
	bl BeginNormalPaletteFade
	ldr r1, =gTasks
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	adds r0, r1
	movs r1, 0x3
	strh r1, [r0, 0x8]
	b _08193BC2
	.pool
_08193A84:
	movs r0, 0x1
	negs r0, r0
	movs r1, 0
	str r1, [sp]
	movs r2, 0
	movs r3, 0x10
	bl BeginNormalPaletteFade
	ldr r1, =gTasks
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	adds r0, r1
	movs r1, 0x5
	strh r1, [r0, 0x8]
	b _08193BC2
	.pool
_08193AA8:
	ldr r0, =gPaletteFade
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	lsls r0, 24
	lsrs r6, r0, 24
	cmp r6, 0
	beq _08193ABA
	b _08193BC2
_08193ABA:
	bl FreeAllWindowBuffers
	bl remove_some_task
	ldr r4, =gUnknown_0203CD7C
	ldr r0, [r4]
	bl Free
	str r6, [r4]
	ldr r0, =sub_8190400
	movs r1, 0
	bl CreateTask
	lsls r0, 24
	lsrs r3, r0, 24
	ldr r2, =gTasks
	lsls r1, r3, 2
	adds r1, r3
	lsls r1, 3
	adds r1, r2
	movs r3, 0
	strh r6, [r1, 0x8]
	ldr r0, =gUnknown_0860D080
	adds r0, r7, r0
	ldrb r0, [r0]
	strh r0, [r1, 0xA]
	movs r0, 0x1
	strh r0, [r1, 0xC]
	strh r5, [r1, 0xE]
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	adds r0, r2
	movs r1, 0x4
	strh r1, [r0, 0x8]
	ldr r0, =gUnknown_0203CD78
	ldr r0, [r0]
	strb r3, [r0, 0x10]
	b _08193BC2
	.pool
_08193B20:
	ldr r0, =gPaletteFade
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	lsls r0, 24
	lsrs r6, r0, 24
	cmp r6, 0
	bne _08193BC2
	bl FreeAllWindowBuffers
	bl remove_some_task
	ldr r4, =gUnknown_0203CD7C
	ldr r0, [r4]
	bl Free
	str r6, [r4]
	ldr r0, =sub_8190400
	movs r1, 0
	bl CreateTask
	lsls r0, 24
	lsrs r3, r0, 24
	ldr r2, =gTasks
	lsls r0, r3, 2
	adds r0, r3
	lsls r0, 3
	adds r0, r2
	strh r6, [r0, 0x8]
	adds r1, r7, 0
	subs r1, 0x10
	strh r1, [r0, 0xA]
	movs r1, 0x2
	strh r1, [r0, 0xC]
	strh r5, [r0, 0xE]
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	adds r0, r2
	movs r1, 0x6
	strh r1, [r0, 0x8]
	b _08193BC2
	.pool
_08193B84:
	ldr r0, =gPaletteFade
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	lsls r0, 24
	lsrs r6, r0, 24
	cmp r6, 0
	bne _08193BC2
	bl FreeAllWindowBuffers
	bl remove_some_task
	ldr r4, =gUnknown_0203CD7C
	ldr r0, [r4]
	bl Free
	str r6, [r4]
	ldr r0, =c2_exit_to_overworld_1_continue_scripts_restart_music
	bl SetMainCallback2
	ldr r1, =gTasks
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	adds r0, r1
	ldrb r0, [r0, 0x16]
	bl DestroyTask
	adds r0, r5, 0
	bl DestroyTask
_08193BC2:
	add sp, 0x4
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819395C

	thumb_func_start sub_8193BDC
sub_8193BDC: @ 8193BDC
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	lsls r0, 24
	lsrs r7, r0, 24
	movs r0, 0x1
	mov r9, r0
	movs r1, 0x4
	mov r8, r1
	ldr r1, =gTasks
	lsls r0, r7, 2
	adds r0, r7
	lsls r0, 3
	adds r0, r1
	movs r1, 0xA
	ldrsh r5, [r0, r1]
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r1, =0x00000cb2
	adds r0, r1
	ldrh r6, [r0]
	ldr r0, =gMain
	ldrh r1, [r0, 0x2E]
	adds r2, r1, 0
	adds r3, r0, 0
	cmp r2, 0x2
	beq _08193C20
	mov r0, r9
	ands r0, r1
	cmp r0, 0
	beq _08193C58
	cmp r5, 0x1F
	bne _08193C3C
_08193C20:
	movs r0, 0x5
	bl audio_play
	movs r0, 0
	mov r9, r0
	b _08193CDE
	.pool
_08193C3C:
	cmp r5, 0xF
	bgt _08193C4C
	movs r0, 0x5
	bl audio_play
	movs r1, 0x2
	mov r9, r1
	b _08193CDE
_08193C4C:
	movs r0, 0x5
	bl audio_play
	movs r0, 0x3
	mov r9, r0
	b _08193CDE
_08193C58:
	cmp r2, 0x40
	bne _08193C78
	ldr r0, =gUnknown_0860CBF1
	lsls r1, r5, 2
	adds r1, r5
	adds r1, r6
	lsls r1, 2
	adds r1, r0
	ldrb r0, [r1]
	cmp r0, 0xFF
	beq _08193C78
	movs r1, 0
	mov r8, r1
	b _08193CDE
	.pool
_08193C78:
	ldrh r0, [r3, 0x2E]
	cmp r0, 0x80
	bne _08193C9C
	ldr r0, =gUnknown_0860CBF1
	lsls r1, r5, 2
	adds r1, r5
	adds r1, r6
	lsls r1, 2
	adds r0, 0x1
	adds r1, r0
	ldrb r0, [r1]
	cmp r0, 0xFF
	beq _08193C9C
	movs r0, 0x1
	b _08193CDC
	.pool
_08193C9C:
	ldrh r0, [r3, 0x2E]
	cmp r0, 0x20
	bne _08193CC0
	ldr r0, =gUnknown_0860CBF1
	lsls r1, r5, 2
	adds r1, r5
	adds r1, r6
	lsls r1, 2
	adds r0, 0x2
	adds r1, r0
	ldrb r0, [r1]
	cmp r0, 0xFF
	beq _08193CC0
	movs r1, 0x2
	mov r8, r1
	b _08193CDE
	.pool
_08193CC0:
	ldrh r0, [r3, 0x2E]
	cmp r0, 0x10
	bne _08193CDE
	ldr r0, =gUnknown_0860CBF1
	lsls r1, r5, 2
	adds r1, r5
	adds r1, r6
	lsls r1, 2
	adds r0, 0x3
	adds r1, r0
	ldrb r0, [r1]
	cmp r0, 0xFF
	beq _08193CDE
	movs r0, 0x3
_08193CDC:
	mov r8, r0
_08193CDE:
	mov r1, r8
	cmp r1, 0x4
	beq _08193D26
	movs r0, 0x5
	bl audio_play
	lsls r0, r5, 4
	adds r0, r5
	lsls r0, 2
	ldr r4, =gUnknown_02020630
	adds r0, r4
	movs r1, 0
	bl StartObjectImageAnim
	ldr r2, =gUnknown_0860CBF1
	lsls r1, r6, 2
	add r1, r8
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 2
	adds r1, r0
	adds r1, r2
	ldrb r5, [r1]
	lsls r0, r5, 4
	adds r0, r5
	lsls r0, 2
	adds r0, r4
	movs r1, 0x1
	bl StartObjectImageAnim
	ldr r1, =gTasks
	lsls r0, r7, 2
	adds r0, r7
	lsls r0, 3
	adds r0, r1
	strh r5, [r0, 0xA]
_08193D26:
	mov r0, r9
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_8193BDC

	thumb_func_start sub_8193D40
sub_8193D40: @ 8193D40
	push {lr}
	ldr r0, =sub_8194220
	movs r1, 0
	bl CreateTask
	lsls r0, 24
	lsrs r0, 24
	ldr r2, =gTasks
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	adds r1, r2
	movs r2, 0
	strh r2, [r1, 0x8]
	movs r0, 0x1
	strh r0, [r1, 0xA]
	movs r0, 0x2
	strh r0, [r1, 0xC]
	strh r2, [r1, 0x10]
	ldr r0, =sub_8194B54
	bl SetMainCallback2
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8193D40

	thumb_func_start sub_8193D7C
sub_8193D7C: @ 8193D7C
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	ldr r7, =gUnknown_020375E2
	ldrh r0, [r7]
	cmp r0, 0x1
	bne _08193E10
	ldr r5, =gUnknown_02038BCA
	ldrh r0, [r5]
	bl sub_8195358
	ldr r4, =gSaveBlock2Ptr
	ldr r2, [r4]
	lsls r0, 2
	adds r2, r0
	ldr r6, =0x00000d25
	adds r2, r6
	ldrb r0, [r2]
	movs r1, 0x4
	orrs r0, r1
	strb r0, [r2]
	ldrh r0, [r5]
	bl sub_8195358
	ldr r1, [r4]
	lsls r0, 2
	adds r0, r1, r0
	ldr r2, =0x00000cb2
	mov r8, r2
	add r1, r8
	adds r0, r6
	movs r3, 0x3
	ldrb r2, [r1]
	ands r2, r3
	lsls r2, 3
	ldrb r3, [r0]
	movs r1, 0x19
	negs r1, r1
	ands r1, r3
	orrs r1, r2
	strb r1, [r0]
	ldrh r0, [r5]
	bl sub_8195358
	ldr r2, [r4]
	lsls r0, 1
	movs r3, 0xEC
	lsls r3, 4
	adds r1, r2, r3
	adds r1, r0
	ldr r0, =gUnknown_03005D10
	ldrh r0, [r0, 0x22]
	strh r0, [r1]
	add r2, r8
	ldrh r0, [r2]
	cmp r0, 0x2
	bhi _08193EAE
	lsls r0, 24
	lsrs r0, 24
	bl sub_8195438
	b _08193EAE
	.pool
_08193E10:
	ldr r5, =0x000003ff
	adds r0, r5, 0
	bl sub_8195358
	ldr r4, =gSaveBlock2Ptr
	ldr r2, [r4]
	lsls r0, 2
	adds r2, r0
	ldr r6, =0x00000d25
	adds r2, r6
	ldrb r0, [r2]
	movs r1, 0x4
	orrs r0, r1
	strb r0, [r2]
	adds r0, r5, 0
	bl sub_8195358
	ldr r1, [r4]
	lsls r0, 2
	adds r0, r1, r0
	ldr r2, =0x00000cb2
	adds r1, r2
	adds r0, r6
	movs r3, 0x3
	ldrb r2, [r1]
	ands r2, r3
	lsls r2, 3
	ldrb r3, [r0]
	movs r1, 0x19
	negs r1, r1
	ands r1, r3
	orrs r1, r2
	strb r1, [r0]
	adds r0, r5, 0
	bl sub_8195358
	ldr r1, [r4]
	lsls r0, 1
	movs r3, 0xEC
	lsls r3, 4
	adds r1, r3
	adds r1, r0
	ldr r0, =gUnknown_03005D10
	ldrh r0, [r0, 0x24]
	strh r0, [r1]
	ldr r0, =gUnknown_0202433A
	ldrb r0, [r0]
	cmp r0, 0x9
	beq _08193E78
	ldrh r0, [r7]
	cmp r0, 0x9
	bne _08193E92
_08193E78:
	adds r0, r5, 0
	bl sub_8195358
	ldr r2, [r4]
	lsls r0, 2
	adds r2, r0
	adds r2, r6
	ldrb r1, [r2]
	movs r0, 0x1F
	ands r0, r1
	movs r1, 0x20
	orrs r0, r1
	strb r0, [r2]
_08193E92:
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r1, =0x00000cb2
	adds r0, r1
	ldrh r4, [r0]
	cmp r4, 0x3
	bgt _08193EAE
_08193EA0:
	lsls r0, r4, 24
	lsrs r0, 24
	bl sub_8195438
	adds r4, 0x1
	cmp r4, 0x3
	ble _08193EA0
_08193EAE:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8193D7C

	thumb_func_start sub_8193ED0
sub_8193ED0: @ 8193ED0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x84
	str r0, [sp, 0x48]
	str r1, [sp, 0x4C]
	lsls r4, r2, 24
	lsrs r4, 24
	movs r0, 0
	str r0, [sp, 0x54]
	movs r1, 0
	str r1, [sp, 0x58]
	bl sub_8165C40
	movs r2, 0
	str r2, [sp, 0x50]
	add r3, sp, 0x30
	mov r10, r3
	ldr r5, [sp, 0x4C]
	lsls r5, 1
	str r5, [sp, 0x70]
	subs r4, 0x1
	str r4, [sp, 0x78]
_08193F02:
	movs r0, 0
	mov r9, r0
	ldr r1, [sp, 0x50]
	lsls r1, 2
	str r1, [sp, 0x74]
	ldr r2, [sp, 0x48]
	lsls r2, 2
	str r2, [sp, 0x6C]
	ldr r3, [sp, 0x50]
	adds r3, 0x1
	str r3, [sp, 0x60]
_08193F18:
	ldr r4, [sp, 0x74]
	add r4, r9
	lsls r0, r4, 2
	mov r5, sp
	adds r1, r5, r0
	movs r0, 0
	str r0, [r1]
	ldr r0, =gSaveBlock2Ptr
	ldr r3, [r0]
	ldr r1, [sp, 0x6C]
	adds r0, r3, r1
	ldr r2, =0x00000d24
	adds r0, r2
	ldrh r0, [r0]
	lsls r0, 22
	ldr r1, =0xff800000
	cmp r0, r1
	bne _08193F60
	ldr r3, [sp, 0x50]
	lsls r0, r3, 24
	mov r5, r9
	lsls r1, r5, 24
	lsrs r1, 24
	lsrs r0, 24
	bl sub_81A5060
	lsls r1, r4, 1
	add r1, r10
	strh r0, [r1]
	b _08193F8C
	.pool
_08193F60:
	lsls r2, r4, 1
	add r2, r10
	ldr r1, [sp, 0x48]
	lsls r0, r1, 1
	adds r0, r1
	ldr r4, [sp, 0x50]
	adds r0, r4
	lsls r0, 1
	ldr r5, =0x00000d64
	adds r1, r3, r5
	adds r1, r0
	ldrh r0, [r1]
	ldr r1, =gUnknown_0203BC8C
	ldr r1, [r1]
	lsls r0, 4
	adds r0, r1
	mov r3, r9
	lsls r1, r3, 1
	adds r0, 0x2
	adds r0, r1
	ldrh r0, [r0]
	strh r0, [r2]
_08193F8C:
	ldr r0, =gBattleMoves
	ldr r1, [sp, 0x74]
	add r1, r9
	lsls r1, 1
	add r1, r10
	ldrh r2, [r1]
	lsls r1, r2, 1
	adds r1, r2
	lsls r1, 2
	adds r1, r0
	ldrb r6, [r1, 0x1]
	cmp r6, 0
	bne _08193FB8
	movs r6, 0x28
	b _08193FD0
	.pool
_08193FB8:
	cmp r6, 0x1
	bne _08193FC0
	movs r6, 0x3C
	b _08193FD0
_08193FC0:
	adds r1, r2, 0
	cmp r1, 0x78
	beq _08193FCA
	cmp r1, 0x99
	bne _08193FD0
_08193FCA:
	lsrs r0, r6, 31
	adds r0, r6, r0
	asrs r6, r0, 1
_08193FD0:
	movs r1, 0
	mov r4, r9
	adds r4, 0x1
	str r4, [sp, 0x64]
	ldr r5, [sp, 0x70]
	ldr r2, [sp, 0x4C]
	adds r0, r5, r2
	lsls r0, 1
	str r0, [sp, 0x5C]
_08193FE2:
	lsls r7, r1, 1
	adds r1, 0x1
	str r1, [sp, 0x68]
	ldr r3, [sp, 0x5C]
	adds r3, r7
	mov r8, r3
_08193FEE:
	bl Random
	adds r4, r0, 0
	bl Random
	lsls r4, 16
	lsrs r5, r4, 16
	lsls r0, 16
	orrs r5, r0
	ldr r2, =gSaveBlock2Ptr
	ldr r0, [r2]
	ldr r4, =0x00000d64
	adds r0, r4
	add r0, r8
	ldrh r4, [r0]
	ldr r3, =gUnknown_0203BC8C
	ldr r0, [r3]
	lsls r4, 4
	adds r4, r0
	adds r0, r5, 0
	str r2, [sp, 0x7C]
	str r3, [sp, 0x80]
	bl GetNatureFromPersonality
	ldrb r1, [r4, 0xC]
	lsls r0, 24
	lsrs r0, 24
	ldr r2, [sp, 0x7C]
	ldr r3, [sp, 0x80]
	cmp r1, r0
	bne _08193FEE
	ldr r0, [r2]
	ldr r2, [sp, 0x5C]
	adds r1, r7, r2
	ldr r4, =0x00000d64
	adds r0, r4
	adds r0, r1
	ldrh r0, [r0]
	ldr r1, [r3]
	lsls r0, 4
	adds r0, r1
	ldrh r1, [r0]
	movs r0, 0x1
	ands r5, r0
	cmp r5, 0
	beq _08194068
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	ldr r5, =gBaseStats
	adds r0, r5
	ldrb r2, [r0, 0x17]
	b _08194074
	.pool
_08194068:
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	ldr r2, =gBaseStats
	adds r0, r2
	ldrb r2, [r0, 0x16]
_08194074:
	ldr r4, [sp, 0x74]
	add r4, r9
	lsls r0, r4, 1
	add r0, r10
	ldrh r0, [r0]
	bl ai_rate_move
	lsls r0, 24
	lsrs r5, r0, 24
	movs r0, 0x6
	ands r0, r5
	cmp r0, 0x6
	bne _0819409C
	lsls r0, r4, 2
	mov r3, sp
	adds r1, r3, r0
	b _081940D8
	.pool
_0819409C:
	movs r0, 0x29
	ands r0, r5
	cmp r0, 0
	bne _081940DE
	movs r0, 0x2
	ands r0, r5
	cmp r0, 0
	beq _081940B6
	lsls r0, r4, 2
	mov r5, sp
	adds r2, r5, r0
	lsls r1, r6, 1
	b _081940CA
_081940B6:
	movs r0, 0x4
	ands r5, r0
	cmp r5, 0
	beq _081940D2
	lsls r0, r4, 2
	mov r1, sp
	adds r2, r1, r0
	lsrs r1, r6, 31
	adds r1, r6, r1
	asrs r1, 1
_081940CA:
	ldr r0, [r2]
	adds r0, r1
	str r0, [r2]
	b _081940DE
_081940D2:
	lsls r0, r4, 2
	mov r2, sp
	adds r1, r2, r0
_081940D8:
	ldr r0, [r1]
	adds r0, r6
	str r0, [r1]
_081940DE:
	ldr r1, [sp, 0x68]
	cmp r1, 0x2
	bgt _081940E6
	b _08193FE2
_081940E6:
	ldr r2, [sp, 0x74]
	add r2, r9
	lsls r0, r2, 2
	add r0, sp
	ldr r1, [r0]
	ldr r3, [sp, 0x54]
	cmp r3, r1
	bge _08194104
	lsls r0, r2, 16
	lsrs r0, 16
	str r0, [sp, 0x58]
	lsls r0, r1, 16
	lsrs r0, 16
	str r0, [sp, 0x54]
	b _08194122
_08194104:
	ldr r4, [sp, 0x54]
	cmp r4, r1
	bne _08194122
	ldr r5, [sp, 0x58]
	lsls r0, r5, 1
	add r0, r10
	lsls r1, r2, 1
	add r1, r10
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bcs _08194122
	lsls r0, r2, 16
	lsrs r0, 16
	str r0, [sp, 0x58]
_08194122:
	ldr r0, [sp, 0x64]
	mov r9, r0
	cmp r0, 0x3
	bgt _0819412C
	b _08193F18
_0819412C:
	ldr r1, [sp, 0x60]
	str r1, [sp, 0x50]
	cmp r1, 0x2
	bgt _08194136
	b _08193F02
_08194136:
	ldr r2, [sp, 0x58]
	mov r9, r2
	b _08194182
_0819413C:
	movs r3, 0
	mov r9, r3
	movs r1, 0
	mov r4, r10
	mov r3, r10
	mov r2, sp
_08194148:
	ldr r0, [r2]
	ldr r5, [sp, 0x54]
	cmp r5, r0
	bge _0819415A
	mov r9, r1
	lsls r0, 16
	lsrs r0, 16
	str r0, [sp, 0x54]
	b _08194170
_0819415A:
	ldr r5, [sp, 0x54]
	cmp r5, r0
	bne _08194170
	mov r5, r9
	lsls r0, r5, 1
	adds r0, r4, r0
	ldrh r0, [r0]
	ldrh r5, [r3]
	cmp r0, r5
	bcs _08194170
	mov r9, r1
_08194170:
	adds r3, 0x2
	adds r2, 0x4
	adds r1, 0x1
	cmp r1, 0xB
	ble _08194148
	ldr r0, [sp, 0x50]
	ldr r1, [sp, 0x78]
	cmp r0, r1
	beq _081941F4
_08194182:
	movs r2, 0
	str r2, [sp, 0x50]
	mov r3, r9
	lsls r7, r3, 2
	ldr r4, [sp, 0x78]
	cmp r2, r4
	bge _081941CA
	lsls r0, r3, 1
	mov r5, r10
	adds r6, r5, r0
	ldr r0, [sp, 0x48]
	lsls r5, r0, 24
_0819419A:
	ldr r0, =gSaveBlock2Ptr
	ldr r4, [r0]
	ldr r2, [sp, 0x50]
	lsls r1, r2, 24
	lsrs r1, 24
	lsrs r0, r5, 24
	bl sub_81953E8
	lsls r0, 24
	lsrs r0, 23
	movs r3, 0xEC
	lsls r3, 4
	adds r4, r3
	adds r4, r0
	ldrh r0, [r4]
	ldrh r4, [r6]
	cmp r0, r4
	beq _081941CA
	ldr r0, [sp, 0x50]
	adds r0, 0x1
	str r0, [sp, 0x50]
	ldr r1, [sp, 0x78]
	cmp r0, r1
	blt _0819419A
_081941CA:
	ldr r2, [sp, 0x50]
	ldr r3, [sp, 0x78]
	cmp r2, r3
	beq _081941F4
	mov r4, sp
	adds r1, r4, r7
	movs r0, 0
	str r0, [r1]
	movs r5, 0
	str r5, [sp, 0x54]
	mov r9, r5
	mov r2, sp
	movs r1, 0xB
_081941E4:
	ldm r2!, {r0}
	add r9, r0
	subs r1, 0x1
	cmp r1, 0
	bge _081941E4
	mov r0, r9
	cmp r0, 0
	bne _0819413C
_081941F4:
	mov r1, r9
	lsls r0, r1, 2
	add r0, sp
	ldr r0, [r0]
	cmp r0, 0
	bne _08194204
	ldr r2, [sp, 0x58]
	mov r9, r2
_08194204:
	mov r3, r9
	lsls r0, r3, 1
	add r0, r10
	ldrh r0, [r0]
	add sp, 0x84
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_8193ED0

	thumb_func_start sub_8194220
sub_8194220: @ 8194220
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x28
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
	ldr r1, =gTasks
	lsls r0, 2
	add r0, r8
	lsls r0, 3
	adds r0, r1
	movs r2, 0xA
	ldrsh r1, [r0, r2]
	mov r10, r1
	movs r3, 0xC
	ldrsh r4, [r0, r3]
	movs r1, 0x8
	ldrsh r0, [r0, r1]
	cmp r0, 0x5
	bls _08194250
	b _081948C2
_08194250:
	lsls r0, 2
	ldr r1, =_08194264
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_08194264:
	.4byte _0819427C
	.4byte _0819431C
	.4byte _0819438C
	.4byte _0819447C
	.4byte _081944FC
	.4byte _081947C8
_0819427C:
	movs r0, 0
	bl SetHBlankCallback
	movs r0, 0
	bl SetVBlankCallback
	movs r0, 0x3
	bl EnableInterrupts
	movs r4, 0
	str r4, [sp, 0x14]
	add r0, sp, 0x14
	movs r1, 0xC0
	lsls r1, 19
	ldr r2, =0x05006000
	bl CpuSet
	movs r0, 0
	bl ResetBgsAndClearDma3BusyFlags
	ldr r1, =gUnknown_0860CE74
	movs r0, 0
	movs r2, 0x4
	bl InitBgsFromTemplates
	ldr r0, =gUnknown_0860CE94
	bl InitWindows
	bl DeactivateAllTextPrinters
	ldr r0, =gUnknown_02022E14
	strh r4, [r0]
	ldr r0, =gUnknown_02022E16
	strh r4, [r0]
	ldr r0, =gUnknown_02022E18
	strh r4, [r0]
	ldr r0, =gUnknown_02022E1A
	strh r4, [r0]
	movs r0, 0x2
	movs r1, 0
	movs r2, 0
	bl ChangeBgX
	movs r0, 0x2
	movs r1, 0
	movs r2, 0
	bl ChangeBgY
	movs r0, 0x3
	movs r1, 0
	movs r2, 0
	bl ChangeBgX
	movs r1, 0xB0
	lsls r1, 4
	movs r0, 0x3
	movs r2, 0
	bl ChangeBgY
	ldr r1, =gTasks
	mov r2, r8
	lsls r0, r2, 2
	b _0819443C
	.pool
_0819431C:
	movs r0, 0x50
	movs r1, 0
	bl SetGpuReg
	movs r0, 0x52
	movs r1, 0
	bl SetGpuReg
	movs r0, 0x54
	movs r1, 0
	bl SetGpuReg
	movs r0, 0x4C
	movs r1, 0
	bl SetGpuReg
	ldr r1, =0x00005860
	movs r0, 0x40
	bl SetGpuReg
	movs r0, 0x44
	movs r1, 0x9F
	bl SetGpuReg
	ldr r1, =0x00009098
	movs r0, 0x42
	bl SetGpuReg
	movs r0, 0x46
	movs r1, 0x9F
	bl SetGpuReg
	movs r0, 0x48
	movs r1, 0
	bl SetGpuReg
	movs r0, 0x4A
	movs r1, 0x3F
	bl SetGpuReg
	bl ResetPaletteFade
	bl ResetAllObjectData
	bl ResetObjectPaletteAllocator
	ldr r1, =gTasks
	mov r3, r8
	lsls r0, r3, 2
	b _0819443C
	.pool
_0819438C:
	ldr r4, =gUnknown_0203CD7C
	movs r0, 0x80
	lsls r0, 4
	bl AllocZeroed
	adds r1, r0, 0
	str r1, [r4]
	ldr r0, =gUnknown_08D83900
	bl LZDecompressWram
	ldr r1, [r4]
	movs r0, 0x1
	bl SetBgTilemapBuffer
	movs r0, 0x1
	bl CopyBgTilemapBufferToVram
	ldr r1, =gUnknown_08D82F10
	movs r5, 0x80
	lsls r5, 6
	movs r6, 0
	str r6, [sp]
	movs r0, 0x1
	adds r2, r5, 0
	movs r3, 0
	bl copy_decompressed_tile_data_to_vram_autofree
	ldr r1, =gUnknown_08D834FC
	str r6, [sp]
	movs r0, 0x2
	adds r2, r5, 0
	movs r3, 0
	bl copy_decompressed_tile_data_to_vram_autofree
	ldr r1, =gUnknown_08D83B2C
	movs r4, 0x1
	str r4, [sp]
	movs r0, 0x2
	adds r2, r5, 0
	movs r3, 0
	bl copy_decompressed_tile_data_to_vram_autofree
	ldr r1, =gUnknown_08D83C3C
	str r4, [sp]
	movs r0, 0x3
	adds r2, r5, 0
	movs r3, 0
	bl copy_decompressed_tile_data_to_vram_autofree
	ldr r0, =gUnknown_08D85358
	movs r4, 0x80
	lsls r4, 2
	movs r1, 0
	adds r2, r4, 0
	bl LoadCompressedPalette
	ldr r0, =gUnknown_08D85444
	movs r1, 0x80
	lsls r1, 1
	adds r2, r4, 0
	bl LoadCompressedPalette
	ldr r0, =gUnknown_08D85600
	movs r1, 0xF0
	movs r2, 0x20
	bl LoadCompressedPalette
	str r6, [sp, 0x18]
	add r0, sp, 0x18
	ldr r1, =gPlttBufferFaded
	ldr r2, =0x05000100
	bl CpuSet
	movs r0, 0
	bl ShowBg
	movs r0, 0x1
	bl ShowBg
	movs r0, 0x2
	bl ShowBg
	movs r0, 0x3
	bl ShowBg
	ldr r1, =gTasks
	mov r4, r8
	lsls r0, r4, 2
_0819443C:
	add r0, r8
	lsls r0, 3
	adds r0, r1
	ldrh r1, [r0, 0x8]
	adds r1, 0x1
	strh r1, [r0, 0x8]
	b _081948C2
	.pool
_0819447C:
	ldr r0, =gUnknown_0860CF50
	bl LoadCompressedObjectPic
	mov r0, r8
	lsls r0, 2
	str r0, [sp, 0x1C]
	mov r1, r10
	cmp r1, 0
	bne _081944E8
	movs r5, 0
	ldr r4, =gUnknown_0860D411
_08194492:
	ldrb r1, [r4]
	ldrb r2, [r4, 0x1]
	ldr r0, =gUnknown_0860CFA8
	movs r3, 0
	bl AddObjectToFront
	adds r4, 0x2
	adds r5, 0x1
	cmp r5, 0x1E
	bls _08194492
	ldr r0, =gTasks
	ldr r1, [sp, 0x1C]
	add r1, r8
	lsls r1, 3
	adds r1, r0
	movs r2, 0x10
	ldrsh r0, [r1, r2]
	cmp r0, 0
	beq _081944DC
	ldr r0, =gUnknown_0860D008
	movs r1, 0xDA
	movs r2, 0xC
	movs r3, 0
	bl AddObjectToFront
	b _081944E8
	.pool
_081944DC:
	ldr r0, =gUnknown_0860CFD8
	movs r1, 0xDA
	movs r2, 0xC
	movs r3, 0
	bl AddObjectToFront
_081944E8:
	ldr r1, =0x00007f40
	movs r0, 0
	bl SetGpuReg
	b _081947A6
	.pool
_081944FC:
	add r0, sp, 0x4
	movs r2, 0
	movs r1, 0x2
	strb r1, [r0, 0x5]
	ldr r0, =gUnknown_085CCCEE
	str r0, [sp, 0x4]
	add r0, sp, 0x4
	strb r1, [r0, 0x4]
	strb r2, [r0, 0x6]
	strb r2, [r0, 0x7]
	strb r1, [r0, 0xA]
	strb r2, [r0, 0xB]
	ldrb r0, [r0, 0x5]
	ldr r1, [sp, 0x4]
	add r2, sp, 0x4
	ldrb r3, [r2, 0xA]
	movs r2, 0x70
	bl GetStringCenterAlignXOffsetWithLetterSpacing
	add r1, sp, 0x4
	strb r0, [r1, 0x8]
	movs r0, 0x1
	strb r0, [r1, 0x9]
	adds r3, r1, 0
	ldrb r2, [r3, 0xC]
	movs r1, 0x10
	negs r1, r1
	adds r0, r1, 0
	ands r0, r2
	strb r0, [r3, 0xC]
	adds r2, r3, 0
	movs r0, 0xE0
	strb r0, [r2, 0xC]
	ldrb r0, [r2, 0xD]
	ands r1, r0
	strb r1, [r2, 0xD]
	adds r1, r2, 0
	movs r0, 0xD0
	strb r0, [r1, 0xD]
	adds r0, r1, 0
	movs r1, 0
	movs r2, 0
	bl AddTextPrinter
	mov r3, r8
	lsls r3, 2
	str r3, [sp, 0x1C]
	add r4, sp, 0x4
	movs r0, 0xF
	mov r9, r0
	movs r1, 0
	str r1, [sp, 0x20]
	movs r2, 0
	str r2, [sp, 0x24]
	movs r7, 0
	movs r5, 0xF
_0819456C:
	ldr r3, =gSaveBlock2Ptr
	ldr r0, [r3]
	adds r0, r7
	ldr r1, =0x00000d24
	adds r0, r1
	ldrh r1, [r0]
	lsls r1, 22
	lsrs r1, 22
	ldr r0, =gUnknown_02022E2C
	bl sub_8195898
	mov r2, r10
	cmp r2, 0x1
	bne _081945C4
	ldr r3, =gSaveBlock2Ptr
	ldr r2, [r3]
	adds r0, r2, r7
	ldr r1, =0x00000d25
	adds r0, r1
	ldrb r1, [r0]
	lsls r0, r1, 29
	cmp r0, 0
	blt _081945DC
	ldr r3, =0x00000cb2
	adds r0, r2, r3
	ldrh r1, [r0]
	cmp r1, 0x1
	beq _08194634
	ldr r2, [sp, 0x24]
	lsrs r0, r2, 24
	subs r1, 0x2
	b _081945EA
	.pool
_081945C4:
	mov r3, r10
	cmp r3, 0
	bne _08194634
	ldr r0, =gSaveBlock2Ptr
	ldr r2, [r0]
	adds r0, r2, r7
	ldr r1, =0x00000d25
	adds r0, r1
	ldrb r1, [r0]
	lsls r0, r1, 29
	cmp r0, 0
	bge _081945FC
_081945DC:
	lsls r1, 27
	lsrs r0, r1, 30
	cmp r0, 0
	beq _08194634
	subs r1, r0, 0x1
	ldr r2, [sp, 0x24]
	lsrs r0, r2, 24
_081945EA:
	lsls r1, 24
	lsrs r1, 24
	bl sub_81948EC
	b _08194634
	.pool
_081945FC:
	ldr r3, =0x00000cb2
	adds r1, r2, r3
	ldrh r0, [r1]
	cmp r0, 0
	beq _08194634
	ldr r0, [sp, 0x1C]
	add r0, r8
	lsls r0, 3
	ldr r2, =gTasks
	adds r0, r2
	movs r3, 0x10
	ldrsh r0, [r0, r3]
	cmp r0, 0
	beq _08194624
	ldrh r1, [r1]
	b _08194628
	.pool
_08194624:
	ldrh r0, [r1]
	subs r1, r0, 0x1
_08194628:
	ldr r2, [sp, 0x24]
	lsrs r0, r2, 24
	lsls r1, 24
	lsrs r1, 24
	bl sub_81948EC
_08194634:
	ldr r0, [sp, 0x1C]
	add r0, r8
	lsls r0, 3
	ldr r3, =gTasks
	adds r0, r3
	movs r1, 0x10
	ldrsh r0, [r0, r1]
	cmp r0, 0
	beq _08194660
	ldr r2, =gSaveBlock2Ptr
	ldr r0, [r2]
	ldr r3, =0x00000cb2
	adds r0, r3
	ldrh r3, [r0]
	adds r6, r2, 0
	b _0819466E
	.pool
_08194660:
	ldr r1, =gSaveBlock2Ptr
	ldr r0, [r1]
	ldr r2, =0x00000cb2
	adds r0, r2
	ldrh r0, [r0]
	subs r3, r0, 0x1
	adds r6, r1, 0
_0819466E:
	mov r0, r10
	cmp r0, 0x1
	bne _0819468E
	ldr r2, [r6]
	adds r0, r2, r7
	ldr r1, =0x00000d25
	adds r0, r1
	ldrb r1, [r0]
	lsls r1, 27
	lsrs r1, 30
	ldr r0, =0x00000cb2
	adds r2, r0
	ldrh r0, [r2]
	subs r0, 0x1
	cmp r1, r0
	blt _081946A6
_0819468E:
	mov r1, r10
	cmp r1, 0
	bne _081946FA
	ldr r0, [r6]
	adds r0, r7
	ldr r2, =0x00000d25
	adds r0, r2
	ldrb r0, [r0]
	lsls r0, 27
	lsrs r0, 30
	cmp r0, r3
	bgt _081946FA
_081946A6:
	ldr r0, [r6]
	adds r1, r0, r7
	ldr r3, =0x00000d25
	adds r0, r1, r3
	ldrb r0, [r0]
	lsls r0, 29
	cmp r0, 0
	bge _081946FA
	ldr r2, =0x00000d24
	adds r0, r1, r2
	ldrh r0, [r0]
	lsls r0, 22
	lsrs r0, 22
	ldr r3, =0x000003ff
	cmp r0, r3
	bne _081946F0
	ldrb r1, [r4, 0xC]
	mov r0, r9
	ands r0, r1
	movs r1, 0x30
	orrs r0, r1
	strb r0, [r4, 0xC]
	ldrb r1, [r4, 0xD]
	mov r0, r9
	ands r0, r1
	movs r1, 0x40
	b _08194740
	.pool
_081946F0:
	ldrb r1, [r4, 0xC]
	mov r0, r9
	ands r0, r1
	movs r1, 0xB0
	b _08194734
_081946FA:
	ldr r0, [r6]
	adds r0, r7
	ldr r1, =0x00000d24
	adds r0, r1
	ldrh r0, [r0]
	lsls r0, 22
	lsrs r0, 22
	ldr r2, =0x000003ff
	cmp r0, r2
	bne _0819472C
	ldrb r1, [r4, 0xC]
	mov r0, r9
	ands r0, r1
	movs r1, 0x30
	orrs r0, r1
	strb r0, [r4, 0xC]
	ldrb r1, [r4, 0xD]
	mov r0, r9
	ands r0, r1
	movs r1, 0x40
	b _08194740
	.pool
_0819472C:
	ldrb r1, [r4, 0xC]
	mov r0, r9
	ands r0, r1
	movs r1, 0xE0
_08194734:
	orrs r0, r1
	strb r0, [r4, 0xC]
	ldrb r1, [r4, 0xD]
	mov r0, r9
	ands r0, r1
	movs r1, 0xD0
_08194740:
	orrs r0, r1
	strb r0, [r4, 0xD]
	ldr r0, =gUnknown_0860D3F1
	ldr r3, [sp, 0x20]
	adds r0, r3, r0
	ldrb r0, [r0]
	cmp r0, 0
	bne _08194768
	ldrb r0, [r4, 0x5]
	ldrb r3, [r4, 0xA]
	ldr r1, =gUnknown_02022E2C
	movs r2, 0x3D
	bl GetStringWidthDifference
	b _0819476A
	.pool
_08194768:
	movs r0, 0x3
_0819476A:
	strb r0, [r4, 0x8]
	ldr r0, =gUnknown_02022E2C
	str r0, [sp, 0x4]
	ldr r0, =gUnknown_0860D3F1
	ldr r1, [sp, 0x20]
	adds r0, r1, r0
	ldrb r0, [r0]
	strb r0, [r4, 0x4]
	ldr r2, =gUnknown_0860D3F2
	adds r0, r1, r2
	ldrb r0, [r0]
	strb r0, [r4, 0x9]
	add r0, sp, 0x4
	movs r1, 0
	movs r2, 0
	bl AddTextPrinter
	ldr r3, [sp, 0x20]
	adds r3, 0x2
	str r3, [sp, 0x20]
	ldr r0, [sp, 0x24]
	movs r1, 0x80
	lsls r1, 17
	adds r0, r1
	str r0, [sp, 0x24]
	adds r7, 0x4
	subs r5, 0x1
	cmp r5, 0
	blt _081947A6
	b _0819456C
_081947A6:
	ldr r0, =gTasks
	ldr r1, [sp, 0x1C]
	add r1, r8
	lsls r1, 3
	adds r1, r0
	ldrh r0, [r1, 0x8]
	adds r0, 0x1
	strh r0, [r1, 0x8]
	b _081948C2
	.pool
_081947C8:
	movs r0, 0
	bl PutWindowTilemap
	movs r0, 0x1
	bl PutWindowTilemap
	movs r0, 0x2
	bl PutWindowTilemap
	movs r0, 0
	movs r1, 0x3
	bl CopyWindowToVram
	movs r0, 0x1
	movs r1, 0x3
	bl CopyWindowToVram
	movs r0, 0x2
	movs r1, 0x3
	bl CopyWindowToVram
	ldr r0, =sub_8194BEC
	bl SetHBlankCallback
	ldr r0, =sub_8194CE4
	bl SetVBlankCallback
	cmp r4, 0x2
	bne _0819485C
	mov r2, r10
	cmp r2, 0
	bne _08194844
	ldr r0, =sub_819395C
	movs r1, 0
	bl CreateTask
	lsls r0, 24
	lsrs r5, r0, 24
	ldr r2, =gTasks
	lsls r1, r5, 2
	adds r1, r5
	lsls r1, 3
	adds r1, r2
	mov r3, r10
	strh r3, [r1, 0x8]
	strh r3, [r1, 0xA]
	mov r4, r8
	lsls r0, r4, 2
	add r0, r8
	lsls r0, 3
	adds r0, r2
	ldrh r0, [r0, 0x10]
	strh r0, [r1, 0x14]
	b _08194878
	.pool
_08194844:
	ldr r0, =sub_8194950
	movs r1, 0
	bl CreateTask
	lsls r0, 24
	lsrs r5, r0, 24
	ldr r1, =gTasks
	b _0819486C
	.pool
_0819485C:
	ldr r1, =gTasks
	mov r2, r8
	lsls r0, r2, 2
	add r0, r8
	lsls r0, 3
	adds r0, r1
	movs r3, 0xE
	ldrsh r5, [r0, r3]
_0819486C:
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	adds r0, r1
	movs r1, 0
	strh r1, [r0, 0x8]
_08194878:
	bl dp12_8087EA4
	ldr r0, =gUnknown_02038C28
	ldr r2, =0x00001f0a
	movs r4, 0xF0
	lsls r4, 3
	adds r1, r0, r4
	movs r5, 0x5A
_08194888:
	strh r2, [r0]
	strh r2, [r1]
	adds r1, 0x2
	adds r0, 0x2
	subs r5, 0x1
	cmp r5, 0
	bge _08194888
	movs r5, 0x5B
	ldr r3, =gUnknown_0860CF44
	ldr r0, =gUnknown_02038C28
	ldr r2, =0x00001f09
	ldr r4, =0x00000836
	adds r1, r0, r4
	adds r0, 0xB6
_081948A4:
	strh r2, [r0]
	strh r2, [r1]
	adds r1, 0x2
	adds r0, 0x2
	adds r5, 0x1
	cmp r5, 0x9F
	ble _081948A4
	ldr r0, [r3]
	ldr r1, [r3, 0x4]
	ldr r2, [r3, 0x8]
	bl sub_80BA038
	mov r0, r8
	bl DestroyTask
_081948C2:
	add sp, 0x28
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8194220

	thumb_func_start sub_81948EC
sub_81948EC: @ 81948EC
	push {r4-r7,lr}
	sub sp, 0xC
	lsls r0, 24
	lsrs r0, 24
	lsls r1, 24
	lsrs r1, 24
	ldr r4, =gUnknown_0860DD10
	lsls r2, r1, 2
	lsls r3, r0, 4
	adds r2, r3
	adds r2, r4
	ldr r3, [r2]
	ldr r2, =gUnknown_0860DE10
	lsls r0, 2
	adds r1, r0
	adds r1, r2
	ldrb r0, [r1]
	cmp r0, 0
	beq _08194938
	movs r7, 0x1
	adds r4, r3, 0
	adds r5, r4, 0x2
	adds r6, r0, 0
_0819491A:
	ldrb r2, [r4]
	ldrb r3, [r4, 0x1]
	str r7, [sp]
	str r7, [sp, 0x4]
	movs r0, 0x11
	str r0, [sp, 0x8]
	movs r0, 0x1
	adds r1, r5, 0
	bl CopyToBgTilemapBufferRect_ChangePalette
	adds r4, 0x4
	adds r5, 0x4
	subs r6, 0x1
	cmp r6, 0
	bne _0819491A
_08194938:
	movs r0, 0x1
	bl CopyBgTilemapBufferToVram
	add sp, 0xC
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81948EC

	thumb_func_start sub_8194950
sub_8194950: @ 8194950
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, 0x14
	lsls r0, 24
	lsrs r4, r0, 24
	ldr r1, =gTasks
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	adds r0, r1
	movs r2, 0x8
	ldrsh r0, [r0, r2]
	adds r2, r1, 0
	cmp r0, 0x4
	bls _08194974
	b _08194B3C
_08194974:
	lsls r0, 2
	ldr r1, =_08194988
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_08194988:
	.4byte _0819499C
	.4byte _081949C0
	.4byte _08194AD4
	.4byte _08194AEE
	.4byte _08194B24
_0819499C:
	movs r0, 0x1
	negs r0, r0
	movs r1, 0
	str r1, [sp]
	movs r2, 0x10
	movs r3, 0
	bl BeginNormalPaletteFade
	ldr r1, =gTasks
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	adds r0, r1
	movs r1, 0x1
	strh r1, [r0, 0x8]
	b _08194B3C
	.pool
_081949C0:
	ldr r0, =gPaletteFade
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _081949CE
	b _08194B3C
_081949CE:
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	adds r0, r2
	movs r2, 0
	movs r3, 0x2
	movs r1, 0x2
	strh r1, [r0, 0x8]
	movs r1, 0x40
	strh r1, [r0, 0xE]
	add r0, sp, 0x4
	strb r3, [r0, 0x5]
	strb r2, [r0, 0x6]
	strb r2, [r0, 0x7]
	strb r3, [r0, 0xA]
	strb r2, [r0, 0xB]
	adds r3, r0, 0
	ldrb r2, [r3, 0xC]
	subs r1, 0x50
	adds r0, r1, 0
	ands r0, r2
	strb r0, [r3, 0xC]
	adds r2, r3, 0
	movs r0, 0xB0
	strb r0, [r2, 0xC]
	ldrb r0, [r2, 0xD]
	ands r1, r0
	strb r1, [r2, 0xD]
	adds r1, r2, 0
	movs r0, 0xD0
	strb r0, [r1, 0xD]
	movs r7, 0
	ldr r0, =gUnknown_02022E2C
	mov r9, r0
	ldr r1, =gSaveBlock2Ptr
	mov r8, r1
	adds r4, r2, 0
	ldr r6, =gUnknown_0860D3F1
	movs r5, 0
_08194A1C:
	mov r2, r8
	ldr r0, [r2]
	adds r0, r5
	ldr r1, =0x00000d24
	adds r0, r1
	ldrh r1, [r0]
	lsls r1, 22
	lsrs r1, 22
	mov r0, r9
	bl sub_8195898
	mov r0, r8
	ldr r2, [r0]
	adds r0, r2, r5
	ldr r1, =0x00000d25
	adds r0, r1
	ldrb r3, [r0]
	lsls r1, r3, 27
	lsrs r1, 30
	ldr r0, =0x00000cb2
	adds r2, r0
	ldrh r0, [r2]
	subs r0, 0x1
	cmp r1, r0
	bne _08194A9E
	lsls r0, r3, 29
	cmp r0, 0
	bge _08194A9E
	ldrb r0, [r6]
	cmp r0, 0
	bne _08194A84
	ldrb r0, [r4, 0x5]
	ldrb r3, [r4, 0xA]
	mov r1, r9
	movs r2, 0x3D
	bl GetStringWidthDifference
	b _08194A86
	.pool
_08194A84:
	movs r0, 0x3
_08194A86:
	strb r0, [r4, 0x8]
	mov r1, r9
	str r1, [sp, 0x4]
	ldrb r0, [r6]
	strb r0, [r4, 0x4]
	ldrb r0, [r6, 0x1]
	strb r0, [r4, 0x9]
	add r0, sp, 0x4
	movs r1, 0
	movs r2, 0
	bl AddTextPrinter
_08194A9E:
	mov r2, r8
	ldr r1, [r2]
	adds r0, r1, r5
	ldr r2, =0x00000d25
	adds r0, r2
	ldrb r0, [r0]
	lsls r0, 29
	cmp r0, 0
	blt _08194AC4
	subs r2, 0x73
	adds r0, r1, r2
	ldrh r1, [r0]
	subs r1, 0x1
	lsls r0, r7, 24
	lsrs r0, 24
	lsls r1, 24
	lsrs r1, 24
	bl sub_81948EC
_08194AC4:
	adds r6, 0x2
	adds r5, 0x4
	adds r7, 0x1
	cmp r7, 0xF
	ble _08194A1C
	b _08194B3C
	.pool
_08194AD4:
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	adds r1, r0, r2
	ldrh r0, [r1, 0xE]
	subs r0, 0x1
	strh r0, [r1, 0xE]
	lsls r0, 16
	cmp r0, 0
	bne _08194B3C
	movs r0, 0x3
	strh r0, [r1, 0x8]
	b _08194B3C
_08194AEE:
	ldr r0, =gMain
	ldrh r1, [r0, 0x2E]
	movs r0, 0x3
	ands r0, r1
	cmp r0, 0
	beq _08194B3C
	movs r0, 0x1
	negs r0, r0
	movs r1, 0
	str r1, [sp]
	movs r2, 0
	movs r3, 0x10
	bl BeginNormalPaletteFade
	ldr r1, =gTasks
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	adds r0, r1
	movs r1, 0x4
	strh r1, [r0, 0x8]
	b _08194B3C
	.pool
_08194B24:
	ldr r0, =gPaletteFade
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	bne _08194B3C
	ldr r0, =c2_exit_to_overworld_1_continue_scripts_restart_music
	bl SetMainCallback2
	adds r0, r4, 0
	bl DestroyTask
_08194B3C:
	add sp, 0x14
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8194950

	thumb_func_start sub_8194B54
sub_8194B54: @ 8194B54
	push {lr}
	bl CallObjectCallbacks
	bl PrepareSpritesForOamLoad
	bl RunTextPrinters
	bl UpdatePaletteFade
	bl RunTasks
	pop {r0}
	bx r0
	thumb_func_end sub_8194B54

	thumb_func_start sub_8194B70
sub_8194B70: @ 8194B70
	push {lr}
	movs r0, 0x3
	movs r1, 0x80
	movs r2, 0x1
	bl ChangeBgX
	movs r0, 0x3
	movs r1, 0x80
	movs r2, 0x2
	bl ChangeBgY
	ldr r0, =gUnknown_02022E14
	ldrh r1, [r0]
	movs r0, 0x10
	bl SetGpuReg
	ldr r0, =gUnknown_02022E16
	ldrh r1, [r0]
	movs r0, 0x12
	bl SetGpuReg
	ldr r0, =gUnknown_02022E18
	ldrh r1, [r0]
	movs r0, 0x14
	bl SetGpuReg
	ldr r0, =gUnknown_02022E1A
	ldrh r1, [r0]
	movs r0, 0x16
	bl SetGpuReg
	ldr r0, =gUnknown_02022E1C
	ldrh r1, [r0]
	movs r0, 0x18
	bl SetGpuReg
	ldr r0, =gUnknown_02022E1E
	ldrh r1, [r0]
	movs r0, 0x1A
	bl SetGpuReg
	bl LoadOamFromSprites
	bl ProcessObjectCopyRequests
	bl TransferPlttBuffer
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8194B70

	thumb_func_start sub_8194BEC
sub_8194BEC: @ 8194BEC
	push {lr}
	ldr r0, =0x04000006
	ldrh r0, [r0]
	adds r1, r0, 0
	cmp r0, 0x29
	bls _08194CC8
	cmp r0, 0x31
	bhi _08194C1C
	ldr r1, =0x04000048
	ldr r2, =0x00003b3b
	adds r0, r2, 0
	strh r0, [r1]
	subs r1, 0x8
	ldr r0, =0x989b5558
	b _08194CD4
	.pool
_08194C1C:
	cmp r0, 0x39
	bls _08194CC8
	cmp r0, 0x4A
	bhi _08194C40
	ldr r1, =0x04000048
	ldr r2, =0x00003b3b
	adds r0, r2, 0
	strh r0, [r1]
	subs r1, 0x8
	ldr r0, =0x90985860
	b _08194CD4
	.pool
_08194C40:
	cmp r0, 0x51
	bhi _08194C60
	ldr r1, =0x04000048
	ldr r2, =0x00003b3b
	adds r0, r2, 0
	strh r0, [r1]
	subs r1, 0x8
	ldr r0, =0x989b5558
	b _08194CD4
	.pool
_08194C60:
	cmp r0, 0x5E
	bls _08194CC8
	cmp r0, 0x66
	bhi _08194C84
	ldr r1, =0x04000048
	ldr r2, =0x00003737
	adds r0, r2, 0
	strh r0, [r1]
	subs r1, 0x8
	ldr r0, =0x989b5558
	b _08194CD4
	.pool
_08194C84:
	cmp r0, 0x76
	bhi _08194CA4
	ldr r1, =0x04000048
	ldr r2, =0x00003737
	adds r0, r2, 0
	strh r0, [r1]
	subs r1, 0x8
	ldr r0, =0x90985860
	b _08194CD4
	.pool
_08194CA4:
	cmp r0, 0x7E
	bls _08194CC8
	cmp r1, 0x86
	bhi _08194CC8
	ldr r1, =0x04000048
	ldr r2, =0x00003737
	adds r0, r2, 0
	strh r0, [r1]
	subs r1, 0x8
	ldr r0, =0x989b5558
	b _08194CD4
	.pool
_08194CC8:
	ldr r1, =0x04000048
	ldr r2, =0x00003f3f
	adds r0, r2, 0
	strh r0, [r1]
	subs r1, 0x8
	movs r0, 0
_08194CD4:
	str r0, [r1]
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8194BEC

	thumb_func_start sub_8194CE4
sub_8194CE4: @ 8194CE4
	push {lr}
	ldr r0, =gUnknown_02022E14
	ldrh r1, [r0]
	movs r0, 0x10
	bl SetGpuReg
	ldr r0, =gUnknown_02022E16
	ldrh r1, [r0]
	movs r0, 0x12
	bl SetGpuReg
	ldr r0, =gUnknown_02022E18
	ldrh r1, [r0]
	movs r0, 0x14
	bl SetGpuReg
	ldr r0, =gUnknown_02022E1A
	ldrh r1, [r0]
	movs r0, 0x16
	bl SetGpuReg
	movs r0, 0x2
	movs r1, 0x80
	movs r2, 0x2
	bl ChangeBgY
	movs r0, 0x3
	movs r1, 0x80
	movs r2, 0x1
	bl ChangeBgY
	bl LoadOamFromSprites
	bl ProcessObjectCopyRequests
	bl TransferPlttBuffer
	bl sub_80BA0A8
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8194CE4

	thumb_func_start sub_8194D48
sub_8194D48: @ 8194D48
	ldr r1, =gUnknown_0203BC8C
	ldr r0, =gBattleFrontierMons
	str r0, [r1]
	ldr r1, =gUnknown_0203BC88
	ldr r0, =gBattleFrontierTrainers
	str r0, [r1]
	bx lr
	.pool
	thumb_func_end sub_8194D48

	thumb_func_start sub_8194D68
sub_8194D68: @ 8194D68
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x8
	movs r3, 0
_08194D76:
	ldr r0, =gSaveBlock2Ptr
	ldr r1, [r0]
	ldr r0, =gUnknown_0203CEF8
	adds r0, r3, r0
	ldrb r0, [r0]
	subs r0, 0x1
	lsls r0, 1
	ldr r2, =0x00000caa
	adds r1, r2
	adds r1, r0
	ldrh r0, [r1]
	subs r0, 0x1
	mov r10, r0
	movs r6, 0
	adds r0, r3, 0x1
	str r0, [sp]
	movs r1, 0x64
	mov r0, r10
	muls r0, r1
	movs r2, 0x8E
	lsls r2, 2
	adds r2, r0
	mov r9, r2
	adds r7, r3, 0
	muls r7, r1
_08194DA8:
	movs r5, 0
	adds r0, r6, 0x1
	mov r8, r0
	b _08194DBE
	.pool
_08194DBC:
	adds r5, 0x1
_08194DBE:
	cmp r5, 0x3
	bgt _08194DEA
	ldr r1, =gSaveBlock1Ptr
	ldr r0, [r1]
	add r0, r9
	adds r1, r5, 0
	adds r1, 0xD
	movs r2, 0
	str r3, [sp, 0x4]
	bl GetMonData
	adds r4, r0, 0
	adds r1, r6, 0
	adds r1, 0xD
	ldr r2, =gPlayerParty
	adds r0, r7, r2
	movs r2, 0
	bl GetMonData
	ldr r3, [sp, 0x4]
	cmp r4, r0
	bne _08194DBC
_08194DEA:
	cmp r5, 0x4
	bne _08194E00
	lsls r2, r6, 24
	lsrs r2, 24
	ldr r1, =gPlayerParty
	adds r0, r7, r1
	movs r1, 0xA6
	str r3, [sp, 0x4]
	bl sub_80691F4
	ldr r3, [sp, 0x4]
_08194E00:
	mov r6, r8
	cmp r6, 0x3
	ble _08194DA8
	ldr r2, =gSaveBlock1Ptr
	ldr r0, [r2]
	movs r2, 0x64
	mov r1, r10
	muls r1, r2
	adds r0, r1
	movs r1, 0x8E
	lsls r1, 2
	adds r0, r1
	adds r1, r3, 0
	muls r1, r2
	ldr r2, =gPlayerParty
	adds r1, r2
	movs r2, 0x64
	bl memcpy
	ldr r3, [sp]
	cmp r3, 0x1
	ble _08194D76
	add sp, 0x8
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8194D68

	thumb_func_start sub_8194E44
sub_8194E44: @ 8194E44
	push {r4-r7,lr}
	sub sp, 0x4
	movs r4, 0
	ldr r7, =gSaveBlock1Ptr
	movs r6, 0x64
	movs r5, 0
_08194E50:
	ldr r0, =gSaveBlock2Ptr
	ldr r1, [r0]
	ldr r0, =gUnknown_0203CEF8
	adds r0, r4, r0
	ldrb r0, [r0]
	subs r0, 0x1
	lsls r0, 1
	ldr r2, =0x00000caa
	adds r1, r2
	adds r1, r0
	ldrh r0, [r1]
	subs r0, 0x1
	adds r1, r0, 0
	muls r1, r6
	movs r0, 0x8E
	lsls r0, 2
	adds r1, r0
	ldr r0, [r7]
	adds r0, r1
	movs r1, 0xC
	movs r2, 0
	bl GetMonData
	mov r1, sp
	strh r0, [r1]
	ldr r0, =gPlayerParty
	adds r0, r5, r0
	movs r1, 0xC
	mov r2, sp
	bl pokemon_setattr
	adds r5, 0x64
	adds r4, 0x1
	cmp r4, 0x1
	ble _08194E50
	add sp, 0x4
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8194E44

	thumb_func_start sub_8194EB4
sub_8194EB4: @ 8194EB4
	push {lr}
	bl sub_80F94E8
	pop {r0}
	bx r0
	thumb_func_end sub_8194EB4

	thumb_func_start sub_8194EC0
sub_8194EC0: @ 8194EC0
	push {r4,lr}
	ldr r0, =gUnknown_02038BCA
	ldrh r0, [r0]
	bl sub_8195358
	adds r4, r0, 0
	ldr r0, =0x000003ff
	bl sub_8195358
	cmp r4, r0
	ble _08194EE8
	ldr r1, =gUnknown_020375F0
	movs r0, 0x1
	b _08194EEC
	.pool
_08194EE8:
	ldr r1, =gUnknown_020375F0
	movs r0, 0x2
_08194EEC:
	strh r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8194EC0

	thumb_func_start sub_8194EF8
sub_8194EF8: @ 8194EF8
	push {r4,lr}
	bl sub_8194D48
	movs r2, 0
	ldr r3, =gSaveBlock2Ptr
	ldr r0, [r3]
	ldr r1, =0x00000d25
	adds r0, r1
	ldrb r0, [r0]
	lsls r0, 29
	cmp r0, 0
	bge _08194F2A
	adds r4, r3, 0
	adds r3, r1, 0
_08194F14:
	adds r2, 0x1
	cmp r2, 0xF
	bgt _08194F2A
	ldr r0, [r4]
	lsls r1, r2, 2
	adds r0, r1
	adds r0, r3
	ldrb r0, [r0]
	lsls r0, 29
	cmp r0, 0
	blt _08194F14
_08194F2A:
	ldr r0, =gStringVar1
	ldr r1, =gSaveBlock2Ptr
	ldr r1, [r1]
	lsls r2, 2
	adds r1, r2
	ldr r2, =0x00000d24
	adds r1, r2
	ldrh r1, [r1]
	lsls r1, 22
	lsrs r1, 22
	bl sub_8195898
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8194EF8

	thumb_func_start sub_8194F58
sub_8194F58: @ 8194F58
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x40
	movs r0, 0
	str r0, [sp, 0x8]
	str r0, [sp, 0xC]
	str r0, [sp, 0x10]
	ldr r4, =gSaveBlock2Ptr
	ldr r2, [r4]
	ldr r5, =0x00000d0a
	adds r0, r2, r5
	ldrb r1, [r0]
	ldr r6, =0x00000d0b
	adds r0, r2, r6
	ldrb r0, [r0]
	cmn r1, r0
	beq _08194F8C
	ldr r1, =0x00000ca8
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, 0x1
	beq _08194F8C
	b _0819533E
_08194F8C:
	movs r0, 0x20
	bl AllocZeroed
	str r0, [sp, 0x18]
	movs r0, 0x18
	bl AllocZeroed
	str r0, [sp, 0x1C]
	ldr r1, [r4]
	ldr r2, =0x00000ca9
	adds r1, r2
	ldrb r2, [r1]
	lsls r0, r2, 30
	lsrs r0, 30
	str r0, [sp, 0x14]
	movs r0, 0x4
	negs r0, r0
	ands r0, r2
	strb r0, [r1]
	ldr r0, [r4]
	movs r1, 0x1
	adds r0, r5
	strb r1, [r0]
	ldr r0, [r4]
	adds r0, r6
	strb r1, [r0]
	movs r3, 0
	mov r10, r3
	movs r4, 0
	str r4, [sp, 0x38]
	movs r5, 0
	str r5, [sp, 0x3C]
_08194FCC:
	mov r0, r10
	cmp r0, 0x4
	bgt _08194FFC
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0xA
	bl __umodsi3
	lsls r0, 16
	lsrs r4, r0, 16
	b _08195030
	.pool
_08194FFC:
	mov r1, r10
	cmp r1, 0xE
	bgt _0819501A
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x14
	bl __umodsi3
	lsls r0, 16
	lsrs r0, 16
	adds r4, r0, 0
	adds r4, 0xA
	b _08195030
_0819501A:
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0xA
	bl __umodsi3
	lsls r0, 16
	lsrs r0, 16
	adds r4, r0, 0
	adds r4, 0x1E
_08195030:
	movs r6, 0
	cmp r6, r10
	bge _08195064
	ldr r2, =gSaveBlock2Ptr
	ldr r0, [r2]
	ldr r3, =0x00000d24
	adds r0, r3
	ldrh r0, [r0]
	lsls r0, 22
	lsrs r0, 22
	cmp r0, r4
	beq _08195064
	adds r3, r2, 0
	ldr r2, =0x00000d24
_0819504C:
	adds r6, 0x1
	cmp r6, r10
	bge _08195064
	ldr r0, [r3]
	lsls r1, r6, 2
	adds r0, r1
	adds r0, r2
	ldrh r0, [r0]
	lsls r0, 22
	lsrs r0, 22
	cmp r0, r4
	bne _0819504C
_08195064:
	cmp r6, r10
	bne _08194FCC
	ldr r5, =gSaveBlock2Ptr
	ldr r3, [r5]
	ldr r0, [sp, 0x38]
	adds r3, r0
	ldr r1, =0x00000d24
	adds r3, r1
	ldr r2, =0x000003ff
	adds r0, r2, 0
	adds r2, r4, 0
	ands r2, r0
	ldrh r0, [r3]
	ldr r5, =0xfffffc00
	adds r1, r5, 0
	ands r0, r1
	orrs r0, r2
	strh r0, [r3]
	movs r6, 0
	lsls r4, 16
	str r4, [sp, 0x30]
	ldr r0, [sp, 0x3C]
	str r0, [sp, 0x20]
_08195092:
	adds r1, r6, 0x1
	str r1, [sp, 0x24]
	lsls r2, r6, 2
	str r2, [sp, 0x2C]
	lsls r3, r6, 1
	str r3, [sp, 0x28]
_0819509E:
	ldr r4, [sp, 0x30]
	lsrs r0, r4, 16
	bl sub_8163524
	lsls r0, 16
	lsrs r5, r0, 16
	movs r7, 0
	cmp r7, r6
	bge _081950F4
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r1, =gUnknown_0203BC8C
	mov r9, r1
	ldr r2, [sp, 0x8]
	mov r8, r2
	ldr r3, [sp, 0xC]
	mov r12, r3
	ldr r4, =0x00000d64
	adds r0, r4
	ldr r1, [sp, 0x20]
	adds r4, r1, r0
_081950C8:
	ldrh r3, [r4]
	cmp r3, r5
	beq _081950F4
	mov r2, r9
	ldr r1, [r2]
	lsls r0, r5, 4
	adds r2, r0, r1
	ldrh r0, [r2]
	cmp r8, r0
	beq _081950F4
	cmp r12, r0
	beq _081950F4
	lsls r0, r3, 4
	adds r0, r1
	ldrb r0, [r0, 0xA]
	ldrb r2, [r2, 0xA]
	cmp r0, r2
	beq _081950F4
	adds r4, 0x2
	adds r7, 0x1
	cmp r7, r6
	blt _081950C8
_081950F4:
	cmp r7, r6
	bne _0819509E
	ldr r3, =gSaveBlock2Ptr
	ldr r0, [r3]
	ldr r4, [sp, 0x28]
	ldr r2, [sp, 0x3C]
	adds r1, r4, r2
	ldr r3, =0x00000d64
	adds r0, r3
	adds r0, r1
	strh r5, [r0]
	ldr r2, [sp, 0x2C]
	add r2, sp
	adds r2, 0x8
	ldr r3, =gUnknown_0203BC8C
	ldr r1, [r3]
	lsls r0, r5, 4
	adds r0, r1
	ldrh r0, [r0]
	str r0, [r2]
	ldr r6, [sp, 0x24]
	cmp r6, 0x2
	ble _08195092
	ldr r4, =gSaveBlock2Ptr
	ldr r2, [r4]
	ldr r5, [sp, 0x38]
	adds r2, r5
	ldr r0, =0x00000d25
	adds r2, r0
	ldrb r0, [r2]
	movs r4, 0x5
	negs r4, r4
	adds r1, r4, 0
	ands r0, r1
	strb r0, [r2]
	ldr r5, =gSaveBlock2Ptr
	ldr r2, [r5]
	ldr r0, [sp, 0x38]
	adds r2, r0
	ldr r1, =0x00000d25
	adds r2, r1
	ldrb r0, [r2]
	subs r4, 0x14
	adds r1, r4, 0
	ands r0, r1
	strb r0, [r2]
	ldr r1, [r5]
	ldr r5, [sp, 0x38]
	adds r1, r5
	ldr r0, =0x00000d25
	adds r1, r0
	ldrb r2, [r1]
	movs r0, 0x1F
	ands r0, r2
	strb r0, [r1]
	adds r5, 0x4
	str r5, [sp, 0x38]
	ldr r1, [sp, 0x3C]
	adds r1, 0x6
	str r1, [sp, 0x3C]
	movs r2, 0x1
	add r10, r2
	mov r4, r10
	cmp r4, 0xF
	bgt _08195178
	b _08194FCC
_08195178:
	movs r5, 0
	mov r10, r5
	ldr r5, [sp, 0x18]
	movs r0, 0
	str r0, [sp, 0x34]
_08195182:
	movs r7, 0
	strh r7, [r5]
	ldr r1, =gSaveBlock2Ptr
	ldr r0, [r1]
	mov r2, r10
	lsls r1, r2, 2
	adds r0, r1
	ldr r3, =0x00000d24
	adds r0, r3
	ldrh r0, [r0]
	lsls r0, 22
	lsrs r0, 22
	bl sub_8190168
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
	movs r6, 0
	ldr r4, [sp, 0x34]
	mov r9, r4
_081951AA:
	ldr r1, =gSaveBlock2Ptr
	ldr r0, [r1]
	mov r4, r9
	add r4, r10
	adds r4, r6
	lsls r4, 1
	ldr r2, =0x00000d64
	adds r0, r2
	adds r0, r4
	ldrh r1, [r0]
	ldr r3, =gUnknown_0203BC8C
	ldr r0, [r3]
	lsls r1, 4
	adds r1, r0
	ldrh r0, [r1]
	ldrb r3, [r1, 0xB]
	ldrb r1, [r1, 0xC]
	str r1, [sp]
	ldr r1, [sp, 0x1C]
	str r1, [sp, 0x4]
	movs r1, 0x32
	mov r2, r8
	bl sub_818F720
	ldr r2, [sp, 0x1C]
	ldr r1, [r2, 0x4]
	ldrh r0, [r5]
	adds r0, r1
	ldr r1, [r2, 0x8]
	adds r0, r1
	ldr r1, [r2, 0x10]
	adds r0, r1
	ldr r1, [r2, 0x14]
	adds r0, r1
	ldr r1, [r2, 0xC]
	adds r0, r1
	ldr r1, [r2]
	adds r0, r1
	strh r0, [r5]
	ldr r3, =gSaveBlock2Ptr
	ldr r0, [r3]
	ldr r1, =0x00000d64
	adds r0, r1
	adds r0, r4
	ldrh r0, [r0]
	ldr r2, =gUnknown_0203BC8C
	ldr r1, [r2]
	lsls r0, 4
	adds r0, r1
	ldrh r0, [r0]
	lsls r1, r0, 3
	subs r1, r0
	lsls r1, 2
	ldr r3, =gBaseStats
	adds r1, r3
	ldrb r0, [r1, 0x6]
	lsls r0, 2
	ldr r4, =gBitTable
	adds r0, r4
	ldr r0, [r0]
	orrs r7, r0
	ldrb r0, [r1, 0x7]
	lsls r0, 2
	adds r0, r4
	ldr r0, [r0]
	orrs r7, r0
	adds r6, 0x1
	cmp r6, 0x2
	ble _081951AA
	movs r4, 0
	movs r1, 0x1
	movs r6, 0x1F
_0819523A:
	adds r0, r7, 0
	ands r0, r1
	cmp r0, 0
	beq _08195244
	adds r4, 0x1
_08195244:
	asrs r7, 1
	subs r6, 0x1
	cmp r6, 0
	bge _0819523A
	movs r1, 0x32
	adds r0, r4, 0
	muls r0, r1
	movs r1, 0x14
	bl __divsi3
	ldrh r1, [r5]
	adds r1, r0
	strh r1, [r5]
	adds r5, 0x2
	ldr r2, [sp, 0x34]
	adds r2, 0x2
	str r2, [sp, 0x34]
	movs r3, 0x1
	add r10, r3
	mov r4, r10
	cmp r4, 0xF
	ble _08195182
	movs r5, 0
	mov r10, r5
	ldr r7, [sp, 0x18]
_08195276:
	mov r6, r10
	adds r6, 0x1
	cmp r6, 0xF
	bgt _081952F8
	mov r8, r7
	ldr r5, =0x00000d24
	lsls r0, r6, 1
	ldr r1, [sp, 0x18]
	adds r4, r0, r1
_08195288:
	mov r2, r8
	ldrh r1, [r2]
	ldrh r0, [r4]
	cmp r1, r0
	bcs _081952C4
	mov r0, r10
	adds r1, r6, 0
	ldr r2, [sp, 0x18]
	bl sub_818F904
	b _081952F0
	.pool
_081952C4:
	cmp r1, r0
	bne _081952F0
	ldr r0, =gSaveBlock2Ptr
	ldr r1, [r0]
	mov r3, r10
	lsls r0, r3, 2
	adds r0, r1, r0
	adds r0, r5
	ldrh r2, [r0]
	lsls r2, 22
	lsls r0, r6, 2
	adds r1, r0
	adds r1, r5
	ldrh r0, [r1]
	lsls r0, 22
	cmp r2, r0
	bls _081952F0
	mov r0, r10
	adds r1, r6, 0
	ldr r2, [sp, 0x18]
	bl sub_818F904
_081952F0:
	adds r4, 0x2
	adds r6, 0x1
	cmp r6, 0xF
	ble _08195288
_081952F8:
	adds r7, 0x2
	movs r4, 0x1
	add r10, r4
	mov r5, r10
	cmp r5, 0xE
	ble _08195276
	ldr r0, [sp, 0x18]
	bl Free
	ldr r0, [sp, 0x1C]
	bl Free
	movs r0, 0
	mov r10, r0
_08195314:
	mov r1, r10
	lsls r0, r1, 24
	lsrs r0, 24
	bl sub_8195438
	movs r2, 0x1
	add r10, r2
	mov r3, r10
	cmp r3, 0x3
	ble _08195314
	ldr r0, =gSaveBlock2Ptr
	ldr r1, [r0]
	ldr r4, =0x00000ca9
	adds r1, r4
	ldrb r2, [r1]
	movs r0, 0x4
	negs r0, r0
	ands r0, r2
	ldr r5, [sp, 0x14]
	orrs r0, r5
	strb r0, [r1]
_0819533E:
	add sp, 0x40
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8194F58

	thumb_func_start sub_8195358
sub_8195358: @ 8195358
	push {r4,r5,lr}
	lsls r0, 16
	lsrs r3, r0, 16
	movs r2, 0
	ldr r4, =gSaveBlock2Ptr
	ldr r0, [r4]
	ldr r1, =0x00000d24
	adds r0, r1
	ldrh r0, [r0]
	lsls r0, 22
	lsrs r0, 22
	cmp r0, r3
	beq _0819538E
	adds r5, r4, 0
	adds r4, r1, 0
_08195376:
	adds r2, 0x1
	cmp r2, 0xF
	bgt _0819538E
	ldr r0, [r5]
	lsls r1, r2, 2
	adds r0, r1
	adds r0, r4
	ldrh r0, [r0]
	lsls r0, 22
	lsrs r0, 22
	cmp r0, r3
	bne _08195376
_0819538E:
	adds r0, r2, 0
	pop {r4,r5}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_8195358

	thumb_func_start sub_81953A0
sub_81953A0: @ 81953A0
	push {r4,r5,lr}
	lsls r0, 16
	lsrs r3, r0, 16
	movs r2, 0
	ldr r4, =gSaveBlock2Ptr
	ldr r0, [r4]
	ldr r1, =0x00000d24
	adds r0, r1
	ldrh r0, [r0]
	lsls r0, 22
	lsrs r0, 22
	cmp r0, r3
	beq _081953D6
	adds r5, r4, 0
	adds r4, r1, 0
_081953BE:
	adds r2, 0x1
	cmp r2, 0xF
	bgt _081953D6
	ldr r0, [r5]
	lsls r1, r2, 2
	adds r0, r1
	adds r0, r4
	ldrh r0, [r0]
	lsls r0, 22
	lsrs r0, 22
	cmp r0, r3
	bne _081953BE
_081953D6:
	adds r0, r2, 0
	pop {r4,r5}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_81953A0

	thumb_func_start sub_81953E8
sub_81953E8: @ 81953E8
	push {r4,lr}
	sub sp, 0x4
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	lsls r1, 24
	lsrs r1, 24
	ldr r2, =gUnknown_0860D1A0
	ldr r0, =gUnknown_0860D1C0
	adds r0, r4, r0
	ldrb r0, [r0]
	lsrs r0, 1
	lsls r0, 2
	adds r1, r0
	adds r1, r2
	ldrb r0, [r1]
	subs r0, 0x10
	lsls r0, 24
	lsrs r0, 24
	mov r1, sp
	bl sub_8192F08
	mov r0, sp
	ldrb r0, [r0]
	cmp r4, r0
	beq _0819542C
	mov r0, sp
	ldrb r0, [r0]
	b _08195430
	.pool
_0819542C:
	mov r0, sp
	ldrb r0, [r0, 0x1]
_08195430:
	add sp, 0x4
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_81953E8

	thumb_func_start sub_8195438
sub_8195438: @ 8195438
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x40
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp]
	movs r0, 0
	str r0, [sp, 0xC]
	movs r1, 0
	str r1, [sp, 0x10]
	movs r5, 0
	movs r1, 0x3
	ldr r0, [sp]
	ands r0, r1
	lsls r0, 3
	str r0, [sp, 0x14]
_0819545E:
	ldr r2, =gSaveBlock2Ptr
	ldr r0, [r2]
	lsls r4, r5, 2
	adds r1, r0, r4
	ldr r3, =0x00000d25
	adds r0, r1, r3
	ldrb r0, [r0]
	lsls r0, 29
	adds r2, r5, 0x1
	str r2, [sp, 0x24]
	cmp r0, 0
	bge _08195478
	b _08195876
_08195478:
	subs r3, 0x1
	adds r0, r1, r3
	ldrh r0, [r0]
	lsls r1, r0, 22
	ldr r0, =0xffc00000
	cmp r1, r0
	bne _08195488
	b _08195876
_08195488:
	str r5, [sp, 0x4]
	lsrs r1, 22
	ldr r0, [sp]
	bl sub_81901A0
	str r0, [sp, 0x8]
	ldr r0, =gSaveBlock2Ptr
	ldr r3, [r0]
	adds r0, r3, r4
	ldr r1, =0x00000d24
	adds r0, r1
	ldrh r0, [r0]
	lsls r0, 22
	ldr r1, =0xff800000
	cmp r0, r1
	bne _08195504
	ldr r2, [sp, 0x8]
	cmp r2, 0xFF
	beq _08195504
	lsls r2, 2
	adds r1, r3, r2
	ldr r3, =0x00000d25
	adds r1, r3
	ldrb r0, [r1]
	movs r3, 0x4
	orrs r0, r3
	strb r0, [r1]
	ldr r0, =gSaveBlock2Ptr
	ldr r1, [r0]
	adds r1, r2
	ldr r2, =0x00000d25
	adds r1, r2
	ldrb r0, [r1]
	subs r3, 0x1D
	ands r0, r3
	ldr r2, [sp, 0x14]
	orrs r0, r2
	strb r0, [r1]
	adds r0, r5, 0
	ldr r1, [sp, 0x8]
	ldr r2, [sp]
	bl sub_8193ED0
	ldr r3, =gSaveBlock2Ptr
	ldr r1, [r3]
	ldr r5, [sp, 0x8]
	lsls r2, r5, 1
	movs r3, 0xEC
	lsls r3, 4
	adds r1, r3
	adds r1, r2
	b _08195874
	.pool
_08195504:
	ldr r4, =gSaveBlock2Ptr
	ldr r3, [r4]
	ldr r0, [sp, 0x8]
	lsls r2, r0, 2
	adds r0, r3, r2
	ldr r1, =0x00000d24
	adds r0, r1
	ldrh r0, [r0]
	lsls r0, 22
	ldr r1, =0xff800000
	str r2, [sp, 0x30]
	cmp r0, r1
	bne _0819557C
	ldr r2, [sp, 0x4]
	cmp r2, 0xFF
	beq _0819557C
	lsls r2, 2
	adds r1, r3, r2
	ldr r3, =0x00000d25
	adds r1, r3
	ldrb r0, [r1]
	movs r3, 0x4
	orrs r0, r3
	strb r0, [r1]
	ldr r1, [r4]
	adds r1, r2
	ldr r0, =0x00000d25
	adds r1, r0
	ldrb r0, [r1]
	movs r2, 0x19
	negs r2, r2
	ands r0, r2
	ldr r3, [sp, 0x14]
	orrs r0, r3
	strb r0, [r1]
	ldr r0, [sp, 0x8]
	ldr r1, [sp, 0x4]
	ldr r2, [sp]
	bl sub_8193ED0
	ldr r1, [r4]
	ldr r3, [sp, 0x4]
	lsls r2, r3, 1
	movs r3, 0xEC
	lsls r3, 4
	adds r1, r3
	adds r1, r2
	strh r0, [r1]
	adds r5, 0x1
	str r5, [sp, 0x24]
	b _08195876
	.pool
_0819557C:
	adds r5, 0x1
	str r5, [sp, 0x24]
	ldr r5, [sp, 0x8]
	cmp r5, 0xFF
	bne _08195588
	b _08195876
_08195588:
	movs r0, 0
	mov r10, r0
	lsls r1, r5, 1
	str r1, [sp, 0x2C]
	ldr r2, [sp, 0x4]
	lsls r2, 1
	str r2, [sp, 0x28]
	ldr r3, [sp, 0x4]
	adds r0, r2, r3
	lsls r0, 1
	mov r9, r0
	adds r0, r1, r5
	lsls r0, 1
	str r0, [sp, 0x18]
_081955A4:
	movs r5, 0
	mov r0, r9
	str r0, [sp, 0x38]
_081955AA:
	movs r6, 0
	lsls r7, r5, 1
	ldr r4, [sp, 0x18]
_081955B0:
	ldr r2, =gSaveBlock2Ptr
	ldr r1, [r2]
	ldr r3, =0x00000d64
	adds r1, r3
	ldr r2, [sp, 0x38]
	adds r0, r1, r2
	ldrh r0, [r0]
	ldr r3, =gUnknown_0203BC8C
	mov r8, r3
	ldr r2, [r3]
	lsls r0, 4
	adds r0, r2
	adds r0, 0x2
	adds r0, r7
	ldrh r0, [r0]
	adds r1, r4
	ldrh r1, [r1]
	lsls r1, 4
	adds r1, r2
	ldrh r1, [r1]
	movs r2, 0x2
	bl sub_818FFC0
	ldr r1, [sp, 0xC]
	adds r1, r0
	str r1, [sp, 0xC]
	adds r4, 0x2
	adds r6, 0x1
	cmp r6, 0x2
	ble _081955B0
	adds r5, 0x1
	cmp r5, 0x3
	ble _081955AA
	ldr r2, =gSaveBlock2Ptr
	ldr r0, [r2]
	ldr r3, =0x00000d64
	adds r0, r3
	add r0, r9
	ldrh r0, [r0]
	mov r5, r8
	ldr r1, [r5]
	lsls r0, 4
	adds r0, r1
	ldrh r2, [r0]
	ldr r0, =gBaseStats
	lsls r1, r2, 3
	subs r1, r2
	lsls r1, 2
	adds r1, r0
	ldrb r0, [r1]
	ldrb r2, [r1, 0x1]
	adds r0, r2
	ldrb r2, [r1, 0x2]
	adds r0, r2
	ldrb r2, [r1, 0x3]
	adds r0, r2
	ldrb r3, [r1, 0x4]
	adds r0, r3
	ldrb r1, [r1, 0x5]
	adds r0, r1
	movs r1, 0xA
	bl __divsi3
	ldr r5, [sp, 0xC]
	adds r5, r0
	str r5, [sp, 0xC]
	movs r0, 0x2
	add r9, r0
	movs r1, 0x1
	add r10, r1
	mov r2, r10
	cmp r2, 0x2
	ble _081955A4
	bl Random
	movs r1, 0x1F
	ands r1, r0
	adds r5, r1
	ldr r3, [sp, 0x4]
	adds r5, r3
	str r5, [sp, 0xC]
	movs r5, 0
	mov r10, r5
	ldr r1, [sp, 0x2C]
	ldr r2, [sp, 0x8]
	adds r0, r1, r2
	lsls r0, 1
	str r0, [sp, 0x1C]
	ldr r5, [sp, 0x28]
	adds r0, r5, r3
	lsls r0, 1
	str r0, [sp, 0x20]
_08195668:
	movs r5, 0
	mov r0, r10
	lsls r3, r0, 1
	movs r1, 0x1
	add r10, r1
	ldr r2, [sp, 0x1C]
	adds r2, r3
	mov r8, r2
_08195678:
	movs r6, 0
	lsls r7, r5, 1
	adds r5, 0x1
	str r5, [sp, 0x3C]
	ldr r4, [sp, 0x20]
_08195682:
	ldr r5, =gSaveBlock2Ptr
	ldr r1, [r5]
	ldr r0, =0x00000d64
	adds r1, r0
	mov r2, r8
	adds r0, r1, r2
	ldrh r0, [r0]
	ldr r5, =gUnknown_0203BC8C
	mov r9, r5
	ldr r2, [r5]
	lsls r0, 4
	adds r0, r2
	adds r0, 0x2
	adds r0, r7
	ldrh r0, [r0]
	adds r1, r4
	ldrh r1, [r1]
	lsls r1, 4
	adds r1, r2
	ldrh r1, [r1]
	movs r2, 0x2
	str r3, [sp, 0x34]
	bl sub_818FFC0
	ldr r1, [sp, 0x10]
	adds r1, r0
	str r1, [sp, 0x10]
	adds r4, 0x2
	adds r6, 0x1
	ldr r3, [sp, 0x34]
	cmp r6, 0x2
	ble _08195682
	ldr r5, [sp, 0x3C]
	cmp r5, 0x3
	ble _08195678
	ldr r2, =gSaveBlock2Ptr
	ldr r0, [r2]
	ldr r5, [sp, 0x1C]
	adds r1, r3, r5
	ldr r2, =0x00000d64
	adds r0, r2
	adds r0, r1
	ldrh r0, [r0]
	mov r3, r9
	ldr r1, [r3]
	lsls r0, 4
	adds r0, r1
	ldrh r2, [r0]
	ldr r0, =gBaseStats
	lsls r1, r2, 3
	subs r1, r2
	lsls r1, 2
	adds r1, r0
	ldrb r0, [r1]
	ldrb r2, [r1, 0x1]
	adds r0, r2
	ldrb r5, [r1, 0x2]
	adds r0, r5
	ldrb r2, [r1, 0x3]
	adds r0, r2
	ldrb r2, [r1, 0x4]
	adds r0, r2
	ldrb r1, [r1, 0x5]
	adds r0, r1
	movs r1, 0xA
	bl __divsi3
	ldr r3, [sp, 0x10]
	adds r3, r0
	str r3, [sp, 0x10]
	mov r5, r10
	cmp r5, 0x2
	ble _08195668
	bl Random
	movs r1, 0x1F
	ands r1, r0
	ldr r0, [sp, 0x10]
	adds r0, r1
	ldr r1, [sp, 0x8]
	adds r0, r1
	str r0, [sp, 0x10]
	ldr r2, [sp, 0xC]
	cmp r2, r0
	ble _08195784
	ldr r3, =gSaveBlock2Ptr
	ldr r1, [r3]
	ldr r5, [sp, 0x30]
	adds r1, r5
	ldr r0, =0x00000d25
	adds r1, r0
	ldrb r0, [r1]
	movs r2, 0x4
	orrs r0, r2
	strb r0, [r1]
	ldr r1, [r3]
	adds r1, r5
	ldr r3, =0x00000d25
	adds r1, r3
	ldrb r0, [r1]
	movs r5, 0x19
	negs r5, r5
	ands r0, r5
	ldr r2, [sp, 0x14]
	orrs r0, r2
	strb r0, [r1]
	ldr r0, [sp, 0x4]
	ldr r1, [sp, 0x8]
	ldr r2, [sp]
	bl sub_8193ED0
	ldr r3, =gSaveBlock2Ptr
	ldr r1, [r3]
	movs r5, 0xEC
	lsls r5, 4
	adds r1, r5
	ldr r2, [sp, 0x2C]
	adds r1, r2
	b _08195874
	.pool
_08195784:
	ldr r3, [sp, 0xC]
	ldr r5, [sp, 0x10]
	cmp r3, r5
	bge _081957DC
	ldr r0, =gSaveBlock2Ptr
	ldr r1, [r0]
	ldr r3, [sp, 0x4]
	lsls r2, r3, 2
	adds r1, r2
	ldr r5, =0x00000d25
	adds r1, r5
	ldrb r0, [r1]
	movs r3, 0x4
	orrs r0, r3
	strb r0, [r1]
	ldr r5, =gSaveBlock2Ptr
	ldr r1, [r5]
	adds r1, r2
	ldr r0, =0x00000d25
	adds r1, r0
	ldrb r0, [r1]
	movs r2, 0x19
	negs r2, r2
	ands r0, r2
	ldr r3, [sp, 0x14]
	orrs r0, r3
	strb r0, [r1]
	ldr r0, [sp, 0x8]
	ldr r1, [sp, 0x4]
	ldr r2, [sp]
	bl sub_8193ED0
	ldr r1, [r5]
	movs r5, 0xEC
	lsls r5, 4
	adds r1, r5
	ldr r2, [sp, 0x28]
	adds r1, r2
	b _08195874
	.pool
_081957DC:
	ldr r3, [sp, 0x4]
	ldr r5, [sp, 0x8]
	cmp r3, r5
	ble _08195830
	ldr r0, =gSaveBlock2Ptr
	ldr r1, [r0]
	ldr r2, [sp, 0x30]
	adds r1, r2
	ldr r3, =0x00000d25
	adds r1, r3
	ldrb r0, [r1]
	movs r5, 0x4
	orrs r0, r5
	strb r0, [r1]
	ldr r0, =gSaveBlock2Ptr
	ldr r1, [r0]
	adds r1, r2
	adds r1, r3
	ldrb r0, [r1]
	movs r2, 0x19
	negs r2, r2
	ands r0, r2
	ldr r3, [sp, 0x14]
	orrs r0, r3
	strb r0, [r1]
	ldr r0, [sp, 0x4]
	ldr r1, [sp, 0x8]
	ldr r2, [sp]
	bl sub_8193ED0
	ldr r5, =gSaveBlock2Ptr
	ldr r1, [r5]
	movs r2, 0xEC
	lsls r2, 4
	adds r1, r2
	ldr r3, [sp, 0x2C]
	b _08195872
	.pool
_08195830:
	ldr r5, =gSaveBlock2Ptr
	ldr r1, [r5]
	ldr r0, [sp, 0x4]
	lsls r2, r0, 2
	adds r1, r2
	ldr r3, =0x00000d25
	adds r1, r3
	ldrb r0, [r1]
	movs r5, 0x4
	orrs r0, r5
	strb r0, [r1]
	ldr r0, =gSaveBlock2Ptr
	ldr r1, [r0]
	adds r1, r2
	adds r1, r3
	ldrb r0, [r1]
	movs r2, 0x19
	negs r2, r2
	ands r0, r2
	ldr r3, [sp, 0x14]
	orrs r0, r3
	strb r0, [r1]
	ldr r0, [sp, 0x8]
	ldr r1, [sp, 0x4]
	ldr r2, [sp]
	bl sub_8193ED0
	ldr r5, =gSaveBlock2Ptr
	ldr r1, [r5]
	movs r2, 0xEC
	lsls r2, 4
	adds r1, r2
	ldr r3, [sp, 0x28]
_08195872:
	adds r1, r3
_08195874:
	strh r0, [r1]
_08195876:
	ldr r5, [sp, 0x24]
	cmp r5, 0xF
	bgt _0819587E
	b _0819545E
_0819587E:
	add sp, 0x40
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8195438

	thumb_func_start sub_8195898
sub_8195898: @ 8195898
	push {r4-r6,lr}
	adds r6, r0, 0
	lsls r1, 16
	lsrs r5, r1, 16
	movs r4, 0
	bl sub_8165C40
	ldr r0, =0x000003fe
	cmp r5, r0
	bne _081958B8
	adds r0, r6, 0
	bl sub_8195938
	b _08195902
	.pool
_081958B8:
	ldr r0, =0x000003ff
	cmp r5, r0
	bne _081958DC
	ldr r0, =gSaveBlock2Ptr
	ldr r2, [r0]
_081958C2:
	adds r0, r6, r4
	adds r1, r2, r4
	ldrb r1, [r1]
	strb r1, [r0]
	adds r4, 0x1
	cmp r4, 0x6
	ble _081958C2
	b _081958FC
	.pool
_081958DC:
	ldr r0, =0x0000012b
	cmp r5, r0
	bhi _081958FC
	ldr r0, =gUnknown_0203BC88
	ldr r1, [r0]
	movs r0, 0x34
	muls r0, r5
	adds r0, r1
	adds r2, r0, 0x4
_081958EE:
	adds r0, r6, r4
	adds r1, r2, r4
	ldrb r1, [r1]
	strb r1, [r0]
	adds r4, 0x1
	cmp r4, 0x6
	ble _081958EE
_081958FC:
	adds r1, r6, r4
	movs r0, 0xFF
	strb r0, [r1]
_08195902:
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8195898

	thumb_func_start sub_8195910
sub_8195910: @ 8195910
	ldr r0, =gTrainers
	ldr r1, =0x00007df3
	adds r0, r1
	ldrb r0, [r0]
	bx lr
	.pool
	thumb_func_end sub_8195910

	thumb_func_start sub_8195924
sub_8195924: @ 8195924
	ldr r0, =gTrainers
	ldr r1, =0x00007df1
	adds r0, r1
	ldrb r0, [r0]
	bx lr
	.pool
	thumb_func_end sub_8195924

	thumb_func_start sub_8195938
sub_8195938: @ 8195938
	push {r4,lr}
	adds r3, r0, 0
	movs r2, 0
	ldr r4, =gTrainers + TRAINER_TUCKER * 0x28 + 0x4 @ Tucker's name
_08195940:
	adds r0, r3, r2
	adds r1, r2, r4
	ldrb r1, [r1]
	strb r1, [r0]
	adds r2, 0x1
	cmp r2, 0x6
	ble _08195940
	adds r1, r3, r2
	movs r0, 0xFF
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8195938

	thumb_func_start sub_8195960
sub_8195960: @ 8195960
	push {lr}
	ldr r1, =gUnknown_0860DE50
	ldr r0, =gUnknown_020375E0
	ldrh r0, [r0]
	lsls r0, 2
	adds r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8195960

	thumb_func_start sub_8195980
sub_8195980: @ 8195980
	push {r4-r7,lr}
	ldr r4, =gSaveBlock2Ptr
	ldr r0, [r4]
	ldr r1, =0x00000ca9
	adds r0, r1
	ldrb r0, [r0]
	lsls r0, 30
	lsrs r5, r0, 30
	ldr r0, =0x000040ce
	bl VarGet
	lsls r0, 16
	lsrs r7, r0, 16
	ldr r0, [r4]
	ldr r2, =0x00000ca8
	adds r0, r2
	movs r6, 0
	strb r6, [r0]
	ldr r1, [r4]
	adds r2, 0xA
	adds r0, r1, r2
	strh r6, [r0]
	ldr r0, =0x00000ca9
	adds r1, r0
	ldrb r2, [r1]
	movs r0, 0x5
	negs r0, r0
	ands r0, r2
	strb r0, [r1]
	ldr r1, [r4]
	ldr r2, =0x00000ca9
	adds r1, r2
	ldrb r2, [r1]
	movs r0, 0x9
	negs r0, r0
	ands r0, r2
	strb r0, [r1]
	ldr r4, [r4]
	ldr r0, =0x00000cdc
	adds r3, r4, r0
	ldr r2, =gUnknown_0860DE98
	lsls r1, r5, 2
	lsls r0, r7, 3
	adds r1, r0
	adds r1, r2
	ldr r0, [r3]
	ldr r1, [r1]
	ands r0, r1
	cmp r0, 0
	bne _081959F2
	lsls r0, r5, 1
	lsls r1, r7, 2
	adds r0, r1
	ldr r2, =0x00000dc8
	adds r1, r4, r2
	adds r1, r0
	strh r6, [r1]
_081959F2:
	ldr r0, =gSaveBlock1Ptr
	ldr r0, [r0]
	movs r1, 0x4
	ldrsb r1, [r0, r1]
	movs r2, 0x5
	ldrsb r2, [r0, r2]
	movs r3, 0x1
	negs r3, r3
	movs r0, 0
	bl saved_warp2_set
	ldr r0, =gUnknown_02038BCA
	strh r6, [r0]
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8195980

	thumb_func_start sub_8195A38
sub_8195A38: @ 8195A38
	push {r4-r7,lr}
	ldr r5, =gSaveBlock2Ptr
	ldr r0, [r5]
	ldr r1, =0x00000ca9
	adds r0, r1
	ldrb r0, [r0]
	lsls r0, 30
	lsrs r7, r0, 30
	ldr r0, =0x000040ce
	bl VarGet
	lsls r0, 16
	lsrs r6, r0, 16
	ldr r0, =gUnknown_020375E2
	ldrh r0, [r0]
	cmp r0, 0x1
	beq _08195A90
	cmp r0, 0x1
	bgt _08195A74
	cmp r0, 0
	beq _08195A7A
	b _08195AD0
	.pool
_08195A74:
	cmp r0, 0x2
	beq _08195AB0
	b _08195AD0
_08195A7A:
	ldr r0, =gUnknown_020375F0
	ldr r1, [r5]
	ldr r2, =0x00000dc6
	adds r1, r2
	ldrh r1, [r1]
	strh r1, [r0]
	b _08195AD0
	.pool
_08195A90:
	ldr r3, =gUnknown_020375F0
	ldr r0, [r5]
	lsls r1, r7, 1
	lsls r2, r6, 2
	adds r1, r2
	ldr r2, =0x00000dc8
	adds r0, r2
	adds r0, r1
	ldrh r0, [r0]
	strh r0, [r3]
	b _08195AD0
	.pool
_08195AB0:
	ldr r4, =gUnknown_020375F0
	ldr r2, [r5]
	ldr r0, =0x00000cdc
	adds r2, r0
	ldr r3, =gUnknown_0860DE98
	lsls r0, r7, 2
	lsls r1, r6, 3
	adds r0, r1
	adds r0, r3
	ldr r1, [r2]
	ldr r0, [r0]
	ands r1, r0
	negs r0, r1
	orrs r0, r1
	lsrs r0, 31
	strh r0, [r4]
_08195AD0:
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8195A38

	thumb_func_start sub_8195AE4
sub_8195AE4: @ 8195AE4
	push {r4-r6,lr}
	ldr r6, =gSaveBlock2Ptr
	ldr r0, [r6]
	ldr r1, =0x00000ca9
	adds r0, r1
	ldrb r0, [r0]
	lsls r0, 30
	lsrs r5, r0, 30
	ldr r0, =0x000040ce
	bl VarGet
	lsls r0, 16
	lsrs r4, r0, 16
	ldr r0, =gUnknown_020375E2
	ldrh r0, [r0]
	cmp r0, 0x1
	beq _08195B3C
	cmp r0, 0x1
	bgt _08195B20
	cmp r0, 0
	beq _08195B26
	b _08195BA0
	.pool
_08195B20:
	cmp r0, 0x2
	beq _08195B5C
	b _08195BA0
_08195B26:
	ldr r0, [r6]
	ldr r1, =gUnknown_020375E4
	ldrh r1, [r1]
	ldr r2, =0x00000dc6
	adds r0, r2
	strh r1, [r0]
	b _08195BA0
	.pool
_08195B3C:
	ldr r2, [r6]
	lsls r0, r5, 1
	lsls r1, r4, 2
	adds r0, r1
	ldr r1, =0x00000dc8
	adds r2, r1
	adds r2, r0
	ldr r0, =gUnknown_020375E4
	ldrh r0, [r0]
	strh r0, [r2]
	b _08195BA0
	.pool
_08195B5C:
	ldr r0, =gUnknown_020375E4
	ldrh r0, [r0]
	cmp r0, 0
	beq _08195B88
	ldr r2, [r6]
	ldr r0, =0x00000cdc
	adds r2, r0
	ldr r3, =gUnknown_0860DE98
	lsls r1, r5, 2
	lsls r0, r4, 3
	adds r1, r0
	adds r1, r3
	ldr r0, [r2]
	ldr r1, [r1]
	orrs r0, r1
	b _08195B9E
	.pool
_08195B88:
	ldr r2, [r6]
	ldr r1, =0x00000cdc
	adds r2, r1
	ldr r3, =gUnknown_0860DEA8
	lsls r1, r5, 2
	lsls r0, r4, 3
	adds r1, r0
	adds r1, r3
	ldr r0, [r2]
	ldr r1, [r1]
	ands r0, r1
_08195B9E:
	str r0, [r2]
_08195BA0:
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8195AE4

	thumb_func_start sub_8195BB0
sub_8195BB0: @ 8195BB0
	push {r4,lr}
	ldr r0, =0x000040ce
	bl VarGet
	lsls r0, 16
	ldr r1, =gSaveBlock2Ptr
	ldr r2, [r1]
	ldr r3, =0x00000ca9
	adds r1, r2, r3
	ldrb r1, [r1]
	lsls r1, 30
	lsrs r1, 29
	lsrs r0, 14
	adds r1, r0
	ldr r0, =0x00000dc8
	adds r2, r0
	adds r2, r1
	ldrh r0, [r2]
	cmp r0, 0x31
	bhi _08195C00
	ldr r4, =gUnknown_020375F0
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x3
	bl __umodsi3
	strh r0, [r4]
	b _08195C16
	.pool
_08195C00:
	cmp r0, 0x62
	bhi _08195C10
	ldr r1, =gUnknown_020375F0
	movs r0, 0x3
	b _08195C14
	.pool
_08195C10:
	ldr r1, =gUnknown_020375F0
	movs r0, 0x4
_08195C14:
	strh r0, [r1]
_08195C16:
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8195BB0

	thumb_func_start sub_8195C20
sub_8195C20: @ 8195C20
	push {r4,lr}
	ldr r4, =gUnknown_02038BCA
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0xFF
	bl __umodsi3
	lsls r0, 16
	lsrs r0, 16
	lsls r1, r0, 2
	adds r1, r0
	lsrs r1, 6
	strh r1, [r4]
	ldrh r0, [r4]
	movs r1, 0
	bl sub_8162614
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8195C20

	thumb_func_start sub_8195C50
sub_8195C50: @ 8195C50
	push {lr}
	ldr r3, =gUnknown_02038BCA
	ldrh r1, [r3]
	ldr r0, =0x0000012b
	cmp r1, r0
	bhi _08195C6C
	ldr r2, =gUnknown_0203BC88
	movs r0, 0x34
	muls r1, r0
	ldr r0, [r2]
	adds r0, r1
	adds r0, 0xC
	bl ConvertBattleFrontierTrainerSpeechToString
_08195C6C:
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8195C50

	thumb_func_start sub_8195C7C
sub_8195C7C: @ 8195C7C
	push {r4-r7,lr}
	ldr r4, =gSaveBlock2Ptr
	ldr r0, [r4]
	ldr r1, =0x00000ca9
	adds r0, r1
	ldrb r0, [r0]
	lsls r0, 30
	lsrs r7, r0, 30
	ldr r0, =0x000040ce
	bl VarGet
	lsls r0, 24
	ldr r4, [r4]
	lsls r1, r7, 1
	lsrs r5, r0, 22
	adds r1, r5
	ldr r3, =0x00000dc8
	adds r6, r4, r3
	adds r3, r6, r1
	ldrh r2, [r3]
	ldr r0, =0x0000270e
	cmp r2, r0
	bhi _08195CCA
	adds r2, 0x1
	strh r2, [r3]
	movs r3, 0xDD
	lsls r3, 4
	adds r0, r4, r3
	adds r1, r0, r1
	adds r0, r5, 0
	ldrh r3, [r1]
	cmp r7, r3
	bls _08195CC0
	adds r0, 0x2
_08195CC0:
	adds r0, r6, r0
	ldrh r0, [r0]
	cmp r0, 0
	beq _08195CCA
	strh r2, [r1]
_08195CCA:
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8195C7C

	thumb_func_start sub_8195CE4
sub_8195CE4: @ 8195CE4
	push {r4,lr}
	ldr r4, =gSaveBlock2Ptr
	ldr r0, [r4]
	ldr r1, =gUnknown_020375E2
	ldrh r1, [r1]
	ldr r2, =0x00000ca8
	adds r0, r2
	strb r1, [r0]
	movs r0, 0x80
	lsls r0, 7
	movs r1, 0
	bl VarSet
	ldr r1, [r4]
	ldr r0, =0x00000ca9
	adds r1, r0
	ldrb r0, [r1]
	movs r2, 0x4
	orrs r0, r2
	strb r0, [r1]
	bl sub_81A4C30
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8195CE4

	thumb_func_start sub_8195D28
sub_8195D28: @ 8195D28
	push {r4,r5,lr}
	ldr r0, =0x000040ce
	bl VarGet
	lsls r0, 16
	ldr r4, =gSaveBlock2Ptr
	ldr r2, [r4]
	ldr r3, =0x00000ca9
	adds r1, r2, r3
	ldrb r1, [r1]
	lsls r1, 30
	lsrs r1, 29
	lsrs r0, 14
	adds r1, r0
	ldr r0, =0x00000dc8
	adds r2, r0
	adds r2, r1
	ldrh r0, [r2]
	cmp r0, 0x29
	bls _08195D88
	bl Random
	ldr r4, [r4]
	ldr r5, =gUnknown_0860DE84
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x9
	bl __umodsi3
	lsls r0, 16
	lsrs r0, 15
	adds r0, r5
	ldrh r0, [r0]
	ldr r1, =0x00000dc6
	adds r4, r1
	b _08195DA6
	.pool
_08195D88:
	bl Random
	ldr r4, [r4]
	ldr r5, =gUnknown_0860DE78
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x6
	bl __umodsi3
	lsls r0, 16
	lsrs r0, 15
	adds r0, r5
	ldrh r0, [r0]
	ldr r3, =0x00000dc6
	adds r4, r3
_08195DA6:
	strh r0, [r4]
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8195D28

	thumb_func_start sub_8195DB8
sub_8195DB8: @ 8195DB8
	push {r4,r5,lr}
	ldr r4, =gSaveBlock2Ptr
	ldr r0, [r4]
	ldr r1, =0x00000dc6
	adds r0, r1
	ldrh r0, [r0]
	movs r1, 0x1
	bl bag_add_item
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, 0x1
	bne _08195E00
	ldr r0, [r4]
	ldr r1, =0x00000dc6
	adds r0, r1
	ldrh r0, [r0]
	ldr r1, =gStringVar1
	bl itemid_get_name
	ldr r0, [r4]
	ldr r1, =0x00000dc6
	adds r0, r1
	movs r1, 0
	strh r1, [r0]
	ldr r0, =gUnknown_020375F0
	strh r5, [r0]
	b _08195E06
	.pool
_08195E00:
	ldr r1, =gUnknown_020375F0
	movs r0, 0
	strh r0, [r1]
_08195E06:
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8195DB8

	thumb_func_start sub_8195E10
sub_8195E10: @ 8195E10
	push {lr}
	bl GameFreakRTC_CalcLocalDateTime
	ldr r0, =gUnknown_03005CF8
	bl sub_8195E34
	ldr r1, =gUnknown_0203CD80
	adds r0, 0xA
	str r0, [r1]
	movs r0, 0
	strb r0, [r1, 0x6]
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8195E10

	thumb_func_start sub_8195E34
sub_8195E34: @ 8195E34
	adds r3, r0, 0
	movs r1, 0
	ldrsh r0, [r3, r1]
	lsls r1, r0, 1
	adds r1, r0
	lsls r0, r1, 4
	subs r0, r1
	lsls r0, 5
	movs r2, 0x2
	ldrsb r2, [r3, r2]
	lsls r1, r2, 4
	subs r1, r2
	lsls r1, 2
	adds r0, r1
	movs r1, 0x3
	ldrsb r1, [r3, r1]
	adds r0, r1
	bx lr
	thumb_func_end sub_8195E34

	thumb_func_start sub_8195E58
sub_8195E58: @ 8195E58
	push {lr}
	bl GameFreakRTC_CalcLocalDateTime
	ldr r0, =gUnknown_03005CF8
	bl sub_8195E34
	adds r1, r0, 0
	ldr r2, =gUnknown_0203CD80
	ldr r0, [r2]
	cmp r0, r1
	bhi _08195E74
	subs r0, r1, r0
	cmp r0, 0x9
	bls _08195E84
_08195E74:
	str r1, [r2]
	movs r0, 0x1
	b _08195E86
	.pool
_08195E84:
	movs r0, 0
_08195E86:
	pop {r1}
	bx r1
	thumb_func_end sub_8195E58

	thumb_func_start sub_8195E8C
sub_8195E8C: @ 8195E8C
	push {r4,r5,lr}
	movs r5, 0x1
	ldr r4, =gPlayerParty
	adds r0, r4, 0
	movs r1, 0x6
	bl GetMonData
	cmp r0, 0
	bne _08195EAE
	adds r0, r4, 0
	bl GetMonAbility
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1F
	bne _08195EAE
	movs r5, 0x2
_08195EAE:
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0xA
	bl __umodsi3
	lsls r0, 16
	lsrs r0, 16
	lsls r1, r5, 1
	adds r1, r5
	cmp r0, r1
	blt _08195ED0
	movs r0, 0
	b _08195ED2
	.pool
_08195ED0:
	movs r0, 0x1
_08195ED2:
	pop {r4,r5}
	pop {r1}
	bx r1
	thumb_func_end sub_8195E8C

	thumb_func_start sub_8195ED8
sub_8195ED8: @ 8195ED8
	push {r4,lr}
	ldr r4, =gUnknown_02037318
	ldrb r0, [r4, 0x17]
	bl is_light_level_1_2_3_or_6
	lsls r0, 24
	cmp r0, 0
	beq _08195F30
	ldrb r0, [r4, 0x14]
	cmp r0, 0x39
	beq _08195F30
	cmp r0, 0xE
	bne _08195F0E
	movs r0, 0xF9
	lsls r0, 2
	bl FlagGet
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _08195F0E
	movs r0, 0xDC
	bl FlagGet
	lsls r0, 24
	cmp r0, 0
	beq _08195F30
_08195F0E:
	ldr r0, =gUnknown_02037318
	ldrb r0, [r0, 0x14]
	cmp r0, 0x38
	bne _08195F38
	movs r0, 0xCF
	bl FlagGet
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _08195F38
	movs r0, 0x8B
	bl FlagGet
	lsls r0, 24
	cmp r0, 0
	bne _08195F38
_08195F30:
	movs r0, 0
	b _08195F3A
	.pool
_08195F38:
	movs r0, 0x1
_08195F3A:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_8195ED8

	thumb_func_start sub_8195F40
sub_8195F40: @ 8195F40
	push {lr}
	ldr r1, =gUnknown_0203CD80
	ldrb r0, [r1, 0x6]
	adds r0, 0x1
	strb r0, [r1, 0x6]
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x9
	bhi _08195F5C
	movs r0, 0
	b _08195F62
	.pool
_08195F5C:
	movs r0, 0
	strb r0, [r1, 0x6]
	movs r0, 0x1
_08195F62:
	pop {r1}
	bx r1
	thumb_func_end sub_8195F40

	thumb_func_start sub_8195F68
sub_8195F68: @ 8195F68
	push {r4,lr}
	bl sub_8195FCC
	adds r4, r0, 0
	cmp r4, 0
	beq _08195FB8
	bl Random
	lsls r0, 16
	lsrs r0, 16
	adds r1, r4, 0
	bl __umodsi3
	bl sub_8195FF8
	ldr r2, =gUnknown_0203CD80
	movs r1, 0
	strh r0, [r2, 0x4]
	strb r1, [r2, 0x7]
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0x4E
	beq _08195FB8
	ldrh r0, [r2, 0x4]
	bl sub_8196844
	adds r4, r0, 0
	bl sub_819672C
	ldr r1, =gUnknown_02037318
	lsls r0, 16
	lsrs r0, 16
	ldrb r1, [r1, 0x14]
	cmp r0, r1
	bne _08195FC4
	adds r0, r4, 0
	bl sub_8196710
	cmp r0, 0
	bne _08195FC4
_08195FB8:
	movs r0, 0
	b _08195FC6
	.pool
_08195FC4:
	movs r0, 0x1
_08195FC6:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_8195F68

	thumb_func_start sub_8195FCC
sub_8195FCC: @ 8195FCC
	push {r4,r5,lr}
	movs r4, 0
	movs r5, 0
_08195FD2:
	movs r1, 0xAE
	lsls r1, 1
	adds r0, r4, r1
	lsls r0, 16
	lsrs r0, 16
	bl FlagGet
	lsls r0, 24
	cmp r0, 0
	beq _08195FE8
	adds r5, 0x1
_08195FE8:
	adds r4, 0x1
	cmp r4, 0x3F
	bls _08195FD2
	adds r0, r5, 0
	pop {r4,r5}
	pop {r1}
	bx r1
	thumb_func_end sub_8195FCC

	thumb_func_start sub_8195FF8
sub_8195FF8: @ 8195FF8
	push {r4-r6,lr}
	adds r5, r0, 0
	movs r4, 0
	ldr r6, =gUnknown_085500A4
_08196000:
	movs r1, 0xAE
	lsls r1, 1
	adds r0, r4, r1
	lsls r0, 16
	lsrs r0, 16
	bl FlagGet
	lsls r0, 24
	cmp r0, 0
	beq _08196022
	cmp r5, 0
	bne _08196020
	ldrh r0, [r6]
	b _0819602C
	.pool
_08196020:
	subs r5, 0x1
_08196022:
	adds r6, 0x10
	adds r4, 0x1
	cmp r4, 0x3F
	bls _08196000
	movs r0, 0x4E
_0819602C:
	pop {r4-r6}
	pop {r1}
	bx r1
	thumb_func_end sub_8195FF8

	thumb_func_start sub_8196034
sub_8196034: @ 8196034
	push {lr}
	ldr r0, =0x0000012f
	bl FlagGet
	lsls r0, 24
	cmp r0, 0
	beq _08196078
	bl sub_8195F40
	cmp r0, 0
	beq _08196078
	bl sub_8195E58
	cmp r0, 0
	beq _08196078
	bl sub_8195E8C
	cmp r0, 0
	beq _08196078
	bl sub_8195ED8
	cmp r0, 0
	beq _08196078
	bl sub_8195F68
	cmp r0, 0
	beq _08196078
	bl task_prev_quest
	movs r0, 0x1
	b _0819607A
	.pool
_08196078:
	movs r0, 0
_0819607A:
	pop {r1}
	bx r1
	thumb_func_end sub_8196034

	thumb_func_start sub_8196080
sub_8196080: @ 8196080
	push {lr}
	ldr r1, =gUnknown_0203CD80
	movs r0, 0x1
	strb r0, [r1, 0x7]
	bl task_prev_quest
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8196080

	thumb_func_start sub_8196094
sub_8196094: @ 8196094
	push {lr}
	ldr r0, =sub_81960E0
	bl FuncIsActiveTask
	lsls r0, 24
	lsrs r0, 24
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_8196094

	thumb_func_start task_prev_quest
task_prev_quest: @ 81960A8
	push {lr}
	ldr r0, =gUnknown_0203CD80
	ldrb r0, [r0, 0x7]
	cmp r0, 0
	bne _081960C2
	bl script_env_2_enable
	bl player_bitmagic
	bl sub_808B864
	bl sub_808BCF4
_081960C2:
	ldr r0, =0x00000107
	bl audio_play
	ldr r0, =sub_81960E0
	movs r1, 0x1
	bl CreateTask
	pop {r0}
	bx r0
	.pool
	thumb_func_end task_prev_quest

	thumb_func_start sub_81960E0
sub_81960E0: @ 81960E0
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r5, r0, 24
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	ldr r1, =gTasks + 0x8
	adds r4, r0, r1
	ldr r1, =gUnknown_0860EF78
	movs r2, 0
	ldrsh r0, [r4, r2]
	lsls r0, 2
	adds r0, r1
	ldr r1, [r0]
	adds r0, r5, 0
	bl _call_via_r1
	cmp r0, 0
	beq _0819611E
	ldrh r0, [r4]
	adds r0, 0x1
	strh r0, [r4]
	movs r1, 0
	strh r1, [r4, 0x2]
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0x7
	bls _0819611E
	adds r0, r5, 0
	bl DestroyTask
_0819611E:
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81960E0

	thumb_func_start sub_819612C
sub_819612C: @ 819612C
	push {r4-r6,lr}
	sub sp, 0x4
	lsls r0, 24
	lsrs r4, r0, 24
	adds r6, r4, 0
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	ldr r1, =gTasks + 0x8
	adds r5, r0, r1
	ldr r0, =gUnknown_0860EF98
	bl AddWindow
	strh r0, [r5, 0x4]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0xFF
	bne _0819615C
	adds r0, r4, 0
	b _081961E0
	.pool
_0819615C:
	ldr r1, =gUnknown_0860EA6C
	movs r2, 0x80
	lsls r2, 1
	movs r3, 0x9C
	lsls r3, 2
	movs r0, 0
	bl LoadBgTiles
	lsls r0, 16
	ldr r1, =0xffff0000
	cmp r0, r1
	bne _08196188
	ldrb r0, [r5, 0x4]
	bl RemoveWindow
	adds r0, r4, 0
	b _081961E0
	.pool
_08196188:
	ldr r1, =gUnknown_0860EB8C
	ldr r3, =0x00000279
	movs r0, 0
	str r0, [sp]
	movs r2, 0
	bl decompress_and_copy_tile_data_to_vram
	cmp r0, 0
	beq _081961D8
	ldrb r0, [r5, 0x4]
	movs r1, 0x88
	bl FillWindowPixelBuffer
	ldr r0, =gUnknown_0860EA4C
	movs r1, 0xE0
	movs r2, 0x20
	bl LoadPalette
	ldr r0, =gUnknown_0860EB6C
	movs r1, 0xF0
	movs r2, 0x20
	bl LoadPalette
	ldr r1, =0xffffe000
	movs r0, 0
	movs r2, 0
	bl ChangeBgY
	movs r0, 0x1
	b _081961E6
	.pool
_081961D8:
	ldrb r0, [r5, 0x4]
	bl RemoveWindow
	adds r0, r6, 0
_081961E0:
	bl DestroyTask
	movs r0, 0
_081961E6:
	add sp, 0x4
	pop {r4-r6}
	pop {r1}
	bx r1
	thumb_func_end sub_819612C

	thumb_func_start sub_81961F0
sub_81961F0: @ 81961F0
	push {r4,lr}
	sub sp, 0x10
	lsls r0, 24
	lsrs r0, 24
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	ldr r0, =gTasks + 0x8
	adds r4, r1, r0
	bl free_temp_tile_data_buffers_if_possible
	lsls r0, 24
	cmp r0, 0
	bne _08196268
	ldrb r0, [r4, 0x4]
	bl PutWindowTilemap
	movs r1, 0x4
	ldrsh r0, [r4, r1]
	movs r1, 0x9C
	lsls r1, 2
	movs r2, 0xE
	bl sub_819645C
	ldr r1, =0x0000f279
	movs r0, 0x4
	str r0, [sp]
	str r0, [sp, 0x4]
	movs r0, 0x11
	str r0, [sp, 0x8]
	movs r0, 0x1
	str r0, [sp, 0xC]
	movs r0, 0
	movs r2, 0x1
	movs r3, 0xF
	bl WriteSequenceToBgTilemapBuffer
	ldr r0, =sub_8196694
	movs r1, 0xA
	bl CreateTask
	lsls r0, 24
	lsrs r0, 24
	strh r0, [r4, 0xA]
	ldrb r0, [r4, 0x4]
	movs r1, 0x2
	bl CopyWindowToVram
	movs r0, 0
	bl CopyBgTilemapBufferToVram
	movs r0, 0x1
	b _0819626A
	.pool
_08196268:
	movs r0, 0
_0819626A:
	add sp, 0x10
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_81961F0

	thumb_func_start sub_8196274
sub_8196274: @ 8196274
	push {r4,lr}
	lsls r0, 24
	lsrs r0, 24
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	ldr r0, =gTasks + 0x8
	adds r4, r1, r0
	bl IsDma3ManagerBusyWithBgCopy
	lsls r0, 24
	cmp r0, 0
	beq _08196298
	movs r0, 0
	b _081962A4
	.pool
_08196298:
	movs r1, 0x4
	ldrsh r0, [r4, r1]
	ldr r1, =gUnknown_0860EF70
	bl sub_81965D8
	movs r0, 0x1
_081962A4:
	pop {r4}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_8196274

	thumb_func_start sub_81962B0
sub_81962B0: @ 81962B0
	push {lr}
	movs r1, 0xC0
	lsls r1, 3
	movs r0, 0
	movs r2, 0x1
	bl ChangeBgY
	cmp r0, 0
	bge _081962C6
	movs r0, 0
	b _081962D2
_081962C6:
	movs r0, 0
	movs r1, 0
	movs r2, 0
	bl ChangeBgY
	movs r0, 0x1
_081962D2:
	pop {r1}
	bx r1
	thumb_func_end sub_81962B0

	thumb_func_start sub_81962D8
sub_81962D8: @ 81962D8
	push {r4,lr}
	lsls r0, 24
	lsrs r0, 24
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	ldr r0, =gTasks + 0x8
	adds r4, r1, r0
	movs r1, 0x4
	ldrsh r0, [r4, r1]
	bl sub_8196648
	cmp r0, 0
	bne _08196328
	ldrb r0, [r4, 0x4]
	movs r1, 0x88
	bl FillWindowPixelBuffer
	ldr r1, =gUnknown_0203CD80
	ldrb r0, [r1, 0x7]
	cmp r0, 0
	bne _0819630C
	ldrh r0, [r1, 0x4]
	ldr r1, =gStringVar4
	bl sub_81967AC
_0819630C:
	movs r1, 0x4
	ldrsh r0, [r4, r1]
	ldr r1, =gStringVar4
	bl sub_81965D8
	movs r0, 0x1
	b _0819632A
	.pool
_08196328:
	movs r0, 0
_0819632A:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_81962D8

	thumb_func_start sub_8196330
sub_8196330: @ 8196330
	push {r4,lr}
	lsls r0, 24
	lsrs r0, 24
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	ldr r0, =gTasks + 0x8
	adds r4, r1, r0
	movs r1, 0x4
	ldrsh r0, [r4, r1]
	bl sub_8196648
	cmp r0, 0
	bne _08196388
	bl mplay_has_finished_maybe
	lsls r0, 24
	cmp r0, 0
	bne _08196388
	ldr r0, =gMain
	ldrh r1, [r0, 0x2E]
	movs r0, 0x3
	ands r0, r1
	cmp r0, 0
	beq _08196388
	ldrb r0, [r4, 0x4]
	movs r1, 0x88
	bl FillWindowPixelBuffer
	ldrb r0, [r4, 0x4]
	movs r1, 0x2
	bl CopyWindowToVram
	movs r0, 0x84
	lsls r0, 1
	bl audio_play
	movs r0, 0x1
	b _0819638A
	.pool
_08196388:
	movs r0, 0
_0819638A:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_8196330

	thumb_func_start sub_8196390
sub_8196390: @ 8196390
	push {r4,lr}
	sub sp, 0x8
	lsls r0, 24
	lsrs r0, 24
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	ldr r0, =gTasks + 0x8
	adds r4, r1, r0
	movs r1, 0xC0
	lsls r1, 3
	movs r0, 0
	movs r2, 0x2
	bl ChangeBgY
	ldr r1, =0xffffe000
	cmp r0, r1
	ble _081963C0
	movs r0, 0
	b _081963E8
	.pool
_081963C0:
	movs r0, 0x1E
	str r0, [sp]
	movs r0, 0x6
	str r0, [sp, 0x4]
	movs r0, 0
	movs r1, 0
	movs r2, 0
	movs r3, 0xE
	bl FillBgTilemapBufferRect_Palette0
	ldrb r0, [r4, 0xA]
	bl DestroyTask
	ldrb r0, [r4, 0x4]
	bl RemoveWindow
	movs r0, 0
	bl CopyBgTilemapBufferToVram
	movs r0, 0x1
_081963E8:
	add sp, 0x8
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_8196390

	thumb_func_start sub_81963F0
sub_81963F0: @ 81963F0
	push {lr}
	bl IsDma3ManagerBusyWithBgCopy
	lsls r0, 24
	cmp r0, 0
	bne _08196454
	bl mplay_has_finished_maybe
	lsls r0, 24
	cmp r0, 0
	bne _08196454
	movs r0, 0
	movs r1, 0
	movs r2, 0
	bl ChangeBgY
	ldr r0, =gUnknown_0203CD80
	ldrb r0, [r0, 0x7]
	cmp r0, 0
	bne _08196446
	bl sub_81973A4
	movs r0, 0xFF
	movs r1, 0
	movs r2, 0
	bl GetFieldObjectIdByLocalIdAndMap
	adds r1, r0, 0
	lsls r1, 24
	lsrs r1, 24
	lsls r0, r1, 3
	adds r0, r1
	lsls r0, 2
	ldr r1, =gUnknown_02037350
	adds r0, r1
	bl FieldObjectClearAnimIfSpecialAnimFinished
	bl sub_80D338C
	bl sub_809757C
	bl script_env_2_disable
_08196446:
	movs r0, 0x1
	b _08196456
	.pool
_08196454:
	movs r0, 0
_08196456:
	pop {r1}
	bx r1
	thumb_func_end sub_81963F0

	thumb_func_start sub_819645C
sub_819645C: @ 819645C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x20
	adds r4, r0, 0
	adds r5, r1, 0
	adds r7, r2, 0
	lsls r4, 24
	lsrs r4, 24
	adds r0, r4, 0
	movs r1, 0
	bl GetWindowAttribute
	mov r9, r0
	adds r0, r4, 0
	movs r1, 0x1
	bl GetWindowAttribute
	str r0, [sp, 0x8]
	adds r0, r4, 0
	movs r1, 0x2
	bl GetWindowAttribute
	str r0, [sp, 0xC]
	adds r0, r4, 0
	movs r1, 0x3
	bl GetWindowAttribute
	adds r6, r0, 0
	adds r0, r4, 0
	movs r1, 0x4
	bl GetWindowAttribute
	str r0, [sp, 0x10]
	mov r0, r9
	lsls r0, 24
	lsrs r0, 24
	mov r9, r0
	movs r1, 0xA
	bl GetBgAttribute
	lsls r0, 16
	lsrs r0, 16
	adds r5, r0
	lsls r7, 12
	movs r1, 0xF0
	lsls r1, 8
	adds r0, r1, 0
	ands r7, r0
	adds r1, r7, 0
	orrs r1, r5
	lsls r1, 16
	lsrs r1, 16
	ldr r2, [sp, 0x8]
	subs r2, 0x1
	lsls r2, 24
	lsrs r2, 24
	mov r10, r2
	ldr r4, [sp, 0xC]
	subs r4, 0x1
	lsls r4, 24
	lsrs r4, 24
	movs r3, 0x1
	mov r8, r3
	str r3, [sp]
	str r3, [sp, 0x4]
	mov r0, r9
	adds r3, r4, 0
	bl FillBgTilemapBufferRect_Palette0
	adds r1, r5, 0x1
	orrs r1, r7
	lsls r1, 16
	lsrs r1, 16
	ldr r0, [sp, 0x8]
	lsls r2, r0, 24
	lsrs r2, 24
	str r2, [sp, 0x14]
	lsls r0, r6, 24
	lsrs r0, 24
	str r0, [sp, 0x18]
	str r0, [sp]
	mov r2, r8
	str r2, [sp, 0x4]
	mov r0, r9
	ldr r2, [sp, 0x14]
	adds r3, r4, 0
	bl FillBgTilemapBufferRect_Palette0
	adds r1, r5, 0x2
	orrs r1, r7
	lsls r1, 16
	lsrs r1, 16
	ldr r3, [sp, 0x8]
	adds r0, r3, r6
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp, 0x1C]
	mov r0, r8
	str r0, [sp]
	str r0, [sp, 0x4]
	mov r0, r9
	ldr r2, [sp, 0x1C]
	adds r3, r4, 0
	bl FillBgTilemapBufferRect_Palette0
	adds r1, r5, 0x3
	orrs r1, r7
	lsls r1, 16
	lsrs r1, 16
	ldr r2, [sp, 0xC]
	lsls r6, r2, 24
	lsrs r6, 24
	mov r3, r8
	str r3, [sp]
	ldr r0, [sp, 0x10]
	lsls r4, r0, 24
	lsrs r4, 24
	str r4, [sp, 0x4]
	mov r0, r9
	mov r2, r10
	adds r3, r6, 0
	bl FillBgTilemapBufferRect_Palette0
	adds r1, r5, 0x4
	orrs r1, r7
	lsls r1, 16
	lsrs r1, 16
	mov r2, r8
	str r2, [sp]
	str r4, [sp, 0x4]
	mov r0, r9
	ldr r2, [sp, 0x1C]
	adds r3, r6, 0
	bl FillBgTilemapBufferRect_Palette0
	adds r1, r5, 0x5
	orrs r1, r7
	lsls r1, 16
	lsrs r1, 16
	ldr r3, [sp, 0xC]
	ldr r2, [sp, 0x10]
	adds r0, r3, r2
	lsls r0, 24
	lsrs r4, r0, 24
	mov r3, r8
	str r3, [sp]
	str r3, [sp, 0x4]
	mov r0, r9
	mov r2, r10
	adds r3, r4, 0
	bl FillBgTilemapBufferRect_Palette0
	adds r1, r5, 0x6
	orrs r1, r7
	lsls r1, 16
	lsrs r1, 16
	ldr r0, [sp, 0x18]
	str r0, [sp]
	mov r2, r8
	str r2, [sp, 0x4]
	mov r0, r9
	ldr r2, [sp, 0x14]
	adds r3, r4, 0
	bl FillBgTilemapBufferRect_Palette0
	adds r5, 0x7
	orrs r5, r7
	lsls r5, 16
	lsrs r5, 16
	mov r3, r8
	str r3, [sp]
	str r3, [sp, 0x4]
	mov r0, r9
	adds r1, r5, 0
	ldr r2, [sp, 0x1C]
	adds r3, r4, 0
	bl FillBgTilemapBufferRect_Palette0
	add sp, 0x20
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_819645C

	thumb_func_start sub_81965D8
sub_81965D8: @ 81965D8
	push {lr}
	sub sp, 0x10
	str r1, [sp]
	mov r1, sp
	movs r3, 0
	strb r0, [r1, 0x4]
	mov r0, sp
	movs r1, 0x1
	strb r1, [r0, 0x5]
	movs r2, 0x20
	strb r2, [r0, 0x6]
	strb r1, [r0, 0x7]
	strb r2, [r0, 0x8]
	strb r1, [r0, 0x9]
	strb r3, [r0, 0xA]
	strb r3, [r0, 0xB]
	mov r3, sp
	ldrb r2, [r3, 0xC]
	subs r1, 0x11
	adds r0, r1, 0
	ands r0, r2
	strb r0, [r3, 0xC]
	mov r2, sp
	movs r3, 0xF
	movs r0, 0xA0
	strb r0, [r2, 0xC]
	ldrb r0, [r2, 0xD]
	ands r1, r0
	movs r0, 0x8
	orrs r1, r0
	strb r1, [r2, 0xD]
	ands r1, r3
	movs r0, 0xE0
	orrs r1, r0
	strb r1, [r2, 0xD]
	ldr r2, =gTextFlags
	ldrb r1, [r2]
	movs r0, 0x3
	negs r0, r0
	ands r0, r1
	strb r0, [r2]
	bl sav2_get_text_speed
	adds r1, r0, 0
	lsls r1, 24
	lsrs r1, 24
	mov r0, sp
	movs r2, 0
	bl AddTextPrinter
	add sp, 0x10
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81965D8

	thumb_func_start sub_8196648
sub_8196648: @ 8196648
	push {r4,lr}
	adds r4, r0, 0
	ldr r0, =gMain
	ldrh r1, [r0, 0x2C]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _0819666C
	ldr r0, =gTextFlags
	ldrb r1, [r0]
	movs r2, 0x1
	orrs r1, r2
	strb r1, [r0]
	b _08196678
	.pool
_0819666C:
	ldr r2, =gTextFlags
	ldrb r1, [r2]
	movs r0, 0x2
	negs r0, r0
	ands r0, r1
	strb r0, [r2]
_08196678:
	bl RunTextPrinters
	lsls r0, r4, 24
	lsrs r0, 24
	bl IsTextPrinterActive
	lsls r0, 16
	lsrs r0, 16
	pop {r4}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_8196648

	thumb_func_start sub_8196694
sub_8196694: @ 8196694
	push {lr}
	sub sp, 0x10
	lsls r0, 24
	lsrs r0, 24
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	ldr r0, =gTasks + 0x8
	adds r2, r1, r0
	ldrh r0, [r2]
	adds r0, 0x1
	strh r0, [r2]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0x8
	ble _081966FC
	movs r1, 0
	strh r1, [r2]
	ldrh r0, [r2, 0x2]
	adds r0, 0x1
	strh r0, [r2, 0x2]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0x7
	ble _081966C8
	strh r1, [r2, 0x2]
_081966C8:
	movs r0, 0x2
	ldrsh r1, [r2, r0]
	lsls r1, 4
	ldr r0, =0x00000279
	adds r1, r0
	strh r1, [r2, 0x4]
	ldr r2, =0xfffff000
	adds r0, r2, 0
	orrs r1, r0
	lsls r1, 16
	lsrs r1, 16
	movs r0, 0x4
	str r0, [sp]
	str r0, [sp, 0x4]
	movs r0, 0x11
	str r0, [sp, 0x8]
	movs r0, 0x1
	str r0, [sp, 0xC]
	movs r0, 0
	movs r2, 0x1
	movs r3, 0xF
	bl WriteSequenceToBgTilemapBuffer
	movs r0, 0
	bl CopyBgTilemapBufferToVram
_081966FC:
	add sp, 0x10
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8196694

	thumb_func_start sub_8196710
sub_8196710: @ 8196710
	ldr r1, =gSaveBlock1Ptr
	ldr r1, [r1]
	ldr r2, =0x000009ca
	adds r1, r2
	adds r1, r0
	ldrb r1, [r1]
	negs r0, r1
	orrs r0, r1
	lsrs r0, 31
	bx lr
	.pool
	thumb_func_end sub_8196710

	thumb_func_start sub_819672C
sub_819672C: @ 819672C
	push {lr}
	ldr r1, =gUnknown_085500A4
	lsls r0, 4
	adds r0, r1
	ldrh r2, [r0, 0xA]
	ldrh r1, [r0, 0xC]
	adds r0, r2, 0
	bl get_mapheader_by_bank_and_number
	ldrb r0, [r0, 0x14]
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_819672C

	thumb_func_start sub_8196748
sub_8196748: @ 8196748
	push {r4-r6,lr}
	movs r5, 0
	movs r6, 0
	ldr r4, =gUnknown_085500A4
_08196750:
	ldrh r0, [r4]
	bl trainer_flag_check
	lsls r0, 24
	cmp r0, 0
	beq _0819675E
	adds r6, 0x1
_0819675E:
	adds r4, 0x10
	adds r5, 0x1
	cmp r5, 0x3F
	bls _08196750
	adds r0, r6, 0
	pop {r4-r6}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_8196748

	thumb_func_start sub_8196774
sub_8196774: @ 8196774
	push {r4-r7,lr}
	adds r7, r0, 0
	movs r4, 0
	movs r6, 0
	ldr r5, =gUnknown_085500A4
_0819677E:
	ldrh r0, [r5]
	bl trainer_flag_check
	lsls r0, 24
	cmp r0, 0
	beq _0819679A
	cmp r6, r7
	bne _08196798
	adds r0, r4, 0
	b _081967A4
	.pool
_08196798:
	adds r6, 0x1
_0819679A:
	adds r5, 0x10
	adds r4, 0x1
	cmp r4, 0x4D
	bls _0819677E
	movs r0, 0x4E
_081967A4:
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end sub_8196774

	thumb_func_start sub_81967AC
sub_81967AC: @ 81967AC
	push {r4-r7,lr}
	adds r6, r1, 0
	movs r7, 0
	bl sub_8196844
	adds r5, r0, 0
	ldr r0, =gUnknown_0203CD88
	strh r7, [r0]
	adds r0, r5, 0
	bl sub_8196710
	cmp r0, 0
	beq _081967EC
	adds r0, r5, 0
	bl sub_819672C
	ldr r1, =gUnknown_02037318
	lsls r0, 16
	lsrs r0, 16
	ldrb r1, [r1, 0x14]
	cmp r0, r1
	bne _081967EC
	adds r0, r5, 0
	adds r1, r6, 0
	bl sub_8196864
	b _08196830
	.pool
_081967EC:
	adds r0, r5, 0
	bl sub_8196D74
	cmp r0, 0
	beq _0819680A
	adds r0, r5, 0
	adds r1, r6, 0
	bl sub_8196890
	adds r4, r0, 0
	movs r7, 0x1
	adds r0, r5, 0
	bl sub_80B1E94
	b _08196832
_0819680A:
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x3
	bl __umodsi3
	lsls r0, 16
	cmp r0, 0
	beq _08196828
	adds r0, r5, 0
	adds r1, r6, 0
	bl sub_81968BC
	b _08196830
_08196828:
	adds r0, r5, 0
	adds r1, r6, 0
	bl sub_8196910
_08196830:
	adds r4, r0, 0
_08196832:
	adds r0, r5, 0
	adds r1, r4, 0
	adds r2, r6, 0
	bl sub_81969E0
	adds r0, r7, 0
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end sub_81967AC

	thumb_func_start sub_8196844
sub_8196844: @ 8196844
	push {lr}
	adds r3, r0, 0
	movs r2, 0
	ldr r1, =gUnknown_0860DEB8
_0819684C:
	ldrh r0, [r1]
	cmp r0, r3
	beq _0819685C
	adds r1, 0x14
	adds r2, 0x1
	b _0819684C
	.pool
_0819685C:
	adds r0, r2, 0
	pop {r1}
	bx r1
	thumb_func_end sub_8196844

	thumb_func_start sub_8196864
sub_8196864: @ 8196864
	ldr r2, =gUnknown_0860DEB8
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 2
	adds r1, r2
	ldrh r1, [r1, 0xE]
	movs r2, 0xFF
	lsrs r0, r1, 8
	subs r0, 0x1
	ands r1, r2
	subs r1, 0x1
	ldr r2, =gUnknown_0860EA2C
	lsls r0, 2
	adds r0, r2
	lsls r1, 3
	ldr r0, [r0]
	adds r0, r1
	bx lr
	.pool
	thumb_func_end sub_8196864

	thumb_func_start sub_8196890
sub_8196890: @ 8196890
	ldr r2, =gUnknown_0860DEB8
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 2
	adds r1, r2
	ldrh r1, [r1, 0x10]
	movs r2, 0xFF
	lsrs r0, r1, 8
	subs r0, 0x1
	ands r1, r2
	subs r1, 0x1
	ldr r2, =gUnknown_0860EA2C
	lsls r0, 2
	adds r0, r2
	lsls r1, 3
	ldr r0, [r0]
	adds r0, r1
	bx lr
	.pool
	thumb_func_end sub_8196890

	thumb_func_start sub_81968BC
sub_81968BC: @ 81968BC
	push {r4,lr}
	adds r4, r0, 0
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x3
	bl __umodsi3
	lsls r0, 16
	ldr r2, =gUnknown_0860DEB8
	lsrs r0, 15
	lsls r1, r4, 2
	adds r1, r4
	lsls r1, 2
	adds r0, r1
	adds r2, 0x4
	adds r0, r2
	ldrh r4, [r0]
	cmp r4, 0
	bne _081968EC
	movs r0, 0
	bl DummyObjectCallback
_081968EC:
	movs r1, 0xFF
	lsrs r0, r4, 8
	subs r0, 0x1
	ands r4, r1
	subs r1, r4, 0x1
	ldr r2, =gUnknown_0860EA20
	lsls r0, 2
	adds r0, r2
	lsls r1, 3
	ldr r0, [r0]
	adds r0, r1
	pop {r4}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_81968BC

	thumb_func_start sub_8196910
sub_8196910: @ 8196910
	push {r4-r7,lr}
	sub sp, 0x4
	adds r6, r0, 0
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x1
	ands r0, r1
	cmp r0, 0
	bne _081969AC
	movs r5, 0
	movs r4, 0
	lsls r7, r6, 2
_0819692C:
	lsls r0, r4, 16
	lsrs r0, 16
	mov r1, sp
	bl sub_8196E04
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0x1
	bls _08196940
	adds r5, 0x1
_08196940:
	adds r4, 0x1
	cmp r4, 0x6
	ble _0819692C
	cmp r5, 0
	beq _081969AC
	bl Random
	lsls r0, 16
	lsrs r0, 16
	adds r1, r5, 0
	bl __modsi3
	adds r5, r0, 0
	movs r4, 0
	b _08196962
_0819695E:
	subs r5, 0x1
_08196960:
	adds r4, 0x1
_08196962:
	cmp r4, 0x6
	bgt _08196980
	lsls r0, r4, 16
	lsrs r0, 16
	mov r1, sp
	bl sub_8196E04
	ldr r1, =gUnknown_0203CD88
	strh r0, [r1, 0x2]
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0x1
	bls _08196960
	cmp r5, 0
	bne _0819695E
_08196980:
	ldr r0, =gUnknown_0203CD88
	strh r4, [r0]
	ldr r1, =gUnknown_0860DEB8
	adds r0, r7, r6
	lsls r0, 2
	adds r0, r1
	ldrb r0, [r0, 0xC]
	subs r2, r0, 0x1
	ldr r1, =gUnknown_0860EA34
	ldr r0, [sp]
	lsls r0, 2
	adds r0, r1
	lsls r1, r2, 3
	ldr r0, [r0]
	adds r0, r1
	b _081969D0
	.pool
_081969AC:
	ldr r1, =gUnknown_0860DEB8
	lsls r0, r6, 2
	adds r0, r6
	lsls r0, 2
	adds r0, r1
	ldrh r2, [r0, 0xA]
	lsrs r1, r2, 8
	subs r1, 0x1
	str r1, [sp]
	movs r0, 0xFF
	ands r0, r2
	subs r2, r0, 0x1
	ldr r0, =gUnknown_0860EA34
	lsls r1, 2
	adds r1, r0
	lsls r2, 3
	ldr r0, [r1]
	adds r0, r2
_081969D0:
	add sp, 0x4
	pop {r4-r7}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_8196910

	thumb_func_start sub_81969E0
sub_81969E0: @ 81969E0
	push {r4,r5,lr}
	adds r4, r1, 0
	adds r5, r2, 0
	adds r1, r4, 0x4
	bl sub_81969FC
	ldr r1, [r4]
	adds r0, r5, 0
	bl StringExpandPlaceholders
	pop {r4,r5}
	pop {r0}
	bx r0
	thumb_func_end sub_81969E0

	thumb_func_start sub_81969FC
sub_81969FC: @ 81969FC
	push {r4-r7,lr}
	adds r7, r0, 0
	adds r6, r1, 0
	movs r4, 0
	ldr r5, =gUnknown_0860EFA0
_08196A06:
	adds r1, r6, r4
	movs r0, 0
	ldrsb r0, [r1, r0]
	cmp r0, 0
	blt _08196A1A
	adds r1, r0, 0
	ldr r2, [r5]
	adds r0, r7, 0
	bl sub_8196A2C
_08196A1A:
	adds r5, 0x4
	adds r4, 0x1
	cmp r4, 0x2
	ble _08196A06
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81969FC

	thumb_func_start sub_8196A2C
sub_8196A2C: @ 8196A2C
	push {lr}
	ldr r3, =gUnknown_0860EFAC
	lsls r1, 2
	adds r1, r3
	ldr r3, [r1]
	adds r1, r2, 0
	bl _call_via_r3
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8196A2C

	thumb_func_start sub_8196A44
sub_8196A44: @ 8196A44
	push {r4-r6,lr}
	adds r5, r1, 0
	ldr r2, =gUnknown_0860DEB8
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 2
	adds r1, r2
	ldrh r4, [r1]
	movs r2, 0
	ldr r3, =gUnknown_0860EFC4
	adds r6, r3, 0
_08196A5A:
	lsls r1, r2, 3
	ldrh r0, [r3]
	cmp r0, r4
	bne _08196A78
	adds r0, r6, 0x4
	adds r0, r1, r0
	ldr r1, [r0]
	adds r0, r5, 0
	bl StringCopy
	b _08196A90
	.pool
_08196A78:
	adds r3, 0x8
	adds r2, 0x1
	cmp r2, 0x5
	bls _08196A5A
	lsls r1, r4, 2
	adds r1, r4
	lsls r1, 3
	ldr r0, =gTrainers + 0x4 @ name offset
	adds r1, r0
	adds r0, r5, 0
	bl StringCopy
_08196A90:
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8196A44

	thumb_func_start sub_8196A9C
sub_8196A9C: @ 8196A9C
	push {r4,lr}
	adds r4, r1, 0
	bl sub_819672C
	adds r1, r0, 0
	lsls r1, 16
	lsrs r1, 16
	adds r0, r4, 0
	movs r2, 0
	bl GetMapName
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_8196A9C

	thumb_func_start sub_8196AB8
sub_8196AB8: @ 8196AB8
	push {lr}
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x64
	bl __umodsi3
	lsls r0, 16
	lsrs r1, r0, 16
	cmp r1, 0x13
	bgt _08196AD4
	movs r0, 0
	b _08196B4A
_08196AD4:
	adds r0, r1, 0
	subs r0, 0x14
	cmp r0, 0x13
	bhi _08196AE0
	movs r0, 0x1
	b _08196B4A
_08196AE0:
	adds r0, r1, 0
	subs r0, 0x28
	cmp r0, 0x9
	bhi _08196AEC
	movs r0, 0x2
	b _08196B4A
_08196AEC:
	adds r0, r1, 0
	subs r0, 0x32
	cmp r0, 0x9
	bhi _08196AF8
	movs r0, 0x3
	b _08196B4A
_08196AF8:
	adds r0, r1, 0
	subs r0, 0x3C
	cmp r0, 0x9
	bhi _08196B04
	movs r0, 0x4
	b _08196B4A
_08196B04:
	adds r0, r1, 0
	subs r0, 0x46
	cmp r0, 0x9
	bhi _08196B10
	movs r0, 0x5
	b _08196B4A
_08196B10:
	adds r0, r1, 0
	subs r0, 0x50
	cmp r0, 0x4
	bhi _08196B1C
	movs r0, 0x6
	b _08196B4A
_08196B1C:
	adds r0, r1, 0
	subs r0, 0x55
	cmp r0, 0x4
	bhi _08196B28
	movs r0, 0x7
	b _08196B4A
_08196B28:
	adds r0, r1, 0
	subs r0, 0x5A
	cmp r0, 0x3
	bhi _08196B34
	movs r0, 0x8
	b _08196B4A
_08196B34:
	adds r0, r1, 0
	subs r0, 0x5E
	cmp r0, 0x3
	bhi _08196B40
	movs r0, 0x9
	b _08196B4A
_08196B40:
	cmp r1, 0x62
	beq _08196B48
	movs r0, 0xB
	b _08196B4A
_08196B48:
	movs r0, 0xA
_08196B4A:
	pop {r1}
	bx r1
	thumb_func_end sub_8196AB8

	thumb_func_start sub_8196B50
sub_8196B50: @ 8196B50
	push {lr}
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x64
	bl __umodsi3
	lsls r0, 16
	lsrs r1, r0, 16
	cmp r1, 0x3B
	bgt _08196B6C
	movs r0, 0
	b _08196B92
_08196B6C:
	adds r0, r1, 0
	subs r0, 0x3C
	cmp r0, 0x1D
	bhi _08196B78
	movs r0, 0x1
	b _08196B92
_08196B78:
	adds r0, r1, 0
	subs r0, 0x5A
	cmp r0, 0x4
	bhi _08196B84
	movs r0, 0x2
	b _08196B92
_08196B84:
	adds r0, r1, 0
	subs r0, 0x5F
	cmp r0, 0x3
	bls _08196B90
	movs r0, 0x4
	b _08196B92
_08196B90:
	movs r0, 0x3
_08196B92:
	pop {r1}
	bx r1
	thumb_func_end sub_8196B50

	thumb_func_start sub_8196B98
sub_8196B98: @ 8196B98
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, 0x4
	adds r2, r0, 0
	mov r8, r1
	movs r3, 0
	ldr r0, =gWildMonHeaders
	ldrb r1, [r0]
	adds r7, r0, 0
	cmp r1, 0xFF
	beq _08196C5C
	ldr r1, =gUnknown_085500A4
	lsls r0, r2, 4
	adds r2, r0, r1
	ldrh r4, [r2, 0xA]
	adds r1, r7, 0
_08196BBA:
	ldrb r0, [r1]
	cmp r0, r4
	bne _08196BC8
	ldrb r0, [r1, 0x1]
	ldrh r5, [r2, 0xC]
	cmp r0, r5
	beq _08196BD2
_08196BC8:
	adds r1, 0x14
	adds r3, 0x1
	ldrb r0, [r1]
	cmp r0, 0xFF
	bne _08196BBA
_08196BD2:
	adds r1, r7, 0
	lsls r0, r3, 2
	adds r0, r3
	lsls r5, r0, 2
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, 0xFF
	beq _08196C5C
	movs r6, 0
	adds r0, r1, 0x4
	adds r0, r5, r0
	ldr r4, [r0]
	cmp r4, 0
	beq _08196C02
	bl sub_8196AB8
	lsls r0, 24
	mov r2, sp
	ldr r1, [r4, 0x4]
	lsrs r0, 22
	adds r0, r1
	ldrh r0, [r0, 0x2]
	strh r0, [r2]
	movs r6, 0x1
_08196C02:
	adds r0, r7, 0
	adds r0, 0x8
	adds r0, r5, r0
	ldr r4, [r0]
	cmp r4, 0
	beq _08196C26
	bl sub_8196B50
	lsls r0, 24
	lsls r1, r6, 1
	mov r3, sp
	adds r2, r3, r1
	ldr r1, [r4, 0x4]
	lsrs r0, 22
	adds r0, r1
	ldrh r0, [r0, 0x2]
	strh r0, [r2]
	adds r6, 0x1
_08196C26:
	cmp r6, 0
	beq _08196C5C
	bl Random
	lsls r0, 16
	lsrs r0, 16
	adds r1, r6, 0
	bl __modsi3
	lsls r0, 1
	add r0, sp
	ldrh r1, [r0]
	movs r0, 0xB
	muls r1, r0
	ldr r0, =gSpeciesNames
	adds r1, r0
	mov r0, r8
	bl StringCopy
	b _08196C62
	.pool
_08196C5C:
	movs r0, 0xFF
	mov r5, r8
	strb r0, [r5]
_08196C62:
	add sp, 0x4
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_8196B98

	thumb_func_start sub_8196C70
sub_8196C70: @ 8196C70
	push {r4-r7,lr}
	adds r7, r1, 0
	ldr r2, =gUnknown_0860DEB8
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 2
	adds r1, r2
	ldrh r0, [r1]
	bl sub_80B2250
	lsls r0, 16
	lsrs r0, 16
	ldr r5, =gTrainers
	lsls r4, r0, 2
	adds r4, r0
	lsls r4, 3
	adds r0, r5, 0
	adds r0, 0x24
	adds r0, r4, r0
	ldr r6, [r0]
	bl Random
	lsls r0, 16
	lsrs r0, 16
	adds r4, r5
	adds r1, r4, 0
	adds r1, 0x20
	ldrb r1, [r1]
	bl __modsi3
	lsls r0, 24
	lsrs r0, 24
	ldrb r1, [r4]
	cmp r1, 0x1
	beq _08196CD4
	cmp r1, 0x1
	ble _08196CC2
	cmp r1, 0x2
	beq _08196CD0
	cmp r1, 0x3
	beq _08196CD4
_08196CC2:
	lsls r0, 3
	b _08196CD6
	.pool
_08196CD0:
	lsls r0, 3
	b _08196CD6
_08196CD4:
	lsls r0, 4
_08196CD6:
	adds r0, r6
	ldrh r1, [r0, 0x4]
	movs r0, 0xB
	muls r1, r0
	ldr r0, =gSpeciesNames
	adds r1, r0
	adds r0, r7, 0
	bl StringCopy
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8196C70

	thumb_func_start sub_8196CF4
sub_8196CF4: @ 8196CF4
	push {lr}
	adds r0, r1, 0
	ldr r2, =gUnknown_0860EFF4
	ldr r1, =gUnknown_0203CD88
	ldrh r1, [r1]
	lsls r1, 2
	adds r1, r2
	ldr r1, [r1]
	bl StringCopy
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8196CF4

	thumb_func_start sub_8196D14
sub_8196D14: @ 8196D14
	push {r4-r6,lr}
	adds r5, r1, 0
	movs r4, 0
	ldr r0, =gUnknown_0203CD88
	ldrh r1, [r0, 0x2]
	adds r6, r0, 0
	cmp r1, 0
	beq _08196D34
_08196D24:
	adds r0, r1, 0
	movs r1, 0xA
	bl __divsi3
	adds r1, r0, 0
	adds r4, 0x1
	cmp r1, 0
	bne _08196D24
_08196D34:
	ldrh r1, [r6, 0x2]
	lsls r3, r4, 24
	lsrs r3, 24
	adds r0, r5, 0
	movs r2, 0
	bl ConvertIntToDecimalStringN
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8196D14

	thumb_func_start sub_8196D4C
sub_8196D4C: @ 8196D4C
	push {r4,r5,lr}
	movs r4, 0
	ldr r5, =gUnknown_0860F010
	b _08196D5C
	.pool
_08196D58:
	adds r5, 0x2
	adds r4, 0x1
_08196D5C:
	cmp r4, 0x7
	bhi _08196D6C
	ldrh r0, [r5]
	bl FlagGet
	lsls r0, 24
	cmp r0, 0
	bne _08196D58
_08196D6C:
	adds r0, r4, 0
	pop {r4,r5}
	pop {r1}
	bx r1
	thumb_func_end sub_8196D4C

	thumb_func_start sub_8196D74
sub_8196D74: @ 8196D74
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	adds r7, r0, 0
	bl sub_8196D4C
	cmp r0, 0x4
	ble _08196DF4
	bl GameFreakRTC_GetNumDays
	adds r4, r0, 0
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	adds r0, 0xA
	bl sub_80842DC
	adds r6, r0, 0
	ldr r0, =0x0000ffff
	ands r6, r0
	ldr r0, =gSaveBlock1Ptr
	ldr r0, [r0]
	ldr r1, =0x00002e6a
	adds r0, r1
	ldrh r5, [r0]
	bl sub_8196748
	mov r9, r0
	movs r0, 0xD
	mov r1, r9
	muls r1, r0
	adds r0, r1, 0
	movs r1, 0xA
	bl __divsi3
	mov r8, r0
	movs r0, 0x9
	bl sub_80847F8
	eors r4, r5
	eors r5, r0
	adds r4, r5
	eors r4, r6
	adds r0, r4, 0
	mov r1, r8
	bl __modsi3
	cmp r0, r9
	bge _08196DF4
	bl sub_8196774
	cmp r0, r7
	bne _08196DF4
	movs r0, 0x1
	b _08196DF6
	.pool
_08196DF4:
	movs r0, 0
_08196DF6:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end sub_8196D74

	thumb_func_start sub_8196E04
sub_8196E04: @ 8196E04
	push {r4-r6,lr}
	adds r5, r1, 0
	lsls r0, 16
	lsrs r0, 16
	movs r4, 0
	cmp r0, 0x6
	bls _08196E14
	b _08196F7E
_08196E14:
	lsls r0, 2
	ldr r1, =_08196E24
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_08196E24:
	.4byte _08196E9C
	.4byte _08196E40
	.4byte _08196ED0
	.4byte _08196F38
	.4byte _08196E74
	.4byte _08196F04
	.4byte _08196F60
_08196E40:
	movs r3, 0
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r1, =0x00000d14
	adds r0, r1
_08196E4A:
	lsls r1, r3, 2
	adds r3, 0x1
	adds r1, r0
	movs r2, 0x1
_08196E52:
	ldrh r6, [r1]
	cmp r4, r6
	bcs _08196E5A
	ldrh r4, [r1]
_08196E5A:
	adds r1, 0x2
	subs r2, 0x1
	cmp r2, 0
	bge _08196E52
	cmp r3, 0x1
	ble _08196E4A
	movs r0, 0x3
	b _08196F7C
	.pool
_08196E74:
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r1, =0x00000e08
	adds r0, r1
	movs r3, 0x1
_08196E7E:
	ldrh r6, [r0]
	cmp r4, r6
	bcs _08196E86
	ldrh r4, [r0]
_08196E86:
	adds r0, 0x2
	subs r3, 0x1
	cmp r3, 0
	bge _08196E7E
	movs r0, 0x4
	b _08196F7C
	.pool
_08196E9C:
	movs r3, 0
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	movs r1, 0xCF
	lsls r1, 4
	adds r0, r1
_08196EA8:
	lsls r1, r3, 2
	adds r3, 0x1
	adds r1, r0
	movs r2, 0x1
_08196EB0:
	ldrh r6, [r1]
	cmp r4, r6
	bcs _08196EB8
	ldrh r4, [r1]
_08196EB8:
	adds r1, 0x2
	subs r2, 0x1
	cmp r2, 0
	bge _08196EB0
	movs r2, 0x2
	cmp r3, 0x3
	ble _08196EA8
	str r2, [r5]
	b _08196F7E
	.pool
_08196ED0:
	movs r3, 0
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	movs r1, 0xDD
	lsls r1, 4
	adds r0, r1
_08196EDC:
	lsls r1, r3, 2
	adds r3, 0x1
	adds r1, r0
	movs r2, 0x1
_08196EE4:
	ldrh r6, [r1]
	cmp r4, r6
	bcs _08196EEC
	ldrh r4, [r1]
_08196EEC:
	adds r1, 0x2
	subs r2, 0x1
	cmp r2, 0
	bge _08196EE4
	movs r2, 0x2
	cmp r3, 0x1
	ble _08196EDC
	str r2, [r5]
	b _08196F7E
	.pool
_08196F04:
	movs r3, 0
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r1, =0x00000dea
	adds r0, r1
_08196F0E:
	lsls r1, r3, 2
	adds r3, 0x1
	adds r1, r0
	movs r2, 0x1
_08196F16:
	ldrh r6, [r1]
	cmp r4, r6
	bcs _08196F1E
	ldrh r4, [r1]
_08196F1E:
	adds r1, 0x2
	subs r2, 0x1
	cmp r2, 0
	bge _08196F16
	movs r2, 0x2
	cmp r3, 0x1
	ble _08196F0E
	str r2, [r5]
	b _08196F7E
	.pool
_08196F38:
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r1, =0x00000dde
	adds r0, r1
	movs r3, 0x1
_08196F42:
	ldrh r6, [r0]
	cmp r4, r6
	bcs _08196F4A
	ldrh r4, [r0]
_08196F4A:
	adds r0, 0x2
	subs r3, 0x1
	cmp r3, 0
	bge _08196F42
	movs r3, 0x2
	str r3, [r5]
	b _08196F7E
	.pool
_08196F60:
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r1, =0x00000e1e
	adds r0, r1
	movs r3, 0x1
_08196F6A:
	ldrh r6, [r0]
	cmp r4, r6
	bcs _08196F72
	ldrh r4, [r0]
_08196F72:
	adds r0, 0x2
	subs r3, 0x1
	cmp r3, 0
	bge _08196F6A
	movs r0, 0x5
_08196F7C:
	str r0, [r5]
_08196F7E:
	adds r0, r4, 0
	pop {r4-r6}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_8196E04

	thumb_func_start sub_8196F90
sub_8196F90: @ 8196F90
	push {r4,lr}
	lsls r0, 16
	lsrs r4, r0, 16
	cmp r4, 0x9
	bhi _08196F9E
	movs r0, 0
	b _0819707A
_08196F9E:
	cmp r4, 0x13
	bhi _08196FA6
	movs r0, 0x1
	b _0819707A
_08196FA6:
	cmp r4, 0x1D
	bhi _08196FAE
	movs r0, 0x2
	b _0819707A
_08196FAE:
	cmp r4, 0x27
	bhi _08196FB6
	movs r0, 0x3
	b _0819707A
_08196FB6:
	cmp r4, 0x31
	bhi _08196FBE
	movs r0, 0x4
	b _0819707A
_08196FBE:
	cmp r4, 0x3B
	bhi _08196FC6
	movs r0, 0x5
	b _0819707A
_08196FC6:
	cmp r4, 0x45
	bhi _08196FCE
	movs r0, 0x6
	b _0819707A
_08196FCE:
	cmp r4, 0x4F
	bhi _08196FD6
	movs r0, 0x7
	b _0819707A
_08196FD6:
	cmp r4, 0x59
	bhi _08196FDE
	movs r0, 0x8
	b _0819707A
_08196FDE:
	cmp r4, 0x63
	bhi _08196FE6
	movs r0, 0x9
	b _0819707A
_08196FE6:
	cmp r4, 0x6D
	bhi _08196FEE
	movs r0, 0xA
	b _0819707A
_08196FEE:
	cmp r4, 0x77
	bhi _08196FF6
	movs r0, 0xB
	b _0819707A
_08196FF6:
	cmp r4, 0x81
	bhi _08196FFE
	movs r0, 0xC
	b _0819707A
_08196FFE:
	cmp r4, 0x8B
	bhi _08197006
	movs r0, 0xD
	b _0819707A
_08197006:
	cmp r4, 0x95
	bhi _0819700E
	movs r0, 0xE
	b _0819707A
_0819700E:
	cmp r4, 0x9F
	bhi _08197016
	movs r0, 0xF
	b _0819707A
_08197016:
	cmp r4, 0xA9
	bhi _0819701E
	movs r0, 0x10
	b _0819707A
_0819701E:
	cmp r4, 0xB3
	bhi _08197026
	movs r0, 0x11
	b _0819707A
_08197026:
	cmp r4, 0xBD
	bhi _0819702E
	movs r0, 0x12
	b _0819707A
_0819702E:
	cmp r4, 0xC7
	bls _08197078
	movs r0, 0xCD
	lsls r0, 1
	bl SpeciesToNationalPokedexNum
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x1
	bl pokedex_flag_operation
	lsls r0, 24
	cmp r0, 0
	beq _08197050
	subs r0, r4, 0x1
	lsls r0, 16
	lsrs r4, r0, 16
_08197050:
	ldr r0, =0x00000199
	bl SpeciesToNationalPokedexNum
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x1
	bl pokedex_flag_operation
	lsls r0, 24
	cmp r0, 0
	beq _0819706C
	subs r0, r4, 0x1
	lsls r0, 16
	lsrs r4, r0, 16
_0819706C:
	cmp r4, 0xC7
	bls _08197078
	movs r0, 0x14
	b _0819707A
	.pool
_08197078:
	movs r0, 0x13
_0819707A:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_8196F90

	thumb_func_start sub_8197080
sub_8197080: @ 8197080
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	mov r8, r0
	movs r0, 0xFA
	lsls r0, 2
	bl Alloc
	adds r7, r0, 0
	cmp r7, 0
	bne _081970A2
	movs r0, 0xFF
	mov r1, r8
	strb r0, [r1]
	b _0819715C
_081970A2:
	movs r0, 0
	bl sub_80C0844
	lsls r0, 16
	lsrs r4, r0, 16
	movs r0, 0x1
	bl sub_80C0844
	lsls r0, 16
	lsrs r6, r0, 16
	ldr r0, =gStringVar1
	mov r10, r0
	adds r1, r4, 0
	movs r2, 0
	movs r3, 0x3
	bl ConvertIntToDecimalStringN
	ldr r1, =gStringVar2
	mov r9, r1
	mov r0, r9
	adds r1, r6, 0
	movs r2, 0
	movs r3, 0x3
	bl ConvertIntToDecimalStringN
	adds r0, r6, 0
	bl sub_8196F90
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	ldr r1, =gUnknown_082A5C9C
	adds r0, r7, 0
	bl StringCopy
	adds r5, r0, 0
	movs r6, 0xFB
	strb r6, [r5]
	adds r5, 0x1
	ldr r1, =gUnknown_082A5D2C
	adds r0, r5, 0
	bl StringCopy
	adds r5, r0, 0
	strb r6, [r5]
	adds r5, 0x1
	ldr r0, =gUnknown_0860F020
	lsls r4, 2
	adds r4, r0
	ldr r1, [r4]
	adds r0, r5, 0
	bl StringCopy
	mov r0, r8
	adds r1, r7, 0
	bl StringExpandPlaceholders
	adds r5, r0, 0
	bl sub_809D42C
	cmp r0, 0
	beq _08197156
	strb r6, [r5]
	adds r5, 0x1
	movs r0, 0
	bl pokedex_count
	lsls r0, 16
	lsrs r4, r0, 16
	movs r0, 0x1
	bl pokedex_count
	lsls r0, 16
	lsrs r6, r0, 16
	mov r0, r10
	adds r1, r4, 0
	movs r2, 0
	movs r3, 0x3
	bl ConvertIntToDecimalStringN
	mov r0, r9
	adds r1, r6, 0
	movs r2, 0
	movs r3, 0x3
	bl ConvertIntToDecimalStringN
	ldr r1, =gUnknown_082A633D
	adds r0, r5, 0
	bl StringExpandPlaceholders
_08197156:
	adds r0, r7, 0
	bl Free
_0819715C:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8197080

	thumb_func_start sub_8197184
sub_8197184: @ 8197184
	push {r4,r5,lr}
	adds r4, r1, 0
	adds r5, r2, 0
	lsls r0, 24
	lsrs r0, 24
	movs r1, 0
	bl GetWindowAttribute
	lsls r0, 24
	lsrs r0, 24
	ldr r1, =gUnknown_0860EA6C
	movs r2, 0x80
	lsls r2, 1
	lsls r4, 16
	lsrs r4, 16
	adds r3, r4, 0
	bl LoadBgTiles
	ldr r0, =gUnknown_0860EA4C
	lsls r5, 20
	lsrs r5, 16
	adds r1, r5, 0
	movs r2, 0x20
	bl LoadPalette
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8197184

	thumb_func_start sub_81971C4
sub_81971C4: @ 81971C4
	push {lr}
	bl sub_819645C
	pop {r0}
	bx r0
	thumb_func_end sub_81971C4

	thumb_func_start sub_81971D0
sub_81971D0: @ 81971D0
	push {lr}
	ldr r0, =gUnknown_0860F098
	bl InitWindows
	ldr r0, =gUnknown_0203CD8C
	movs r1, 0xFF
	strb r1, [r0]
	ldr r0, =gUnknown_0203CD8D
	strb r1, [r0]
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81971D0

	thumb_func_start sub_81971F4
sub_81971F4: @ 81971F4
	push {lr}
	bl FreeAllWindowBuffers
	pop {r0}
	bx r0
	thumb_func_end sub_81971F4

	thumb_func_start sub_8197200
sub_8197200: @ 8197200
	push {lr}
	movs r0, 0
	movs r1, 0
	movs r2, 0
	bl ChangeBgX
	movs r0, 0
	movs r1, 0
	movs r2, 0
	bl ChangeBgY
	bl DeactivateAllTextPrinters
	bl sub_81973A4
	pop {r0}
	bx r0
	thumb_func_end sub_8197200

	thumb_func_start sub_8197224
sub_8197224: @ 8197224
	push {lr}
	bl RunTextPrinters
	movs r0, 0
	bl IsTextPrinterActive
	lsls r0, 16
	lsrs r0, 16
	pop {r1}
	bx r1
	thumb_func_end sub_8197224

	thumb_func_start AddTextPrinterParametrized
@ u16 AddTextPrinterParametrized(u8 windowId, u8 fontId, u8 *str, u8 speed, void ( *callback)(u16, struct TextPrinter *), u8 fgColor, u8 bgColor, u8 shadowColor)
AddTextPrinterParametrized: @ 8197238
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, 0x10
	ldr r7, [sp, 0x28]
	ldr r4, [sp, 0x2C]
	mov r8, r4
	ldr r5, [sp, 0x30]
	ldr r6, [sp, 0x34]
	lsls r3, 24
	lsrs r3, 24
	lsls r5, 24
	lsrs r5, 24
	lsls r6, 24
	str r2, [sp]
	mov r2, sp
	movs r4, 0
	strb r0, [r2, 0x4]
	mov r0, sp
	strb r1, [r0, 0x5]
	strb r4, [r0, 0x6]
	movs r1, 0x1
	strb r1, [r0, 0x7]
	strb r4, [r0, 0x8]
	strb r1, [r0, 0x9]
	strb r4, [r0, 0xA]
	strb r4, [r0, 0xB]
	mov r4, sp
	ldrb r2, [r4, 0xC]
	subs r1, 0x11
	adds r0, r1, 0
	ands r0, r2
	strb r0, [r4, 0xC]
	mov r0, sp
	mov r2, r8
	lsls r2, 4
	movs r4, 0xF
	strb r2, [r0, 0xC]
	mov r2, sp
	ands r5, r4
	ldrb r0, [r2, 0xD]
	ands r1, r0
	orrs r1, r5
	strb r1, [r2, 0xD]
	mov r0, sp
	lsrs r6, 20
	ands r1, r4
	orrs r1, r6
	strb r1, [r0, 0xD]
	ldr r2, =gTextFlags
	ldrb r1, [r2]
	movs r0, 0x3
	negs r0, r0
	ands r0, r1
	strb r0, [r2]
	mov r0, sp
	adds r1, r3, 0
	adds r2, r7, 0
	bl AddTextPrinter
	lsls r0, 16
	lsrs r0, 16
	add sp, 0x10
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r1}
	bx r1
	.pool
	thumb_func_end AddTextPrinterParametrized

	thumb_func_start AddTextPrinterForMessage
@ void AddTextPrinterForMessage(u8 allowSkippingDelayWithButtonPress)
AddTextPrinterForMessage: @ 81972C4
	push {r4,r5,lr}
	sub sp, 0x10
	lsls r0, 24
	lsrs r0, 24
	movs r5, 0
	ldr r3, =gTextFlags
	movs r4, 0x1
	ands r0, r4
	ldrb r2, [r3]
	movs r1, 0x2
	negs r1, r1
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	bl sav2_get_text_speed
	adds r3, r0, 0
	lsls r3, 24
	lsrs r3, 24
	ldr r2, =gStringVar4
	str r5, [sp]
	movs r0, 0x2
	str r0, [sp, 0x4]
	str r4, [sp, 0x8]
	movs r0, 0x3
	str r0, [sp, 0xC]
	movs r0, 0
	movs r1, 0x1
	bl AddTextPrinterParametrized
	add sp, 0x10
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end AddTextPrinterForMessage

	thumb_func_start AddTextPrinterForMessage_2
@ void AddTextPrinterForMessage_2(u8 allowSkippingDelayWithButtonPress)
AddTextPrinterForMessage_2: @ 8197310
	push {r4,lr}
	sub sp, 0x10
	lsls r0, 24
	lsrs r0, 24
	ldr r3, =gTextFlags
	movs r4, 0x1
	ands r0, r4
	ldrb r2, [r3]
	movs r1, 0x2
	negs r1, r1
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	bl sav2_get_text_speed
	adds r3, r0, 0
	lsls r3, 24
	lsrs r3, 24
	ldr r2, =gStringVar4
	movs r0, 0
	str r0, [sp]
	movs r0, 0x2
	str r0, [sp, 0x4]
	str r4, [sp, 0x8]
	movs r0, 0x3
	str r0, [sp, 0xC]
	movs r0, 0
	movs r1, 0x1
	bl AddTextPrinterParametrized
	add sp, 0x10
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end AddTextPrinterForMessage_2

	thumb_func_start AddTextPrinterWithCustomSpeedForMessage
@ void AddTextPrinterWithCustomSpeedForMessage(u8 allowSkippingDelayWithButtonPress, u8 speed)
AddTextPrinterWithCustomSpeedForMessage: @ 819735C
	push {r4,r5,lr}
	sub sp, 0x10
	adds r3, r1, 0
	lsls r0, 24
	lsrs r0, 24
	lsls r3, 24
	lsrs r3, 24
	ldr r4, =gTextFlags
	movs r5, 0x1
	ands r0, r5
	ldrb r2, [r4]
	movs r1, 0x2
	negs r1, r1
	ands r1, r2
	orrs r1, r0
	strb r1, [r4]
	ldr r2, =gStringVar4
	movs r0, 0
	str r0, [sp]
	movs r0, 0x2
	str r0, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r0, 0x3
	str r0, [sp, 0xC]
	movs r0, 0
	movs r1, 0x1
	bl AddTextPrinterParametrized
	add sp, 0x10
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end AddTextPrinterWithCustomSpeedForMessage

	thumb_func_start sub_81973A4
sub_81973A4: @ 81973A4
	push {lr}
	movs r1, 0x80
	lsls r1, 2
	movs r0, 0
	movs r2, 0xF0
	bl copy_textbox_border_tile_patterns_to_vram
	movs r1, 0x85
	lsls r1, 2
	movs r0, 0
	movs r2, 0xE0
	bl sub_809882C
	pop {r0}
	bx r0
	thumb_func_end sub_81973A4

	thumb_func_start sub_81973C4
sub_81973C4: @ 81973C4
	push {r4,r5,lr}
	adds r4, r1, 0
	lsls r0, 24
	lsrs r5, r0, 24
	lsls r4, 24
	lsrs r4, 24
	ldr r1, =sub_81975F4
	adds r0, r5, 0
	bl CallWindowFunction
	adds r0, r5, 0
	movs r1, 0x11
	bl FillWindowPixelBuffer
	adds r0, r5, 0
	bl PutWindowTilemap
	cmp r4, 0x1
	bne _081973F2
	adds r0, r5, 0
	movs r1, 0x3
	bl CopyWindowToVram
_081973F2:
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81973C4

	thumb_func_start sub_81973FC
sub_81973FC: @ 81973FC
	push {r4,r5,lr}
	adds r4, r1, 0
	lsls r0, 24
	lsrs r5, r0, 24
	lsls r4, 24
	lsrs r4, 24
	ldr r1, =sub_81974A4
	adds r0, r5, 0
	bl CallWindowFunction
	adds r0, r5, 0
	movs r1, 0x11
	bl FillWindowPixelBuffer
	adds r0, r5, 0
	bl PutWindowTilemap
	cmp r4, 0x1
	bne _0819742A
	adds r0, r5, 0
	movs r1, 0x3
	bl CopyWindowToVram
_0819742A:
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81973FC

	thumb_func_start sub_8197434
sub_8197434: @ 8197434
	push {r4,r5,lr}
	adds r4, r1, 0
	lsls r0, 24
	lsrs r5, r0, 24
	lsls r4, 24
	lsrs r4, 24
	ldr r1, =sub_8197804
	adds r0, r5, 0
	bl CallWindowFunction
	adds r0, r5, 0
	movs r1, 0x11
	bl FillWindowPixelBuffer
	adds r0, r5, 0
	bl ClearWindowTilemap
	cmp r4, 0x1
	bne _08197462
	adds r0, r5, 0
	movs r1, 0x3
	bl CopyWindowToVram
_08197462:
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8197434

	thumb_func_start sub_819746C
sub_819746C: @ 819746C
	push {r4,r5,lr}
	adds r4, r1, 0
	lsls r0, 24
	lsrs r5, r0, 24
	lsls r4, 24
	lsrs r4, 24
	ldr r1, =sub_81977BC
	adds r0, r5, 0
	bl CallWindowFunction
	adds r0, r5, 0
	movs r1, 0x11
	bl FillWindowPixelBuffer
	adds r0, r5, 0
	bl ClearWindowTilemap
	cmp r4, 0x1
	bne _0819749A
	adds r0, r5, 0
	movs r1, 0x3
	bl CopyWindowToVram
_0819749A:
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819746C

	thumb_func_start sub_81974A4
sub_81974A4: @ 81974A4
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x1C
	adds r4, r2, 0
	ldr r2, [sp, 0x3C]
	lsls r0, 24
	lsrs r7, r0, 24
	lsls r1, 24
	lsls r4, 24
	lsls r3, 24
	lsrs r3, 24
	str r3, [sp, 0x10]
	lsls r2, 24
	lsrs r2, 24
	str r2, [sp, 0x14]
	movs r3, 0x85
	lsls r3, 2
	lsrs r0, r1, 24
	str r0, [sp, 0xC]
	movs r2, 0xFF
	lsls r2, 24
	adds r2, r1
	mov r8, r2
	lsrs r2, 24
	lsrs r0, r4, 24
	mov r9, r0
	movs r0, 0xFF
	lsls r0, 24
	adds r4, r0
	lsrs r4, 24
	movs r5, 0x1
	str r5, [sp]
	str r5, [sp, 0x4]
	movs r6, 0xE
	str r6, [sp, 0x8]
	adds r0, r7, 0
	adds r1, r3, 0
	adds r3, r4, 0
	bl FillBgTilemapBufferRect
	ldr r1, =0x00000215
	ldr r2, [sp, 0x10]
	str r2, [sp]
	str r5, [sp, 0x4]
	str r6, [sp, 0x8]
	adds r0, r7, 0
	ldr r2, [sp, 0xC]
	adds r3, r4, 0
	bl FillBgTilemapBufferRect
	ldr r1, =0x00000216
	ldr r3, [sp, 0xC]
	ldr r2, [sp, 0x10]
	adds r0, r3, r2
	lsls r0, 24
	mov r10, r0
	lsrs r2, r0, 24
	str r5, [sp]
	str r5, [sp, 0x4]
	str r6, [sp, 0x8]
	adds r0, r7, 0
	adds r3, r4, 0
	bl FillBgTilemapBufferRect
	mov r5, r9
	ldr r0, [sp, 0x14]
	add r0, r9
	cmp r9, r0
	bge _08197578
	mov r3, r8
	str r3, [sp, 0x18]
	movs r6, 0x1
	movs r0, 0xE
	mov r8, r0
_0819753E:
	lsls r4, r5, 24
	lsrs r4, 24
	str r6, [sp]
	str r6, [sp, 0x4]
	mov r2, r8
	str r2, [sp, 0x8]
	adds r0, r7, 0
	ldr r1, =0x00000217
	ldr r3, [sp, 0x18]
	lsrs r2, r3, 24
	adds r3, r4, 0
	bl FillBgTilemapBufferRect
	str r6, [sp]
	str r6, [sp, 0x4]
	mov r0, r8
	str r0, [sp, 0x8]
	adds r0, r7, 0
	ldr r1, =0x00000219
	mov r3, r10
	lsrs r2, r3, 24
	adds r3, r4, 0
	bl FillBgTilemapBufferRect
	adds r5, 0x1
	ldr r0, [sp, 0x14]
	add r0, r9
	cmp r5, r0
	blt _0819753E
_08197578:
	ldr r1, =0x0000021a
	ldr r2, [sp, 0xC]
	subs r2, 0x1
	lsls r2, 24
	lsrs r2, 24
	ldr r4, [sp, 0x14]
	add r4, r9
	lsls r4, 24
	lsrs r4, 24
	movs r5, 0x1
	str r5, [sp]
	str r5, [sp, 0x4]
	movs r6, 0xE
	str r6, [sp, 0x8]
	adds r0, r7, 0
	adds r3, r4, 0
	bl FillBgTilemapBufferRect
	ldr r1, =0x0000021b
	ldr r0, [sp, 0x10]
	str r0, [sp]
	str r5, [sp, 0x4]
	str r6, [sp, 0x8]
	adds r0, r7, 0
	ldr r2, [sp, 0xC]
	adds r3, r4, 0
	bl FillBgTilemapBufferRect
	movs r1, 0x87
	lsls r1, 2
	ldr r3, [sp, 0xC]
	ldr r0, [sp, 0x10]
	adds r2, r3, r0
	lsls r2, 24
	lsrs r2, 24
	str r5, [sp]
	str r5, [sp, 0x4]
	str r6, [sp, 0x8]
	adds r0, r7, 0
	adds r3, r4, 0
	bl FillBgTilemapBufferRect
	add sp, 0x1C
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81974A4

	thumb_func_start sub_81975F4
sub_81975F4: @ 81975F4
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x24
	adds r6, r0, 0
	adds r5, r2, 0
	mov r8, r3
	ldr r2, [sp, 0x44]
	lsls r6, 24
	lsrs r6, 24
	lsls r0, r1, 24
	lsls r5, 24
	mov r1, r8
	lsls r1, 24
	lsrs r1, 24
	mov r8, r1
	lsls r1, r2, 24
	lsrs r1, 24
	str r1, [sp, 0x10]
	ldr r1, =0x00000201
	lsrs r2, r0, 24
	str r2, [sp, 0xC]
	movs r3, 0xFE
	lsls r3, 24
	adds r2, r0, r3
	lsrs r2, 24
	str r2, [sp, 0x14]
	lsrs r0, r5, 24
	mov r10, r0
	movs r2, 0xFF
	lsls r2, 24
	adds r5, r2
	lsrs r5, 24
	movs r4, 0x1
	str r4, [sp]
	str r4, [sp, 0x4]
	movs r3, 0xF
	mov r9, r3
	str r3, [sp, 0x8]
	adds r0, r6, 0
	ldr r2, [sp, 0x14]
	adds r3, r5, 0
	bl FillBgTilemapBufferRect
	ldr r1, =0x00000203
	ldr r0, [sp, 0xC]
	subs r0, 0x1
	lsls r2, r0, 24
	lsrs r2, 24
	str r2, [sp, 0x18]
	str r4, [sp]
	str r4, [sp, 0x4]
	mov r0, r9
	str r0, [sp, 0x8]
	adds r0, r6, 0
	adds r3, r5, 0
	bl FillBgTilemapBufferRect
	movs r1, 0x81
	lsls r1, 2
	mov r0, r8
	subs r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp, 0x1C]
	str r0, [sp]
	str r4, [sp, 0x4]
	mov r2, r9
	str r2, [sp, 0x8]
	adds r0, r6, 0
	ldr r2, [sp, 0xC]
	adds r3, r5, 0
	bl FillBgTilemapBufferRect
	ldr r1, =0x00000205
	ldr r7, [sp, 0xC]
	add r7, r8
	subs r0, r7, 0x1
	lsls r2, r0, 24
	lsrs r2, 24
	str r2, [sp, 0x20]
	str r4, [sp]
	str r4, [sp, 0x4]
	mov r3, r9
	str r3, [sp, 0x8]
	adds r0, r6, 0
	adds r3, r5, 0
	bl FillBgTilemapBufferRect
	ldr r1, =0x00000206
	lsls r2, r7, 24
	lsrs r7, r2, 24
	str r4, [sp]
	str r4, [sp, 0x4]
	mov r0, r9
	str r0, [sp, 0x8]
	adds r0, r6, 0
	adds r2, r7, 0
	adds r3, r5, 0
	bl FillBgTilemapBufferRect
	ldr r1, =0x00000207
	str r4, [sp]
	movs r5, 0x5
	str r5, [sp, 0x4]
	mov r2, r9
	str r2, [sp, 0x8]
	adds r0, r6, 0
	ldr r2, [sp, 0x14]
	mov r3, r10
	bl FillBgTilemapBufferRect
	ldr r1, =0x00000209
	add r8, r4
	mov r3, r8
	lsls r3, 24
	lsrs r3, 24
	str r3, [sp]
	str r5, [sp, 0x4]
	mov r0, r9
	str r0, [sp, 0x8]
	adds r0, r6, 0
	ldr r2, [sp, 0x18]
	mov r3, r10
	bl FillBgTilemapBufferRect
	ldr r1, =0x0000020a
	str r4, [sp]
	str r5, [sp, 0x4]
	mov r2, r9
	str r2, [sp, 0x8]
	adds r0, r6, 0
	adds r2, r7, 0
	mov r3, r10
	bl FillBgTilemapBufferRect
	ldr r1, =0x00000a01
	ldr r3, [sp, 0x10]
	add r10, r3
	mov r0, r10
	lsls r0, 24
	lsrs r0, 24
	mov r10, r0
	str r4, [sp]
	str r4, [sp, 0x4]
	mov r2, r9
	str r2, [sp, 0x8]
	adds r0, r6, 0
	ldr r2, [sp, 0x14]
	mov r3, r10
	bl FillBgTilemapBufferRect
	ldr r1, =0x00000a03
	str r4, [sp]
	str r4, [sp, 0x4]
	mov r3, r9
	str r3, [sp, 0x8]
	adds r0, r6, 0
	ldr r2, [sp, 0x18]
	mov r3, r10
	bl FillBgTilemapBufferRect
	ldr r1, =0x00000a04
	ldr r0, [sp, 0x1C]
	str r0, [sp]
	str r4, [sp, 0x4]
	mov r2, r9
	str r2, [sp, 0x8]
	adds r0, r6, 0
	ldr r2, [sp, 0xC]
	mov r3, r10
	bl FillBgTilemapBufferRect
	ldr r1, =0x00000a05
	str r4, [sp]
	str r4, [sp, 0x4]
	mov r3, r9
	str r3, [sp, 0x8]
	adds r0, r6, 0
	ldr r2, [sp, 0x20]
	mov r3, r10
	bl FillBgTilemapBufferRect
	ldr r1, =0x00000a06
	str r4, [sp]
	str r4, [sp, 0x4]
	mov r0, r9
	str r0, [sp, 0x8]
	adds r0, r6, 0
	adds r2, r7, 0
	mov r3, r10
	bl FillBgTilemapBufferRect
	add sp, 0x24
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81975F4

	thumb_func_start sub_81977BC
sub_81977BC: @ 81977BC
	push {r4,r5,lr}
	sub sp, 0xC
	adds r4, r1, 0
	adds r5, r2, 0
	ldr r1, [sp, 0x18]
	lsls r0, 24
	lsrs r0, 24
	lsls r4, 24
	lsls r5, 24
	lsls r3, 24
	lsls r1, 24
	movs r2, 0xFF
	lsls r2, 24
	adds r4, r2
	lsrs r4, 24
	adds r5, r2
	lsrs r5, 24
	movs r2, 0x80
	lsls r2, 18
	adds r3, r2
	lsrs r3, 24
	str r3, [sp]
	adds r1, r2
	lsrs r1, 24
	str r1, [sp, 0x4]
	movs r1, 0xE
	str r1, [sp, 0x8]
	movs r1, 0
	adds r2, r4, 0
	adds r3, r5, 0
	bl FillBgTilemapBufferRect
	add sp, 0xC
	pop {r4,r5}
	pop {r0}
	bx r0
	thumb_func_end sub_81977BC

	thumb_func_start sub_8197804
sub_8197804: @ 8197804
	push {r4,r5,lr}
	sub sp, 0xC
	adds r4, r1, 0
	adds r5, r2, 0
	ldr r1, [sp, 0x18]
	lsls r0, 24
	lsrs r0, 24
	lsls r4, 24
	lsls r5, 24
	lsls r3, 24
	lsls r1, 24
	movs r2, 0xFD
	lsls r2, 24
	adds r4, r2
	lsrs r4, 24
	movs r2, 0xFF
	lsls r2, 24
	adds r5, r2
	lsrs r5, 24
	movs r2, 0xC0
	lsls r2, 19
	adds r3, r2
	lsrs r3, 24
	str r3, [sp]
	movs r2, 0x80
	lsls r2, 18
	adds r1, r2
	lsrs r1, 24
	str r1, [sp, 0x4]
	movs r1, 0xE
	str r1, [sp, 0x8]
	movs r1, 0
	adds r2, r4, 0
	adds r3, r5, 0
	bl FillBgTilemapBufferRect
	add sp, 0xC
	pop {r4,r5}
	pop {r0}
	bx r0
	thumb_func_end sub_8197804

	thumb_func_start SetStandardWindowBorderStyle
@ void SetStandardWindowBorderStyle(u8 windowId, bool copyToVram)
SetStandardWindowBorderStyle: @ 8197854
	push {lr}
	lsls r0, 24
	lsrs r0, 24
	lsls r1, 24
	lsrs r1, 24
	movs r2, 0x85
	lsls r2, 2
	movs r3, 0xE
	bl SetWindowBorderStyle
	pop {r0}
	bx r0
	thumb_func_end SetStandardWindowBorderStyle

	thumb_func_start sub_819786C
sub_819786C: @ 819786C
	push {r4-r6,lr}
	adds r4, r0, 0
	adds r5, r1, 0
	lsls r4, 24
	lsrs r4, 24
	lsls r5, 24
	lsrs r5, 24
	movs r6, 0x80
	lsls r6, 2
	adds r0, r4, 0
	adds r1, r6, 0
	movs r2, 0xF0
	bl copy_textbox_border_tile_patterns_to_vram
	adds r0, r4, 0
	adds r1, r5, 0
	adds r2, r6, 0
	movs r3, 0xF
	bl sub_8197B1C
	pop {r4-r6}
	pop {r0}
	bx r0
	thumb_func_end sub_819786C

	thumb_func_start sub_819789C
sub_819789C: @ 819789C
	push {lr}
	ldr r0, =gUnknown_0860F074
	movs r1, 0xE0
	movs r2, 0x14
	bl LoadPalette
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819789C

	thumb_func_start sub_81978B0
sub_81978B0: @ 81978B0
	push {lr}
	adds r1, r0, 0
	lsls r1, 16
	lsrs r1, 16
	ldr r0, =gUnknown_0860F074
	movs r2, 0x14
	bl LoadPalette
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81978B0

	thumb_func_start sub_81978C8
sub_81978C8: @ 81978C8
	ldr r0, =gUnknown_0860F074
	bx lr
	.pool
	thumb_func_end sub_81978C8

	thumb_func_start sub_81978D0
sub_81978D0: @ 81978D0
	push {lr}
	lsls r0, 24
	lsrs r1, r0, 24
	cmp r1, 0xF
	bls _081978DC
	movs r1, 0
_081978DC:
	ldr r0, =gUnknown_0860F074
	lsls r1, 1
	adds r1, r0
	ldrh r0, [r1]
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_81978D0

	thumb_func_start DisplayItemMessageOnField
@ void DisplayItemMessageOnField(u8 taskId, u8 *str, void ( *callback)(u8 taskId))
DisplayItemMessageOnField: @ 81978EC
	push {r4-r6,lr}
	sub sp, 0x10
	adds r4, r0, 0
	adds r5, r1, 0
	adds r6, r2, 0
	lsls r4, 24
	lsrs r4, 24
	bl sub_81973A4
	bl sav2_get_text_speed
	lsls r0, 24
	lsrs r0, 24
	movs r2, 0x80
	lsls r2, 2
	movs r1, 0x1
	str r1, [sp]
	str r0, [sp, 0x4]
	str r5, [sp, 0x8]
	str r6, [sp, 0xC]
	adds r0, r4, 0
	movs r1, 0
	movs r3, 0xF
	bl DisplayMessageAndContinueTask
	movs r0, 0
	movs r1, 0x3
	bl CopyWindowToVram
	add sp, 0x10
	pop {r4-r6}
	pop {r0}
	bx r0
	thumb_func_end DisplayItemMessageOnField

	thumb_func_start sub_8197930
sub_8197930: @ 8197930
	push {lr}
	ldr r0, =gUnknown_0860F0A8
	movs r1, 0x85
	lsls r1, 2
	movs r2, 0xE
	movs r3, 0
	bl CreateYesNoMenu
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8197930

	thumb_func_start sub_8197948
sub_8197948: @ 8197948
	push {lr}
	adds r3, r0, 0
	lsls r3, 24
	lsrs r3, 24
	ldr r0, =gUnknown_0860F0A8
	movs r1, 0x85
	lsls r1, 2
	movs r2, 0xE
	bl CreateYesNoMenu
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8197948

	thumb_func_start sub_8197964
sub_8197964: @ 8197964
	push {lr}
	ldr r0, =gTextFlags
	ldrb r1, [r0]
	movs r0, 0x8
	ands r0, r1
	cmp r0, 0
	bne _08197988
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldrb r0, [r0, 0x14]
	lsls r0, 29
	lsrs r0, 29
	b _0819798A
	.pool
_08197988:
	movs r0, 0x1
_0819798A:
	pop {r1}
	bx r1
	thumb_func_end sub_8197964

	thumb_func_start sav2_get_text_speed
sav2_get_text_speed: @ 8197990
	push {lr}
	ldr r0, =gSaveBlock2Ptr
	ldr r2, [r0]
	ldrb r1, [r2, 0x14]
	lsls r0, r1, 29
	lsrs r0, 29
	cmp r0, 0x2
	bls _081979AC
	movs r0, 0x8
	negs r0, r0
	ands r0, r1
	movs r1, 0x1
	orrs r0, r1
	strb r0, [r2, 0x14]
_081979AC:
	bl sub_8197964
	ldr r1, =gUnknown_0860F094
	adds r0, r1
	ldrb r0, [r0]
	pop {r1}
	bx r1
	.pool
	thumb_func_end sav2_get_text_speed

	thumb_func_start sub_81979C4
sub_81979C4: @ 81979C4
	push {r4,lr}
	sub sp, 0xC
	lsls r0, 24
	lsrs r1, r0, 24
	ldr r4, =gUnknown_0203CD8C
	ldrb r0, [r4]
	cmp r0, 0xFF
	bne _081979F6
	lsls r0, r1, 25
	movs r1, 0x80
	lsls r1, 18
	adds r0, r1
	lsrs r0, 24
	str r0, [sp]
	movs r0, 0xF
	str r0, [sp, 0x4]
	ldr r0, =0x00000139
	str r0, [sp, 0x8]
	movs r0, 0
	movs r1, 0x16
	movs r2, 0x1
	movs r3, 0x7
	bl sub_8198AA4
	strb r0, [r4]
_081979F6:
	ldrb r0, [r4]
	add sp, 0xC
	pop {r4}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_81979C4

	thumb_func_start get_start_menu_window_id_maybe
get_start_menu_window_id_maybe: @ 8197A08
	ldr r0, =gUnknown_0203CD8C
	ldrb r0, [r0]
	bx lr
	.pool
	thumb_func_end get_start_menu_window_id_maybe

	thumb_func_start remove_start_menu_window_maybe
remove_start_menu_window_maybe: @ 8197A14
	push {r4,lr}
	ldr r4, =gUnknown_0203CD8C
	ldrb r0, [r4]
	cmp r0, 0xFF
	beq _08197A26
	bl RemoveWindow
	movs r0, 0xFF
	strb r0, [r4]
_08197A26:
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end remove_start_menu_window_maybe

	thumb_func_start sub_8197A30
sub_8197A30: @ 8197A30
	movs r0, 0x80
	lsls r0, 2
	bx lr
	thumb_func_end sub_8197A30

	thumb_func_start sub_8197A38
sub_8197A38: @ 8197A38
	movs r0, 0x85
	lsls r0, 2
	bx lr
	thumb_func_end sub_8197A38

	thumb_func_start AddMapNamePopUpWindow
AddMapNamePopUpWindow: @ 8197A40
	push {r4,lr}
	sub sp, 0xC
	ldr r4, =gUnknown_0203CD8D
	ldrb r0, [r4]
	cmp r0, 0xFF
	bne _08197A66
	movs r0, 0x3
	str r0, [sp]
	movs r0, 0xE
	str r0, [sp, 0x4]
	adds r0, 0xF9
	str r0, [sp, 0x8]
	movs r0, 0
	movs r1, 0x1
	movs r2, 0x1
	movs r3, 0xA
	bl sub_8198AA4
	strb r0, [r4]
_08197A66:
	ldrb r0, [r4]
	add sp, 0xC
	pop {r4}
	pop {r1}
	bx r1
	.pool
	thumb_func_end AddMapNamePopUpWindow

	thumb_func_start GetMapNamePopUpWindowId
GetMapNamePopUpWindowId: @ 8197A74
	ldr r0, =gUnknown_0203CD8D
	ldrb r0, [r0]
	bx lr
	.pool
	thumb_func_end GetMapNamePopUpWindowId

	thumb_func_start RemoveMapNamePopUpWindow
RemoveMapNamePopUpWindow: @ 8197A80
	push {r4,lr}
	ldr r4, =gUnknown_0203CD8D
	ldrb r0, [r4]
	cmp r0, 0xFF
	beq _08197A92
	bl RemoveWindow
	movs r0, 0xFF
	strb r0, [r4]
_08197A92:
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end RemoveMapNamePopUpWindow

	thumb_func_start AddTextPrinterWithCallbackForMessage
@ void AddTextPrinterWithCallbackForMessage(u8 allowSkippingDelayWithButtonPress, void ( *callback)(u16, struct TextPrinter *))
AddTextPrinterWithCallbackForMessage: @ 8197A9C
	push {r4,r5,lr}
	sub sp, 0x10
	adds r5, r1, 0
	lsls r0, 24
	lsrs r0, 24
	ldr r3, =gTextFlags
	movs r4, 0x1
	ands r0, r4
	ldrb r2, [r3]
	movs r1, 0x2
	negs r1, r1
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	bl sav2_get_text_speed
	adds r3, r0, 0
	lsls r3, 24
	lsrs r3, 24
	ldr r2, =gStringVar4
	str r5, [sp]
	movs r0, 0x2
	str r0, [sp, 0x4]
	str r4, [sp, 0x8]
	movs r0, 0x3
	str r0, [sp, 0xC]
	movs r0, 0
	movs r1, 0x1
	bl AddTextPrinterParametrized
	add sp, 0x10
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end AddTextPrinterWithCallbackForMessage

	thumb_func_start sub_8197AE8
sub_8197AE8: @ 8197AE8
	push {r4,lr}
	sub sp, 0xC
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	movs r0, 0x20
	str r0, [sp]
	str r0, [sp, 0x4]
	movs r0, 0x11
	str r0, [sp, 0x8]
	movs r0, 0
	movs r1, 0
	movs r2, 0
	movs r3, 0
	bl FillBgTilemapBufferRect
	cmp r4, 0x1
	bne _08197B12
	movs r0, 0
	bl CopyBgTilemapBufferToVram
_08197B12:
	add sp, 0xC
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_8197AE8

	thumb_func_start sub_8197B1C
sub_8197B1C: @ 8197B1C
	push {r4,r5,lr}
	adds r4, r1, 0
	lsls r0, 24
	lsrs r5, r0, 24
	lsls r4, 24
	lsrs r4, 24
	ldr r0, =gUnknown_0203CD9C
	strh r2, [r0]
	ldr r0, =gUnknown_0203CD9E
	strb r3, [r0]
	ldr r1, =sub_8197BB4
	adds r0, r5, 0
	bl CallWindowFunction
	adds r0, r5, 0
	movs r1, 0x11
	bl FillWindowPixelBuffer
	adds r0, r5, 0
	bl PutWindowTilemap
	cmp r4, 0x1
	bne _08197B52
	adds r0, r5, 0
	movs r1, 0x3
	bl CopyWindowToVram
_08197B52:
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8197B1C

	thumb_func_start sub_8197B64
sub_8197B64: @ 8197B64
	push {r4-r6,lr}
	adds r4, r1, 0
	lsls r0, 24
	lsrs r6, r0, 24
	lsls r4, 24
	lsrs r4, 24
	ldr r0, =gUnknown_0203CD9C
	strh r2, [r0]
	ldr r5, =gUnknown_0203CD9E
	adds r0, r6, 0
	movs r1, 0x5
	bl GetWindowAttribute
	strb r0, [r5]
	ldr r1, =sub_8197BB4
	adds r0, r6, 0
	bl CallWindowFunction
	adds r0, r6, 0
	movs r1, 0x11
	bl FillWindowPixelBuffer
	adds r0, r6, 0
	bl PutWindowTilemap
	cmp r4, 0x1
	bne _08197BA2
	adds r0, r6, 0
	movs r1, 0x3
	bl CopyWindowToVram
_08197BA2:
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8197B64

	thumb_func_start sub_8197BB4
sub_8197BB4: @ 8197BB4
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x24
	mov r8, r0
	adds r5, r2, 0
	adds r6, r3, 0
	ldr r2, [sp, 0x44]
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
	lsls r0, r1, 24
	lsls r5, 24
	lsls r6, 24
	lsrs r6, 24
	lsls r1, r2, 24
	lsrs r1, 24
	str r1, [sp, 0x10]
	ldr r2, =gUnknown_0203CD9C
	ldrh r1, [r2]
	adds r1, 0x1
	lsls r1, 16
	lsrs r1, 16
	lsrs r3, r0, 24
	str r3, [sp, 0xC]
	movs r3, 0xFE
	lsls r3, 24
	adds r2, r0, r3
	lsrs r2, 24
	str r2, [sp, 0x14]
	lsrs r0, r5, 24
	mov r9, r0
	movs r2, 0xFF
	lsls r2, 24
	adds r5, r2
	lsrs r5, 24
	movs r4, 0x1
	str r4, [sp]
	str r4, [sp, 0x4]
	ldr r3, =gUnknown_0203CD9E
	mov r10, r3
	ldrb r0, [r3]
	str r0, [sp, 0x8]
	mov r0, r8
	ldr r2, [sp, 0x14]
	adds r3, r5, 0
	bl FillBgTilemapBufferRect
	ldr r0, =gUnknown_0203CD9C
	ldrh r1, [r0]
	adds r1, 0x3
	lsls r1, 16
	lsrs r1, 16
	ldr r0, [sp, 0xC]
	subs r0, 0x1
	lsls r2, r0, 24
	lsrs r2, 24
	str r2, [sp, 0x18]
	str r4, [sp]
	str r4, [sp, 0x4]
	mov r2, r10
	ldrb r0, [r2]
	str r0, [sp, 0x8]
	mov r0, r8
	ldr r2, [sp, 0x18]
	adds r3, r5, 0
	bl FillBgTilemapBufferRect
	ldr r3, =gUnknown_0203CD9C
	ldrh r1, [r3]
	adds r1, 0x4
	lsls r1, 16
	lsrs r1, 16
	subs r0, r6, 0x1
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp, 0x1C]
	str r0, [sp]
	str r4, [sp, 0x4]
	mov r2, r10
	ldrb r0, [r2]
	str r0, [sp, 0x8]
	mov r0, r8
	ldr r2, [sp, 0xC]
	adds r3, r5, 0
	bl FillBgTilemapBufferRect
	ldr r3, =gUnknown_0203CD9C
	ldrh r1, [r3]
	adds r1, 0x5
	lsls r1, 16
	lsrs r1, 16
	ldr r0, [sp, 0xC]
	adds r7, r0, r6
	subs r0, r7, 0x1
	lsls r2, r0, 24
	lsrs r2, 24
	str r2, [sp, 0x20]
	str r4, [sp]
	str r4, [sp, 0x4]
	mov r2, r10
	ldrb r0, [r2]
	str r0, [sp, 0x8]
	mov r0, r8
	ldr r2, [sp, 0x20]
	adds r3, r5, 0
	bl FillBgTilemapBufferRect
	ldr r3, =gUnknown_0203CD9C
	ldrh r1, [r3]
	adds r1, 0x6
	lsls r1, 16
	lsrs r1, 16
	lsls r2, r7, 24
	lsrs r7, r2, 24
	str r4, [sp]
	str r4, [sp, 0x4]
	mov r2, r10
	ldrb r0, [r2]
	str r0, [sp, 0x8]
	mov r0, r8
	adds r2, r7, 0
	adds r3, r5, 0
	bl FillBgTilemapBufferRect
	ldr r3, =gUnknown_0203CD9C
	ldrh r1, [r3]
	adds r1, 0x7
	lsls r1, 16
	lsrs r1, 16
	str r4, [sp]
	movs r5, 0x5
	str r5, [sp, 0x4]
	mov r2, r10
	ldrb r0, [r2]
	str r0, [sp, 0x8]
	mov r0, r8
	ldr r2, [sp, 0x14]
	mov r3, r9
	bl FillBgTilemapBufferRect
	ldr r3, =gUnknown_0203CD9C
	ldrh r1, [r3]
	adds r1, 0x9
	lsls r1, 16
	lsrs r1, 16
	adds r6, 0x1
	lsls r6, 24
	lsrs r6, 24
	str r6, [sp]
	str r5, [sp, 0x4]
	mov r2, r10
	ldrb r0, [r2]
	str r0, [sp, 0x8]
	mov r0, r8
	ldr r2, [sp, 0x18]
	mov r3, r9
	bl FillBgTilemapBufferRect
	ldr r3, =gUnknown_0203CD9C
	ldrh r1, [r3]
	adds r1, 0xA
	lsls r1, 16
	lsrs r1, 16
	str r4, [sp]
	str r5, [sp, 0x4]
	mov r2, r10
	ldrb r0, [r2]
	str r0, [sp, 0x8]
	mov r0, r8
	adds r2, r7, 0
	mov r3, r9
	bl FillBgTilemapBufferRect
	ldr r3, =0x00000801
	adds r1, r3, 0
	ldr r0, =gUnknown_0203CD9C
	ldrh r0, [r0]
	adds r1, r0
	lsls r1, 16
	lsrs r1, 16
	ldr r2, [sp, 0x10]
	add r9, r2
	mov r3, r9
	lsls r3, 24
	lsrs r3, 24
	mov r9, r3
	str r4, [sp]
	str r4, [sp, 0x4]
	mov r2, r10
	ldrb r0, [r2]
	str r0, [sp, 0x8]
	mov r0, r8
	ldr r2, [sp, 0x14]
	bl FillBgTilemapBufferRect
	ldr r3, =0x00000803
	adds r1, r3, 0
	ldr r0, =gUnknown_0203CD9C
	ldrh r0, [r0]
	adds r1, r0
	lsls r1, 16
	lsrs r1, 16
	str r4, [sp]
	str r4, [sp, 0x4]
	mov r2, r10
	ldrb r0, [r2]
	str r0, [sp, 0x8]
	mov r0, r8
	ldr r2, [sp, 0x18]
	mov r3, r9
	bl FillBgTilemapBufferRect
	ldr r3, =0x00000804
	adds r1, r3, 0
	ldr r0, =gUnknown_0203CD9C
	ldrh r0, [r0]
	adds r1, r0
	lsls r1, 16
	lsrs r1, 16
	ldr r2, [sp, 0x1C]
	str r2, [sp]
	str r4, [sp, 0x4]
	mov r3, r10
	ldrb r0, [r3]
	str r0, [sp, 0x8]
	mov r0, r8
	ldr r2, [sp, 0xC]
	mov r3, r9
	bl FillBgTilemapBufferRect
	ldr r0, =0x00000805
	adds r1, r0, 0
	ldr r2, =gUnknown_0203CD9C
	ldrh r2, [r2]
	adds r1, r2
	lsls r1, 16
	lsrs r1, 16
	str r4, [sp]
	str r4, [sp, 0x4]
	mov r3, r10
	ldrb r0, [r3]
	str r0, [sp, 0x8]
	mov r0, r8
	ldr r2, [sp, 0x20]
	mov r3, r9
	bl FillBgTilemapBufferRect
	ldr r0, =0x00000806
	adds r1, r0, 0
	ldr r2, =gUnknown_0203CD9C
	ldrh r2, [r2]
	adds r1, r2
	lsls r1, 16
	lsrs r1, 16
	str r4, [sp]
	str r4, [sp, 0x4]
	mov r3, r10
	ldrb r0, [r3]
	str r0, [sp, 0x8]
	mov r0, r8
	adds r2, r7, 0
	mov r3, r9
	bl FillBgTilemapBufferRect
	add sp, 0x24
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8197BB4

	thumb_func_start sub_8197DF8
sub_8197DF8: @ 8197DF8
	push {r4,r5,lr}
	adds r4, r1, 0
	lsls r0, 24
	lsrs r5, r0, 24
	lsls r4, 24
	lsrs r4, 24
	ldr r1, =sub_8197E30
	adds r0, r5, 0
	bl CallWindowFunction
	adds r0, r5, 0
	movs r1, 0
	bl FillWindowPixelBuffer
	adds r0, r5, 0
	bl ClearWindowTilemap
	cmp r4, 0x1
	bne _08197E26
	adds r0, r5, 0
	movs r1, 0x3
	bl CopyWindowToVram
_08197E26:
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8197DF8

	thumb_func_start sub_8197E30
sub_8197E30: @ 8197E30
	push {r4,r5,lr}
	sub sp, 0xC
	adds r4, r1, 0
	adds r5, r2, 0
	ldr r1, [sp, 0x18]
	lsls r0, 24
	lsrs r0, 24
	lsls r4, 24
	lsls r5, 24
	lsls r3, 24
	lsls r1, 24
	movs r2, 0xFD
	lsls r2, 24
	adds r4, r2
	lsrs r4, 24
	movs r2, 0xFF
	lsls r2, 24
	adds r5, r2
	lsrs r5, 24
	movs r2, 0xC0
	lsls r2, 19
	adds r3, r2
	lsrs r3, 24
	str r3, [sp]
	movs r2, 0x80
	lsls r2, 18
	adds r1, r2
	lsrs r1, 24
	str r1, [sp, 0x4]
	movs r1, 0
	str r1, [sp, 0x8]
	adds r2, r4, 0
	adds r3, r5, 0
	bl FillBgTilemapBufferRect
	add sp, 0xC
	pop {r4,r5}
	pop {r0}
	bx r0
	thumb_func_end sub_8197E30

	thumb_func_start SetWindowBorderStyle
@ void SetWindowBorderStyle(u8 windowId, bool copyToVram, s16 tileStart, s8 palette)
SetWindowBorderStyle: @ 8197E80
	push {r4,r5,lr}
	adds r4, r1, 0
	lsls r0, 24
	lsrs r5, r0, 24
	lsls r4, 24
	lsrs r4, 24
	ldr r0, =gUnknown_0203CD9C
	strh r2, [r0]
	ldr r0, =gUnknown_0203CD9E
	strb r3, [r0]
	ldr r1, =DrawWindowBorder
	adds r0, r5, 0
	bl CallWindowFunction
	adds r0, r5, 0
	movs r1, 0x11
	bl FillWindowPixelBuffer
	adds r0, r5, 0
	bl PutWindowTilemap
	cmp r4, 0x1
	bne _08197EB6
	adds r0, r5, 0
	movs r1, 0x3
	bl CopyWindowToVram
_08197EB6:
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end SetWindowBorderStyle

	thumb_func_start sub_8197EC8
sub_8197EC8: @ 8197EC8
	push {r4-r6,lr}
	adds r4, r1, 0
	lsls r0, 24
	lsrs r6, r0, 24
	lsls r4, 24
	lsrs r4, 24
	ldr r0, =gUnknown_0203CD9C
	strh r2, [r0]
	ldr r5, =gUnknown_0203CD9E
	adds r0, r6, 0
	movs r1, 0x5
	bl GetWindowAttribute
	strb r0, [r5]
	ldr r1, =DrawWindowBorder
	adds r0, r6, 0
	bl CallWindowFunction
	adds r0, r6, 0
	movs r1, 0x11
	bl FillWindowPixelBuffer
	adds r0, r6, 0
	bl PutWindowTilemap
	cmp r4, 0x1
	bne _08197F06
	adds r0, r6, 0
	movs r1, 0x3
	bl CopyWindowToVram
_08197F06:
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8197EC8

	thumb_func_start DrawWindowBorder
DrawWindowBorder: @ 8197F18
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x18
	mov r9, r0
	adds r6, r1, 0
	adds r4, r2, 0
	ldr r0, [sp, 0x38]
	mov r1, r9
	lsls r1, 24
	lsrs r1, 24
	mov r9, r1
	lsls r6, 24
	lsls r4, 24
	lsls r3, 24
	lsrs r3, 24
	str r3, [sp, 0x10]
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp, 0x14]
	ldr r2, =gUnknown_0203CD9C
	ldrh r1, [r2]
	lsrs r0, r6, 24
	str r0, [sp, 0xC]
	movs r2, 0xFF
	lsls r2, 24
	adds r6, r2
	lsrs r6, 24
	lsrs r0, r4, 24
	mov r8, r0
	adds r4, r2
	lsrs r4, 24
	movs r5, 0x1
	str r5, [sp]
	str r5, [sp, 0x4]
	ldr r7, =gUnknown_0203CD9E
	ldrb r0, [r7]
	str r0, [sp, 0x8]
	mov r0, r9
	adds r2, r6, 0
	adds r3, r4, 0
	bl FillBgTilemapBufferRect
	ldr r2, =gUnknown_0203CD9C
	ldrh r1, [r2]
	adds r1, 0x1
	lsls r1, 16
	lsrs r1, 16
	ldr r0, [sp, 0x10]
	str r0, [sp]
	str r5, [sp, 0x4]
	ldrb r0, [r7]
	str r0, [sp, 0x8]
	mov r0, r9
	ldr r2, [sp, 0xC]
	adds r3, r4, 0
	bl FillBgTilemapBufferRect
	ldr r2, =gUnknown_0203CD9C
	ldrh r1, [r2]
	adds r1, 0x2
	lsls r1, 16
	lsrs r1, 16
	ldr r0, [sp, 0xC]
	ldr r2, [sp, 0x10]
	adds r0, r2
	lsls r0, 24
	lsrs r0, 24
	mov r10, r0
	str r5, [sp]
	str r5, [sp, 0x4]
	ldrb r0, [r7]
	str r0, [sp, 0x8]
	mov r0, r9
	mov r2, r10
	adds r3, r4, 0
	bl FillBgTilemapBufferRect
	ldr r0, =gUnknown_0203CD9C
	ldrh r1, [r0]
	adds r1, 0x3
	lsls r1, 16
	lsrs r1, 16
	str r5, [sp]
	ldr r2, [sp, 0x14]
	str r2, [sp, 0x4]
	ldrb r0, [r7]
	str r0, [sp, 0x8]
	mov r0, r9
	adds r2, r6, 0
	mov r3, r8
	bl FillBgTilemapBufferRect
	ldr r0, =gUnknown_0203CD9C
	ldrh r1, [r0]
	adds r1, 0x5
	lsls r1, 16
	lsrs r1, 16
	str r5, [sp]
	ldr r2, [sp, 0x14]
	str r2, [sp, 0x4]
	ldrb r0, [r7]
	str r0, [sp, 0x8]
	mov r0, r9
	mov r2, r10
	mov r3, r8
	bl FillBgTilemapBufferRect
	ldr r0, =gUnknown_0203CD9C
	ldrh r1, [r0]
	adds r1, 0x6
	lsls r1, 16
	lsrs r1, 16
	ldr r2, [sp, 0x14]
	add r8, r2
	mov r0, r8
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
	str r5, [sp]
	str r5, [sp, 0x4]
	ldrb r0, [r7]
	str r0, [sp, 0x8]
	mov r0, r9
	adds r2, r6, 0
	mov r3, r8
	bl FillBgTilemapBufferRect
	ldr r2, =gUnknown_0203CD9C
	ldrh r1, [r2]
	adds r1, 0x7
	lsls r1, 16
	lsrs r1, 16
	ldr r0, [sp, 0x10]
	str r0, [sp]
	str r5, [sp, 0x4]
	ldrb r0, [r7]
	str r0, [sp, 0x8]
	mov r0, r9
	ldr r2, [sp, 0xC]
	mov r3, r8
	bl FillBgTilemapBufferRect
	ldr r2, =gUnknown_0203CD9C
	ldrh r1, [r2]
	adds r1, 0x8
	lsls r1, 16
	lsrs r1, 16
	str r5, [sp]
	str r5, [sp, 0x4]
	ldrb r0, [r7]
	str r0, [sp, 0x8]
	mov r0, r9
	mov r2, r10
	mov r3, r8
	bl FillBgTilemapBufferRect
	add sp, 0x18
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end DrawWindowBorder

	thumb_func_start sub_8198070
sub_8198070: @ 8198070
	push {r4,r5,lr}
	adds r4, r1, 0
	lsls r0, 24
	lsrs r5, r0, 24
	lsls r4, 24
	lsrs r4, 24
	ldr r1, =sub_81980A8
	adds r0, r5, 0
	bl CallWindowFunction
	adds r0, r5, 0
	movs r1, 0
	bl FillWindowPixelBuffer
	adds r0, r5, 0
	bl ClearWindowTilemap
	cmp r4, 0x1
	bne _0819809E
	adds r0, r5, 0
	movs r1, 0x3
	bl CopyWindowToVram
_0819809E:
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8198070

	thumb_func_start sub_81980A8
sub_81980A8: @ 81980A8
	push {r4,r5,lr}
	sub sp, 0xC
	adds r4, r1, 0
	adds r5, r2, 0
	ldr r1, [sp, 0x18]
	lsls r0, 24
	lsrs r0, 24
	lsls r4, 24
	lsls r5, 24
	lsls r3, 24
	lsls r1, 24
	movs r2, 0xFF
	lsls r2, 24
	adds r4, r2
	lsrs r4, 24
	adds r5, r2
	lsrs r5, 24
	movs r2, 0x80
	lsls r2, 18
	adds r3, r2
	lsrs r3, 24
	str r3, [sp]
	adds r1, r2
	lsrs r1, 24
	str r1, [sp, 0x4]
	movs r1, 0
	str r1, [sp, 0x8]
	adds r2, r4, 0
	adds r3, r5, 0
	bl FillBgTilemapBufferRect
	add sp, 0xC
	pop {r4,r5}
	pop {r0}
	bx r0
	thumb_func_end sub_81980A8

	thumb_func_start sub_81980F0
sub_81980F0: @ 81980F0
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, 0x8
	ldr r4, [sp, 0x20]
	lsls r0, 24
	lsrs r6, r0, 24
	lsls r1, 24
	lsrs r7, r1, 24
	lsls r2, 24
	lsrs r2, 24
	mov r8, r2
	lsls r3, 24
	lsrs r5, r3, 24
	lsls r4, 16
	lsrs r4, 16
	mov r0, sp
	movs r1, 0
	movs r2, 0x8
	bl memset
	cmp r6, 0x3
	bls _08198126
	movs r1, 0
	mov r0, sp
	strb r1, [r0]
	b _0819812A
_08198126:
	mov r0, sp
	strb r6, [r0]
_0819812A:
	mov r1, sp
	mov r0, r8
	strb r0, [r1, 0x2]
	movs r0, 0x2
	strb r0, [r1, 0x4]
	movs r0, 0x1E
	subs r0, r7
	strb r0, [r1, 0x1]
	strb r7, [r1, 0x3]
	strb r5, [r1, 0x5]
	strh r4, [r1, 0x6]
	ldr r4, =gUnknown_0203CDA0
	mov r0, sp
	bl AddWindow
	strb r0, [r4]
	cmp r5, 0xF
	bls _08198158
	movs r5, 0xF0
	b _0819815C
	.pool
_08198158:
	lsls r0, r5, 28
	lsrs r5, r0, 24
_0819815C:
	ldr r0, =gUnknown_0860F0B0
	adds r1, r5, 0
	movs r2, 0x20
	bl LoadPalette
	ldr r0, =gUnknown_0203CDA0
	ldrb r0, [r0]
	add sp, 0x8
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_81980F0

	thumb_func_start sub_8198180
sub_8198180: @ 8198180
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, 0xC
	adds r6, r0, 0
	lsls r1, 24
	lsrs r7, r1, 24
	lsls r2, 24
	lsrs r2, 24
	mov r8, r2
	ldr r5, =gUnknown_0203CDA0
	ldrb r0, [r5]
	cmp r0, 0xFF
	beq _081981EE
	bl PutWindowTilemap
	ldrb r0, [r5]
	movs r1, 0xFF
	bl FillWindowPixelBuffer
	movs r0, 0
	adds r1, r6, 0
	movs r2, 0
	bl GetStringWidth
	adds r4, r0, 0
	lsls r4, 16
	lsrs r4, 16
	ldrb r0, [r5]
	movs r1, 0x1
	bl GetWindowAttribute
	movs r2, 0xEC
	subs r2, r7
	lsls r0, 3
	subs r2, r0
	subs r2, r4
	lsls r2, 24
	lsrs r2, 24
	ldrb r0, [r5]
	ldr r1, =gUnknown_0860F0D0
	str r1, [sp]
	movs r1, 0
	str r1, [sp, 0x4]
	str r6, [sp, 0x8]
	movs r3, 0x1
	bl box_print
	mov r0, r8
	cmp r0, 0
	beq _081981EE
	ldrb r0, [r5]
	movs r1, 0x3
	bl CopyWindowToVram
_081981EE:
	add sp, 0xC
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8198180

	thumb_func_start sub_8198204
sub_8198204: @ 8198204
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x18
	mov r10, r0
	adds r6, r1, 0
	ldr r0, [sp, 0x38]
	lsls r2, 24
	lsrs r2, 24
	lsls r3, 24
	lsrs r3, 24
	mov r8, r3
	lsls r0, 24
	lsrs r0, 24
	mov r9, r0
	movs r4, 0
	ldr r0, =gUnknown_0203CDA0
	ldrb r1, [r0]
	adds r7, r0, 0
	cmp r1, 0xFF
	beq _081982C8
	cmp r2, 0
	beq _08198244
	add r0, sp, 0x14
	strb r4, [r0]
	adds r1, r0, 0
	b _0819824A
	.pool
_08198244:
	add r1, sp, 0x14
	movs r0, 0xF
	strb r0, [r1]
_0819824A:
	movs r0, 0x1
	strb r0, [r1, 0x1]
	movs r0, 0x2
	strb r0, [r1, 0x2]
	adds r5, r7, 0
	ldrb r0, [r5]
	bl PutWindowTilemap
	ldrb r0, [r5]
	movs r1, 0xFF
	bl FillWindowPixelBuffer
	cmp r6, 0
	beq _0819829E
	movs r0, 0
	adds r1, r6, 0
	movs r2, 0
	bl GetStringWidth
	lsls r0, 16
	lsrs r4, r0, 16
	ldrb r0, [r5]
	movs r1, 0x1
	bl GetWindowAttribute
	movs r2, 0xEC
	mov r1, r8
	subs r2, r1
	lsls r0, 3
	subs r2, r0
	subs r2, r4
	lsls r2, 24
	lsrs r2, 24
	ldrb r0, [r5]
	add r1, sp, 0x14
	str r1, [sp]
	movs r1, 0
	str r1, [sp, 0x4]
	str r6, [sp, 0x8]
	movs r3, 0x1
	bl box_print
_0819829E:
	ldrb r0, [r7]
	movs r1, 0
	str r1, [sp]
	str r1, [sp, 0x4]
	add r2, sp, 0x14
	str r2, [sp, 0x8]
	str r1, [sp, 0xC]
	mov r1, r10
	str r1, [sp, 0x10]
	movs r1, 0x1
	movs r2, 0x4
	movs r3, 0x1
	bl AddTextPrinterParametrized2
	mov r2, r9
	cmp r2, 0
	beq _081982C8
	ldrb r0, [r7]
	movs r1, 0x3
	bl CopyWindowToVram
_081982C8:
	add sp, 0x18
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_8198204

	thumb_func_start sub_81982D8
sub_81982D8: @ 81982D8
	push {lr}
	ldr r1, =gUnknown_0203CDA0
	ldrb r0, [r1]
	cmp r0, 0xFF
	beq _081982E8
	movs r1, 0x3
	bl CopyWindowToVram
_081982E8:
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81982D8

	thumb_func_start sub_81982F0
sub_81982F0: @ 81982F0
	push {r4,lr}
	ldr r4, =gUnknown_0203CDA0
	ldrb r0, [r4]
	cmp r0, 0xFF
	beq _08198308
	movs r1, 0xFF
	bl FillWindowPixelBuffer
	ldrb r0, [r4]
	movs r1, 0x3
	bl CopyWindowToVram
_08198308:
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81982F0

	thumb_func_start sub_8198314
sub_8198314: @ 8198314
	push {r4,lr}
	ldr r4, =gUnknown_0203CDA0
	ldrb r0, [r4]
	cmp r0, 0xFF
	beq _0819833C
	movs r1, 0
	bl FillWindowPixelBuffer
	ldrb r0, [r4]
	bl ClearWindowTilemap
	ldrb r0, [r4]
	movs r1, 0x3
	bl CopyWindowToVram
	ldrb r0, [r4]
	bl RemoveWindow
	movs r0, 0xFF
	strb r0, [r4]
_0819833C:
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8198314

	thumb_func_start sub_8198348
sub_8198348: @ 8198348
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	ldr r4, [sp, 0x18]
	mov r8, r4
	ldr r4, [sp, 0x1C]
	ldr r5, [sp, 0x20]
	ldr r6, [sp, 0x24]
	mov r12, r6
	lsls r4, 24
	lsrs r4, 24
	lsls r5, 24
	lsrs r7, r5, 24
	ldr r5, =gUnknown_0203CD90
	movs r6, 0
	strb r2, [r5]
	strb r3, [r5, 0x1]
	strb r6, [r5, 0x3]
	subs r4, 0x1
	strb r4, [r5, 0x4]
	strb r0, [r5, 0x5]
	strb r1, [r5, 0x6]
	mov r0, r8
	strb r0, [r5, 0x8]
	mov r4, r12
	strb r4, [r5, 0xB]
	cmp r7, 0
	blt _08198388
	movs r0, 0x4
	ldrsb r0, [r5, r0]
	cmp r7, r0
	ble _08198390
_08198388:
	strb r6, [r5, 0x2]
	b _08198392
	.pool
_08198390:
	strb r7, [r5, 0x2]
_08198392:
	movs r0, 0
	bl MoveMenuCursor
	ldr r0, =gUnknown_0203CD90
	ldrb r0, [r0, 0x2]
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_8198348

	thumb_func_start sub_81983AC
sub_81983AC: @ 81983AC
	push {r4-r6,lr}
	sub sp, 0x10
	ldr r4, [sp, 0x20]
	ldr r5, [sp, 0x24]
	ldr r6, [sp, 0x28]
	lsls r0, 24
	lsrs r0, 24
	lsls r1, 24
	lsrs r1, 24
	lsls r2, 24
	lsrs r2, 24
	lsls r3, 24
	lsrs r3, 24
	lsls r4, 24
	lsrs r4, 24
	lsls r5, 24
	lsrs r5, 24
	lsls r6, 24
	lsrs r6, 24
	str r4, [sp]
	str r5, [sp, 0x4]
	str r6, [sp, 0x8]
	movs r4, 0
	str r4, [sp, 0xC]
	bl sub_8198348
	lsls r0, 24
	lsrs r0, 24
	add sp, 0x10
	pop {r4-r6}
	pop {r1}
	bx r1
	thumb_func_end sub_81983AC

	thumb_func_start sub_81983EC
sub_81983EC: @ 81983EC
	push {r4-r6,lr}
	mov r6, r8
	push {r6}
	sub sp, 0x14
	mov r8, r0
	adds r6, r1, 0
	ldr r4, [sp, 0x28]
	ldr r5, [sp, 0x2C]
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
	lsls r6, 24
	lsrs r6, 24
	lsls r2, 24
	lsrs r2, 24
	lsls r3, 24
	lsrs r3, 24
	lsls r4, 24
	lsrs r4, 24
	lsls r5, 24
	lsrs r5, 24
	adds r0, r6, 0
	movs r1, 0x1
	str r2, [sp, 0xC]
	str r3, [sp, 0x10]
	bl GetMenuCursorDimensionByFont
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp]
	str r4, [sp, 0x4]
	str r5, [sp, 0x8]
	mov r0, r8
	adds r1, r6, 0
	ldr r2, [sp, 0xC]
	ldr r3, [sp, 0x10]
	bl sub_81983AC
	lsls r0, 24
	lsrs r0, 24
	add sp, 0x14
	pop {r3}
	mov r8, r3
	pop {r4-r6}
	pop {r1}
	bx r1
	thumb_func_end sub_81983EC

	thumb_func_start RedrawMenuCursor
@ void RedrawMenuCursor(s8 oldPos, s8 newPos)
RedrawMenuCursor: @ 8198448
	push {r4-r6,lr}
	mov r6, r9
	mov r5, r8
	push {r5,r6}
	sub sp, 0xC
	adds r6, r0, 0
	mov r8, r1
	lsls r6, 24
	lsrs r6, 24
	mov r0, r8
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
	ldr r5, =gUnknown_0203CD90
	ldrb r0, [r5, 0x6]
	movs r1, 0
	bl GetMenuCursorDimensionByFont
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	ldrb r0, [r5, 0x6]
	movs r1, 0x1
	bl GetMenuCursorDimensionByFont
	lsls r0, 24
	lsrs r0, 24
	ldrb r1, [r5, 0x5]
	mov r9, r1
	ldrb r2, [r5]
	ldrb r1, [r5, 0x8]
	adds r3, r1, 0
	muls r3, r6
	ldrb r6, [r5, 0x1]
	adds r3, r6
	lsls r3, 16
	lsrs r3, 16
	str r4, [sp]
	str r0, [sp, 0x4]
	mov r0, r9
	movs r1, 0x11
	bl FillWindowPixelRect
	ldrb r0, [r5, 0x5]
	ldrb r1, [r5, 0x6]
	ldr r2, =gUnknown_085EE498
	ldrb r3, [r5]
	ldrb r4, [r5, 0x8]
	mov r6, r8
	muls r6, r4
	adds r4, r6, 0
	ldrb r5, [r5, 0x1]
	adds r4, r5
	lsls r4, 24
	lsrs r4, 24
	str r4, [sp]
	movs r4, 0
	str r4, [sp, 0x4]
	str r4, [sp, 0x8]
	bl Print
	add sp, 0xC
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end RedrawMenuCursor

	thumb_func_start MoveMenuCursor
@ s8 MoveMenuCursor(s8 cursorDelta)
MoveMenuCursor: @ 81984D8
	push {r4,r5,lr}
	ldr r1, =gUnknown_0203CD90
	ldrb r5, [r1, 0x2]
	movs r2, 0x2
	ldrsb r2, [r1, r2]
	lsls r0, 24
	asrs r3, r0, 24
	adds r2, r3
	movs r0, 0x3
	ldrsb r0, [r1, r0]
	adds r4, r1, 0
	cmp r2, r0
	bge _081984FC
	ldrb r0, [r4, 0x4]
	b _0819850A
	.pool
_081984FC:
	movs r0, 0x4
	ldrsb r0, [r4, r0]
	cmp r2, r0
	ble _08198508
	ldrb r0, [r4, 0x3]
	b _0819850A
_08198508:
	adds r0, r3, r5
_0819850A:
	strb r0, [r4, 0x2]
	ldrb r1, [r4, 0x2]
	adds r0, r5, 0
	bl RedrawMenuCursor
	ldrb r0, [r4, 0x2]
	pop {r4,r5}
	pop {r1}
	bx r1
	thumb_func_end MoveMenuCursor

	thumb_func_start MoveMenuCursorNoWrapAround
@ s8 MoveMenuCursorNoWrapAround(s8 cursorDelta)
MoveMenuCursorNoWrapAround: @ 819851C
	push {r4,r5,lr}
	ldr r1, =gUnknown_0203CD90
	ldrb r5, [r1, 0x2]
	movs r2, 0x2
	ldrsb r2, [r1, r2]
	lsls r0, 24
	asrs r3, r0, 24
	adds r2, r3
	movs r0, 0x3
	ldrsb r0, [r1, r0]
	adds r4, r1, 0
	cmp r2, r0
	bge _08198540
	ldrb r0, [r4, 0x3]
	b _0819854E
	.pool
_08198540:
	movs r0, 0x4
	ldrsb r0, [r4, r0]
	cmp r2, r0
	ble _0819854C
	ldrb r0, [r4, 0x4]
	b _0819854E
_0819854C:
	adds r0, r3, r5
_0819854E:
	strb r0, [r4, 0x2]
	ldrb r1, [r4, 0x2]
	adds r0, r5, 0
	bl RedrawMenuCursor
	ldrb r0, [r4, 0x2]
	pop {r4,r5}
	pop {r1}
	bx r1
	thumb_func_end MoveMenuCursorNoWrapAround

	thumb_func_start GetMenuCursorPos
GetMenuCursorPos: @ 8198560
	ldr r0, =gUnknown_0203CD90
	ldrb r0, [r0, 0x2]
	bx lr
	.pool
	thumb_func_end GetMenuCursorPos

	thumb_func_start ProcessMenuInput
ProcessMenuInput: @ 819856C
	push {r4,lr}
	ldr r0, =gMain
	ldrh r1, [r0, 0x2E]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _08198598
	ldr r4, =gUnknown_0203CD90
	ldrb r0, [r4, 0xB]
	cmp r0, 0
	bne _08198588
	movs r0, 0x5
	bl audio_play
_08198588:
	movs r0, 0x2
	ldrsb r0, [r4, r0]
	b _081985D2
	.pool
_08198598:
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _081985A6
	movs r0, 0x1
	negs r0, r0
	b _081985D2
_081985A6:
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	beq _081985BA
	movs r0, 0x5
	bl audio_play
	movs r0, 0x1
	negs r0, r0
	b _081985CA
_081985BA:
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _081985CE
	movs r0, 0x5
	bl audio_play
	movs r0, 0x1
_081985CA:
	bl MoveMenuCursor
_081985CE:
	movs r0, 0x2
	negs r0, r0
_081985D2:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end ProcessMenuInput

	thumb_func_start ProcessMenuInputNoWrapAround
@ int ProcessMenuInputNoWrapAround()
ProcessMenuInputNoWrapAround: @ 81985D8
	push {r4-r6,lr}
	ldr r4, =gUnknown_0203CD90
	ldrb r5, [r4, 0x2]
	adds r6, r5, 0
	ldr r0, =gMain
	ldrh r1, [r0, 0x2E]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _08198608
	ldrb r0, [r4, 0xB]
	cmp r0, 0
	bne _081985F8
	movs r0, 0x5
	bl audio_play
_081985F8:
	movs r0, 0x2
	ldrsb r0, [r4, r0]
	b _08198650
	.pool
_08198608:
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _08198616
	movs r0, 0x1
	negs r0, r0
	b _08198650
_08198616:
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	beq _08198630
	movs r0, 0x1
	negs r0, r0
	bl MoveMenuCursorNoWrapAround
	lsls r0, 24
	lsrs r0, 24
	cmp r5, r0
	beq _0819864C
	b _08198646
_08198630:
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _0819864C
	movs r0, 0x1
	bl MoveMenuCursorNoWrapAround
	lsls r0, 24
	lsrs r0, 24
	cmp r6, r0
	beq _0819864C
_08198646:
	movs r0, 0x5
	bl audio_play
_0819864C:
	movs r0, 0x2
	negs r0, r0
_08198650:
	pop {r4-r6}
	pop {r1}
	bx r1
	thumb_func_end ProcessMenuInputNoWrapAround

	thumb_func_start ProcessMenuInput_other
ProcessMenuInput_other: @ 8198658
	push {r4,lr}
	ldr r2, =gMain
	ldrh r1, [r2, 0x2E]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _08198684
	ldr r4, =gUnknown_0203CD90
	ldrb r0, [r4, 0xB]
	cmp r0, 0
	bne _08198674
	movs r0, 0x5
	bl audio_play
_08198674:
	movs r0, 0x2
	ldrsb r0, [r4, r0]
	b _081986BC
	.pool
_08198684:
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _08198692
	movs r0, 0x1
	negs r0, r0
	b _081986BC
_08198692:
	ldrh r0, [r2, 0x30]
	movs r1, 0xF0
	ands r1, r0
	cmp r1, 0x40
	bne _081986A8
	movs r0, 0x5
	bl audio_play
	movs r0, 0x1
	negs r0, r0
	b _081986B4
_081986A8:
	cmp r1, 0x80
	bne _081986B8
	movs r0, 0x5
	bl audio_play
	movs r0, 0x1
_081986B4:
	bl MoveMenuCursor
_081986B8:
	movs r0, 0x2
	negs r0, r0
_081986BC:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end ProcessMenuInput_other

	thumb_func_start ProcessMenuInputNoWrapAround_other
ProcessMenuInputNoWrapAround_other: @ 81986C4
	push {r4-r6,lr}
	ldr r4, =gUnknown_0203CD90
	ldrb r5, [r4, 0x2]
	adds r6, r5, 0
	ldr r2, =gMain
	ldrh r1, [r2, 0x2E]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _081986F4
	ldrb r0, [r4, 0xB]
	cmp r0, 0
	bne _081986E4
	movs r0, 0x5
	bl audio_play
_081986E4:
	movs r0, 0x2
	ldrsb r0, [r4, r0]
	b _0819873A
	.pool
_081986F4:
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _08198702
	movs r0, 0x1
	negs r0, r0
	b _0819873A
_08198702:
	ldrh r0, [r2, 0x30]
	movs r1, 0xF0
	ands r1, r0
	cmp r1, 0x40
	bne _0819871E
	movs r0, 0x1
	negs r0, r0
	bl MoveMenuCursorNoWrapAround
	lsls r0, 24
	lsrs r0, 24
	cmp r5, r0
	beq _08198736
	b _08198730
_0819871E:
	cmp r1, 0x80
	bne _08198736
	movs r0, 0x1
	bl MoveMenuCursorNoWrapAround
	lsls r0, 24
	lsrs r0, 24
	cmp r6, r0
	beq _08198736
_08198730:
	movs r0, 0x5
	bl audio_play
_08198736:
	movs r0, 0x2
	negs r0, r0
_0819873A:
	pop {r4-r6}
	pop {r1}
	bx r1
	thumb_func_end ProcessMenuInputNoWrapAround_other

	thumb_func_start PrintTextArray
PrintTextArray: @ 8198740
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0xC
	ldr r4, [sp, 0x2C]
	ldr r5, [sp, 0x30]
	lsls r0, 24
	lsrs r6, r0, 24
	lsls r1, 24
	lsrs r1, 24
	mov r10, r1
	lsls r2, 24
	lsrs r2, 24
	mov r9, r2
	lsls r3, 24
	lsrs r3, 24
	mov r8, r3
	lsls r4, 24
	lsrs r7, r4, 24
	lsls r5, 24
	lsrs r5, 24
	movs r4, 0
	cmp r4, r5
	bcs _081987A4
_08198774:
	lsls r0, r4, 3
	ldr r1, [sp, 0x34]
	adds r0, r1
	ldr r2, [r0]
	adds r0, r7, 0
	muls r0, r4
	add r0, r8
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp]
	movs r0, 0xFF
	str r0, [sp, 0x4]
	movs r0, 0
	str r0, [sp, 0x8]
	adds r0, r6, 0
	mov r1, r10
	mov r3, r9
	bl Print
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, r5
	bcc _08198774
_081987A4:
	adds r0, r6, 0
	movs r1, 0x2
	bl CopyWindowToVram
	add sp, 0xC
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end PrintTextArray

	thumb_func_start sub_81987BC
sub_81987BC: @ 81987BC
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x20
	ldr r4, [sp, 0x40]
	ldr r5, [sp, 0x44]
	ldr r6, [sp, 0x4C]
	ldr r7, [sp, 0x50]
	mov r8, r7
	lsls r0, 24
	lsrs r7, r0, 24
	lsls r1, 24
	lsrs r1, 24
	str r1, [sp, 0x14]
	lsls r2, 24
	lsrs r2, 24
	str r2, [sp, 0x18]
	lsls r3, 24
	lsrs r3, 24
	str r3, [sp, 0x1C]
	lsls r4, 24
	lsrs r4, 24
	mov r10, r4
	lsls r5, 24
	lsrs r5, 24
	lsls r6, 24
	lsrs r6, 24
	mov r9, r6
	mov r0, r8
	lsls r0, 24
	lsrs r6, r0, 24
	movs r4, 0
	cmp r4, r5
	bcs _0819883C
_08198804:
	lsls r0, r4, 3
	ldr r1, [sp, 0x48]
	adds r0, r1
	ldr r2, [r0]
	mov r0, r10
	muls r0, r4
	ldr r1, [sp, 0x1C]
	adds r0, r1, r0
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp]
	movs r0, 0xFF
	str r0, [sp, 0x4]
	movs r0, 0
	str r0, [sp, 0x8]
	mov r0, r9
	str r0, [sp, 0xC]
	str r6, [sp, 0x10]
	adds r0, r7, 0
	ldr r1, [sp, 0x14]
	ldr r3, [sp, 0x18]
	bl sub_8199F74
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, r5
	bcc _08198804
_0819883C:
	adds r0, r7, 0
	movs r1, 0x2
	bl CopyWindowToVram
	add sp, 0x20
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_81987BC

	thumb_func_start sub_8198854
sub_8198854: @ 8198854
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, 0xC
	mov r8, r0
	adds r6, r1, 0
	adds r4, r2, 0
	adds r5, r3, 0
	ldr r7, [sp, 0x24]
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
	lsls r6, 24
	lsrs r6, 24
	lsls r4, 24
	lsrs r4, 24
	lsls r5, 24
	lsrs r5, 24
	adds r0, r6, 0
	movs r1, 0
	bl GetFontAttribute
	adds r2, r0, 0
	lsls r2, 24
	lsrs r2, 24
	str r4, [sp]
	str r5, [sp, 0x4]
	str r7, [sp, 0x8]
	mov r0, r8
	adds r1, r6, 0
	movs r3, 0x1
	bl PrintTextArray
	add sp, 0xC
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_8198854

	thumb_func_start AddItemMenuActionTextPrinters
AddItemMenuActionTextPrinters: @ 81988A4
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x18
	adds r6, r1, 0
	mov r8, r2
	ldr r1, [sp, 0x38]
	mov r9, r1
	ldr r1, [sp, 0x3C]
	ldr r2, [sp, 0x40]
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp, 0x10]
	lsls r6, 24
	lsrs r6, 24
	mov r4, r8
	lsls r4, 24
	lsrs r4, 24
	mov r8, r4
	lsls r3, 24
	lsrs r3, 24
	str r3, [sp, 0x14]
	mov r0, r9
	lsls r0, 24
	lsrs r0, 24
	mov r9, r0
	lsls r1, 24
	lsrs r1, 24
	mov r10, r1
	lsls r2, 24
	lsrs r7, r2, 24
	mov r0, sp
	ldrb r1, [r0, 0x10]
	strb r1, [r0, 0x4]
	strb r6, [r0, 0x5]
	adds r0, r6, 0
	movs r1, 0x5
	bl GetFontAttribute
	mov r3, sp
	lsls r0, 4
	ldrb r2, [r3, 0xC]
	movs r5, 0xF
	adds r1, r5, 0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, 0xC]
	adds r0, r6, 0
	movs r1, 0x6
	bl GetFontAttribute
	mov r3, sp
	adds r1, r5, 0
	ands r1, r0
	ldrb r2, [r3, 0xD]
	movs r4, 0x10
	negs r4, r4
	adds r0, r4, 0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, 0xD]
	adds r0, r6, 0
	movs r1, 0x7
	bl GetFontAttribute
	mov r3, sp
	lsls r0, 4
	ldrb r2, [r3, 0xD]
	adds r1, r5, 0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, 0xD]
	adds r0, r6, 0
	movs r1, 0x4
	bl GetFontAttribute
	mov r1, sp
	ands r5, r0
	ldrb r0, [r1, 0xC]
	ands r4, r0
	orrs r4, r5
	strb r4, [r1, 0xC]
	mov r0, sp
	mov r2, r9
	strb r2, [r0, 0xA]
	adds r0, r6, 0
	movs r1, 0x3
	bl GetFontAttribute
	mov r1, sp
	strb r0, [r1, 0xB]
	mov r0, sp
	mov r4, r8
	strb r4, [r0, 0x6]
	strb r4, [r0, 0x8]
	movs r4, 0
	cmp r4, r7
	bcs _0819899E
	mov r5, sp
_0819896E:
	ldr r1, [sp, 0x48]
	adds r0, r1, r4
	ldrb r0, [r0]
	lsls r0, 3
	ldr r2, [sp, 0x44]
	adds r0, r2
	ldr r0, [r0]
	str r0, [sp]
	mov r0, r10
	muls r0, r4
	ldr r1, [sp, 0x14]
	adds r0, r1, r0
	strb r0, [r5, 0x7]
	strb r0, [r5, 0x9]
	mov r0, sp
	movs r1, 0xFF
	movs r2, 0
	bl AddTextPrinter
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, r7
	bcc _0819896E
_0819899E:
	ldr r0, [sp, 0x10]
	movs r1, 0x2
	bl CopyWindowToVram
	add sp, 0x18
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end AddItemMenuActionTextPrinters

	thumb_func_start sub_81989B8
sub_81989B8: @ 81989B8
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, 0x14
	mov r9, r0
	adds r4, r1, 0
	adds r6, r2, 0
	mov r8, r3
	ldr r7, [sp, 0x30]
	lsls r0, 24
	lsrs r0, 24
	mov r9, r0
	lsls r4, 24
	lsrs r4, 24
	lsls r6, 24
	lsrs r6, 24
	mov r0, r8
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
	adds r0, r4, 0
	movs r1, 0
	bl GetFontAttribute
	adds r5, r0, 0
	lsls r5, 24
	lsrs r5, 24
	adds r0, r4, 0
	movs r1, 0x2
	bl GetFontAttribute
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp]
	str r6, [sp, 0x4]
	mov r0, r8
	str r0, [sp, 0x8]
	str r7, [sp, 0xC]
	ldr r0, [sp, 0x34]
	str r0, [sp, 0x10]
	mov r0, r9
	adds r1, r4, 0
	adds r2, r5, 0
	movs r3, 0x1
	bl AddItemMenuActionTextPrinters
	add sp, 0x14
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_81989B8

	thumb_func_start rbox_template_set
@ void rbox_template_set(WindowTemplate *template, char bg_id, char x, char y, char w, char h, char a7, s16 a8)
rbox_template_set: @ 8198A24
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	ldr r4, [sp, 0x18]
	ldr r5, [sp, 0x1C]
	ldr r6, [sp, 0x20]
	ldr r7, [sp, 0x24]
	mov r8, r7
	strb r1, [r0]
	strb r2, [r0, 0x1]
	strb r3, [r0, 0x2]
	strb r4, [r0, 0x3]
	strb r5, [r0, 0x4]
	strb r6, [r0, 0x5]
	mov r1, r8
	strh r1, [r0, 0x6]
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end rbox_template_set

	thumb_func_start sub_8198A50
sub_8198A50: @ 8198A50
	push {r4-r6,lr}
	mov r6, r8
	push {r6}
	sub sp, 0x18
	mov r8, r0
	ldr r0, [sp, 0x2C]
	ldr r4, [sp, 0x30]
	ldr r5, [sp, 0x34]
	ldr r6, [sp, 0x38]
	lsls r1, 24
	lsrs r1, 24
	lsls r2, 24
	lsrs r2, 24
	lsls r3, 24
	lsrs r3, 24
	lsls r0, 24
	lsrs r0, 24
	lsls r4, 24
	lsrs r4, 24
	lsls r5, 24
	lsrs r5, 24
	lsls r6, 16
	lsrs r6, 16
	str r0, [sp]
	str r4, [sp, 0x4]
	str r5, [sp, 0x8]
	str r6, [sp, 0xC]
	add r0, sp, 0x10
	bl rbox_template_set
	ldr r0, [sp, 0x10]
	ldr r1, [sp, 0x14]
	mov r2, r8
	str r0, [r2]
	str r1, [r2, 0x4]
	mov r0, r8
	add sp, 0x18
	pop {r3}
	mov r8, r3
	pop {r4-r6}
	pop {r2}
	bx r2
	thumb_func_end sub_8198A50

	thumb_func_start sub_8198AA4
sub_8198AA4: @ 8198AA4
	push {r4-r6,lr}
	sub sp, 0x18
	adds r4, r0, 0
	adds r5, r1, 0
	adds r6, r2, 0
	ldr r0, [sp, 0x28]
	ldr r1, [sp, 0x2C]
	ldr r2, [sp, 0x30]
	lsls r4, 24
	lsrs r4, 24
	lsls r5, 24
	lsrs r5, 24
	lsls r6, 24
	lsrs r6, 24
	lsls r3, 24
	lsrs r3, 24
	lsls r0, 24
	lsrs r0, 24
	lsls r1, 24
	lsrs r1, 24
	lsls r2, 16
	lsrs r2, 16
	str r3, [sp]
	str r0, [sp, 0x4]
	str r1, [sp, 0x8]
	str r2, [sp, 0xC]
	add r0, sp, 0x10
	adds r1, r4, 0
	adds r2, r5, 0
	adds r3, r6, 0
	bl rbox_template_set
	add r0, sp, 0x10
	bl AddWindow
	lsls r0, 16
	lsrs r0, 16
	add sp, 0x18
	pop {r4-r6}
	pop {r1}
	bx r1
	thumb_func_end sub_8198AA4

	thumb_func_start sub_8198AF8
sub_8198AF8: @ 8198AF8
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x1C
	adds r6, r1, 0
	mov r8, r2
	mov r9, r3
	ldr r4, [sp, 0x3C]
	ldr r5, [sp, 0x40]
	ldr r1, [sp, 0x44]
	mov r10, r1
	lsls r6, 24
	lsrs r6, 24
	mov r1, r8
	lsls r1, 24
	lsrs r1, 24
	mov r8, r1
	mov r1, r9
	lsls r1, 24
	lsrs r1, 24
	mov r9, r1
	lsls r4, 16
	lsrs r4, 16
	lsls r5, 24
	lsrs r5, 24
	mov r1, r10
	lsls r1, 24
	lsrs r1, 24
	mov r10, r1
	ldr r7, =gUnknown_0203CD9F
	bl AddWindow
	strb r0, [r7]
	ldrb r0, [r7]
	movs r1, 0x1
	adds r2, r4, 0
	adds r3, r5, 0
	bl SetWindowBorderStyle
	ldr r0, =gUnknown_085EE491
	str r0, [sp, 0xC]
	add r1, sp, 0xC
	ldrb r0, [r7]
	strb r0, [r1, 0x4]
	adds r0, r1, 0
	strb r6, [r0, 0x5]
	adds r0, r6, 0
	movs r1, 0
	bl GetFontAttribute
	add r1, sp, 0xC
	add r0, r8
	strb r0, [r1, 0x6]
	adds r0, r1, 0
	mov r1, r9
	strb r1, [r0, 0x7]
	adds r1, r0, 0
	ldrb r0, [r0, 0x6]
	strb r0, [r1, 0x8]
	adds r0, r1, 0
	ldrb r0, [r0, 0x7]
	strb r0, [r1, 0x9]
	adds r0, r6, 0
	movs r1, 0x5
	bl GetFontAttribute
	add r3, sp, 0xC
	lsls r0, 4
	ldrb r2, [r3, 0xC]
	movs r5, 0xF
	adds r1, r5, 0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, 0xC]
	adds r0, r6, 0
	movs r1, 0x6
	bl GetFontAttribute
	add r3, sp, 0xC
	adds r1, r5, 0
	ands r1, r0
	ldrb r2, [r3, 0xD]
	movs r4, 0x10
	negs r4, r4
	adds r0, r4, 0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, 0xD]
	adds r0, r6, 0
	movs r1, 0x7
	bl GetFontAttribute
	add r3, sp, 0xC
	lsls r0, 4
	ldrb r2, [r3, 0xD]
	adds r1, r5, 0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, 0xD]
	adds r0, r6, 0
	movs r1, 0x4
	bl GetFontAttribute
	add r1, sp, 0xC
	ands r5, r0
	ldrb r0, [r1, 0xC]
	ands r4, r0
	orrs r4, r5
	strb r4, [r1, 0xC]
	adds r0, r6, 0
	movs r1, 0x2
	bl GetFontAttribute
	add r1, sp, 0xC
	strb r0, [r1, 0xA]
	adds r0, r6, 0
	movs r1, 0x3
	bl GetFontAttribute
	add r1, sp, 0xC
	strb r0, [r1, 0xB]
	adds r0, r1, 0
	movs r1, 0xFF
	movs r2, 0
	bl AddTextPrinter
	adds r0, r6, 0
	movs r1, 0x1
	bl GetFontAttribute
	lsls r0, 24
	lsrs r0, 24
	ldrb r1, [r7]
	str r0, [sp]
	movs r0, 0x2
	str r0, [sp, 0x4]
	mov r0, r10
	str r0, [sp, 0x8]
	adds r0, r1, 0
	adds r1, r6, 0
	mov r2, r8
	mov r3, r9
	bl sub_81983AC
	add sp, 0x1C
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8198AF8

	thumb_func_start sub_8198C34
sub_8198C34: @ 8198C34
	push {lr}
	sub sp, 0xC
	lsls r1, 24
	lsrs r1, 24
	lsls r2, 16
	lsrs r2, 16
	lsls r3, 24
	lsrs r3, 24
	str r2, [sp]
	str r3, [sp, 0x4]
	movs r2, 0
	str r2, [sp, 0x8]
	movs r3, 0x1
	bl sub_8198AF8
	add sp, 0xC
	pop {r0}
	bx r0
	thumb_func_end sub_8198C34

	thumb_func_start sub_8198C58
sub_8198C58: @ 8198C58
	push {r4,lr}
	bl ProcessMenuInputNoWrapAround
	lsls r0, 24
	asrs r4, r0, 24
	movs r0, 0x2
	negs r0, r0
	cmp r4, r0
	beq _08198C6E
	bl sub_8198C78
_08198C6E:
	adds r0, r4, 0
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_8198C58

	thumb_func_start sub_8198C78
sub_8198C78: @ 8198C78
	push {r4,lr}
	ldr r4, =gUnknown_0203CD9F
	ldrb r0, [r4]
	movs r1, 0x1
	bl sub_8198070
	ldrb r0, [r4]
	bl RemoveWindow
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8198C78

	thumb_func_start sub_8198C94
sub_8198C94: @ 8198C94
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x20
	ldr r4, [sp, 0x40]
	ldr r5, [sp, 0x44]
	ldr r6, [sp, 0x48]
	ldr r7, [sp, 0x4C]
	mov r8, r7
	lsls r0, 24
	lsrs r0, 24
	mov r10, r0
	lsls r1, 24
	lsrs r1, 24
	str r1, [sp, 0xC]
	lsls r2, 24
	lsrs r2, 24
	str r2, [sp, 0x10]
	lsls r3, 24
	lsrs r3, 24
	str r3, [sp, 0x14]
	lsls r4, 24
	lsrs r4, 24
	str r4, [sp, 0x18]
	lsls r5, 24
	lsrs r5, 24
	str r5, [sp, 0x1C]
	lsls r6, 24
	lsrs r6, 24
	mov r0, r8
	lsls r0, 24
	lsrs r0, 24
	mov r9, r0
	movs r5, 0
	cmp r5, r9
	bcs _08198D3A
_08198CE0:
	movs r4, 0
	adds r1, r5, 0x1
	mov r8, r1
	cmp r4, r6
	bcs _08198D30
	ldr r7, [sp, 0x1C]
	adds r0, r7, 0
	muls r0, r5
	ldr r1, [sp, 0x14]
	adds r0, r1, r0
	lsls r0, 24
	lsrs r7, r0, 24
_08198CF8:
	adds r0, r5, 0
	muls r0, r6
	adds r0, r4
	lsls r0, 3
	ldr r1, [sp, 0x50]
	adds r0, r1
	ldr r2, [r0]
	ldr r0, [sp, 0x18]
	adds r3, r0, 0
	muls r3, r4
	ldr r1, [sp, 0x10]
	adds r3, r1, r3
	lsls r3, 24
	lsrs r3, 24
	str r7, [sp]
	movs r0, 0xFF
	str r0, [sp, 0x4]
	movs r0, 0
	str r0, [sp, 0x8]
	mov r0, r10
	ldr r1, [sp, 0xC]
	bl Print
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, r6
	bcc _08198CF8
_08198D30:
	mov r7, r8
	lsls r0, r7, 24
	lsrs r5, r0, 24
	cmp r5, r9
	bcc _08198CE0
_08198D3A:
	mov r0, r10
	movs r1, 0x2
	bl CopyWindowToVram
	add sp, 0x20
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_8198C94

	thumb_func_start sub_8198D54
sub_8198D54: @ 8198D54
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, 0x18
	mov r9, r0
	mov r8, r1
	adds r4, r2, 0
	adds r5, r3, 0
	ldr r6, [sp, 0x34]
	ldr r3, [sp, 0x38]
	ldr r7, [sp, 0x3C]
	lsls r0, 24
	lsrs r0, 24
	mov r9, r0
	mov r0, r8
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
	lsls r4, 24
	lsrs r4, 24
	lsls r5, 24
	lsrs r5, 24
	lsls r6, 24
	lsrs r6, 24
	lsls r3, 24
	lsrs r3, 24
	movs r1, 0
	str r3, [sp, 0x14]
	bl GetFontAttribute
	adds r2, r0, 0
	lsls r2, 24
	lsrs r2, 24
	str r4, [sp]
	str r5, [sp, 0x4]
	str r6, [sp, 0x8]
	ldr r3, [sp, 0x14]
	str r3, [sp, 0xC]
	str r7, [sp, 0x10]
	mov r0, r9
	mov r1, r8
	movs r3, 0
	bl sub_8198C94
	add sp, 0x18
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_8198D54

	thumb_func_start sub_8198DBC
sub_8198DBC: @ 8198DBC
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x20
	ldr r4, [sp, 0x40]
	ldr r5, [sp, 0x44]
	ldr r6, [sp, 0x48]
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp, 0x10]
	lsls r1, 24
	lsrs r7, r1, 24
	lsls r2, 24
	lsrs r2, 24
	str r2, [sp, 0x14]
	lsls r3, 24
	lsrs r3, 24
	str r3, [sp, 0x18]
	lsls r4, 24
	lsrs r4, 24
	str r4, [sp, 0x1C]
	lsls r5, 24
	lsrs r5, 24
	mov r8, r5
	lsls r6, 24
	lsrs r6, 24
	mov r10, r6
	mov r0, sp
	ldrb r1, [r0, 0x10]
	strb r1, [r0, 0x4]
	strb r7, [r0, 0x5]
	adds r0, r7, 0
	movs r1, 0x5
	bl GetFontAttribute
	mov r3, sp
	lsls r0, 4
	ldrb r2, [r3, 0xC]
	movs r5, 0xF
	adds r1, r5, 0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, 0xC]
	adds r0, r7, 0
	movs r1, 0x6
	bl GetFontAttribute
	mov r3, sp
	adds r1, r5, 0
	ands r1, r0
	ldrb r2, [r3, 0xD]
	movs r4, 0x10
	negs r4, r4
	adds r0, r4, 0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, 0xD]
	adds r0, r7, 0
	movs r1, 0x7
	bl GetFontAttribute
	mov r3, sp
	lsls r0, 4
	ldrb r2, [r3, 0xD]
	adds r1, r5, 0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, 0xD]
	adds r0, r7, 0
	movs r1, 0x4
	bl GetFontAttribute
	mov r1, sp
	ands r5, r0
	ldrb r0, [r1, 0xC]
	ands r4, r0
	orrs r4, r5
	strb r4, [r1, 0xC]
	adds r0, r7, 0
	movs r1, 0x2
	bl GetFontAttribute
	mov r1, sp
	strb r0, [r1, 0xA]
	adds r0, r7, 0
	movs r1, 0x3
	bl GetFontAttribute
	mov r1, sp
	strb r0, [r1, 0xB]
	movs r6, 0
	cmp r6, r10
	bcs _08198EDE
_08198E7A:
	movs r5, 0
	adds r2, r6, 0x1
	mov r9, r2
	cmp r5, r8
	bcs _08198ED4
	mov r4, sp
_08198E86:
	mov r0, r8
	muls r0, r6
	adds r0, r5
	ldr r1, [sp, 0x50]
	adds r0, r1, r0
	ldrb r0, [r0]
	lsls r0, 3
	ldr r2, [sp, 0x4C]
	adds r0, r2
	ldr r0, [r0]
	str r0, [sp]
	ldr r1, [sp, 0x1C]
	adds r0, r1, 0
	muls r0, r5
	ldr r2, [sp, 0x14]
	adds r0, r2, r0
	strb r0, [r4, 0x6]
	adds r0, r7, 0
	movs r1, 0x1
	bl GetFontAttribute
	adds r1, r6, 0
	muls r1, r0
	ldr r0, [sp, 0x18]
	adds r1, r0, r1
	strb r1, [r4, 0x7]
	ldrb r0, [r4, 0x6]
	strb r0, [r4, 0x8]
	strb r1, [r4, 0x9]
	mov r0, sp
	movs r1, 0xFF
	movs r2, 0
	bl AddTextPrinter
	adds r0, r5, 0x1
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, r8
	bcc _08198E86
_08198ED4:
	mov r1, r9
	lsls r0, r1, 24
	lsrs r6, r0, 24
	cmp r6, r10
	bcc _08198E7A
_08198EDE:
	ldr r0, [sp, 0x10]
	movs r1, 0x2
	bl CopyWindowToVram
	add sp, 0x20
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_8198DBC

	thumb_func_start sub_8198EF8
sub_8198EF8: @ 8198EF8
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, 0x18
	mov r8, r0
	adds r3, r1, 0
	adds r4, r2, 0
	ldr r5, [sp, 0x30]
	ldr r6, [sp, 0x34]
	ldr r7, [sp, 0x38]
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
	lsls r3, 24
	lsrs r3, 24
	lsls r4, 24
	lsrs r4, 24
	lsls r5, 24
	lsrs r5, 24
	lsls r6, 24
	lsrs r6, 24
	adds r0, r3, 0
	movs r1, 0
	str r3, [sp, 0x14]
	bl GetFontAttribute
	adds r2, r0, 0
	lsls r2, 24
	lsrs r2, 24
	str r4, [sp]
	str r5, [sp, 0x4]
	str r6, [sp, 0x8]
	str r7, [sp, 0xC]
	ldr r0, [sp, 0x3C]
	str r0, [sp, 0x10]
	mov r0, r8
	ldr r3, [sp, 0x14]
	adds r1, r3, 0
	movs r3, 0
	bl sub_8198DBC
	add sp, 0x18
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_8198EF8

	thumb_func_start sub_8198F58
sub_8198F58: @ 8198F58
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	ldr r4, [sp, 0x20]
	mov r12, r4
	ldr r4, [sp, 0x24]
	mov r8, r4
	ldr r4, [sp, 0x28]
	mov r9, r4
	ldr r4, [sp, 0x2C]
	mov r10, r4
	ldr r4, [sp, 0x30]
	ldr r5, [sp, 0x34]
	lsls r4, 24
	lsrs r4, 24
	lsls r5, 24
	lsrs r7, r5, 24
	ldr r5, =gUnknown_0203CD90
	movs r6, 0
	strb r2, [r5]
	strb r3, [r5, 0x1]
	strb r6, [r5, 0x3]
	subs r4, 0x1
	strb r4, [r5, 0x4]
	strb r0, [r5, 0x5]
	strb r1, [r5, 0x6]
	mov r0, r12
	strb r0, [r5, 0x7]
	mov r4, r8
	strb r4, [r5, 0x8]
	mov r0, r9
	strb r0, [r5, 0x9]
	mov r4, r10
	strb r4, [r5, 0xA]
	cmp r7, 0
	blt _08198FAC
	movs r0, 0x4
	ldrsb r0, [r5, r0]
	cmp r7, r0
	ble _08198FB4
_08198FAC:
	strb r6, [r5, 0x2]
	b _08198FB6
	.pool
_08198FB4:
	strb r7, [r5, 0x2]
_08198FB6:
	movs r0, 0
	movs r1, 0
	bl sub_8199134
	ldr r0, =gUnknown_0203CD90
	ldrb r0, [r0, 0x2]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_8198F58

	thumb_func_start sub_8198FD4
sub_8198FD4: @ 8198FD4
	push {r4-r6,lr}
	mov r6, r10
	mov r5, r9
	mov r4, r8
	push {r4-r6}
	sub sp, 0x20
	mov r9, r0
	mov r8, r1
	mov r10, r2
	ldr r6, [sp, 0x3C]
	ldr r4, [sp, 0x40]
	ldr r5, [sp, 0x44]
	ldr r2, [sp, 0x48]
	lsls r0, 24
	lsrs r0, 24
	mov r9, r0
	mov r0, r8
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
	mov r0, r10
	lsls r0, 24
	lsrs r0, 24
	mov r10, r0
	lsls r3, 24
	lsrs r3, 24
	lsls r6, 24
	lsrs r6, 24
	lsls r4, 24
	lsrs r4, 24
	lsls r5, 24
	lsrs r5, 24
	lsls r2, 24
	lsrs r2, 24
	mov r0, r8
	movs r1, 0x1
	str r2, [sp, 0x18]
	str r3, [sp, 0x1C]
	bl GetMenuCursorDimensionByFont
	lsls r0, 24
	lsrs r0, 24
	adds r1, r4, 0
	muls r1, r5
	lsls r1, 24
	lsrs r1, 24
	str r6, [sp]
	str r0, [sp, 0x4]
	str r4, [sp, 0x8]
	str r5, [sp, 0xC]
	str r1, [sp, 0x10]
	ldr r2, [sp, 0x18]
	str r2, [sp, 0x14]
	mov r0, r9
	mov r1, r8
	mov r2, r10
	ldr r3, [sp, 0x1C]
	bl sub_8198F58
	lsls r0, 24
	lsrs r0, 24
	add sp, 0x20
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r6}
	pop {r1}
	bx r1
	thumb_func_end sub_8198FD4

	thumb_func_start sub_8199060
sub_8199060: @ 8199060
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0xC
	mov r8, r0
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
	lsls r0, r1, 24
	lsrs r7, r0, 24
	ldr r5, =gUnknown_0203CD90
	ldrb r0, [r5, 0x6]
	movs r1, 0
	bl GetMenuCursorDimensionByFont
	mov r9, r0
	mov r1, r9
	lsls r1, 24
	lsrs r1, 24
	mov r9, r1
	ldrb r0, [r5, 0x6]
	movs r1, 0x1
	bl GetMenuCursorDimensionByFont
	adds r6, r0, 0
	lsls r6, 24
	lsrs r6, 24
	ldrb r0, [r5, 0x9]
	mov r10, r0
	mov r0, r8
	mov r1, r10
	bl __umodsi3
	ldrb r1, [r5, 0x7]
	adds r4, r1, 0
	muls r4, r0
	ldrb r1, [r5]
	adds r4, r1
	lsls r4, 24
	lsrs r4, 24
	mov r0, r8
	mov r1, r10
	bl __udivsi3
	ldrb r1, [r5, 0x8]
	adds r3, r1, 0
	muls r3, r0
	ldrb r0, [r5, 0x1]
	adds r3, r0
	lsls r3, 24
	lsrs r3, 24
	ldrb r0, [r5, 0x5]
	mov r1, r9
	str r1, [sp]
	str r6, [sp, 0x4]
	movs r1, 0x11
	adds r2, r4, 0
	bl FillWindowPixelRect
	ldrb r6, [r5, 0x9]
	adds r0, r7, 0
	adds r1, r6, 0
	bl __umodsi3
	ldrb r1, [r5, 0x7]
	adds r4, r1, 0
	muls r4, r0
	ldrb r0, [r5]
	adds r4, r0
	lsls r4, 24
	lsrs r4, 24
	adds r0, r7, 0
	adds r1, r6, 0
	bl __udivsi3
	ldrb r1, [r5, 0x8]
	adds r3, r1, 0
	muls r3, r0
	ldrb r1, [r5, 0x1]
	adds r3, r1
	lsls r3, 24
	lsrs r3, 24
	ldrb r0, [r5, 0x5]
	ldrb r1, [r5, 0x6]
	ldr r2, =gUnknown_085EE498
	str r3, [sp]
	movs r3, 0
	str r3, [sp, 0x4]
	str r3, [sp, 0x8]
	adds r3, r4, 0
	bl Print
	add sp, 0xC
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8199060

	thumb_func_start sub_8199134
sub_8199134: @ 8199134
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	lsls r1, 24
	lsrs r1, 24
	mov r9, r1
	ldr r1, =gUnknown_0203CD90
	ldrb r2, [r1, 0x2]
	mov r8, r2
	lsls r0, 24
	asrs r6, r0, 24
	adds r5, r1, 0
	cmp r6, 0
	beq _0819918A
	movs r7, 0x2
	ldrsb r7, [r5, r7]
	ldrb r4, [r5, 0x9]
	adds r0, r7, 0
	adds r1, r4, 0
	bl __modsi3
	adds r0, r6
	cmp r0, 0
	bge _08199174
	adds r0, r4, 0
	adds r0, 0xFF
	add r0, r8
	b _08199188
	.pool
_08199174:
	cmp r0, r4
	blt _08199184
	adds r0, r7, 0
	adds r1, r4, 0
	bl __divsi3
	muls r0, r4
	b _08199188
_08199184:
	mov r1, r8
	adds r0, r6, r1
_08199188:
	strb r0, [r5, 0x2]
_0819918A:
	mov r2, r9
	lsls r0, r2, 24
	asrs r6, r0, 24
	cmp r6, 0
	beq _081991CE
	movs r0, 0x2
	ldrsb r0, [r5, r0]
	ldrb r4, [r5, 0x9]
	adds r1, r4, 0
	bl __divsi3
	adds r1, r0, r6
	cmp r1, 0
	bge _081991B2
	ldrb r0, [r5, 0xA]
	subs r0, 0x1
	muls r0, r4
	ldrb r1, [r5, 0x2]
	adds r0, r1
	b _081991CC
_081991B2:
	ldrb r0, [r5, 0xA]
	cmp r1, r0
	blt _081991C4
	subs r0, 0x1
	adds r1, r4, 0
	muls r1, r0
	ldrb r0, [r5, 0x2]
	subs r0, r1
	b _081991CC
_081991C4:
	adds r0, r4, 0
	muls r0, r6
	ldrb r2, [r5, 0x2]
	adds r0, r2
_081991CC:
	strb r0, [r5, 0x2]
_081991CE:
	movs r1, 0x2
	ldrsb r1, [r5, r1]
	movs r0, 0x4
	ldrsb r0, [r5, r0]
	cmp r1, r0
	bgt _081991E4
	ldrb r1, [r5, 0x2]
	mov r0, r8
	bl sub_8199060
	b _081991E8
_081991E4:
	mov r0, r8
	strb r0, [r5, 0x2]
_081991E8:
	ldrb r0, [r5, 0x2]
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end sub_8199134

	thumb_func_start sub_81991F8
sub_81991F8: @ 81991F8
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	lsls r1, 24
	lsrs r1, 24
	mov r8, r1
	ldr r1, =gUnknown_0203CD90
	ldrb r7, [r1, 0x2]
	lsls r0, 24
	asrs r4, r0, 24
	adds r5, r1, 0
	cmp r4, 0
	beq _0819922C
	movs r0, 0x2
	ldrsb r0, [r5, r0]
	ldrb r6, [r5, 0x9]
	adds r1, r6, 0
	bl __modsi3
	adds r0, r4
	cmp r0, 0
	blt _0819922C
	cmp r0, r6
	bge _0819922C
	adds r0, r4, r7
	strb r0, [r5, 0x2]
_0819922C:
	mov r1, r8
	lsls r0, r1, 24
	asrs r4, r0, 24
	cmp r4, 0
	beq _08199258
	movs r0, 0x2
	ldrsb r0, [r5, r0]
	ldrb r6, [r5, 0x9]
	adds r1, r6, 0
	bl __divsi3
	adds r0, r4
	cmp r0, 0
	blt _08199258
	ldrb r1, [r5, 0xA]
	cmp r0, r1
	bge _08199258
	adds r0, r6, 0
	muls r0, r4
	ldrb r1, [r5, 0x2]
	adds r0, r1
	strb r0, [r5, 0x2]
_08199258:
	movs r1, 0x2
	ldrsb r1, [r5, r1]
	movs r0, 0x4
	ldrsb r0, [r5, r0]
	cmp r1, r0
	bgt _08199274
	ldrb r1, [r5, 0x2]
	adds r0, r7, 0
	bl sub_8199060
	b _08199276
	.pool
_08199274:
	strb r7, [r5, 0x2]
_08199276:
	ldrb r0, [r5, 0x2]
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end sub_81991F8

	thumb_func_start sub_8199284
sub_8199284: @ 8199284
	push {r4,lr}
	ldr r4, =gMain
	ldrh r1, [r4, 0x2E]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _081992AC
	movs r0, 0x5
	bl audio_play
	ldr r0, =gUnknown_0203CD90
	ldrb r0, [r0, 0x2]
	lsls r0, 24
	asrs r0, 24
	b _0819932C
	.pool
_081992AC:
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _081992BA
	movs r0, 0x1
	negs r0, r0
	b _0819932C
_081992BA:
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	beq _081992D0
	movs r0, 0x5
	bl audio_play
	movs r1, 0x1
	negs r1, r1
	movs r0, 0
	b _08199324
_081992D0:
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _081992E4
	movs r0, 0x5
	bl audio_play
	movs r0, 0
	movs r1, 0x1
	b _08199324
_081992E4:
	movs r0, 0x20
	ands r0, r1
	cmp r0, 0
	bne _081992F8
	bl GetLRKeysState
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _08199304
_081992F8:
	movs r0, 0x5
	bl audio_play
	movs r0, 0x1
	negs r0, r0
	b _08199322
_08199304:
	ldrh r1, [r4, 0x2E]
	movs r0, 0x10
	ands r0, r1
	cmp r0, 0
	bne _0819931A
	bl GetLRKeysState
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x2
	bne _08199328
_0819931A:
	movs r0, 0x5
	bl audio_play
	movs r0, 0x1
_08199322:
	movs r1, 0
_08199324:
	bl sub_8199134
_08199328:
	movs r0, 0x2
	negs r0, r0
_0819932C:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_8199284

	thumb_func_start sub_8199334
sub_8199334: @ 8199334
	push {r4-r6,lr}
	ldr r5, =gUnknown_0203CD90
	ldrb r4, [r5, 0x2]
	ldr r6, =gMain
	ldrh r1, [r6, 0x2E]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _0819935C
	movs r0, 0x5
	bl audio_play
	movs r0, 0x2
	ldrsb r0, [r5, r0]
	b _081993D2
	.pool
_0819935C:
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _0819936A
	movs r0, 0x1
	negs r0, r0
	b _081993D2
_0819936A:
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	beq _0819937A
	movs r1, 0x1
	negs r1, r1
	movs r0, 0
	b _081993BC
_0819937A:
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _08199388
	movs r0, 0
	movs r1, 0x1
	b _081993BC
_08199388:
	movs r0, 0x20
	ands r0, r1
	cmp r0, 0
	bne _0819939C
	bl GetLRKeysState
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _081993A2
_0819939C:
	movs r0, 0x1
	negs r0, r0
	b _081993BA
_081993A2:
	ldrh r1, [r6, 0x2E]
	movs r0, 0x10
	ands r0, r1
	cmp r0, 0
	bne _081993B8
	bl GetLRKeysState
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x2
	bne _081993CE
_081993B8:
	movs r0, 0x1
_081993BA:
	movs r1, 0
_081993BC:
	bl sub_81991F8
	lsls r0, 24
	lsrs r0, 24
	cmp r4, r0
	beq _081993CE
	movs r0, 0x5
	bl audio_play
_081993CE:
	movs r0, 0x2
	negs r0, r0
_081993D2:
	pop {r4-r6}
	pop {r1}
	bx r1
	thumb_func_end sub_8199334

	thumb_func_start sub_81993D8
sub_81993D8: @ 81993D8
	push {r4,r5,lr}
	ldr r4, =gMain
	ldrh r1, [r4, 0x2E]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _08199400
	movs r0, 0x5
	bl audio_play
	ldr r0, =gUnknown_0203CD90
	ldrb r0, [r0, 0x2]
	lsls r0, 24
	asrs r0, 24
	b _0819947C
	.pool
_08199400:
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _0819940E
	movs r0, 0x1
	negs r0, r0
	b _0819947C
_0819940E:
	ldrh r0, [r4, 0x30]
	movs r5, 0xF0
	adds r1, r5, 0
	ands r1, r0
	cmp r1, 0x40
	bne _08199428
	movs r0, 0x5
	bl audio_play
	movs r1, 0x1
	negs r1, r1
	movs r0, 0
	b _08199474
_08199428:
	cmp r1, 0x80
	bne _08199438
	movs r0, 0x5
	bl audio_play
	movs r0, 0
	movs r1, 0x1
	b _08199474
_08199438:
	cmp r1, 0x20
	beq _08199448
	bl sub_812210C
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _08199454
_08199448:
	movs r0, 0x5
	bl audio_play
	movs r0, 0x1
	negs r0, r0
	b _08199472
_08199454:
	ldrh r1, [r4, 0x30]
	adds r0, r5, 0
	ands r0, r1
	cmp r0, 0x10
	beq _0819946A
	bl sub_812210C
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x2
	bne _08199478
_0819946A:
	movs r0, 0x5
	bl audio_play
	movs r0, 0x1
_08199472:
	movs r1, 0
_08199474:
	bl sub_8199134
_08199478:
	movs r0, 0x2
	negs r0, r0
_0819947C:
	pop {r4,r5}
	pop {r1}
	bx r1
	thumb_func_end sub_81993D8

	thumb_func_start sub_8199484
sub_8199484: @ 8199484
	push {r4-r6,lr}
	ldr r6, =gUnknown_0203CD90
	ldrb r4, [r6, 0x2]
	ldr r5, =gMain
	ldrh r1, [r5, 0x2E]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _081994AC
	movs r0, 0x5
	bl audio_play
	movs r0, 0x2
	ldrsb r0, [r6, r0]
	b _0819951E
	.pool
_081994AC:
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _081994BA
	movs r0, 0x1
	negs r0, r0
	b _0819951E
_081994BA:
	ldrh r0, [r5, 0x30]
	movs r6, 0xF0
	adds r1, r6, 0
	ands r1, r0
	cmp r1, 0x40
	bne _081994CE
	movs r1, 0x1
	negs r1, r1
	movs r0, 0
	b _08199508
_081994CE:
	cmp r1, 0x80
	bne _081994D8
	movs r0, 0
	movs r1, 0x1
	b _08199508
_081994D8:
	cmp r1, 0x20
	beq _081994E8
	bl sub_812210C
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _081994EE
_081994E8:
	movs r0, 0x1
	negs r0, r0
	b _08199506
_081994EE:
	ldrh r1, [r5, 0x30]
	adds r0, r6, 0
	ands r0, r1
	cmp r0, 0x10
	beq _08199504
	bl sub_812210C
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x2
	bne _0819951A
_08199504:
	movs r0, 0x1
_08199506:
	movs r1, 0
_08199508:
	bl sub_81991F8
	lsls r0, 24
	lsrs r0, 24
	cmp r4, r0
	beq _0819951A
	movs r0, 0x5
	bl audio_play
_0819951A:
	movs r0, 0x2
	negs r0, r0
_0819951E:
	pop {r4-r6}
	pop {r1}
	bx r1
	thumb_func_end sub_8199484

	thumb_func_start InitMenuInUpperLeftCorner
@ int InitMenuInUpperLeftCorner(s8 windowId, s8 numItems, u8 initialCursorPos, bool doNotPlaySoundWhenAPressed)
InitMenuInUpperLeftCorner: @ 8199524
	push {r4-r6,lr}
	lsls r1, 24
	lsrs r1, 24
	lsls r2, 24
	lsrs r5, r2, 24
	ldr r4, =gUnknown_0203CD90
	movs r6, 0
	strb r6, [r4]
	movs r2, 0x1
	strb r2, [r4, 0x1]
	strb r6, [r4, 0x3]
	subs r1, 0x1
	strb r1, [r4, 0x4]
	strb r0, [r4, 0x5]
	strb r2, [r4, 0x6]
	movs r0, 0x10
	strb r0, [r4, 0x8]
	strb r3, [r4, 0xB]
	cmp r5, 0
	blt _08199554
	movs r0, 0x4
	ldrsb r0, [r4, r0]
	cmp r5, r0
	ble _0819955C
_08199554:
	strb r6, [r4, 0x2]
	b _0819955E
	.pool
_0819955C:
	strb r5, [r4, 0x2]
_0819955E:
	movs r0, 0
	bl MoveMenuCursor
	lsls r0, 24
	lsrs r0, 24
	pop {r4-r6}
	pop {r1}
	bx r1
	thumb_func_end InitMenuInUpperLeftCorner

	thumb_func_start InitMenuInUpperLeftCornerPlaySoundWhenAPressed
InitMenuInUpperLeftCornerPlaySoundWhenAPressed: @ 8199570
	push {lr}
	lsls r0, 24
	lsrs r0, 24
	lsls r1, 24
	lsrs r1, 24
	lsls r2, 24
	lsrs r2, 24
	movs r3, 0
	bl InitMenuInUpperLeftCorner
	lsls r0, 24
	lsrs r0, 24
	pop {r1}
	bx r1
	thumb_func_end InitMenuInUpperLeftCornerPlaySoundWhenAPressed

	thumb_func_start PrintMenuTable
PrintMenuTable: @ 819958C
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, 0xC
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
	lsls r1, 24
	lsrs r7, r1, 24
	movs r5, 0
	cmp r5, r7
	bcs _081995D0
	movs r6, 0x80
	lsls r6, 17
	adds r4, r2, 0
_081995AA:
	ldr r2, [r4]
	lsrs r0, r6, 24
	str r0, [sp]
	movs r0, 0xFF
	str r0, [sp, 0x4]
	movs r0, 0
	str r0, [sp, 0x8]
	mov r0, r8
	movs r1, 0x1
	movs r3, 0x8
	bl Print
	movs r0, 0x80
	lsls r0, 21
	adds r6, r0
	adds r4, 0x8
	adds r5, 0x1
	cmp r5, r7
	bcc _081995AA
_081995D0:
	mov r0, r8
	movs r1, 0x2
	bl CopyWindowToVram
	add sp, 0xC
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end PrintMenuTable

	thumb_func_start sub_81995E4
sub_81995E4: @ 81995E4
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x10
	mov r9, r2
	mov r8, r3
	lsls r0, 24
	lsrs r6, r0, 24
	lsls r1, 24
	lsrs r7, r1, 24
	mov r0, sp
	movs r1, 0
	mov r10, r1
	strb r6, [r0, 0x4]
	mov r1, sp
	movs r0, 0x1
	strb r0, [r1, 0x5]
	movs r1, 0x5
	bl GetFontAttribute
	mov r3, sp
	lsls r0, 4
	ldrb r2, [r3, 0xC]
	movs r5, 0xF
	adds r1, r5, 0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, 0xC]
	movs r0, 0x1
	movs r1, 0x6
	bl GetFontAttribute
	mov r3, sp
	adds r1, r5, 0
	ands r1, r0
	ldrb r2, [r3, 0xD]
	movs r4, 0x10
	negs r4, r4
	adds r0, r4, 0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, 0xD]
	movs r0, 0x1
	movs r1, 0x7
	bl GetFontAttribute
	mov r3, sp
	lsls r0, 4
	ldrb r2, [r3, 0xD]
	adds r1, r5, 0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, 0xD]
	movs r0, 0x1
	movs r1, 0x4
	bl GetFontAttribute
	mov r1, sp
	ands r5, r0
	ldrb r0, [r1, 0xC]
	ands r4, r0
	orrs r4, r5
	strb r4, [r1, 0xC]
	mov r0, sp
	mov r1, r10
	strb r1, [r0, 0xA]
	strb r1, [r0, 0xB]
	movs r1, 0x8
	strb r1, [r0, 0x6]
	strb r1, [r0, 0x8]
	movs r4, 0
	cmp r4, r7
	bcs _081996A6
	mov r5, sp
_0819967C:
	mov r1, r8
	adds r0, r1, r4
	ldrb r0, [r0]
	lsls r0, 3
	add r0, r9
	ldr r0, [r0]
	str r0, [sp]
	lsls r0, r4, 4
	adds r0, 0x1
	strb r0, [r5, 0x7]
	strb r0, [r5, 0x9]
	mov r0, sp
	movs r1, 0xFF
	movs r2, 0
	bl AddTextPrinter
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, r7
	bcc _0819967C
_081996A6:
	adds r0, r6, 0
	movs r1, 0x2
	bl CopyWindowToVram
	add sp, 0x10
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_81995E4

	thumb_func_start CreateYesNoMenu
@ void CreateYesNoMenu(struct WindowTemplate *windowTemplate, u16 borderFirstTileNum, u8 borderPalette, u8 initialCursorPos)
CreateYesNoMenu: @ 81996C0
	push {r4-r6,lr}
	mov r6, r9
	mov r5, r8
	push {r5,r6}
	sub sp, 0x10
	adds r4, r1, 0
	adds r5, r2, 0
	adds r6, r3, 0
	lsls r4, 16
	lsrs r4, 16
	lsls r5, 24
	lsrs r5, 24
	lsls r6, 24
	lsrs r6, 24
	ldr r1, =gUnknown_0203CD9F
	mov r8, r1
	bl AddWindow
	mov r2, r8
	strb r0, [r2]
	ldrb r0, [r2]
	movs r1, 0x1
	adds r2, r4, 0
	adds r3, r5, 0
	bl SetWindowBorderStyle
	ldr r0, =gUnknown_085EE491
	str r0, [sp]
	mov r1, sp
	mov r2, r8
	ldrb r0, [r2]
	movs r2, 0
	mov r9, r2
	strb r0, [r1, 0x4]
	mov r0, sp
	movs r2, 0x1
	strb r2, [r0, 0x5]
	movs r0, 0x8
	strb r0, [r1, 0x6]
	mov r0, sp
	strb r2, [r0, 0x7]
	ldrb r0, [r0, 0x6]
	strb r0, [r1, 0x8]
	mov r0, sp
	ldrb r0, [r0, 0x7]
	strb r0, [r1, 0x9]
	movs r0, 0x1
	movs r1, 0x5
	bl GetFontAttribute
	mov r3, sp
	lsls r0, 4
	ldrb r2, [r3, 0xC]
	movs r5, 0xF
	adds r1, r5, 0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, 0xC]
	movs r0, 0x1
	movs r1, 0x6
	bl GetFontAttribute
	mov r3, sp
	adds r1, r5, 0
	ands r1, r0
	ldrb r2, [r3, 0xD]
	movs r4, 0x10
	negs r4, r4
	adds r0, r4, 0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, 0xD]
	movs r0, 0x1
	movs r1, 0x7
	bl GetFontAttribute
	mov r3, sp
	lsls r0, 4
	ldrb r2, [r3, 0xD]
	adds r1, r5, 0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, 0xD]
	movs r0, 0x1
	movs r1, 0x4
	bl GetFontAttribute
	mov r1, sp
	ands r5, r0
	ldrb r0, [r1, 0xC]
	ands r4, r0
	orrs r4, r5
	strb r4, [r1, 0xC]
	mov r0, sp
	mov r1, r9
	strb r1, [r0, 0xA]
	strb r1, [r0, 0xB]
	movs r1, 0xFF
	movs r2, 0
	bl AddTextPrinter
	mov r2, r8
	ldrb r0, [r2]
	movs r1, 0x2
	adds r2, r6, 0
	bl InitMenuInUpperLeftCornerPlaySoundWhenAPressed
	add sp, 0x10
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end CreateYesNoMenu

	thumb_func_start sub_81997AC
sub_81997AC: @ 81997AC
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x14
	lsls r0, 24
	lsrs r0, 24
	mov r10, r0
	lsls r1, 24
	lsrs r1, 24
	str r1, [sp, 0xC]
	lsls r2, 24
	lsrs r6, r2, 24
	lsls r3, 24
	lsrs r3, 24
	str r3, [sp, 0x10]
	movs r7, 0
	cmp r7, r3
	bcs _08199824
_081997D4:
	movs r4, 0
	adds r0, r7, 0x1
	mov r9, r0
	cmp r4, r6
	bcs _0819981C
	lsls r0, r7, 4
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
	movs r5, 0x80
	lsls r5, 20
_081997EC:
	adds r0, r7, 0
	muls r0, r6
	adds r0, r4
	lsls r0, 3
	ldr r1, [sp, 0x34]
	adds r0, r1
	ldr r2, [r0]
	lsrs r3, r5, 24
	mov r0, r8
	str r0, [sp]
	movs r0, 0xFF
	str r0, [sp, 0x4]
	movs r0, 0
	str r0, [sp, 0x8]
	mov r0, r10
	movs r1, 0x1
	bl Print
	ldr r1, [sp, 0xC]
	lsls r0, r1, 24
	adds r5, r0
	adds r4, 0x1
	cmp r4, r6
	bcc _081997EC
_0819981C:
	mov r7, r9
	ldr r4, [sp, 0x10]
	cmp r7, r4
	bcc _081997D4
_08199824:
	mov r0, r10
	movs r1, 0x2
	bl CopyWindowToVram
	add sp, 0x14
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_81997AC

	thumb_func_start sub_819983C
sub_819983C: @ 819983C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x18
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp, 0x10]
	lsls r1, 24
	lsrs r1, 24
	str r1, [sp, 0x14]
	lsls r2, 24
	lsrs r2, 24
	mov r8, r2
	lsls r3, 24
	lsrs r3, 24
	mov r10, r3
	mov r0, sp
	movs r6, 0
	ldrb r1, [r0, 0x10]
	strb r1, [r0, 0x4]
	mov r1, sp
	movs r0, 0x1
	strb r0, [r1, 0x5]
	movs r1, 0x5
	bl GetFontAttribute
	mov r3, sp
	lsls r0, 4
	ldrb r2, [r3, 0xC]
	movs r5, 0xF
	adds r1, r5, 0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, 0xC]
	movs r0, 0x1
	movs r1, 0x6
	bl GetFontAttribute
	mov r3, sp
	adds r1, r5, 0
	ands r1, r0
	ldrb r2, [r3, 0xD]
	movs r4, 0x10
	negs r4, r4
	adds r0, r4, 0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, 0xD]
	movs r0, 0x1
	movs r1, 0x7
	bl GetFontAttribute
	mov r3, sp
	lsls r0, 4
	ldrb r2, [r3, 0xD]
	adds r1, r5, 0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, 0xD]
	movs r0, 0x1
	movs r1, 0x4
	bl GetFontAttribute
	mov r1, sp
	ands r5, r0
	ldrb r0, [r1, 0xC]
	ands r4, r0
	orrs r4, r5
	strb r4, [r1, 0xC]
	mov r0, sp
	strb r6, [r0, 0xA]
	strb r6, [r0, 0xB]
	movs r7, 0
	cmp r7, r10
	bcs _0819992A
_081998D6:
	movs r5, 0
	adds r2, r7, 0x1
	mov r9, r2
	cmp r5, r8
	bcs _08199920
	mov r4, sp
	lsls r0, r7, 4
	adds r6, r0, 0x1
_081998E6:
	mov r0, r8
	muls r0, r7
	adds r0, r5
	ldr r1, [sp, 0x3C]
	adds r0, r1, r0
	ldrb r0, [r0]
	lsls r0, 3
	ldr r2, [sp, 0x38]
	adds r0, r2
	ldr r0, [r0]
	str r0, [sp]
	ldr r1, [sp, 0x14]
	adds r0, r1, 0
	muls r0, r5
	adds r0, 0x8
	strb r0, [r4, 0x6]
	strb r6, [r4, 0x7]
	strb r0, [r4, 0x8]
	strb r6, [r4, 0x9]
	mov r0, sp
	movs r1, 0xFF
	movs r2, 0
	bl AddTextPrinter
	adds r0, r5, 0x1
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, r8
	bcc _081998E6
_08199920:
	mov r2, r9
	lsls r0, r2, 24
	lsrs r7, r0, 24
	cmp r7, r10
	bcc _081998D6
_0819992A:
	ldr r0, [sp, 0x10]
	movs r1, 0x2
	bl CopyWindowToVram
	add sp, 0x18
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_819983C

	thumb_func_start sub_8199944
sub_8199944: @ 8199944
	push {r4-r7,lr}
	ldr r4, [sp, 0x14]
	lsls r2, 24
	lsrs r2, 24
	lsls r3, 24
	lsrs r3, 24
	lsls r4, 24
	lsrs r7, r4, 24
	ldr r6, =gUnknown_0203CD90
	movs r4, 0
	mov r12, r4
	mov r4, r12
	strb r4, [r6]
	movs r5, 0x1
	strb r5, [r6, 0x1]
	strb r4, [r6, 0x3]
	adds r4, r2, 0
	muls r4, r3
	subs r4, 0x1
	strb r4, [r6, 0x4]
	strb r0, [r6, 0x5]
	strb r5, [r6, 0x6]
	strb r1, [r6, 0x7]
	movs r0, 0x10
	strb r0, [r6, 0x8]
	strb r2, [r6, 0x9]
	strb r3, [r6, 0xA]
	cmp r7, 0
	blt _08199986
	movs r0, 0x4
	ldrsb r0, [r6, r0]
	cmp r7, r0
	ble _08199990
_08199986:
	mov r0, r12
	strb r0, [r6, 0x2]
	b _08199992
	.pool
_08199990:
	strb r7, [r6, 0x2]
_08199992:
	movs r0, 0
	movs r1, 0
	bl sub_8199134
	ldr r0, =gUnknown_0203CD90
	ldrb r0, [r0, 0x2]
	pop {r4-r7}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_8199944

	thumb_func_start clear_scheduled_bg_copies_to_vram
@ void clear_scheduled_bg_copies_to_vram()
clear_scheduled_bg_copies_to_vram: @ 81999A8
	push {lr}
	ldr r0, =gUnknown_0203CDA4
	movs r1, 0
	movs r2, 0x4
	bl memset
	pop {r0}
	bx r0
	.pool
	thumb_func_end clear_scheduled_bg_copies_to_vram

	thumb_func_start schedule_bg_copy_tilemap_to_vram
@ void schedule_bg_copy_tilemap_to_vram(u8 bg_id)
schedule_bg_copy_tilemap_to_vram: @ 81999BC
	lsls r0, 24
	lsrs r0, 24
	ldr r1, =gUnknown_0203CDA4
	adds r0, r1
	movs r1, 0x1
	strb r1, [r0]
	bx lr
	.pool
	thumb_func_end schedule_bg_copy_tilemap_to_vram

	thumb_func_start do_scheduled_bg_tilemap_copies_to_vram
@ void do_scheduled_bg_tilemap_copies_to_vram()
do_scheduled_bg_tilemap_copies_to_vram: @ 81999D0
	push {r4,lr}
	ldr r4, =gUnknown_0203CDA4
	ldrb r0, [r4]
	cmp r0, 0x1
	bne _081999E4
	movs r0, 0
	bl CopyBgTilemapBufferToVram
	movs r0, 0
	strb r0, [r4]
_081999E4:
	ldrb r0, [r4, 0x1]
	cmp r0, 0x1
	bne _081999F4
	movs r0, 0x1
	bl CopyBgTilemapBufferToVram
	movs r0, 0
	strb r0, [r4, 0x1]
_081999F4:
	ldrb r0, [r4, 0x2]
	cmp r0, 0x1
	bne _08199A04
	movs r0, 0x2
	bl CopyBgTilemapBufferToVram
	movs r0, 0
	strb r0, [r4, 0x2]
_08199A04:
	ldrb r0, [r4, 0x3]
	cmp r0, 0x1
	bne _08199A14
	movs r0, 0x3
	bl CopyBgTilemapBufferToVram
	movs r0, 0
	strb r0, [r4, 0x3]
_08199A14:
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end do_scheduled_bg_tilemap_copies_to_vram

	thumb_func_start reset_temp_tile_data_buffers
@ void reset_temp_tile_data_buffers()
reset_temp_tile_data_buffers: @ 8199A20
	push {lr}
	ldr r3, =gUnknown_0203CDA8
	ldr r1, =gUnknown_0203CDAC
	movs r2, 0
	adds r0, r1, 0
	adds r0, 0x7C
_08199A2C:
	str r2, [r0]
	subs r0, 0x4
	cmp r0, r1
	bge _08199A2C
	movs r0, 0
	strh r0, [r3]
	pop {r0}
	bx r0
	.pool
	thumb_func_end reset_temp_tile_data_buffers

	thumb_func_start free_temp_tile_data_buffers_if_possible
free_temp_tile_data_buffers_if_possible: @ 8199A44
	push {r4-r6,lr}
	bl IsDma3ManagerBusyWithBgCopy
	lsls r0, 24
	cmp r0, 0
	bne _08199A88
	ldr r1, =gUnknown_0203CDA8
	ldrh r0, [r1]
	cmp r0, 0
	beq _08199A7C
	movs r4, 0
	ldrh r1, [r1]
	cmp r4, r1
	bge _08199A76
	ldr r5, =gUnknown_0203CDAC
	movs r6, 0
_08199A64:
	ldr r0, [r5]
	bl Free
	stm r5!, {r6}
	adds r4, 0x1
	ldr r0, =gUnknown_0203CDA8
	ldrh r0, [r0]
	cmp r4, r0
	blt _08199A64
_08199A76:
	ldr r1, =gUnknown_0203CDA8
	movs r0, 0
	strh r0, [r1]
_08199A7C:
	movs r0, 0
	b _08199A8A
	.pool
_08199A88:
	movs r0, 0x1
_08199A8A:
	pop {r4-r6}
	pop {r1}
	bx r1
	thumb_func_end free_temp_tile_data_buffers_if_possible

	thumb_func_start decompress_and_copy_tile_data_to_vram
@ int decompress_and_copy_tile_data_to_vram(u8 bg_id, int src, int size, u16 offset, u8 mode)
decompress_and_copy_tile_data_to_vram: @ 8199A90
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, 0x8
	adds r4, r1, 0
	adds r5, r2, 0
	ldr r1, [sp, 0x24]
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
	lsls r3, 16
	lsrs r3, 16
	mov r9, r3
	lsls r1, 24
	lsrs r7, r1, 24
	ldr r6, =gUnknown_0203CDA8
	ldrh r0, [r6]
	cmp r0, 0x1F
	bhi _08199AF8
	adds r0, r4, 0
	add r1, sp, 0x4
	bl malloc_and_decompress
	adds r4, r0, 0
	cmp r5, 0
	bne _08199AC8
	ldr r5, [sp, 0x4]
_08199AC8:
	cmp r4, 0
	beq _08199AEC
	lsls r2, r5, 16
	lsrs r2, 16
	str r7, [sp]
	mov r0, r8
	adds r1, r4, 0
	mov r3, r9
	bl copy_decompressed_tile_data_to_vram
	ldr r2, =gUnknown_0203CDAC
	ldrh r0, [r6]
	adds r1, r0, 0x1
	strh r1, [r6]
	lsls r0, 16
	lsrs r0, 14
	adds r0, r2
	str r4, [r0]
_08199AEC:
	adds r0, r4, 0
	b _08199AFA
	.pool
_08199AF8:
	movs r0, 0
_08199AFA:
	add sp, 0x8
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end decompress_and_copy_tile_data_to_vram

	thumb_func_start copy_decompressed_tile_data_to_vram_autofree
@ void copy_decompressed_tile_data_to_vram_autofree(u8 bg_id, int src, u16 size, u16 offset, u8 mode)
copy_decompressed_tile_data_to_vram_autofree: @ 8199B08
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, 0x8
	adds r5, r2, 0
	ldr r2, [sp, 0x24]
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
	lsls r3, 16
	lsrs r3, 16
	mov r9, r3
	lsls r2, 24
	lsrs r7, r2, 24
	adds r0, r1, 0
	add r1, sp, 0x4
	bl malloc_and_decompress
	adds r6, r0, 0
	cmp r5, 0
	bne _08199B36
	ldr r5, [sp, 0x4]
_08199B36:
	cmp r6, 0
	beq _08199B6E
	ldr r0, =task_free_buf_after_copying_tile_data_to_vram
	movs r1, 0
	bl CreateTask
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	lsls r2, r5, 16
	lsrs r2, 16
	str r7, [sp]
	mov r0, r8
	adds r1, r6, 0
	mov r3, r9
	bl copy_decompressed_tile_data_to_vram
	ldr r2, =gTasks
	lsls r1, r4, 2
	adds r1, r4
	lsls r1, 3
	adds r1, r2
	strh r0, [r1, 0x8]
	adds r0, r4, 0
	movs r1, 0x1
	adds r2, r6, 0
	bl SetWordTaskArg
_08199B6E:
	add sp, 0x8
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end copy_decompressed_tile_data_to_vram_autofree

	thumb_func_start task_free_buf_after_copying_tile_data_to_vram
@ void task_free_buf_after_copying_tile_data_to_vram(int task_id)
task_free_buf_after_copying_tile_data_to_vram: @ 8199B84
	push {r4,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	ldr r1, =gTasks
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	adds r0, r1
	movs r1, 0x8
	ldrsh r0, [r0, r1]
	bl CheckForSpaceForDma3Request
	lsls r0, 16
	cmp r0, 0
	bne _08199BB4
	adds r0, r4, 0
	movs r1, 0x1
	bl GetWordTaskArg
	bl Free
	adds r0, r4, 0
	bl DestroyTask
_08199BB4:
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end task_free_buf_after_copying_tile_data_to_vram

	thumb_func_start malloc_and_decompress
@ void *malloc_and_decompress(void *src, int *size)
malloc_and_decompress: @ 8199BC0
	push {r4,r5,lr}
	adds r5, r0, 0
	ldrb r0, [r5, 0x1]
	strb r0, [r1]
	ldrb r0, [r5, 0x2]
	strb r0, [r1, 0x1]
	ldrb r0, [r5, 0x3]
	strb r0, [r1, 0x2]
	movs r0, 0
	strb r0, [r1, 0x3]
	ldr r0, [r1]
	bl Alloc
	adds r4, r0, 0
	cmp r4, 0
	beq _08199BE8
	adds r0, r5, 0
	adds r1, r4, 0
	bl LZ77UnCompWram
_08199BE8:
	adds r0, r4, 0
	pop {r4,r5}
	pop {r1}
	bx r1
	thumb_func_end malloc_and_decompress

	thumb_func_start copy_decompressed_tile_data_to_vram
@ s16 copy_decompressed_tile_data_to_vram(u8 bg_id, int src, u16 size, u16 offset, u8 mode)
copy_decompressed_tile_data_to_vram: @ 8199BF0
	push {r4,lr}
	adds r4, r1, 0
	ldr r1, [sp, 0x8]
	lsls r0, 24
	lsrs r0, 24
	lsls r2, 16
	lsrs r2, 16
	lsls r3, 16
	lsrs r3, 16
	lsls r1, 24
	lsrs r1, 24
	cmp r1, 0
	beq _08199C18
	cmp r1, 0x1
	beq _08199C20
	ldr r0, =0x0000ffff
	b _08199C2A
	.pool
_08199C18:
	adds r1, r4, 0
	bl LoadBgTiles
	b _08199C26
_08199C20:
	adds r1, r4, 0
	bl LoadBgTilemap
_08199C26:
	lsls r0, 16
	lsrs r0, 16
_08199C2A:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end copy_decompressed_tile_data_to_vram

	thumb_func_start sub_8199C30
sub_8199C30: @ 8199C30
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x8
	adds r5, r2, 0
	ldr r4, [sp, 0x28]
	ldr r2, [sp, 0x2C]
	lsls r0, 24
	lsrs r0, 24
	lsls r1, 24
	lsrs r1, 24
	str r1, [sp]
	lsls r5, 24
	lsrs r5, 24
	lsls r3, 24
	lsrs r3, 24
	str r3, [sp, 0x4]
	lsls r4, 24
	lsrs r4, 24
	lsls r2, 24
	lsrs r2, 24
	mov r10, r2
	bl GetBgTilemapBuffer
	mov r8, r0
	adds r0, r5, r4
	cmp r5, r0
	bge _08199CA8
	mov r9, r0
_08199C6E:
	ldr r3, [sp]
	ldr r1, [sp, 0x4]
	adds r0, r3, r1
	adds r7, r5, 0x1
	cmp r3, r0
	bge _08199CA0
	lsls r6, r5, 5
	ldr r1, =0x00000fff
	mov r12, r1
	mov r1, r10
	lsls r5, r1, 12
	adds r4, r0, 0
_08199C86:
	adds r1, r6, r3
	lsls r1, 1
	add r1, r8
	ldrh r2, [r1]
	mov r0, r12
	ands r0, r2
	orrs r0, r5
	strh r0, [r1]
	adds r0, r3, 0x1
	lsls r0, 24
	lsrs r3, r0, 24
	cmp r3, r4
	blt _08199C86
_08199CA0:
	lsls r0, r7, 24
	lsrs r5, r0, 24
	cmp r5, r9
	blt _08199C6E
_08199CA8:
	add sp, 0x8
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8199C30

	thumb_func_start sub_8199CBC
sub_8199CBC: @ 8199CBC
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x4
	mov r10, r1
	ldr r1, [sp, 0x24]
	ldr r4, [sp, 0x28]
	lsls r0, 24
	lsrs r0, 24
	lsls r2, 24
	lsrs r2, 24
	mov r9, r2
	lsls r3, 24
	lsrs r3, 24
	str r3, [sp]
	lsls r1, 24
	lsrs r5, r1, 24
	lsls r4, 24
	lsrs r4, 24
	mov r8, r4
	bl GetBgTilemapBuffer
	adds r7, r0, 0
	movs r0, 0
	cmp r0, r8
	bcs _08199D2A
_08199CF4:
	movs r2, 0
	adds r6, r0, 0x1
	cmp r2, r5
	bcs _08199D22
	adds r4, r0, 0
	muls r4, r5
	ldr r1, [sp]
	adds r0, r1
	lsls r3, r0, 5
_08199D06:
	adds r1, r4, r2
	lsls r1, 1
	add r1, r10
	adds r0, r3, r2
	add r0, r9
	lsls r0, 1
	adds r0, r7
	ldrh r0, [r0]
	strh r0, [r1]
	adds r0, r2, 0x1
	lsls r0, 24
	lsrs r2, r0, 24
	cmp r2, r5
	bcc _08199D06
_08199D22:
	lsls r0, r6, 24
	lsrs r0, 24
	cmp r0, r8
	bcc _08199CF4
_08199D2A:
	add sp, 0x4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_8199CBC

	thumb_func_start sub_8199D3C
sub_8199D3C: @ 8199D3C
	push {r4-r7,lr}
	adds r6, r0, 0
	adds r5, r1, 0
	ldr r0, [sp, 0x14]
	adds r4, r2, 0
	muls r4, r3
	cmp r0, 0x1
	bne _08199D64
	adds r3, r6, 0
	movs r2, 0
	cmp r2, r4
	bge _08199D8C
_08199D54:
	adds r1, r3, r2
	ldrb r0, [r1]
	adds r0, r5
	strb r0, [r1]
	adds r2, 0x1
	cmp r2, r4
	blt _08199D54
	b _08199D8C
_08199D64:
	cmp r4, 0
	ble _08199D8C
	movs r0, 0xFC
	lsls r0, 8
	mov r12, r0
	ldr r0, =0x000003ff
	adds r7, r0, 0
	adds r3, r6, 0
	adds r2, r4, 0
_08199D76:
	ldrh r0, [r3]
	mov r1, r12
	ands r1, r0
	adds r0, r5
	ands r0, r7
	orrs r1, r0
	strh r1, [r3]
	adds r3, 0x2
	subs r2, 0x1
	cmp r2, 0
	bne _08199D76
_08199D8C:
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8199D3C

	thumb_func_start sub_8199D98
sub_8199D98: @ 8199D98
	push {lr}
	movs r0, 0
	movs r1, 0
	movs r2, 0
	bl ChangeBgX
	movs r0, 0x1
	movs r1, 0
	movs r2, 0
	bl ChangeBgX
	movs r0, 0x2
	movs r1, 0
	movs r2, 0
	bl ChangeBgX
	movs r0, 0x3
	movs r1, 0
	movs r2, 0
	bl ChangeBgX
	movs r0, 0
	movs r1, 0
	movs r2, 0
	bl ChangeBgY
	movs r0, 0x1
	movs r1, 0
	movs r2, 0
	bl ChangeBgY
	movs r0, 0x2
	movs r1, 0
	movs r2, 0
	bl ChangeBgY
	movs r0, 0x3
	movs r1, 0
	movs r2, 0
	bl ChangeBgY
	pop {r0}
	bx r0
	thumb_func_end sub_8199D98

	thumb_func_start sub_8199DF0
sub_8199DF0: @ 8199DF0
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	mov r8, r2
	mov r9, r3
	lsls r1, 24
	lsrs r6, r1, 24
	lsls r0, 24
	lsrs r5, r0, 24
	adds r0, r5, 0
	movs r1, 0x4
	bl GetBgAttribute
	lsls r0, 16
	movs r7, 0x40
	cmp r0, 0
	bne _08199E16
	movs r7, 0x20
_08199E16:
	adds r0, r5, 0
	movs r1, 0x1
	bl GetBgAttribute
	adds r4, r0, 0
	adds r0, r5, 0
	movs r1, 0xA
	bl GetBgAttribute
	lsls r4, 16
	lsrs r4, 2
	lsls r0, 16
	lsrs r0, 16
	add r0, r8
	muls r0, r7
	adds r4, r0
	lsls r0, r6, 24
	lsls r1, r6, 16
	orrs r0, r1
	lsls r1, r6, 8
	orrs r0, r1
	orrs r0, r6
	movs r1, 0xC0
	lsls r1, 19
	adds r4, r1
	mov r2, r9
	muls r2, r7
	lsls r2, 16
	lsrs r2, 16
	adds r1, r4, 0
	movs r3, 0x1
	bl RequestDma3Fill
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_8199DF0

	thumb_func_start box_print
box_print: @ 8199E64
	push {r4-r6,lr}
	sub sp, 0x10
	adds r4, r1, 0
	ldr r6, [sp, 0x20]
	ldr r5, [sp, 0x24]
	ldr r1, [sp, 0x28]
	lsls r4, 24
	lsrs r4, 24
	lsls r5, 24
	lsrs r5, 24
	str r1, [sp]
	mov r1, sp
	strb r0, [r1, 0x4]
	mov r0, sp
	strb r4, [r0, 0x5]
	strb r2, [r0, 0x6]
	strb r3, [r0, 0x7]
	ldrb r0, [r0, 0x6]
	strb r0, [r1, 0x8]
	mov r0, sp
	ldrb r0, [r0, 0x7]
	strb r0, [r1, 0x9]
	adds r0, r4, 0
	movs r1, 0x2
	bl GetFontAttribute
	mov r1, sp
	strb r0, [r1, 0xA]
	adds r0, r4, 0
	movs r1, 0x3
	bl GetFontAttribute
	mov r1, sp
	strb r0, [r1, 0xB]
	mov r3, sp
	ldrb r2, [r3, 0xC]
	movs r1, 0x10
	negs r1, r1
	adds r0, r1, 0
	ands r0, r2
	strb r0, [r3, 0xC]
	mov r2, sp
	ldrb r0, [r6, 0x1]
	lsls r0, 4
	movs r4, 0xF
	strb r0, [r2, 0xC]
	ldrb r2, [r6]
	adds r0, r4, 0
	ands r0, r2
	ldrb r2, [r3, 0xD]
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, 0xD]
	mov r2, sp
	ldrb r0, [r6, 0x2]
	lsls r0, 4
	ands r1, r4
	orrs r1, r0
	strb r1, [r2, 0xD]
	mov r0, sp
	adds r1, r5, 0
	movs r2, 0
	bl AddTextPrinter
	add sp, 0x10
	pop {r4-r6}
	pop {r0}
	bx r0
	thumb_func_end box_print

	thumb_func_start AddTextPrinterParametrized2
@ void AddTextPrinterParametrized2(u8 windowId, u8 fontId, u8 x, u8 y, u8 letterSpacing, u8 lineSpacing, struct TextColor *color, u8 speed, u8 *str)
AddTextPrinterParametrized2: @ 8199EEC
	push {r4-r6,lr}
	mov r6, r9
	mov r5, r8
	push {r5,r6}
	sub sp, 0x10
	adds r5, r1, 0
	ldr r1, [sp, 0x28]
	mov r8, r1
	ldr r1, [sp, 0x2C]
	mov r9, r1
	ldr r6, [sp, 0x30]
	ldr r1, [sp, 0x34]
	ldr r4, [sp, 0x38]
	str r4, [sp]
	mov r4, sp
	strb r0, [r4, 0x4]
	mov r0, sp
	strb r5, [r0, 0x5]
	strb r2, [r0, 0x6]
	strb r3, [r0, 0x7]
	mov r2, sp
	ldrb r0, [r0, 0x6]
	strb r0, [r2, 0x8]
	mov r0, sp
	ldrb r0, [r0, 0x7]
	strb r0, [r2, 0x9]
	mov r0, sp
	mov r2, r8
	strb r2, [r0, 0xA]
	mov r2, r9
	strb r2, [r0, 0xB]
	ldrb r3, [r4, 0xC]
	movs r2, 0x10
	negs r2, r2
	adds r0, r2, 0
	ands r0, r3
	strb r0, [r4, 0xC]
	mov r3, sp
	ldrb r0, [r6, 0x1]
	lsls r0, 4
	movs r5, 0xF
	strb r0, [r3, 0xC]
	ldrb r3, [r6]
	adds r0, r5, 0
	ands r0, r3
	ldrb r3, [r4, 0xD]
	ands r2, r3
	orrs r2, r0
	strb r2, [r4, 0xD]
	mov r3, sp
	ldrb r0, [r6, 0x2]
	lsls r0, 4
	ands r2, r5
	orrs r2, r0
	strb r2, [r3, 0xD]
	lsls r1, 24
	lsrs r1, 24
	mov r0, sp
	movs r2, 0
	bl AddTextPrinter
	add sp, 0x10
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r0}
	bx r0
	thumb_func_end AddTextPrinterParametrized2

	thumb_func_start sub_8199F74
sub_8199F74: @ 8199F74
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, 0x10
	adds r6, r1, 0
	ldr r4, [sp, 0x2C]
	ldr r1, [sp, 0x30]
	mov r8, r1
	ldr r7, [sp, 0x34]
	ldr r5, [sp, 0x38]
	ldr r1, [sp, 0x3C]
	mov r9, r1
	lsls r6, 24
	lsrs r6, 24
	lsls r3, 24
	lsrs r3, 24
	lsls r4, 24
	lsrs r4, 24
	mov r1, r8
	lsls r1, 24
	lsrs r1, 24
	mov r8, r1
	str r2, [sp]
	mov r1, sp
	strb r0, [r1, 0x4]
	mov r0, sp
	strb r6, [r0, 0x5]
	strb r3, [r0, 0x6]
	strb r4, [r0, 0x7]
	strb r3, [r0, 0x8]
	strb r4, [r0, 0x9]
	strb r5, [r0, 0xA]
	mov r1, r9
	strb r1, [r0, 0xB]
	mov r2, sp
	ldrb r1, [r2, 0xC]
	movs r5, 0x10
	negs r5, r5
	adds r0, r5, 0
	ands r0, r1
	strb r0, [r2, 0xC]
	adds r0, r6, 0
	movs r1, 0x5
	bl GetFontAttribute
	mov r3, sp
	lsls r0, 4
	ldrb r2, [r3, 0xC]
	movs r4, 0xF
	adds r1, r4, 0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, 0xC]
	adds r0, r6, 0
	movs r1, 0x6
	bl GetFontAttribute
	mov r2, sp
	adds r1, r4, 0
	ands r1, r0
	ldrb r0, [r2, 0xD]
	ands r5, r0
	orrs r5, r1
	strb r5, [r2, 0xD]
	adds r0, r6, 0
	movs r1, 0x7
	bl GetFontAttribute
	mov r2, sp
	lsls r0, 4
	ldrb r1, [r2, 0xD]
	ands r4, r1
	orrs r4, r0
	strb r4, [r2, 0xD]
	mov r0, sp
	mov r1, r8
	adds r2, r7, 0
	bl AddTextPrinter
	add sp, 0x10
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_8199F74

	thumb_func_start sub_819A024
sub_819A024: @ 819A024
	push {r4-r7,lr}
	sub sp, 0xC
	lsls r0, 24
	lsrs r7, r0, 24
	lsls r2, 16
	lsrs r4, r2, 16
	lsls r3, 16
	lsrs r5, r3, 16
	movs r2, 0
	ldr r0, =gSaveBlock2Ptr
	ldr r3, [r0]
	ldrb r0, [r3]
	ldr r6, =gStringVar4
	cmp r0, 0xFF
	beq _0819A04C
_0819A042:
	adds r2, 0x1
	adds r0, r3, r2
	ldrb r0, [r0]
	cmp r0, 0xFF
	bne _0819A042
_0819A04C:
	adds r0, r6, 0
	bl StringExpandPlaceholders
	lsls r3, r4, 24
	lsrs r3, 24
	lsls r0, r5, 24
	lsrs r0, 24
	str r0, [sp]
	movs r0, 0xFF
	str r0, [sp, 0x4]
	movs r0, 0
	str r0, [sp, 0x8]
	adds r0, r7, 0
	movs r1, 0x1
	adds r2, r6, 0
	bl Print
	add sp, 0xC
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819A024

	thumb_func_start sub_819A080
sub_819A080: @ 819A080
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x28
	str r0, [sp]
	str r1, [sp, 0x4]
	ldr r0, [sp, 0x48]
	ldr r4, [sp, 0x4C]
	ldr r1, [sp, 0x50]
	ldr r5, [sp, 0x54]
	lsls r2, 16
	lsrs r2, 16
	str r2, [sp, 0x8]
	lsls r3, 16
	lsrs r3, 16
	lsls r0, 16
	lsrs r0, 16
	str r0, [sp, 0xC]
	lsls r4, 16
	lsrs r4, 16
	lsls r1, 16
	lsrs r1, 16
	lsls r5, 16
	lsrs r5, 16
	ldr r2, [sp, 0x4]
	ldrh r0, [r2, 0x4]
	ldr r2, [sp, 0xC]
	subs r0, r2
	ldr r2, [sp, 0x8]
	adds r2, r1, r2
	str r2, [sp, 0x10]
	cmp r0, r1
	bge _0819A0CC
	ldr r1, [sp, 0x8]
	adds r0, r1
	str r0, [sp, 0x10]
_0819A0CC:
	ldr r2, [sp, 0x4]
	ldrh r1, [r2, 0x6]
	subs r0, r1, r4
	cmp r0, r5
	bge _0819A0DE
	adds r0, r3, r1
	subs r0, r4
	str r0, [sp, 0x14]
	b _0819A0E2
_0819A0DE:
	adds r5, r3, r5
	str r5, [sp, 0x14]
_0819A0E2:
	ldr r0, [sp]
	ldrh r1, [r0, 0x4]
	movs r2, 0x7
	adds r0, r1, 0
	ands r0, r2
	adds r1, r0
	asrs r1, 3
	str r1, [sp, 0x18]
	ldr r0, [sp, 0x4]
	ldrh r1, [r0, 0x4]
	adds r0, r1, 0
	ands r0, r2
	adds r1, r0
	asrs r1, 3
	str r1, [sp, 0x1C]
	mov r12, r3
	mov r8, r4
	ldr r1, [sp, 0x14]
	cmp r12, r1
	blt _0819A10C
	b _0819A24A
_0819A10C:
	ldr r5, [sp, 0x8]
	ldr r6, [sp, 0xC]
	mov r2, r12
	adds r2, 0x1
	str r2, [sp, 0x20]
	mov r0, r8
	adds r0, 0x1
	str r0, [sp, 0x24]
	ldr r1, [sp, 0x10]
	cmp r5, r1
	blt _0819A124
	b _0819A23A
_0819A124:
	movs r7, 0x1
	movs r2, 0xF0
	mov r10, r2
	movs r0, 0xF
	mov r9, r0
_0819A12E:
	asrs r0, r5, 1
	movs r1, 0x3
	ands r0, r1
	ldr r2, [sp]
	ldr r1, [r2]
	adds r1, r0
	asrs r0, r5, 3
	lsls r0, 5
	adds r1, r0
	mov r2, r12
	asrs r0, r2, 3
	ldr r2, [sp, 0x18]
	muls r0, r2
	lsls r0, 5
	adds r1, r0
	mov r2, r12
	lsls r0, r2, 29
	lsrs r0, 27
	adds r3, r1, r0
	asrs r0, r6, 1
	movs r1, 0x3
	ands r0, r1
	ldr r2, [sp, 0x4]
	ldr r1, [r2]
	adds r1, r0
	asrs r0, r6, 3
	lsls r0, 5
	adds r1, r0
	mov r2, r8
	asrs r0, r2, 3
	ldr r2, [sp, 0x1C]
	muls r0, r2
	lsls r0, 5
	adds r1, r0
	mov r2, r8
	lsls r0, r2, 29
	lsrs r0, 27
	adds r4, r1, r0
	adds r0, r4, 0
	ands r0, r7
	cmp r0, 0
	beq _0819A1DA
	subs r4, 0x1
	adds r0, r6, 0
	ands r0, r7
	cmp r0, 0
	beq _0819A1B2
	ldrh r0, [r4]
	ldr r2, =0x00000fff
	ands r2, r0
	adds r0, r5, 0
	ands r0, r7
	cmp r0, 0
	beq _0819A1A8
	ldrb r1, [r3]
	mov r0, r10
	ands r0, r1
	lsls r0, 8
	b _0819A22A
	.pool
_0819A1A8:
	ldrb r1, [r3]
	mov r0, r9
	ands r0, r1
	lsls r0, 12
	b _0819A22A
_0819A1B2:
	ldrh r0, [r4]
	ldr r2, =0x0000f0ff
	ands r2, r0
	adds r0, r5, 0
	ands r0, r7
	cmp r0, 0
	beq _0819A1D0
	ldrb r1, [r3]
	mov r0, r10
	ands r0, r1
	lsls r0, 4
	b _0819A22A
	.pool
_0819A1D0:
	ldrb r1, [r3]
	mov r0, r9
	ands r0, r1
	lsls r0, 8
	b _0819A22A
_0819A1DA:
	adds r0, r6, 0
	ands r0, r7
	cmp r0, 0
	beq _0819A206
	ldrh r0, [r4]
	ldr r2, =0x0000ff0f
	ands r2, r0
	adds r0, r5, 0
	ands r0, r7
	cmp r0, 0
	beq _0819A1FC
	ldrb r1, [r3]
	mov r0, r10
	b _0819A228
	.pool
_0819A1FC:
	ldrb r1, [r3]
	mov r0, r9
	ands r0, r1
	lsls r0, 4
	b _0819A22A
_0819A206:
	ldrh r0, [r4]
	ldr r2, =0x0000fff0
	ands r2, r0
	adds r0, r5, 0
	ands r0, r7
	cmp r0, 0
	beq _0819A224
	ldrb r1, [r3]
	mov r0, r10
	ands r0, r1
	lsrs r0, 4
	b _0819A22A
	.pool
_0819A224:
	ldrb r1, [r3]
	mov r0, r9
_0819A228:
	ands r0, r1
_0819A22A:
	orrs r2, r0
	strh r2, [r4]
	adds r5, 0x1
	adds r6, 0x1
	ldr r0, [sp, 0x10]
	cmp r5, r0
	bge _0819A23A
	b _0819A12E
_0819A23A:
	ldr r1, [sp, 0x20]
	mov r12, r1
	ldr r2, [sp, 0x24]
	mov r8, r2
	ldr r0, [sp, 0x14]
	cmp r12, r0
	bge _0819A24A
	b _0819A10C
_0819A24A:
	add sp, 0x28
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_819A080

	thumb_func_start sub_819A25C
sub_819A25C: @ 819A25C
	push {r4,lr}
	adds r4, r0, 0
	adds r0, r1, 0
	lsls r4, 24
	lsrs r4, 24
	lsls r0, 16
	lsrs r0, 16
	bl sub_80D30B0
	adds r1, r4, 0
	movs r2, 0x20
	bl LoadPalette
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_819A25C

	thumb_func_start sub_819A27C
sub_819A27C: @ 819A27C
	push {r4-r6,lr}
	sub sp, 0x8
	adds r6, r0, 0
	adds r0, r1, 0
	adds r1, r2, 0
	adds r4, r3, 0
	ldr r5, [sp, 0x18]
	lsls r6, 24
	lsrs r6, 24
	lsls r0, 16
	lsrs r0, 16
	lsls r4, 16
	lsrs r4, 16
	lsls r5, 16
	lsrs r5, 16
	movs r2, 0x1
	bl sub_80D2EDC
	adds r1, r0, 0
	movs r0, 0x20
	str r0, [sp]
	str r0, [sp, 0x4]
	adds r0, r6, 0
	adds r2, r4, 0
	adds r3, r5, 0
	bl BlitBitmapToWindow
	add sp, 0x8
	pop {r4-r6}
	pop {r0}
	bx r0
	thumb_func_end sub_819A27C

	thumb_func_start sub_819A2BC
sub_819A2BC: @ 819A2BC
	push {lr}
	lsls r0, 24
	lsrs r2, r0, 24
	lsls r1, 24
	lsrs r1, 24
	cmp r1, 0x1
	beq _0819A2DC
	cmp r1, 0x1
	ble _0819A2D2
	cmp r1, 0x2
	beq _0819A2E4
_0819A2D2:
	ldr r0, =gUnknown_08DC4318
	b _0819A2E6
	.pool
_0819A2DC:
	ldr r0, =gUnknown_08DC4338
	b _0819A2E6
	.pool
_0819A2E4:
	ldr r0, =gUnknown_08DC4358
_0819A2E6:
	adds r1, r2, 0
	movs r2, 0x20
	bl LoadPalette
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819A2BC

	thumb_func_start blit_move_info_icon
@ void blit_move_info_icon(u8 windowId, u8 a2, u16 x, u16 y)
blit_move_info_icon: @ 819A2F8
	push {r4,r5,lr}
	sub sp, 0x18
	lsls r0, 24
	lsrs r0, 24
	lsls r1, 24
	lsls r2, 16
	lsrs r2, 16
	lsls r3, 16
	lsrs r3, 16
	ldr r4, =gUnknown_0860F0D4
	lsrs r1, 22
	adds r1, r4
	ldrh r5, [r1, 0x2]
	lsls r5, 5
	ldr r4, =gUnknown_08DC4378
	adds r5, r4
	movs r4, 0x80
	str r4, [sp]
	str r4, [sp, 0x4]
	str r2, [sp, 0x8]
	str r3, [sp, 0xC]
	ldrb r2, [r1]
	str r2, [sp, 0x10]
	ldrb r1, [r1, 0x1]
	str r1, [sp, 0x14]
	adds r1, r5, 0
	movs r2, 0
	movs r3, 0
	bl BlitBitmapRectToWindow
	add sp, 0x18
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end blit_move_info_icon

	thumb_func_start sub_819A344
sub_819A344: @ 819A344
	push {r4-r7,lr}
	lsls r0, 24
	lsrs r3, r0, 24
	lsls r2, 24
	lsrs r2, 24
	adds r5, r1, 0
	movs r1, 0xFC
	strb r1, [r5]
	adds r5, 0x1
	movs r0, 0x1
	strb r0, [r5]
	adds r5, 0x1
	strb r2, [r5]
	adds r5, 0x1
	strb r1, [r5]
	adds r5, 0x1
	movs r0, 0x3
	strb r0, [r5]
	adds r5, 0x1
	adds r2, 0x1
	strb r2, [r5]
	adds r5, 0x1
	cmp r3, 0x4
	bhi _0819A43C
	lsls r0, r3, 2
	ldr r1, =_0819A384
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_0819A384:
	.4byte _0819A398
	.4byte _0819A3A8
	.4byte _0819A3D6
	.4byte _0819A404
	.4byte _0819A414
_0819A398:
	ldr r0, =gSaveBlock2Ptr
	ldr r1, [r0]
	adds r0, r5, 0
	bl StringCopy
	b _0819A43C
	.pool
_0819A3A8:
	bl sub_809D42C
	cmp r0, 0
	beq _0819A3B8
	movs r0, 0x1
	bl pokedex_count
	b _0819A3BE
_0819A3B8:
	movs r0, 0x1
	bl sub_80C0844
_0819A3BE:
	adds r1, r0, 0
	lsls r1, 16
	lsrs r1, 16
	adds r0, r5, 0
	movs r2, 0
	movs r3, 0x3
	bl ConvertIntToDecimalStringN
	adds r5, r0, 0
	movs r0, 0xFF
	strb r0, [r5]
	b _0819A43C
_0819A3D6:
	ldr r4, =gSaveBlock2Ptr
	ldr r0, [r4]
	ldrh r1, [r0, 0xE]
	adds r0, r5, 0
	movs r2, 0
	movs r3, 0x3
	bl ConvertIntToDecimalStringN
	adds r5, r0, 0
	movs r0, 0xF0
	strb r0, [r5]
	adds r5, 0x1
	ldr r0, [r4]
	ldrb r1, [r0, 0x10]
	adds r0, r5, 0
	movs r2, 0x2
	movs r3, 0x2
	bl ConvertIntToDecimalStringN
	b _0819A43C
	.pool
_0819A404:
	ldr r0, =gUnknown_02037318
	ldrb r1, [r0, 0x14]
	adds r0, r5, 0
	bl sub_81245DC
	b _0819A43C
	.pool
_0819A414:
	ldr r4, =0x00000867
	movs r6, 0
	adds r7, r5, 0x1
_0819A41A:
	lsls r0, r4, 16
	lsrs r0, 16
	bl FlagGet
	lsls r0, 24
	cmp r0, 0
	beq _0819A42A
	adds r6, 0x1
_0819A42A:
	adds r4, 0x1
	ldr r0, =0x0000086e
	cmp r4, r0
	ble _0819A41A
	adds r0, r6, 0
	subs r0, 0x5F
	strb r0, [r5]
	movs r0, 0xFF
	strb r0, [r7]
_0819A43C:
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819A344

	thumb_func_start sub_819A44C
sub_819A44C: @ 819A44C
	push {r4,r5,lr}
	adds r5, r0, 0
	ldrb r4, [r5, 0x5]
	lsrs r4, 4
	movs r0, 0x65
	bl IndexOfObjectPaletteTag
	lsls r0, 24
	lsls r4, 16
	lsrs r4, 16
	lsrs r0, 24
	cmp r4, r0
	bne _0819A4BA
	adds r0, r5, 0
	adds r0, 0x3F
	ldrb r1, [r0]
	movs r0, 0x10
	ands r0, r1
	cmp r0, 0
	beq _0819A4B0
	ldrh r1, [r5, 0x2E]
	movs r2, 0x2E
	ldrsh r0, [r5, r2]
	cmp r0, 0
	beq _0819A484
	subs r0, r1, 0x1
	strh r0, [r5, 0x2E]
	b _0819A4C2
_0819A484:
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x5
	bl __umodsi3
	lsls r0, 16
	cmp r0, 0
	bne _0819A4A6
	adds r0, r5, 0
	movs r1, 0
	bl StartObjectImageAnim
	movs r0, 0x20
	strh r0, [r5, 0x2E]
	b _0819A4C2
_0819A4A6:
	adds r0, r5, 0
	movs r1, 0x1
	bl StartObjectImageAnim
	b _0819A4C2
_0819A4B0:
	adds r0, r5, 0
	movs r1, 0x1
	bl StartObjectImageAnimIfDifferent
	b _0819A4C2
_0819A4BA:
	adds r0, r5, 0
	movs r1, 0
	bl StartObjectImageAnimIfDifferent
_0819A4C2:
	pop {r4,r5}
	pop {r0}
	bx r0
	thumb_func_end sub_819A44C

	thumb_func_start sub_819A4C8
sub_819A4C8: @ 819A4C8
	push {lr}
	bl CallObjectCallbacks
	bl PrepareSpritesForOamLoad
	bl RunTextPrinters
	bl UpdatePaletteFade
	bl RunTasks
	pop {r0}
	bx r0
	thumb_func_end sub_819A4C8

	thumb_func_start sub_819A4E4
sub_819A4E4: @ 819A4E4
	push {lr}
	bl LoadOamFromSprites
	bl ProcessObjectCopyRequests
	bl TransferPlttBuffer
	pop {r0}
	bx r0
	thumb_func_end sub_819A4E4

	thumb_func_start sub_819A4F8
sub_819A4F8: @ 819A4F8
	push {lr}
	ldr r0, =gUnknown_0300127C
	movs r1, 0
	str r1, [r0]
	ldr r0, =sub_819A514
	bl SetMainCallback2
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819A4F8

	thumb_func_start sub_819A514
sub_819A514: @ 819A514
	push {r4,r5,lr}
	sub sp, 0xC
	ldr r0, =gMain
	movs r1, 0x87
	lsls r1, 3
	adds r0, r1
	ldrb r0, [r0]
	cmp r0, 0xA
	bls _0819A528
	b _0819A98E
_0819A528:
	lsls r0, 2
	ldr r1, =_0819A53C
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_0819A53C:
	.4byte _0819A568
	.4byte _0819A5C0
	.4byte _0819A69C
	.4byte _0819A77C
	.4byte _0819A7CC
	.4byte _0819A868
	.4byte _0819A8A4
	.4byte _0819A8AC
	.4byte _0819A8C4
	.4byte _0819A8DC
	.4byte _0819A8FC
_0819A568:
	ldr r4, =gUnknown_0203CE3C
	ldr r0, [r4]
	cmp r0, 0
	beq _0819A578
	bl Free
	movs r0, 0
	str r0, [r4]
_0819A578:
	movs r0, 0
	bl SetHBlankCallback
	movs r0, 0
	bl SetVBlankCallback
	movs r0, 0
	str r0, [sp, 0x8]
	movs r1, 0xC0
	lsls r1, 19
	ldr r2, =0x05006000
	add r0, sp, 0x8
	bl CpuSet
	movs r0, 0
	bl ResetBgsAndClearDma3BusyFlags
	ldr r1, =gUnknown_08610428
	movs r0, 0
	movs r2, 0x3
	bl InitBgsFromTemplates
	ldr r0, =gUnknown_08610434
	bl InitWindows
	bl DeactivateAllTextPrinters
	b _0819A8E6
	.pool
_0819A5C0:
	ldr r5, =gUnknown_0203CE2C
	movs r4, 0x88
	lsls r4, 3
	adds r0, r4, 0
	bl Alloc
	str r0, [r5]
	ldr r5, =gUnknown_0203CE30
	adds r0, r4, 0
	bl AllocZeroed
	str r0, [r5]
	ldr r5, =gUnknown_0203CE34
	movs r4, 0x80
	lsls r4, 4
	adds r0, r4, 0
	bl Alloc
	str r0, [r5]
	ldr r5, =gUnknown_0203CE38
	adds r0, r4, 0
	bl AllocZeroed
	str r0, [r5]
	movs r0, 0
	movs r1, 0
	movs r2, 0
	bl ChangeBgX
	movs r0, 0
	movs r1, 0
	movs r2, 0
	bl ChangeBgY
	movs r0, 0x1
	movs r1, 0
	movs r2, 0
	bl ChangeBgX
	movs r0, 0x1
	movs r1, 0
	movs r2, 0
	bl ChangeBgY
	movs r0, 0x3
	movs r1, 0
	movs r2, 0
	bl ChangeBgX
	movs r0, 0x3
	movs r1, 0
	movs r2, 0
	bl ChangeBgY
	movs r0, 0x50
	movs r1, 0
	bl SetGpuReg
	movs r0, 0x52
	movs r1, 0
	bl SetGpuReg
	movs r0, 0x54
	movs r1, 0
	bl SetGpuReg
	movs r0, 0x4C
	movs r1, 0
	bl SetGpuReg
	movs r0, 0x40
	movs r1, 0
	bl SetGpuReg
	movs r0, 0x44
	movs r1, 0
	bl SetGpuReg
	movs r0, 0x42
	movs r1, 0
	bl SetGpuReg
	movs r0, 0x46
	movs r1, 0
	bl SetGpuReg
	movs r0, 0x48
	movs r1, 0
	bl SetGpuReg
	movs r0, 0x4A
	movs r1, 0
	bl SetGpuReg
	ldr r1, =gMain
	movs r3, 0x87
	lsls r3, 3
	adds r1, r3
	b _0819A8EE
	.pool
_0819A69C:
	bl ResetPaletteFade
	bl ResetAllObjectData
	bl ResetTasks
	bl ResetObjectPaletteAllocator
	ldr r0, =gUnknown_08DC0754
	ldr r5, =gUnknown_0203CE2C
	ldr r1, [r5]
	movs r2, 0x88
	lsls r2, 2
	bl CpuSet
	ldr r0, =gUnknown_0861033C
	ldr r4, =gUnknown_0203CE30
	ldr r1, [r4]
	movs r2, 0x30
	bl CpuSet
	ldr r1, [r5]
	movs r2, 0x88
	lsls r2, 3
	movs r0, 0x1
	movs r3, 0
	bl LoadBgTiles
	ldr r1, [r4]
	movs r0, 0x3
	movs r2, 0x60
	movs r3, 0
	bl LoadBgTiles
	ldr r0, =gUnknown_08DC0B94
	ldr r4, =gUnknown_0203CE34
	ldr r1, [r4]
	movs r2, 0x80
	lsls r2, 3
	bl CpuSet
	ldr r1, [r4]
	movs r2, 0x80
	lsls r2, 4
	movs r0, 0x1
	movs r3, 0
	bl LoadBgTilemap
	ldr r0, =gUnknown_08DC0714
	movs r1, 0
	movs r2, 0x40
	bl LoadPalette
	ldr r4, =gUnknown_0861046C
	adds r0, r4, 0
	movs r1, 0xF0
	movs r2, 0x8
	bl LoadPalette
	adds r0, r4, 0
	movs r1, 0xE0
	movs r2, 0xA
	bl LoadPalette
	ldr r0, =gUnknown_0300127C
	ldr r1, [r0]
	ldrb r0, [r1, 0x6]
	cmp r0, 0x1
	bne _0819A738
	ldr r0, =gPlttBufferUnfaded
	movs r2, 0xA9
	lsls r2, 2
	adds r1, r2
	ldrh r1, [r1]
	movs r3, 0xE4
	lsls r3, 1
	adds r0, r3
	strh r1, [r0]
_0819A738:
	ldr r0, =gUnknown_0861039C
	movs r1, 0x20
	movs r2, 0x4
	bl LoadPalette
	ldr r1, =gMain
	movs r0, 0x87
	lsls r0, 3
	adds r1, r0
	b _0819A8EE
	.pool
_0819A77C:
	ldr r0, =gUnknown_0203CE38
	ldr r1, [r0]
	movs r0, 0x3
	bl SetBgTilemapBuffer
	ldr r5, =gUnknown_0861023C
	movs r4, 0x8
	str r4, [sp]
	str r4, [sp, 0x4]
	movs r0, 0x3
	adds r1, r5, 0
	movs r2, 0xB
	movs r3, 0x4
	bl CopyToBgTilemapBufferRect
	str r4, [sp]
	str r4, [sp, 0x4]
	movs r0, 0x3
	adds r1, r5, 0
	movs r2, 0x2
	movs r3, 0x4
	bl CopyToBgTilemapBufferRect
	str r4, [sp]
	str r4, [sp, 0x4]
	movs r0, 0x3
	adds r1, r5, 0
	movs r2, 0x14
	movs r3, 0x4
	bl CopyToBgTilemapBufferRect
	movs r0, 0x3
	bl CopyBgTilemapBufferToVram
	b _0819A8E6
	.pool
_0819A7CC:
	ldr r0, =gUnknown_086103F4
	bl LoadTaggedObjectPalettes
	ldr r0, =gUnknown_086103BC
	bl LoadObjectPics
	ldr r0, =gUnknown_086103E4
	bl LoadCompressedObjectPic
	movs r0, 0
	bl ShowBg
	movs r0, 0x1
	bl ShowBg
	ldr r0, =sub_819A4E4
	bl SetVBlankCallback
	movs r0, 0x1
	negs r0, r0
	movs r1, 0
	str r1, [sp]
	movs r2, 0x10
	movs r3, 0
	bl BeginNormalPaletteFade
	movs r1, 0x9A
	lsls r1, 5
	movs r0, 0
	bl SetGpuReg
	ldr r0, =gUnknown_0300127C
	ldr r0, [r0]
	ldrb r0, [r0, 0x6]
	cmp r0, 0x1
	bne _0819A854
	movs r0, 0x58
	movs r1, 0x98
	movs r2, 0x20
	movs r3, 0x60
	bl sub_819C5D0
	movs r0, 0x3
	bl ShowBg
	ldr r1, =0x00001248
	movs r0, 0x50
	bl SetGpuReg
	ldr r1, =0x0000040b
	movs r0, 0x52
	bl SetGpuReg
	b _0819A85A
	.pool
_0819A854:
	movs r0, 0x3
	bl HideBg
_0819A85A:
	ldr r1, =gMain
	movs r3, 0x87
	lsls r3, 3
	adds r1, r3
	b _0819A8EE
	.pool
_0819A868:
	ldr r4, =gUnknown_0300127C
	ldr r1, [r4]
	ldrb r0, [r1, 0x6]
	cmp r0, 0x1
	bne _0819A878
	ldr r0, =gUnknown_0203CF20
	ldrb r0, [r0]
	strb r0, [r1, 0x3]
_0819A878:
	bl sub_819A9AC
	bl sub_819AA18
	ldr r0, [r4]
	ldrb r0, [r0, 0x6]
	cmp r0, 0x1
	bne _0819A88C
	bl sub_819BE34
_0819A88C:
	ldr r1, =gMain
	movs r0, 0x87
	lsls r0, 3
	adds r1, r0
	b _0819A8EE
	.pool
_0819A8A4:
	bl sub_819BA64
	movs r0, 0x2
	b _0819A8E2
_0819A8AC:
	bl sub_819BCF8
	movs r0, 0x5
	bl PutWindowTilemap
	ldr r1, =gMain
	movs r3, 0x87
	lsls r3, 3
	adds r1, r3
	b _0819A8EE
	.pool
_0819A8C4:
	bl sub_819B9E8
	movs r0, 0x1
	bl PutWindowTilemap
	ldr r1, =gMain
	movs r0, 0x87
	lsls r0, 3
	adds r1, r0
	b _0819A8EE
	.pool
_0819A8DC:
	bl sub_819B9B4
	movs r0, 0
_0819A8E2:
	bl PutWindowTilemap
_0819A8E6:
	ldr r1, =gMain
	movs r2, 0x87
	lsls r2, 3
	adds r1, r2
_0819A8EE:
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	b _0819A98E
	.pool
_0819A8FC:
	ldr r0, =sub_819C69C
	movs r1, 0
	bl CreateTask
	ldr r2, =gUnknown_0300127C
	ldr r1, [r2]
	ldr r3, =0x000002a1
	adds r1, r3
	strb r0, [r1]
	ldr r3, [r2]
	ldrb r5, [r3, 0x6]
	cmp r5, 0
	bne _0819A954
	ldr r4, =gTasks
	ldr r1, =0x000002a1
	adds r0, r3, r1
	ldrb r1, [r0]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 3
	adds r0, r4
	strh r5, [r0, 0x8]
	ldr r0, =sub_819B378
	movs r1, 0
	bl CreateTask
	lsls r0, 24
	lsrs r1, r0, 24
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 3
	adds r0, r4
	strh r5, [r0, 0x8]
	b _0819A988
	.pool
_0819A954:
	ldr r4, =gTasks
	ldr r2, =0x000002a1
	adds r0, r3, r2
	ldrb r1, [r0]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 3
	adds r0, r4
	movs r2, 0
	movs r1, 0x1
	strh r1, [r0, 0x8]
	ldr r1, =0x000002a2
	adds r0, r3, r1
	strb r2, [r0]
	ldr r0, =sub_819B124
	movs r1, 0
	bl CreateTask
	lsls r0, 24
	lsrs r1, r0, 24
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 3
	adds r0, r4
	movs r1, 0xD
	strh r1, [r0, 0x8]
_0819A988:
	ldr r0, =sub_819A4C8
	bl SetMainCallback2
_0819A98E:
	add sp, 0xC
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819A514

	thumb_func_start sub_819A9AC
sub_819A9AC: @ 819A9AC
	push {r4,r5,lr}
	ldr r5, =gUnknown_0300127C
	ldr r4, [r5]
	cmp r4, 0
	bne _0819AA12
	movs r0, 0xAB
	lsls r0, 2
	bl AllocZeroed
	str r0, [r5]
	strb r4, [r0, 0x3]
	ldr r1, [r5]
	movs r0, 0x1
	strb r0, [r1, 0x5]
	ldr r0, [r5]
	strb r4, [r0, 0x6]
	movs r2, 0
	movs r4, 0x6C
	movs r3, 0
_0819A9D2:
	ldr r0, [r5]
	adds r1, r2, 0
	muls r1, r4
	adds r0, r1
	strb r3, [r0, 0x10]
	adds r0, r2, 0x1
	lsls r0, 24
	lsrs r2, r0, 24
	cmp r2, 0x5
	bls _0819A9D2
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r1, =0x00000ca9
	adds r0, r1
	ldrb r1, [r0]
	movs r0, 0x3
	ands r0, r1
	cmp r0, 0x2
	beq _0819AA0C
	movs r0, 0
	bl sub_819B484
	b _0819AA12
	.pool
_0819AA0C:
	movs r0, 0
	bl sub_819B63C
_0819AA12:
	pop {r4,r5}
	pop {r0}
	bx r0
	thumb_func_end sub_819A9AC

	thumb_func_start sub_819AA18
sub_819AA18: @ 819AA18
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	movs r4, 0
	mov r8, r4
	ldr r7, =gUnknown_02020630
_0819AA24:
	lsls r1, r4, 3
	adds r1, r4
	lsls r1, 2
	subs r1, r4
	adds r1, 0x20
	lsls r1, 16
	asrs r1, 16
	ldr r0, =gUnknown_086105D8
	movs r2, 0x40
	movs r3, 0x1
	bl AddObjectToFront
	ldr r6, =gUnknown_0300127C
	ldr r2, [r6]
	movs r5, 0x6C
	adds r1, r4, 0
	muls r1, r5
	adds r2, r1
	lsls r0, 24
	lsrs r0, 24
	strh r0, [r2, 0xE]
	ldrh r1, [r2, 0xE]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r7
	mov r1, r8
	strh r1, [r0, 0x2E]
	adds r0, r4, 0
	bl sub_819ADAC
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x5
	bls _0819AA24
	ldr r0, [r6]
	ldrb r1, [r0, 0x3]
	ldr r4, =gUnknown_02020630
	muls r1, r5
	adds r0, r1
	ldrh r0, [r0, 0xE]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r4
	ldr r0, =gUnknown_086105F0
	movs r2, 0x20
	ldrsh r1, [r1, r2]
	movs r2, 0x58
	movs r3, 0
	bl AddObjectToFront
	ldr r1, [r6]
	movs r5, 0
	strb r0, [r1, 0x4]
	ldr r0, =gUnknown_08610608
	movs r1, 0xB0
	movs r2, 0x70
	movs r3, 0
	bl AddObjectToFront
	ldr r1, [r6]
	strb r0, [r1, 0x1]
	ldr r0, =gUnknown_08610620
	movs r1, 0xB0
	movs r2, 0x90
	movs r3, 0
	bl AddObjectToFront
	ldr r1, [r6]
	strb r0, [r1, 0x2]
	ldr r0, [r6]
	ldrb r1, [r0, 0x1]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	adds r0, 0x3E
	ldrb r1, [r0]
	movs r2, 0x4
	orrs r1, r2
	strb r1, [r0]
	ldr r0, [r6]
	ldrb r1, [r0, 0x2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	adds r0, 0x3E
	ldrb r1, [r0]
	orrs r1, r2
	strb r1, [r0]
	ldr r0, [r6]
	ldrb r1, [r0, 0x1]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	adds r0, 0x28
	strb r5, [r0]
	ldr r0, [r6]
	ldrb r1, [r0, 0x1]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	adds r0, 0x29
	strb r5, [r0]
	ldr r0, [r6]
	ldrb r1, [r0, 0x2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	adds r0, 0x28
	strb r5, [r0]
	ldr r0, [r6]
	ldrb r1, [r0, 0x2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	adds r0, 0x29
	strb r5, [r0]
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819AA18

	thumb_func_start sub_819AB40
sub_819AB40: @ 819AB40
	push {r4-r6,lr}
	movs r4, 0
_0819AB44:
	ldr r6, =gUnknown_0300127C
	ldr r1, [r6]
	movs r0, 0x6C
	muls r0, r4
	adds r1, r0
	ldrh r1, [r1, 0xE]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	ldr r5, =gUnknown_02020630
	adds r0, r5
	bl RemoveObjectAndFreeTiles
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x5
	bls _0819AB44
	ldr r0, [r6]
	ldrb r1, [r0, 0x4]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	bl RemoveObjectAndFreeTiles
	ldr r0, [r6]
	ldrb r1, [r0, 0x1]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	bl RemoveObjectAndFreeTiles
	ldr r0, [r6]
	ldrb r1, [r0, 0x2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	bl RemoveObjectAndFreeTiles
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819AB40

	thumb_func_start sub_819ABA8
sub_819ABA8: @ 819ABA8
	push {r4,lr}
	lsls r0, 24
	cmp r0, 0
	ble _0819ABC8
	ldr r0, =gUnknown_0300127C
	ldr r1, [r0]
	ldrb r3, [r1, 0x3]
	adds r2, r0, 0
	cmp r3, 0x5
	beq _0819ABC4
	adds r0, r3, 0x1
	b _0819ABDE
	.pool
_0819ABC4:
	movs r0, 0
	b _0819ABDE
_0819ABC8:
	ldr r0, =gUnknown_0300127C
	ldr r1, [r0]
	ldrb r3, [r1, 0x3]
	adds r2, r0, 0
	cmp r3, 0
	beq _0819ABDC
	subs r0, r3, 0x1
	b _0819ABDE
	.pool
_0819ABDC:
	movs r0, 0x5
_0819ABDE:
	strb r0, [r1, 0x3]
	ldr r2, [r2]
	ldrb r3, [r2, 0x3]
	ldr r4, =gUnknown_02020630
	ldrb r0, [r2, 0x4]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r4
	movs r0, 0x6C
	muls r0, r3
	adds r2, r0
	ldrh r2, [r2, 0xE]
	lsls r0, r2, 4
	adds r0, r2
	lsls r0, 2
	adds r0, r4
	ldrh r0, [r0, 0x20]
	strh r0, [r1, 0x20]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819ABA8

	thumb_func_start sub_819AC10
sub_819AC10: @ 819AC10
	push {lr}
	lsls r0, 24
	cmp r0, 0
	ble _0819AC30
	ldr r0, =gUnknown_0300127C
	ldr r1, [r0]
	ldrb r3, [r1]
	adds r2, r0, 0
	cmp r3, 0x2
	beq _0819AC2C
	adds r0, r3, 0x1
	b _0819AC46
	.pool
_0819AC2C:
	movs r0, 0
	b _0819AC46
_0819AC30:
	ldr r0, =gUnknown_0300127C
	ldr r1, [r0]
	ldrb r3, [r1]
	adds r2, r0, 0
	cmp r3, 0
	beq _0819AC44
	subs r0, r3, 0x1
	b _0819AC46
	.pool
_0819AC44:
	movs r0, 0x2
_0819AC46:
	strb r0, [r1]
	ldr r3, =gUnknown_02020630
	ldr r2, [r2]
	ldrb r0, [r2, 0x1]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r3
	ldrb r0, [r2]
	lsls r0, 4
	adds r0, 0x70
	strh r0, [r1, 0x22]
	ldrb r0, [r2, 0x2]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r3
	ldrb r0, [r2]
	lsls r0, 4
	adds r0, 0x70
	strh r0, [r1, 0x22]
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819AC10

	thumb_func_start sub_819AC78
sub_819AC78: @ 819AC78
	push {lr}
	lsls r0, 24
	cmp r0, 0
	ble _0819AC98
	ldr r0, =gUnknown_0300127C
	ldr r1, [r0]
	ldrb r3, [r1, 0x7]
	adds r2, r0, 0
	cmp r3, 0x1
	beq _0819AC94
	adds r0, r3, 0x1
	b _0819ACAE
	.pool
_0819AC94:
	movs r0, 0
	b _0819ACAE
_0819AC98:
	ldr r0, =gUnknown_0300127C
	ldr r1, [r0]
	ldrb r3, [r1, 0x7]
	adds r2, r0, 0
	cmp r3, 0
	beq _0819ACAC
	subs r0, r3, 0x1
	b _0819ACAE
	.pool
_0819ACAC:
	movs r0, 0x1
_0819ACAE:
	strb r0, [r1, 0x7]
	ldr r3, =gUnknown_02020630
	ldr r2, [r2]
	ldrb r0, [r2, 0x1]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r3
	ldrb r0, [r2, 0x7]
	lsls r0, 4
	adds r0, 0x70
	strh r0, [r1, 0x22]
	ldrb r0, [r2, 0x2]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r3
	ldrb r0, [r2, 0x7]
	lsls r0, 4
	adds r0, 0x70
	strh r0, [r1, 0x22]
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819AC78

	thumb_func_start sub_819ACE0
sub_819ACE0: @ 819ACE0
	push {r4-r6,lr}
	ldr r5, =gUnknown_0300127C
	ldr r0, [r5]
	ldrb r6, [r0, 0x3]
	movs r1, 0x6C
	adds r4, r6, 0
	muls r4, r1
	adds r0, r4
	ldrb r0, [r0, 0x10]
	cmp r0, 0
	beq _0819AD60
	movs r0, 0x64
	bl IndexOfObjectPaletteTag
	lsls r0, 24
	lsrs r3, r0, 24
	ldr r1, [r5]
	ldrb r0, [r1, 0x5]
	cmp r0, 0x3
	bne _0819AD44
	adds r0, r1, r4
	ldrb r0, [r0, 0x10]
	cmp r0, 0x1
	bne _0819AD44
	movs r2, 0
	ldrb r0, [r1, 0x10]
	cmp r0, 0x2
	beq _0819AD32
	movs r4, 0x6C
_0819AD1A:
	adds r0, r2, 0x1
	lsls r0, 24
	lsrs r2, r0, 24
	cmp r2, 0x5
	bhi _0819AD32
	ldr r0, [r5]
	adds r1, r2, 0
	muls r1, r4
	adds r0, r1
	ldrb r0, [r0, 0x10]
	cmp r0, 0x2
	bne _0819AD1A
_0819AD32:
	cmp r2, 0x6
	beq _0819AD9C
	ldr r0, =gUnknown_0300127C
	ldr r1, [r0]
	movs r0, 0x6C
	muls r0, r2
	adds r1, r0
	movs r0, 0x1
	strb r0, [r1, 0x10]
_0819AD44:
	ldr r2, =gUnknown_0300127C
	ldr r1, [r2]
	movs r0, 0x6C
	muls r0, r6
	adds r1, r0
	movs r0, 0
	strb r0, [r1, 0x10]
	ldr r1, [r2]
	ldrb r0, [r1, 0x5]
	subs r0, 0x1
	b _0819AD78
	.pool
_0819AD60:
	movs r0, 0x65
	bl IndexOfObjectPaletteTag
	lsls r0, 24
	lsrs r3, r0, 24
	ldr r0, [r5]
	adds r1, r0, r4
	ldrb r0, [r0, 0x5]
	strb r0, [r1, 0x10]
	ldr r1, [r5]
	ldrb r0, [r1, 0x5]
	adds r0, 0x1
_0819AD78:
	strb r0, [r1, 0x5]
	ldr r2, =gUnknown_02020630
	ldr r0, =gUnknown_0300127C
	ldr r0, [r0]
	movs r1, 0x6C
	muls r1, r6
	adds r0, r1
	ldrh r0, [r0, 0xE]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r2
	lsls r3, 4
	ldrb r2, [r1, 0x5]
	movs r0, 0xF
	ands r0, r2
	orrs r0, r3
	strb r0, [r1, 0x5]
_0819AD9C:
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819ACE0

	thumb_func_start sub_819ADAC
sub_819ADAC: @ 819ADAC
	push {r4,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	ldr r0, =gUnknown_0300127C
	ldr r0, [r0]
	movs r1, 0x6C
	muls r1, r4
	adds r0, r1
	ldrb r0, [r0, 0x10]
	cmp r0, 0
	beq _0819ADCC
	movs r0, 0x65
	b _0819ADCE
	.pool
_0819ADCC:
	movs r0, 0x64
_0819ADCE:
	bl IndexOfObjectPaletteTag
	lsls r0, 24
	lsrs r3, r0, 24
	ldr r2, =gUnknown_02020630
	ldr r0, =gUnknown_0300127C
	ldr r0, [r0]
	movs r1, 0x6C
	muls r1, r4
	adds r0, r1
	ldrh r0, [r0, 0xE]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r2
	lsls r3, 4
	ldrb r2, [r1, 0x5]
	movs r0, 0xF
	ands r0, r2
	orrs r0, r3
	strb r0, [r1, 0x5]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819ADAC

	thumb_func_start sub_819AE08
sub_819AE08: @ 819AE08
	push {r4-r6,lr}
	sub sp, 0x4
	lsls r0, 24
	lsrs r2, r0, 24
	ldr r1, =gTasks
	lsls r0, r2, 2
	adds r0, r2
	lsls r0, 3
	adds r6, r0, r1
	movs r1, 0x8
	ldrsh r0, [r6, r1]
	cmp r0, 0x7
	beq _0819AE64
	cmp r0, 0x7
	bgt _0819AE30
	cmp r0, 0x6
	beq _0819AE36
	b _0819AF50
	.pool
_0819AE30:
	cmp r0, 0x8
	beq _0819AEE8
	b _0819AF50
_0819AE36:
	ldr r1, =gPlttBufferUnfaded
	ldr r0, =gPlttBufferFaded
	movs r2, 0xE4
	lsls r2, 1
	adds r0, r2
	ldrh r0, [r0]
	adds r1, r2
	movs r2, 0
	strh r0, [r1]
	movs r0, 0x1
	negs r0, r0
	str r2, [sp]
	movs r1, 0
	movs r3, 0x10
	bl BeginNormalPaletteFade
	movs r0, 0x7
	strh r0, [r6, 0x8]
	b _0819AF50
	.pool
_0819AE64:
	ldr r0, =gPaletteFade
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, 0
	bne _0819AF50
	ldr r4, =gUnknown_0300127C
	ldr r0, [r4]
	ldr r2, =0x000002a1
	adds r0, r2
	ldrb r0, [r0]
	bl DestroyTask
	ldr r1, [r4]
	movs r3, 0xA6
	lsls r3, 2
	adds r0, r1, r3
	ldr r0, [r0]
	movs r2, 0xA8
	lsls r2, 2
	adds r1, r2
	bl sub_819F444
	bl sub_819AB40
	ldr r4, =gUnknown_0203CE2C
	ldr r0, [r4]
	bl Free
	str r5, [r4]
	ldr r4, =gUnknown_0203CE30
	ldr r0, [r4]
	bl Free
	str r5, [r4]
	ldr r4, =gUnknown_0203CE34
	ldr r0, [r4]
	bl Free
	str r5, [r4]
	ldr r4, =gUnknown_0203CE38
	ldr r0, [r4]
	bl Free
	str r5, [r4]
	bl FreeAllWindowBuffers
	movs r0, 0x8
	strh r0, [r6, 0x8]
	b _0819AF50
	.pool
_0819AEE8:
	ldr r4, =gUnknown_0300127C
	ldr r1, [r4]
	ldr r0, =gPlttBufferUnfaded
	movs r3, 0xE4
	lsls r3, 1
	adds r0, r3
	ldrh r0, [r0]
	adds r3, 0xDC
	adds r1, r3
	strh r0, [r1]
	adds r0, r2, 0
	bl DestroyTask
	ldr r1, [r4]
	movs r0, 0x1
	strb r0, [r1, 0x6]
	ldr r0, [r4]
	ldrb r6, [r0, 0x3]
	ldr r4, =gUnknown_0203CE3C
	movs r0, 0x96
	lsls r0, 2
	bl AllocZeroed
	str r0, [r4]
	movs r4, 0
_0819AF1A:
	ldr r5, =gUnknown_0203CE3C
	ldr r1, [r5]
	movs r0, 0x64
	muls r0, r4
	adds r0, r1
	ldr r1, =gUnknown_0300127C
	ldr r1, [r1]
	movs r2, 0x6C
	muls r2, r4
	adds r1, r2
	adds r1, 0x14
	movs r2, 0x64
	bl memcpy
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x5
	bls _0819AF1A
	ldr r1, [r5]
	ldr r0, =sub_819A514
	str r0, [sp]
	movs r0, 0x1
	adds r2, r6, 0
	movs r3, 0x5
	bl sub_81BF8EC
_0819AF50:
	add sp, 0x4
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819AE08

	thumb_func_start bc_exit_to_overworld
bc_exit_to_overworld: @ 819AF68
	push {r4-r7,lr}
	sub sp, 0x4
	lsls r0, 24
	lsrs r6, r0, 24
	ldr r7, =gUnknown_0300127C
	ldr r0, [r7]
	movs r1, 0xA8
	lsls r1, 2
	adds r0, r1
	ldrb r0, [r0]
	cmp r0, 0x1
	beq _0819B00E
	ldr r1, =gTasks
	lsls r0, r6, 2
	adds r0, r6
	lsls r0, 3
	adds r4, r0, r1
	movs r0, 0x8
	ldrsh r1, [r4, r0]
	cmp r1, 0
	beq _0819AFA0
	cmp r1, 0x1
	beq _0819AFB8
	b _0819B00E
	.pool
_0819AFA0:
	movs r0, 0x1
	negs r0, r0
	str r1, [sp]
	movs r1, 0
	movs r2, 0
	movs r3, 0x10
	bl BeginNormalPaletteFade
	ldrh r0, [r4, 0x8]
	adds r0, 0x1
	strh r0, [r4, 0x8]
	b _0819B00E
_0819AFB8:
	bl UpdatePaletteFade
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, 0
	bne _0819B00E
	bl sub_819B764
	ldr r0, [r7]
	ldr r1, =0x000002a1
	adds r0, r1
	ldrb r0, [r0]
	bl DestroyTask
	bl sub_819AB40
	ldr r4, =gUnknown_0203CE2C
	ldr r0, [r4]
	bl Free
	str r5, [r4]
	ldr r4, =gUnknown_0203CE34
	ldr r0, [r4]
	bl Free
	str r5, [r4]
	ldr r4, =gUnknown_0203CE38
	ldr r0, [r4]
	bl Free
	str r5, [r4]
	ldr r0, [r7]
	bl Free
	str r5, [r7]
	bl FreeAllWindowBuffers
	ldr r0, =sub_80861B0
	bl SetMainCallback2
	adds r0, r6, 0
	bl DestroyTask
_0819B00E:
	add sp, 0x4
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end bc_exit_to_overworld

	thumb_func_start sub_819B02C
sub_819B02C: @ 819B02C
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	lsls r0, 24
	lsrs r2, r0, 24
	ldr r7, =gUnknown_0300127C
	ldr r0, [r7]
	movs r1, 0xA8
	lsls r1, 2
	adds r0, r1
	ldrb r0, [r0]
	cmp r0, 0x1
	beq _0819B11A
	ldr r1, =gTasks
	lsls r0, r2, 2
	adds r0, r2
	lsls r0, 3
	adds r5, r0, r1
	movs r1, 0x8
	ldrsh r0, [r5, r1]
	cmp r0, 0x5
	beq _0819B084
	cmp r0, 0x5
	bgt _0819B06C
	cmp r0, 0x4
	beq _0819B07A
	b _0819B11A
	.pool
_0819B06C:
	cmp r0, 0xA
	bne _0819B11A
	bl sub_819C4B4
	movs r0, 0x4
	strh r0, [r5, 0x8]
	b _0819B11A
_0819B07A:
	bl sub_819B8D4
	movs r0, 0x5
	strh r0, [r5, 0x8]
	b _0819B11A
_0819B084:
	ldr r2, =gMain
	ldrh r1, [r2, 0x2E]
	movs r0, 0x1
	mov r8, r0
	movs r6, 0x1
	adds r0, r6, 0
	ands r0, r1
	cmp r0, 0
	beq _0819B0B8
	movs r0, 0x5
	bl audio_play
	ldr r0, [r7]
	ldrb r4, [r0, 0x7]
	cmp r4, 0
	bne _0819B0C6
	bl sub_819C568
	strh r4, [r5, 0x8]
	ldr r0, =bc_exit_to_overworld
	str r0, [r5]
	b _0819B11A
	.pool
_0819B0B8:
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _0819B0EC
	movs r0, 0x5
	bl audio_play
_0819B0C6:
	movs r0, 0x4
	bl sub_819B958
	bl sub_819BC9C
	ldr r0, [r7]
	ldr r1, =0x000002a2
	adds r0, r1
	mov r1, r8
	strb r1, [r0]
	strh r6, [r5, 0x8]
	ldr r0, =sub_819B378
	str r0, [r5]
	b _0819B11A
	.pool
_0819B0EC:
	ldrh r1, [r2, 0x30]
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	beq _0819B106
	movs r0, 0x5
	bl audio_play
	movs r0, 0x1
	negs r0, r0
	bl sub_819AC78
	b _0819B11A
_0819B106:
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _0819B11A
	movs r0, 0x5
	bl audio_play
	movs r0, 0x1
	bl sub_819AC78
_0819B11A:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_819B02C

	thumb_func_start sub_819B124
sub_819B124: @ 819B124
	push {r4-r7,lr}
	lsls r0, 24
	lsrs r5, r0, 24
	ldr r1, =gTasks
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	adds r0, r1
	ldrh r0, [r0, 0x8]
	subs r0, 0x2
	lsls r0, 16
	asrs r0, 16
	adds r6, r1, 0
	cmp r0, 0xB
	bls _0819B144
	b _0819B36E
_0819B144:
	lsls r0, 2
	ldr r1, =_0819B158
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_0819B158:
	.4byte _0819B188
	.4byte _0819B1EC
	.4byte _0819B36E
	.4byte _0819B36E
	.4byte _0819B36E
	.4byte _0819B36E
	.4byte _0819B36E
	.4byte _0819B1BC
	.4byte _0819B36E
	.4byte _0819B36E
	.4byte _0819B300
	.4byte _0819B35C
_0819B188:
	ldr r0, =gUnknown_0300127C
	ldr r1, [r0]
	ldrb r0, [r1, 0x6]
	cmp r0, 0
	bne _0819B1A2
	ldr r2, =0x00000299
	adds r0, r1, r2
	movs r7, 0xA8
	lsls r7, 2
	adds r1, r7
	movs r2, 0
	bl sub_819F2B4
_0819B1A2:
	ldr r0, =gTasks
	lsls r1, r5, 2
	adds r1, r5
	lsls r1, 3
	adds r1, r0
	movs r0, 0x9
	b _0819B36C
	.pool
_0819B1BC:
	ldr r4, =gUnknown_0300127C
	ldr r0, [r4]
	movs r1, 0xA8
	lsls r1, 2
	adds r0, r1
	ldrb r0, [r0]
	cmp r0, 0x1
	bne _0819B1CE
	b _0819B36E
_0819B1CE:
	bl sub_819B844
	ldr r1, [r4]
	movs r0, 0
	strb r0, [r1, 0x6]
	ldr r1, =gTasks
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	adds r0, r1
	b _0819B344
	.pool
_0819B1EC:
	ldr r2, =gMain
	ldrh r1, [r2, 0x2E]
	movs r7, 0x1
	movs r6, 0x1
	adds r0, r6, 0
	ands r0, r1
	cmp r0, 0
	beq _0819B27C
	movs r0, 0x5
	bl audio_play
	bl sub_819BC04
	lsls r0, 24
	lsrs r0, 24
	adds r1, r0, 0
	cmp r0, 0x1
	bne _0819B228
	ldr r0, =gUnknown_0300127C
	ldr r0, [r0]
	ldr r2, =0x000002a2
	adds r0, r2
	b _0819B2AC
	.pool
_0819B228:
	cmp r0, 0x2
	bne _0819B248
	ldr r1, =gTasks
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	adds r0, r1
	movs r1, 0xA
	strh r1, [r0, 0x8]
	ldr r1, =sub_819B02C
	str r1, [r0]
	b _0819B36E
	.pool
_0819B248:
	cmp r1, 0x3
	bne _0819B260
	ldr r1, =gTasks
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	adds r0, r1
	movs r1, 0xB
	strh r1, [r0, 0x8]
	b _0819B2BA
	.pool
_0819B260:
	ldr r1, =gTasks
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	adds r0, r1
	movs r1, 0x6
	strh r1, [r0, 0x8]
	ldr r1, =sub_819AE08
	str r1, [r0]
	b _0819B36E
	.pool
_0819B27C:
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _0819B2D0
	movs r0, 0x5
	bl audio_play
	ldr r4, =gUnknown_0300127C
	ldr r1, [r4]
	movs r2, 0xA6
	lsls r2, 2
	adds r0, r1, r2
	ldr r0, [r0]
	adds r2, 0x8
	adds r1, r2
	movs r2, 0
	bl sub_819F3F8
	movs r0, 0x3
	bl sub_819B958
	ldr r0, [r4]
	ldr r1, =0x000002a2
	adds r0, r1
_0819B2AC:
	strb r7, [r0]
	ldr r1, =gTasks
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	adds r0, r1
	strh r6, [r0, 0x8]
_0819B2BA:
	ldr r1, =sub_819B378
	str r1, [r0]
	b _0819B36E
	.pool
_0819B2D0:
	ldrh r1, [r2, 0x30]
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	beq _0819B2EA
	movs r0, 0x5
	bl audio_play
	movs r0, 0x1
	negs r0, r0
	bl sub_819AC10
	b _0819B36E
_0819B2EA:
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _0819B36E
	movs r0, 0x5
	bl audio_play
	movs r0, 0x1
	bl sub_819AC10
	b _0819B36E
_0819B300:
	ldr r0, =gPaletteFade
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	lsls r0, 24
	lsrs r3, r0, 24
	cmp r3, 0
	bne _0819B36E
	ldr r4, =gUnknown_0300127C
	ldr r2, [r4]
	ldrb r0, [r2, 0x6]
	cmp r0, 0x1
	bne _0819B338
	ldr r1, =gPlttBufferFaded
	movs r7, 0xA9
	lsls r7, 2
	adds r0, r2, r7
	ldrh r0, [r0]
	movs r2, 0xE4
	lsls r2, 1
	adds r1, r2
	strh r0, [r1]
	ldr r0, =gPlttBufferUnfaded
	subs r7, 0xBC
	adds r1, r0, r7
	ldrh r1, [r1]
	adds r0, r2
	strh r1, [r0]
_0819B338:
	ldr r0, [r4]
	strb r3, [r0, 0x6]
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	adds r0, r6
_0819B344:
	movs r1, 0x3
	strh r1, [r0, 0x8]
	b _0819B36E
	.pool
_0819B35C:
	bl sub_819B844
	ldr r0, =gTasks
	lsls r1, r5, 2
	adds r1, r5
	lsls r1, 3
	adds r1, r0
	movs r0, 0xC
_0819B36C:
	strh r0, [r1, 0x8]
_0819B36E:
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819B124

	thumb_func_start sub_819B378
sub_819B378: @ 819B378
	push {r4-r7,lr}
	lsls r0, 24
	lsrs r2, r0, 24
	ldr r5, =gUnknown_0300127C
	ldr r3, [r5]
	movs r7, 0xA8
	lsls r7, 2
	adds r0, r3, r7
	ldrb r0, [r0]
	cmp r0, 0x1
	beq _0819B476
	ldr r1, =gTasks
	lsls r0, r2, 2
	adds r0, r2
	lsls r0, 3
	adds r4, r0, r1
	movs r0, 0x8
	ldrsh r1, [r4, r0]
	cmp r1, 0x1
	beq _0819B3DC
	cmp r1, 0x1
	bgt _0819B3B4
	cmp r1, 0
	beq _0819B3BA
	b _0819B476
	.pool
_0819B3B4:
	cmp r1, 0xB
	beq _0819B440
	b _0819B476
_0819B3BA:
	ldr r0, =gPaletteFade
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	bne _0819B476
	movs r0, 0x1
	movs r1, 0x1
	strh r1, [r4, 0x8]
	ldr r2, =0x000002a2
	adds r1, r3, r2
	strb r0, [r1]
	b _0819B476
	.pool
_0819B3DC:
	ldr r2, =gMain
	ldrh r0, [r2, 0x2E]
	ands r1, r0
	cmp r1, 0
	beq _0819B40C
	movs r0, 0x5
	bl audio_play
	ldr r0, [r5]
	ldr r1, =0x000002a2
	adds r0, r1
	movs r1, 0
	strb r1, [r0]
	movs r0, 0x2
	strh r0, [r4, 0x8]
	ldr r0, =sub_819B124
	str r0, [r4]
	b _0819B476
	.pool
_0819B40C:
	ldrh r1, [r2, 0x30]
	movs r0, 0x20
	ands r0, r1
	cmp r0, 0
	beq _0819B422
	movs r0, 0x5
	bl audio_play
	movs r0, 0x1
	negs r0, r0
	b _0819B432
_0819B422:
	movs r0, 0x10
	ands r0, r1
	cmp r0, 0
	beq _0819B476
	movs r0, 0x5
	bl audio_play
	movs r0, 0x1
_0819B432:
	bl sub_819ABA8
	bl sub_819BCF8
	bl sub_819B9E8
	b _0819B476
_0819B440:
	ldr r0, =gMain
	ldrh r1, [r0, 0x2E]
	movs r6, 0x1
	adds r0, r6, 0
	ands r0, r1
	cmp r0, 0
	beq _0819B476
	movs r0, 0x5
	bl audio_play
	ldr r1, [r5]
	movs r2, 0xA6
	lsls r2, 2
	adds r0, r1, r2
	ldr r0, [r0]
	adds r1, r7
	movs r2, 0
	bl sub_819F3F8
	bl sub_819BA64
	ldr r0, [r5]
	ldr r1, =0x000002a2
	adds r0, r1
	movs r1, 0x1
	strb r1, [r0]
	strh r6, [r4, 0x8]
_0819B476:
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819B378

	thumb_func_start sub_819B484
sub_819B484: @ 819B484
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x24
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp, 0x10]
	movs r6, 0
	add r0, sp, 0xC
	strb r6, [r0]
	ldr r0, =0x000040ce
	bl VarGet
	lsls r0, 24
	lsrs r0, 24
	adds r6, r0, 0
	ldr r7, =gSaveBlock2Ptr
	ldr r2, [r7]
	ldr r0, =0x00000ca9
	adds r4, r2, r0
	ldrb r0, [r4]
	lsls r0, 30
	lsrs r0, 30
	adds r5, r0, 0
	lsls r0, r5, 1
	lsls r1, r6, 2
	adds r0, r1
	ldr r1, =0x00000de2
	adds r2, r1
	adds r2, r0
	ldrh r0, [r2]
	movs r1, 0x7
	bl __udivsi3
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp, 0x18]
	ldr r1, =gUnknown_0203BC8C
	ldr r0, =gBattleFrontierMons
	str r0, [r1]
	ldrb r1, [r4]
	movs r0, 0x3
	ands r0, r1
	movs r2, 0x32
	str r2, [sp, 0x14]
	cmp r0, 0
	beq _0819B4EA
	movs r3, 0x64
	str r3, [sp, 0x14]
_0819B4EA:
	adds r0, r6, 0
	adds r1, r5, 0
	bl sub_81A6F70
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp, 0x1C]
	ldr r1, [r7]
	ldrb r0, [r1, 0xA]
	mov r9, r0
	ldrb r0, [r1, 0xB]
	lsls r0, 8
	mov r2, r9
	orrs r2, r0
	ldrb r0, [r1, 0xC]
	lsls r0, 16
	orrs r2, r0
	ldrb r0, [r1, 0xD]
	lsls r0, 24
	orrs r2, r0
	mov r9, r2
	movs r3, 0
	mov r8, r3
_0819B518:
	ldr r0, =gSaveBlock2Ptr
	ldr r1, [r0]
	mov r2, r8
	lsls r0, r2, 1
	add r0, r8
	lsls r0, 2
	adds r1, r0
	movs r3, 0xE7
	lsls r3, 4
	adds r1, r3
	ldrh r5, [r1]
	ldr r0, =gUnknown_0300127C
	ldr r1, [r0]
	ldr r2, [sp, 0x10]
	add r2, r8
	movs r3, 0x6C
	adds r0, r2, 0
	muls r0, r3
	adds r1, r0
	strh r5, [r1, 0xC]
	mov r10, r2
	ldr r0, [sp, 0x1C]
	cmp r8, r0
	bcs _0819B570
	ldr r0, [sp, 0x18]
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	b _0819B572
	.pool
_0819B570:
	ldr r0, [sp, 0x18]
_0819B572:
	movs r1, 0
	bl sub_81A6CA8
	lsls r0, 24
	lsrs r6, r0, 24
	movs r1, 0x6C
	mov r4, r10
	muls r4, r1
	adds r4, 0xC
	ldr r2, =gUnknown_0300127C
	ldr r0, [r2]
	adds r0, r4
	adds r0, 0x8
	ldr r1, =gUnknown_0203BC8C
	ldr r2, [r1]
	lsls r5, 4
	adds r2, r5, r2
	ldrh r1, [r2]
	ldrb r3, [r2, 0xC]
	str r6, [sp]
	ldrb r2, [r2, 0xB]
	str r2, [sp, 0x4]
	mov r2, r9
	str r2, [sp, 0x8]
	ldr r2, [sp, 0x14]
	bl sub_8068634
	movs r1, 0
	add r0, sp, 0xC
	strb r1, [r0]
	movs r6, 0
	adds r7, r5, 0
	movs r3, 0x1
	add r8, r3
	ldr r3, =gUnknown_0300127C
_0819B5B8:
	ldr r0, [r3]
	adds r0, r4
	adds r0, 0x8
	ldr r5, =gUnknown_0203BC8C
	ldr r1, [r5]
	adds r1, r7, r1
	lsls r2, r6, 1
	adds r1, 0x2
	adds r1, r2
	ldrh r1, [r1]
	adds r2, r6, 0
	str r3, [sp, 0x20]
	bl sub_81A7024
	adds r0, r6, 0x1
	lsls r0, 24
	lsrs r6, r0, 24
	ldr r3, [sp, 0x20]
	cmp r6, 0x3
	bls _0819B5B8
	movs r0, 0x6C
	mov r4, r10
	muls r4, r0
	adds r4, 0xC
	ldr r1, =gUnknown_0300127C
	ldr r0, [r1]
	adds r0, r4
	adds r0, 0x8
	movs r1, 0x20
	add r2, sp, 0xC
	bl pokemon_setattr
	ldr r2, =gUnknown_0300127C
	ldr r0, [r2]
	adds r0, r4
	adds r0, 0x8
	ldr r1, [r5]
	adds r1, r7, r1
	ldrb r2, [r1, 0xA]
	lsls r2, 1
	ldr r1, =gBattleFrontierHeldItems
	adds r2, r1
	movs r1, 0xC
	bl pokemon_setattr
	mov r3, r8
	lsls r0, r3, 24
	lsrs r0, 24
	mov r8, r0
	cmp r0, 0x5
	bhi _0819B620
	b _0819B518
_0819B620:
	add sp, 0x24
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819B484

	thumb_func_start sub_819B63C
sub_819B63C: @ 819B63C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x14
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp, 0x10]
	add r0, sp, 0xC
	movs r1, 0
	strb r1, [r0]
	ldr r2, =gUnknown_0203BC8C
	ldr r0, =gSlateportBattleTentMons
	str r0, [r2]
	ldr r0, =gSaveBlock2Ptr
	ldr r1, [r0]
	ldrb r3, [r1, 0xA]
	ldrb r0, [r1, 0xB]
	lsls r0, 8
	orrs r3, r0
	ldrb r0, [r1, 0xC]
	lsls r0, 16
	orrs r3, r0
	ldrb r0, [r1, 0xD]
	lsls r0, 24
	orrs r3, r0
	mov r10, r3
	movs r7, 0
	mov r9, r7
_0819B678:
	ldr r0, =gSaveBlock2Ptr
	ldr r1, [r0]
	mov r2, r9
	lsls r0, r2, 1
	add r0, r9
	lsls r0, 2
	adds r1, r0
	movs r3, 0xE7
	lsls r3, 4
	adds r1, r3
	ldrh r1, [r1]
	mov r8, r1
	ldr r7, =gUnknown_0300127C
	ldr r0, [r7]
	ldr r6, [sp, 0x10]
	add r6, r9
	movs r1, 0x6C
	adds r4, r6, 0
	muls r4, r1
	adds r1, r0, r4
	mov r2, r8
	strh r2, [r1, 0xC]
	adds r4, 0xC
	adds r0, r4
	adds r0, 0x8
	ldr r3, =gUnknown_0203BC8C
	ldr r2, [r3]
	mov r7, r8
	lsls r5, r7, 4
	adds r2, r5, r2
	ldrh r1, [r2]
	ldrb r3, [r2, 0xC]
	movs r7, 0
	str r7, [sp]
	ldrb r2, [r2, 0xB]
	str r2, [sp, 0x4]
	mov r2, r10
	str r2, [sp, 0x8]
	movs r2, 0x1E
	bl sub_8068634
	add r0, sp, 0xC
	movs r3, 0
	strb r3, [r0]
	movs r0, 0x1
	add r9, r0
_0819B6D4:
	ldr r1, =gUnknown_0300127C
	ldr r0, [r1]
	adds r0, r4
	adds r0, 0x8
	ldr r3, =gUnknown_0203BC8C
	ldr r2, [r3]
	mov r3, r8
	lsls r1, r3, 4
	adds r1, r2
	lsls r2, r7, 1
	adds r1, 0x2
	adds r1, r2
	ldrh r1, [r1]
	adds r2, r7, 0
	bl sub_81A7024
	adds r0, r7, 0x1
	lsls r0, 24
	lsrs r7, r0, 24
	cmp r7, 0x3
	bls _0819B6D4
	movs r7, 0x6C
	adds r4, r6, 0
	muls r4, r7
	adds r4, 0xC
	ldr r1, =gUnknown_0300127C
	ldr r0, [r1]
	adds r0, r4
	adds r0, 0x8
	movs r1, 0x20
	add r2, sp, 0xC
	bl pokemon_setattr
	ldr r2, =gUnknown_0300127C
	ldr r0, [r2]
	adds r0, r4
	adds r0, 0x8
	ldr r3, =gUnknown_0203BC8C
	ldr r1, [r3]
	adds r1, r5, r1
	ldrb r2, [r1, 0xA]
	lsls r2, 1
	ldr r1, =gBattleFrontierHeldItems
	adds r2, r1
	movs r1, 0xC
	bl pokemon_setattr
	mov r7, r9
	lsls r0, r7, 24
	lsrs r0, 24
	mov r9, r0
	cmp r0, 0x5
	bls _0819B678
	add sp, 0x14
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819B63C

	thumb_func_start sub_819B764
sub_819B764: @ 819B764
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	movs r7, 0
	ldr r0, =gUnknown_0300127C
	mov r10, r0
	ldr r1, =gSaveBlock2Ptr
	mov r8, r1
_0819B778:
	movs r2, 0
	adds r0, r7, 0x1
	mov r9, r0
_0819B77E:
	mov r1, r10
	ldr r0, [r1]
	movs r1, 0x6C
	adds r6, r2, 0
	muls r6, r1
	adds r1, r0, r6
	ldrb r0, [r1, 0x10]
	cmp r0, r9
	bne _0819B81C
	movs r0, 0x64
	adds r5, r7, 0
	muls r5, r0
	ldr r2, =gPlayerParty
	adds r5, r2
	adds r1, 0x14
	adds r0, r5, 0
	movs r2, 0x64
	bl memcpy
	mov r0, r8
	ldr r1, [r0]
	lsls r4, r7, 1
	adds r4, r7
	lsls r4, 2
	adds r1, r4
	mov r2, r10
	ldr r0, [r2]
	adds r0, r6
	ldrh r0, [r0, 0xC]
	movs r2, 0xE7
	lsls r2, 4
	adds r1, r2
	strh r0, [r1]
	adds r0, r5, 0
	movs r1, 0
	movs r2, 0
	bl GetMonData
	mov r2, r8
	ldr r1, [r2]
	ldr r2, =0x00000e74
	adds r1, r2
	adds r1, r4
	str r0, [r1]
	adds r0, r5, 0
	movs r1, 0x2E
	movs r2, 0
	bl pokemon_getattr_encrypted
	mov r2, r8
	ldr r1, [r2]
	adds r1, r4
	ldr r2, =0x00000e79
	adds r1, r2
	strb r0, [r1]
	adds r0, r5, 0
	movs r1, 0x28
	movs r2, 0
	bl pokemon_getattr_encrypted
	mov r2, r8
	ldr r1, [r2]
	adds r1, r4
	ldr r2, =0x00000e78
	adds r1, r2
	strb r0, [r1]
	b _0819B826
	.pool
_0819B81C:
	adds r0, r2, 0x1
	lsls r0, 24
	lsrs r2, r0, 24
	cmp r2, 0x5
	bls _0819B77E
_0819B826:
	mov r1, r9
	lsls r0, r1, 24
	lsrs r7, r0, 24
	cmp r7, 0x2
	bls _0819B778
	bl calc_player_party_count
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_819B764

	thumb_func_start sub_819B844
sub_819B844: @ 819B844
	push {r4,r5,lr}
	ldr r5, =gUnknown_0300127C
	ldr r1, [r5]
	ldrb r0, [r1, 0x6]
	cmp r0, 0
	bne _0819B852
	strb r0, [r1]
_0819B852:
	ldr r4, =gUnknown_02020630
	ldr r2, [r5]
	ldrb r1, [r2, 0x1]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	movs r1, 0xB0
	strh r1, [r0, 0x20]
	ldrb r0, [r2, 0x1]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r4
	ldrb r0, [r2]
	lsls r0, 4
	adds r0, 0x70
	strh r0, [r1, 0x22]
	ldrb r1, [r2, 0x2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	movs r1, 0xD0
	strh r1, [r0, 0x20]
	ldrb r0, [r2, 0x2]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r4
	ldrb r0, [r2]
	lsls r0, 4
	adds r0, 0x70
	strh r0, [r1, 0x22]
	ldrb r0, [r2, 0x1]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r4
	adds r1, 0x3E
	ldrb r3, [r1]
	movs r2, 0x5
	negs r2, r2
	adds r0, r2, 0
	ands r0, r3
	strb r0, [r1]
	ldr r0, [r5]
	ldrb r1, [r0, 0x2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	adds r0, 0x3E
	ldrb r1, [r0]
	ands r2, r1
	strb r2, [r0]
	bl sub_819BAFC
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819B844

	thumb_func_start sub_819B8D4
sub_819B8D4: @ 819B8D4
	push {r4,r5,lr}
	ldr r5, =gUnknown_0300127C
	ldr r1, [r5]
	movs r0, 0
	strb r0, [r1, 0x7]
	ldr r4, =gUnknown_02020630
	ldr r2, [r5]
	ldrb r1, [r2, 0x1]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	movs r1, 0xB0
	strh r1, [r0, 0x20]
	ldrb r1, [r2, 0x1]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	movs r3, 0x70
	strh r3, [r0, 0x22]
	ldrb r1, [r2, 0x2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	movs r1, 0xD0
	strh r1, [r0, 0x20]
	ldrb r1, [r2, 0x2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	strh r3, [r0, 0x22]
	ldrb r0, [r2, 0x1]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r4
	adds r1, 0x3E
	ldrb r3, [r1]
	movs r2, 0x5
	negs r2, r2
	adds r0, r2, 0
	ands r0, r3
	strb r0, [r1]
	ldr r0, [r5]
	ldrb r1, [r0, 0x2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	adds r0, 0x3E
	ldrb r1, [r0]
	ands r2, r1
	strb r2, [r0]
	bl sub_819BBA8
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819B8D4

	thumb_func_start sub_819B958
sub_819B958: @ 819B958
	push {r4,r5,lr}
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	ldr r5, =gUnknown_02020630
	ldr r3, =gUnknown_0300127C
	ldr r0, [r3]
	ldrb r1, [r0, 0x1]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	adds r0, 0x3E
	ldrb r1, [r0]
	movs r2, 0x4
	orrs r1, r2
	strb r1, [r0]
	ldr r0, [r3]
	ldrb r1, [r0, 0x2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	adds r0, 0x3E
	ldrb r1, [r0]
	orrs r1, r2
	strb r1, [r0]
	adds r0, r4, 0
	movs r1, 0
	bl FillWindowPixelBuffer
	adds r0, r4, 0
	movs r1, 0x2
	bl CopyWindowToVram
	adds r0, r4, 0
	bl ClearWindowTilemap
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819B958

	thumb_func_start sub_819B9B4
sub_819B9B4: @ 819B9B4
	push {lr}
	sub sp, 0xC
	movs r0, 0
	movs r1, 0
	bl FillWindowPixelBuffer
	ldr r2, =gUnknown_085EEBB2
	movs r0, 0x1
	str r0, [sp]
	movs r0, 0
	str r0, [sp, 0x4]
	str r0, [sp, 0x8]
	movs r1, 0x1
	movs r3, 0x2
	bl Print
	movs r0, 0
	movs r1, 0x3
	bl CopyWindowToVram
	add sp, 0xC
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819B9B4

	thumb_func_start sub_819B9E8
sub_819B9E8: @ 819B9E8
	push {r4,r5,lr}
	sub sp, 0xC
	ldr r5, =gUnknown_0300127C
	ldr r0, [r5]
	ldrb r4, [r0, 0x3]
	movs r0, 0x1
	movs r1, 0
	bl FillWindowPixelBuffer
	movs r0, 0x6C
	muls r0, r4
	ldr r1, [r5]
	adds r0, r1
	adds r0, 0x14
	movs r1, 0xB
	movs r2, 0
	bl GetMonData
	lsls r0, 16
	lsrs r0, 16
	ldr r4, =gStringVar4
	movs r1, 0xB
	muls r1, r0
	ldr r0, =gSpeciesNames
	adds r1, r0
	adds r0, r4, 0
	bl StringCopy
	movs r0, 0x1
	adds r1, r4, 0
	movs r2, 0x56
	bl GetStringRightAlignXOffset
	adds r2, r0, 0
	lsls r2, 24
	lsrs r2, 24
	ldr r0, =gUnknown_08610479
	str r0, [sp]
	movs r0, 0
	str r0, [sp, 0x4]
	str r4, [sp, 0x8]
	movs r0, 0x1
	movs r1, 0x1
	movs r3, 0x1
	bl box_print
	movs r0, 0x1
	movs r1, 0x2
	bl CopyWindowToVram
	add sp, 0xC
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819B9E8

	thumb_func_start sub_819BA64
sub_819BA64: @ 819BA64
	push {lr}
	sub sp, 0xC
	movs r0, 0x2
	movs r1, 0
	bl FillWindowPixelBuffer
	ldr r0, =gUnknown_0300127C
	ldr r0, [r0]
	ldrb r0, [r0, 0x5]
	cmp r0, 0x1
	bne _0819BA88
	ldr r2, =gUnknown_085EEBC1
	b _0819BA9C
	.pool
_0819BA88:
	cmp r0, 0x2
	bne _0819BA94
	ldr r2, =gUnknown_085EEBDB
	b _0819BA9C
	.pool
_0819BA94:
	ldr r2, =gUnknown_085EEC2D
	cmp r0, 0x3
	bne _0819BA9C
	ldr r2, =gUnknown_085EEBF6
_0819BA9C:
	movs r0, 0x5
	str r0, [sp]
	movs r0, 0
	str r0, [sp, 0x4]
	str r0, [sp, 0x8]
	movs r0, 0x2
	movs r1, 0x1
	movs r3, 0x2
	bl Print
	movs r0, 0x2
	movs r1, 0x2
	bl CopyWindowToVram
	add sp, 0xC
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819BA64

	thumb_func_start sub_819BAC8
sub_819BAC8: @ 819BAC8
	push {lr}
	sub sp, 0xC
	movs r0, 0x2
	movs r1, 0
	bl FillWindowPixelBuffer
	ldr r2, =gUnknown_085EEC50
	movs r0, 0x5
	str r0, [sp]
	movs r0, 0
	str r0, [sp, 0x4]
	str r0, [sp, 0x8]
	movs r0, 0x2
	movs r1, 0x1
	movs r3, 0x2
	bl Print
	movs r0, 0x2
	movs r1, 0x2
	bl CopyWindowToVram
	add sp, 0xC
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819BAC8

	thumb_func_start sub_819BAFC
sub_819BAFC: @ 819BAFC
	push {r4-r6,lr}
	sub sp, 0xC
	ldr r0, =gUnknown_0300127C
	ldr r0, [r0]
	ldrb r2, [r0, 0x3]
	movs r1, 0x6C
	muls r1, r2
	adds r0, r1
	ldrb r5, [r0, 0x10]
	movs r0, 0x3
	bl PutWindowTilemap
	movs r0, 0x3
	movs r1, 0
	bl FillWindowPixelBuffer
	ldr r4, =gUnknown_08610476
	str r4, [sp]
	movs r6, 0
	str r6, [sp, 0x4]
	ldr r0, =gUnknown_085EEC15
	str r0, [sp, 0x8]
	movs r0, 0x3
	movs r1, 0x1
	movs r2, 0x7
	movs r3, 0x1
	bl box_print
	cmp r5, 0
	beq _0819BB60
	str r4, [sp]
	str r6, [sp, 0x4]
	ldr r0, =gUnknown_085EEC24
	str r0, [sp, 0x8]
	movs r0, 0x3
	movs r1, 0x1
	movs r2, 0x7
	movs r3, 0x11
	bl box_print
	b _0819BB74
	.pool
_0819BB60:
	str r4, [sp]
	str r5, [sp, 0x4]
	ldr r0, =gUnknown_085EEC10
	str r0, [sp, 0x8]
	movs r0, 0x3
	movs r1, 0x1
	movs r2, 0x7
	movs r3, 0x11
	bl box_print
_0819BB74:
	ldr r0, =gUnknown_08610476
	str r0, [sp]
	movs r0, 0
	str r0, [sp, 0x4]
	ldr r0, =gUnknown_085EEC1D
	str r0, [sp, 0x8]
	movs r0, 0x3
	movs r1, 0x1
	movs r2, 0x7
	movs r3, 0x21
	bl box_print
	movs r0, 0x3
	movs r1, 0x3
	bl CopyWindowToVram
	add sp, 0xC
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819BAFC

	thumb_func_start sub_819BBA8
sub_819BBA8: @ 819BBA8
	push {r4,r5,lr}
	sub sp, 0xC
	movs r0, 0x4
	bl PutWindowTilemap
	movs r0, 0x4
	movs r1, 0
	bl FillWindowPixelBuffer
	ldr r5, =gUnknown_08610476
	str r5, [sp]
	movs r4, 0
	str r4, [sp, 0x4]
	ldr r0, =gUnknown_085EEC49
	str r0, [sp, 0x8]
	movs r0, 0x4
	movs r1, 0x1
	movs r2, 0x7
	movs r3, 0x1
	bl box_print
	str r5, [sp]
	str r4, [sp, 0x4]
	ldr r0, =gUnknown_085EEC4D
	str r0, [sp, 0x8]
	movs r0, 0x4
	movs r1, 0x1
	movs r2, 0x7
	movs r3, 0x11
	bl box_print
	movs r0, 0x4
	movs r1, 0x3
	bl CopyWindowToVram
	add sp, 0xC
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819BBA8

	thumb_func_start sub_819BC04
sub_819BC04: @ 819BC04
	push {lr}
	ldr r2, =gUnknown_030062E8
	ldr r1, =gUnknown_0861041C
	ldr r0, =gUnknown_0300127C
	ldr r0, [r0]
	ldrb r0, [r0]
	lsls r0, 2
	adds r0, r1
	ldr r0, [r0]
	str r0, [r2]
	bl _call_via_r0
	lsls r0, 24
	lsrs r0, 24
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_819BC04

	thumb_func_start sub_819BC30
sub_819BC30: @ 819BC30
	push {r4,lr}
	ldr r0, =gUnknown_0300127C
	ldr r0, [r0]
	ldrb r2, [r0, 0x3]
	movs r1, 0x6C
	muls r1, r2
	adds r0, r1
	ldrb r1, [r0, 0x10]
	ldrh r0, [r0, 0xC]
	cmp r1, 0
	bne _0819BC60
	bl sub_819C634
	cmp r0, 0
	bne _0819BC60
	bl sub_819BAC8
	movs r0, 0x3
	bl sub_819B958
	movs r0, 0x3
	b _0819BC96
	.pool
_0819BC60:
	ldr r4, =gUnknown_0300127C
	ldr r1, [r4]
	movs r2, 0xA6
	lsls r2, 2
	adds r0, r1, r2
	ldr r0, [r0]
	adds r2, 0x8
	adds r1, r2
	movs r2, 0
	bl sub_819F3F8
	bl sub_819ACE0
	bl sub_819BA64
	movs r0, 0x3
	bl sub_819B958
	ldr r0, [r4]
	ldrb r0, [r0, 0x5]
	cmp r0, 0x3
	bhi _0819BC94
	movs r0, 0x1
	b _0819BC96
	.pool
_0819BC94:
	movs r0, 0x2
_0819BC96:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_819BC30

	thumb_func_start sub_819BC9C
sub_819BC9C: @ 819BC9C
	push {lr}
	bl sub_819C568
	bl sub_819ACE0
	bl sub_819BA64
	movs r0, 0x3
	bl sub_819B958
	ldr r0, =gUnknown_0300127C
	ldr r0, [r0]
	ldrb r0, [r0, 0x5]
	cmp r0, 0x3
	bhi _0819BCC4
	movs r0, 0x1
	b _0819BCC6
	.pool
_0819BCC4:
	movs r0, 0x2
_0819BCC6:
	pop {r1}
	bx r1
	thumb_func_end sub_819BC9C

	thumb_func_start sub_819BCCC
sub_819BCCC: @ 819BCCC
	movs r0, 0
	bx lr
	thumb_func_end sub_819BCCC

	thumb_func_start sub_819BCD0
sub_819BCD0: @ 819BCD0
	push {lr}
	ldr r0, =gUnknown_0300127C
	ldr r1, [r0]
	movs r2, 0xA6
	lsls r2, 2
	adds r0, r1, r2
	ldr r0, [r0]
	adds r2, 0x8
	adds r1, r2
	movs r2, 0
	bl sub_819F3F8
	movs r0, 0x3
	bl sub_819B958
	movs r0, 0x1
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_819BCD0

	thumb_func_start sub_819BCF8
sub_819BCF8: @ 819BCF8
	push {r4,r5,lr}
	sub sp, 0x2C
	ldr r5, =gUnknown_0300127C
	ldr r0, [r5]
	ldrb r4, [r0, 0x3]
	cmp r4, 0x5
	bhi _0819BD64
	movs r0, 0x5
	bl PutWindowTilemap
	movs r0, 0x5
	movs r1, 0
	bl FillWindowPixelBuffer
	movs r0, 0x6C
	muls r0, r4
	ldr r1, [r5]
	adds r0, r1
	adds r0, 0x14
	movs r1, 0xB
	movs r2, 0
	bl GetMonData
	lsls r0, 16
	lsrs r0, 16
	bl SpeciesToNationalPokedexNum
	lsls r0, 16
	lsrs r0, 16
	add r1, sp, 0xC
	bl sub_81DB468
	movs r0, 0x1
	add r1, sp, 0xC
	movs r2, 0x76
	bl GetStringRightAlignXOffset
	adds r3, r0, 0
	lsls r3, 24
	lsrs r3, 24
	movs r0, 0x1
	str r0, [sp]
	movs r0, 0
	str r0, [sp, 0x4]
	str r0, [sp, 0x8]
	movs r0, 0x5
	movs r1, 0x1
	add r2, sp, 0xC
	bl Print
	movs r0, 0x5
	movs r1, 0x2
	bl CopyWindowToVram
_0819BD64:
	add sp, 0x2C
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819BCF8

	thumb_func_start sub_819BD70
sub_819BD70: @ 819BD70
	push {r4-r6,lr}
	mov r6, r8
	push {r6}
	sub sp, 0x10
	ldr r6, =gUnknown_0300127C
	ldr r2, [r6]
	ldrb r1, [r2, 0x3]
	movs r0, 0x6C
	adds r4, r1, 0
	muls r4, r0
	adds r4, r2
	adds r4, 0x14
	adds r0, r4, 0
	movs r1, 0xB
	movs r2, 0
	bl GetMonData
	adds r5, r0, 0
	lsls r5, 16
	lsrs r5, 16
	adds r0, r4, 0
	movs r1, 0
	movs r2, 0
	bl GetMonData
	mov r8, r0
	adds r0, r4, 0
	movs r1, 0x1
	movs r2, 0
	bl GetMonData
	adds r1, r0, 0
	movs r0, 0x58
	str r0, [sp]
	movs r0, 0x20
	str r0, [sp, 0x4]
	movs r0, 0xF
	str r0, [sp, 0x8]
	ldr r0, =0x0000ffff
	str r0, [sp, 0xC]
	adds r0, r5, 0
	mov r2, r8
	movs r3, 0x1
	bl sub_818D7D8
	ldr r1, [r6]
	movs r2, 0xA6
	lsls r2, 2
	adds r1, r2
	movs r3, 0
	strb r0, [r1]
	ldr r4, =gUnknown_02020630
	ldr r0, [r6]
	adds r0, r2
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	adds r0, 0x28
	strb r3, [r0]
	ldr r0, [r6]
	adds r0, r2
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	adds r0, 0x29
	strb r3, [r0]
	ldr r0, [r6]
	movs r1, 0xA8
	lsls r1, 2
	adds r0, r1
	strb r3, [r0]
	add sp, 0x10
	pop {r3}
	mov r8, r3
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819BD70

	thumb_func_start sub_819BE20
sub_819BE20: @ 819BE20
	ldr r1, =gUnknown_0300127C
	ldr r1, [r1]
	movs r2, 0xA8
	lsls r2, 2
	adds r1, r2
	strb r0, [r1]
	bx lr
	.pool
	thumb_func_end sub_819BE20

	thumb_func_start sub_819BE34
sub_819BE34: @ 819BE34
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x10
	ldr r0, =gUnknown_08610638
	movs r1, 0x78
	movs r2, 0x40
	movs r3, 0x1
	bl AddObjectToFront
	ldr r6, =gUnknown_0300127C
	ldr r1, [r6]
	ldr r2, =0x00000299
	mov r10, r2
	add r1, r10
	movs r7, 0
	strb r0, [r1]
	ldr r0, [r6]
	add r0, r10
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	ldr r1, =gUnknown_02020630
	mov r8, r1
	add r0, r8
	movs r1, 0x2
	bl StartObjectRotScalAnim
	ldr r2, [r6]
	ldrb r1, [r2, 0x3]
	movs r0, 0x6C
	adds r4, r1, 0
	muls r4, r0
	adds r4, r2
	adds r4, 0x14
	adds r0, r4, 0
	movs r1, 0xB
	movs r2, 0
	bl GetMonData
	adds r5, r0, 0
	lsls r5, 16
	lsrs r5, 16
	adds r0, r4, 0
	movs r1, 0
	movs r2, 0
	bl GetMonData
	mov r9, r0
	adds r0, r4, 0
	movs r1, 0x1
	movs r2, 0
	bl GetMonData
	adds r1, r0, 0
	movs r0, 0x58
	str r0, [sp]
	movs r0, 0x20
	str r0, [sp, 0x4]
	movs r0, 0xF
	str r0, [sp, 0x8]
	ldr r0, =0x0000ffff
	str r0, [sp, 0xC]
	adds r0, r5, 0
	mov r2, r9
	movs r3, 0x1
	bl sub_818D7D8
	ldr r1, [r6]
	movs r2, 0xA6
	lsls r2, 2
	adds r1, r2
	strb r0, [r1]
	ldr r0, [r6]
	adds r0, r2
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	add r0, r8
	adds r0, 0x28
	strb r7, [r0]
	ldr r0, [r6]
	adds r0, r2
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	add r0, r8
	adds r0, 0x29
	strb r7, [r0]
	ldr r0, [r6]
	add r0, r10
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	add r0, r8
	adds r0, 0x3E
	ldrb r1, [r0]
	movs r2, 0x4
	orrs r1, r2
	strb r1, [r0]
	add sp, 0x10
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819BE34

	thumb_func_start sub_819BF2C
sub_819BF2C: @ 819BF2C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x10
	movs r7, 0
	ldr r0, =gUnknown_0300127C
	mov r9, r0
_0819BF3E:
	movs r2, 0
	adds r1, r7, 0x1
	mov r10, r1
	lsls r0, r7, 2
	mov r8, r0
_0819BF48:
	mov r0, r9
	ldr r1, [r0]
	movs r0, 0x6C
	adds r4, r2, 0
	muls r4, r0
	adds r0, r1, r4
	ldrb r0, [r0, 0x10]
	cmp r0, r10
	bne _0819C008
	adds r4, r1
	adds r4, 0x14
	adds r0, r4, 0
	movs r1, 0xB
	movs r2, 0
	bl GetMonData
	adds r5, r0, 0
	lsls r5, 16
	lsrs r5, 16
	adds r0, r4, 0
	movs r1, 0
	movs r2, 0
	bl GetMonData
	adds r6, r0, 0
	adds r0, r4, 0
	movs r1, 0x1
	movs r2, 0
	bl GetMonData
	adds r1, r0, 0
	lsls r0, r7, 3
	adds r0, r7
	lsls r0, 19
	movs r2, 0x80
	lsls r2, 13
	adds r0, r2
	asrs r0, 16
	str r0, [sp]
	movs r0, 0x20
	str r0, [sp, 0x4]
	adds r0, r7, 0
	adds r0, 0xD
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp, 0x8]
	ldr r0, =0x0000ffff
	str r0, [sp, 0xC]
	adds r0, r5, 0
	adds r2, r6, 0
	movs r3, 0x1
	bl sub_818D7D8
	mov r2, r9
	ldr r1, [r2]
	add r1, r8
	movs r2, 0xA5
	lsls r2, 2
	adds r1, r2
	strb r0, [r1]
	mov r1, r9
	ldr r0, [r1]
	add r0, r8
	adds r0, r2
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	ldr r2, =gUnknown_02020630
	adds r0, r2
	adds r0, 0x28
	movs r1, 0
	strb r1, [r0]
	mov r2, r9
	ldr r0, [r2]
	add r0, r8
	movs r1, 0xA5
	lsls r1, 2
	adds r0, r1
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	ldr r2, =gUnknown_02020630
	adds r0, r2
	adds r0, 0x29
	movs r1, 0
	strb r1, [r0]
	b _0819C012
	.pool
_0819C008:
	adds r0, r2, 0x1
	lsls r0, 24
	lsrs r2, r0, 24
	cmp r2, 0x5
	bls _0819BF48
_0819C012:
	mov r2, r10
	lsls r0, r2, 24
	lsrs r7, r0, 24
	cmp r7, 0x2
	bls _0819BF3E
	ldr r0, =gUnknown_0300127C
	ldr r0, [r0]
	movs r1, 0xA8
	lsls r1, 2
	adds r0, r1
	movs r1, 0
	strb r1, [r0]
	add sp, 0x10
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819BF2C

	thumb_func_start sub_819C040
sub_819C040: @ 819C040
	push {r4-r6,lr}
	adds r4, r0, 0
	adds r0, 0x3F
	ldrb r1, [r0]
	movs r0, 0x20
	ands r0, r1
	cmp r0, 0
	beq _0819C0DC
	ldr r3, =gUnknown_02020630
	ldr r6, =gUnknown_0300127C
	ldr r2, [r6]
	ldr r0, =0x00000295
	adds r5, r2, r0
	ldrb r0, [r5]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r3
	adds r1, 0x3F
	ldrb r0, [r1]
	lsls r0, 26
	cmp r0, 0
	bge _0819C0DC
	ldr r1, =0x0000029d
	adds r0, r2, r1
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	adds r0, 0x3F
	ldrb r0, [r0]
	lsls r0, 26
	cmp r0, 0
	bge _0819C0DC
	adds r1, r4, 0
	adds r1, 0x3E
	ldrb r0, [r1]
	movs r2, 0x4
	orrs r0, r2
	strb r0, [r1]
	ldrb r1, [r5]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	adds r0, 0x3E
	ldrb r1, [r0]
	orrs r1, r2
	strb r1, [r0]
	ldr r0, [r6]
	ldr r1, =0x0000029d
	adds r0, r1
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	adds r0, 0x3E
	ldrb r1, [r0]
	orrs r1, r2
	strb r1, [r0]
	ldr r0, =sub_819C1D0
	movs r1, 0x1
	bl CreateTask
	lsls r0, 24
	lsrs r0, 24
	ldr r2, =gTasks
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	adds r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	ldr r0, =DummyObjectCallback
	str r0, [r4, 0x1C]
_0819C0DC:
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819C040

	thumb_func_start sub_819C100
sub_819C100: @ 819C100
	push {r4-r7,lr}
	adds r5, r0, 0
	adds r0, 0x3F
	ldrb r1, [r0]
	movs r0, 0x20
	ands r0, r1
	cmp r0, 0
	beq _0819C1BA
	ldr r6, =gUnknown_02020630
	ldr r4, =gUnknown_0300127C
	ldr r2, [r4]
	ldr r7, =0x00000295
	adds r0, r2, r7
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r6
	adds r0, 0x3F
	ldrb r0, [r0]
	lsls r0, 26
	cmp r0, 0
	bge _0819C1BA
	ldr r1, =0x0000029d
	adds r0, r2, r1
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r6
	adds r0, 0x3F
	ldrb r0, [r0]
	lsls r0, 26
	cmp r0, 0
	bge _0819C1BA
	ldrb r0, [r5, 0x3]
	lsls r0, 26
	lsrs r0, 27
	bl rotscale_free_entry
	ldr r0, [r4]
	adds r0, r7
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r6
	ldrb r0, [r0, 0x3]
	lsls r0, 26
	lsrs r0, 27
	bl rotscale_free_entry
	ldr r0, [r4]
	ldr r1, =0x0000029d
	adds r0, r1
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r6
	ldrb r0, [r0, 0x3]
	lsls r0, 26
	lsrs r0, 27
	bl rotscale_free_entry
	ldr r0, [r4]
	movs r1, 0xA8
	lsls r1, 2
	adds r0, r1
	movs r1, 0
	strb r1, [r0]
	ldr r0, [r4]
	adds r0, r7
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r6
	bl RemoveObjectAndFreeTiles
	ldr r0, [r4]
	ldr r1, =0x0000029d
	adds r0, r1
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r6
	bl RemoveObjectAndFreeTiles
	adds r0, r5, 0
	bl RemoveObjectAndFreeTiles
_0819C1BA:
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819C100

	thumb_func_start sub_819C1D0
sub_819C1D0: @ 819C1D0
	push {r4,lr}
	lsls r0, 24
	lsrs r2, r0, 24
	lsls r0, r2, 2
	adds r0, r2
	lsls r0, 3
	ldr r1, =gTasks
	adds r4, r0, r1
	movs r1, 0x8
	ldrsh r0, [r4, r1]
	cmp r0, 0x1
	beq _0819C24E
	cmp r0, 0x1
	bgt _0819C1F8
	cmp r0, 0
	beq _0819C1FE
	b _0819C2BA
	.pool
_0819C1F8:
	cmp r0, 0x2
	beq _0819C270
	b _0819C2BA
_0819C1FE:
	movs r0, 0x10
	strh r0, [r4, 0xE]
	movs r0, 0xE0
	strh r0, [r4, 0x38]
	movs r0, 0x40
	strh r0, [r4, 0x12]
	movs r0, 0x41
	strh r0, [r4, 0x18]
	movs r1, 0x80
	lsls r1, 6
	movs r0, 0
	bl SetGpuRegBits
	ldrh r1, [r4, 0xE]
	lsls r1, 8
	ldrh r0, [r4, 0x38]
	orrs r1, r0
	lsls r1, 16
	lsrs r1, 16
	movs r0, 0x40
	bl SetGpuReg
	ldrh r1, [r4, 0x12]
	lsls r1, 8
	ldrh r0, [r4, 0x18]
	orrs r1, r0
	lsls r1, 16
	lsrs r1, 16
	movs r0, 0x44
	bl SetGpuReg
	movs r0, 0x48
	movs r1, 0x3F
	bl SetGpuReg
	movs r0, 0x4A
	movs r1, 0x37
	bl SetGpuReg
	b _0819C2C6
_0819C24E:
	movs r0, 0x3
	bl ShowBg
	ldr r1, =0x00001248
	movs r0, 0x50
	bl SetGpuReg
	ldr r1, =0x0000040b
	movs r0, 0x52
	bl SetGpuReg
	b _0819C2C6
	.pool
_0819C270:
	ldrh r0, [r4, 0x12]
	subs r0, 0x4
	strh r0, [r4, 0x12]
	ldrh r1, [r4, 0x18]
	adds r1, 0x4
	strh r1, [r4, 0x18]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0x20
	ble _0819C28C
	lsls r0, r1, 16
	asrs r0, 16
	cmp r0, 0x5F
	ble _0819C29E
_0819C28C:
	movs r0, 0x20
	strh r0, [r4, 0x12]
	movs r0, 0x60
	strh r0, [r4, 0x18]
	movs r1, 0x80
	lsls r1, 6
	movs r0, 0
	bl ClearGpuRegBits
_0819C29E:
	ldrh r1, [r4, 0x12]
	lsls r1, 8
	ldrh r0, [r4, 0x18]
	orrs r1, r0
	lsls r1, 16
	lsrs r1, 16
	movs r0, 0x44
	bl SetGpuReg
	movs r1, 0x12
	ldrsh r0, [r4, r1]
	cmp r0, 0x20
	bne _0819C2CC
	b _0819C2C6
_0819C2BA:
	adds r0, r2, 0
	bl DestroyTask
	bl sub_819BF2C
	b _0819C2CC
_0819C2C6:
	ldrh r0, [r4, 0x8]
	adds r0, 0x1
	strh r0, [r4, 0x8]
_0819C2CC:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_819C1D0

	thumb_func_start sub_819C2D4
sub_819C2D4: @ 819C2D4
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	lsls r0, 24
	lsrs r7, r0, 24
	lsls r0, r7, 2
	adds r0, r7
	lsls r0, 3
	ldr r1, =gTasks
	adds r4, r0, r1
	movs r1, 0x8
	ldrsh r0, [r4, r1]
	cmp r0, 0
	bne _0819C2F6
	b _0819C410
_0819C2F6:
	cmp r0, 0x1
	bne _0819C2FC
	b _0819C460
_0819C2FC:
	movs r0, 0x3
	bl HideBg
	ldr r4, =gUnknown_02020630
	ldr r0, =gUnknown_0300127C
	mov r8, r0
	ldr r0, [r0]
	ldr r1, =0x00000299
	mov r12, r1
	add r0, r12
	ldrb r0, [r0]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r4
	adds r1, 0x3E
	ldrb r2, [r1]
	movs r3, 0x5
	negs r3, r3
	adds r0, r3, 0
	ands r0, r2
	strb r0, [r1]
	mov r0, r8
	ldr r2, [r0]
	mov r1, r12
	adds r0, r2, r1
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r6, r4, 0
	adds r6, 0x1C
	adds r0, r6
	ldr r1, =sub_819C100
	str r1, [r0]
	ldr r0, =0x00000295
	mov r9, r0
	add r2, r9
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	adds r0, 0x3E
	ldrb r2, [r0]
	adds r1, r3, 0
	ands r1, r2
	strb r1, [r0]
	mov r1, r8
	ldr r2, [r1]
	mov r1, r9
	adds r0, r2, r1
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r6
	ldr r1, =DummyObjectCallback
	mov r10, r1
	str r1, [r0]
	ldr r5, =0x0000029d
	adds r2, r5
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	adds r0, 0x3E
	ldrb r1, [r0]
	ands r3, r1
	strb r3, [r0]
	mov r0, r8
	ldr r2, [r0]
	adds r0, r2, r5
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r6
	mov r1, r10
	str r1, [r0]
	add r2, r12
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	movs r1, 0x1
	bl StartObjectRotScalAnim
	mov r1, r8
	ldr r0, [r1]
	add r0, r9
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	movs r1, 0x1
	bl StartObjectRotScalAnim
	mov r1, r8
	ldr r0, [r1]
	adds r0, r5
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	movs r1, 0x1
	bl StartObjectRotScalAnim
	movs r1, 0x80
	lsls r1, 6
	movs r0, 0
	bl ClearGpuRegBits
	adds r0, r7, 0
	bl DestroyTask
	b _0819C4A4
	.pool
_0819C410:
	movs r0, 0x10
	strh r0, [r4, 0xE]
	movs r0, 0xE0
	strh r0, [r4, 0x38]
	movs r0, 0x20
	strh r0, [r4, 0x12]
	movs r0, 0x60
	strh r0, [r4, 0x18]
	movs r1, 0x80
	lsls r1, 6
	movs r0, 0
	bl SetGpuRegBits
	ldrh r1, [r4, 0xE]
	lsls r1, 8
	ldrh r0, [r4, 0x38]
	orrs r1, r0
	lsls r1, 16
	lsrs r1, 16
	movs r0, 0x40
	bl SetGpuReg
	ldrh r1, [r4, 0x12]
	lsls r1, 8
	ldrh r0, [r4, 0x18]
	orrs r1, r0
	lsls r1, 16
	lsrs r1, 16
	movs r0, 0x44
	bl SetGpuReg
	movs r0, 0x48
	movs r1, 0x3F
	bl SetGpuReg
	movs r0, 0x4A
	movs r1, 0x37
	bl SetGpuReg
	b _0819C49E
_0819C460:
	ldrh r0, [r4, 0x12]
	adds r0, 0x4
	strh r0, [r4, 0x12]
	ldrh r1, [r4, 0x18]
	subs r1, 0x4
	strh r1, [r4, 0x18]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0x3F
	bgt _0819C47C
	lsls r0, r1, 16
	asrs r0, 16
	cmp r0, 0x41
	bgt _0819C484
_0819C47C:
	movs r0, 0x40
	strh r0, [r4, 0x12]
	movs r0, 0x41
	strh r0, [r4, 0x18]
_0819C484:
	ldrh r1, [r4, 0x12]
	lsls r1, 8
	ldrh r0, [r4, 0x18]
	orrs r1, r0
	lsls r1, 16
	lsrs r1, 16
	movs r0, 0x44
	bl SetGpuReg
	movs r1, 0x12
	ldrsh r0, [r4, r1]
	cmp r0, 0x40
	bne _0819C4A4
_0819C49E:
	ldrh r0, [r4, 0x8]
	adds r0, 0x1
	strh r0, [r4, 0x8]
_0819C4A4:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_819C2D4

	thumb_func_start sub_819C4B4
sub_819C4B4: @ 819C4B4
	push {r4-r6,lr}
	mov r6, r8
	push {r6}
	ldr r4, =gUnknown_08610638
	adds r0, r4, 0
	movs r1, 0x78
	movs r2, 0x40
	movs r3, 0x1
	bl AddObjectToFront
	ldr r6, =gUnknown_0300127C
	ldr r1, [r6]
	ldr r2, =0x00000299
	mov r8, r2
	add r1, r8
	strb r0, [r1]
	adds r0, r4, 0
	movs r1, 0x2C
	movs r2, 0x40
	movs r3, 0x1
	bl AddObjectToFront
	ldr r1, [r6]
	ldr r5, =0x00000295
	adds r1, r5
	strb r0, [r1]
	adds r0, r4, 0
	movs r1, 0xC4
	movs r2, 0x40
	movs r3, 0x1
	bl AddObjectToFront
	ldr r1, [r6]
	ldr r4, =0x0000029d
	adds r1, r4
	strb r0, [r1]
	ldr r3, =gUnknown_02020630
	ldr r2, [r6]
	add r8, r2
	mov r0, r8
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r3, 0x1C
	adds r0, r3
	ldr r1, =sub_819C040
	str r1, [r0]
	adds r5, r2, r5
	ldrb r1, [r5]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	ldr r5, =DummyObjectCallback
	str r5, [r0]
	adds r4, r2, r4
	ldrb r1, [r4]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	str r5, [r0]
	movs r0, 0xA8
	lsls r0, 2
	adds r2, r0
	movs r0, 0x1
	strb r0, [r2]
	pop {r3}
	mov r8, r3
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819C4B4

	thumb_func_start sub_819C568
sub_819C568: @ 819C568
	push {r4,lr}
	ldr r4, =gUnknown_0300127C
	ldr r0, [r4]
	movs r1, 0xA5
	lsls r1, 2
	adds r0, r1
	ldrb r0, [r0]
	bl sub_818D820
	ldr r0, [r4]
	movs r1, 0xA6
	lsls r1, 2
	adds r0, r1
	ldrb r0, [r0]
	bl sub_818D820
	ldr r0, [r4]
	movs r1, 0xA7
	lsls r1, 2
	adds r0, r1
	ldrb r0, [r0]
	bl sub_818D820
	ldr r0, =sub_819C2D4
	movs r1, 0x1
	bl CreateTask
	lsls r0, 24
	lsrs r0, 24
	ldr r2, =gTasks
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	adds r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	ldr r0, [r4]
	movs r1, 0xA8
	lsls r1, 2
	adds r0, r1
	movs r1, 0x1
	strb r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819C568

	thumb_func_start sub_819C5D0
sub_819C5D0: @ 819C5D0
	push {r4-r6,lr}
	mov r6, r8
	push {r6}
	adds r4, r0, 0
	adds r6, r1, 0
	adds r5, r2, 0
	mov r8, r3
	lsls r4, 16
	lsrs r4, 16
	lsls r6, 16
	lsrs r6, 16
	lsls r5, 16
	lsrs r5, 16
	mov r0, r8
	lsls r0, 16
	lsrs r0, 16
	mov r8, r0
	movs r1, 0x80
	lsls r1, 6
	movs r0, 0
	bl SetGpuRegBits
	lsls r4, 24
	lsrs r4, 16
	orrs r4, r6
	movs r0, 0x40
	adds r1, r4, 0
	bl SetGpuReg
	lsls r5, 24
	lsrs r5, 16
	mov r0, r8
	orrs r5, r0
	movs r0, 0x44
	adds r1, r5, 0
	bl SetGpuReg
	movs r0, 0x48
	movs r1, 0x3F
	bl SetGpuReg
	movs r0, 0x4A
	movs r1, 0x37
	bl SetGpuReg
	pop {r3}
	mov r8, r3
	pop {r4-r6}
	pop {r0}
	bx r0
	thumb_func_end sub_819C5D0

	thumb_func_start sub_819C634
sub_819C634: @ 819C634
	push {r4-r7,lr}
	lsls r0, 16
	ldr r2, =gUnknown_0203BC8C
	ldr r1, [r2]
	lsrs r0, 12
	adds r0, r1
	ldrh r6, [r0]
	ldr r0, =gUnknown_0300127C
	ldr r0, [r0]
	ldrb r5, [r0, 0x5]
	movs r3, 0x1
	cmp r3, r5
	bcs _0819C694
	adds r4, r0, 0
	movs r0, 0x6C
	mov r12, r0
	adds r7, r2, 0
_0819C656:
	movs r2, 0
_0819C658:
	mov r0, r12
	muls r0, r2
	adds r1, r4, r0
	ldrb r0, [r1, 0x10]
	cmp r0, r3
	bne _0819C680
	ldrh r0, [r1, 0xC]
	ldr r1, [r7]
	lsls r0, 4
	adds r0, r1
	ldrh r0, [r0]
	cmp r0, r6
	bne _0819C68A
	movs r0, 0
	b _0819C696
	.pool
_0819C680:
	adds r0, r2, 0x1
	lsls r0, 24
	lsrs r2, r0, 24
	cmp r2, 0x5
	bls _0819C658
_0819C68A:
	adds r0, r3, 0x1
	lsls r0, 24
	lsrs r3, r0, 24
	cmp r3, r5
	bcc _0819C656
_0819C694:
	movs r0, 0x1
_0819C696:
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end sub_819C634

	thumb_func_start sub_819C69C
sub_819C69C: @ 819C69C
	push {r4-r7,lr}
	lsls r0, 24
	lsrs r6, r0, 24
	ldr r1, =gTasks
	lsls r0, r6, 2
	adds r0, r6
	lsls r0, 3
	adds r5, r0, r1
	movs r0, 0x8
	ldrsh r2, [r5, r0]
	cmp r2, 0x1
	beq _0819C6F8
	cmp r2, 0x1
	bgt _0819C6C4
	cmp r2, 0
	beq _0819C6CA
	b _0819C7D8
	.pool
_0819C6C4:
	cmp r2, 0x2
	beq _0819C7B4
	b _0819C7D8
_0819C6CA:
	ldr r1, =gUnknown_0300127C
	ldr r0, [r1]
	ldr r3, =0x000002a7
	adds r0, r3
	strb r2, [r0]
	ldr r0, [r1]
	adds r3, 0x1
	adds r0, r3
	strb r2, [r0]
	ldr r0, [r1]
	ldr r1, =0x000002a6
	adds r0, r1
	movs r1, 0x1
	strb r1, [r0]
	strh r1, [r5, 0x8]
	b _0819C7D8
	.pool
_0819C6F8:
	ldr r0, =gUnknown_0300127C
	ldr r3, [r0]
	ldr r2, =0x000002a2
	adds r1, r3, r2
	ldrb r1, [r1]
	adds r7, r0, 0
	cmp r1, 0
	beq _0819C7D8
	ldr r1, =0x000002a9
	adds r0, r3, r1
	ldrb r4, [r0]
	cmp r4, 0
	beq _0819C724
	movs r0, 0x2
	strh r0, [r5, 0x8]
	b _0819C7D8
	.pool
_0819C724:
	ldr r2, =0x000002a7
	adds r1, r3, r2
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	ldr r0, [r7]
	adds r1, r0, r2
	ldrb r0, [r1]
	cmp r0, 0x6
	bls _0819C764
	strb r4, [r1]
	ldr r1, [r7]
	subs r2, 0x1
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, 0
	bne _0819C758
	movs r3, 0xAA
	lsls r3, 2
	adds r1, r3
	ldrb r0, [r1]
	subs r0, 0x1
	b _0819C762
	.pool
_0819C758:
	movs r0, 0xAA
	lsls r0, 2
	adds r1, r0
	ldrb r0, [r1]
	adds r0, 0x1
_0819C762:
	strb r0, [r1]
_0819C764:
	movs r0, 0x80
	lsls r0, 7
	ldr r1, [r7]
	movs r4, 0xAA
	lsls r4, 2
	adds r1, r4
	ldrb r1, [r1]
	movs r2, 0
	bl BlendPalettes
	ldr r2, [r7]
	adds r4, r2, r4
	ldrb r0, [r4]
	cmp r0, 0x5
	bls _0819C790
	ldr r3, =0x000002a6
	adds r1, r2, r3
	movs r0, 0
	b _0819C7D6
	.pool
_0819C790:
	cmp r0, 0
	bne _0819C7D8
	ldr r1, =gTasks
	lsls r0, r6, 2
	adds r0, r6
	lsls r0, 3
	adds r0, r1
	movs r1, 0x2
	strh r1, [r0, 0x8]
	ldr r0, =0x000002a6
	adds r1, r2, r0
	movs r0, 0x1
	b _0819C7D6
	.pool
_0819C7B4:
	ldr r0, =gUnknown_0300127C
	ldr r0, [r0]
	ldr r2, =0x000002a9
	adds r1, r0, r2
	ldrb r0, [r1]
	cmp r0, 0xE
	bls _0819C7D4
	movs r0, 0
	strb r0, [r1]
	movs r0, 0x1
	strh r0, [r5, 0x8]
	b _0819C7D8
	.pool
_0819C7D4:
	adds r0, 0x1
_0819C7D6:
	strb r0, [r1]
_0819C7D8:
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_819C69C

	thumb_func_start sub_819C7E0
sub_819C7E0: @ 819C7E0
	push {lr}
	bl CallObjectCallbacks
	bl PrepareSpritesForOamLoad
	bl RunTextPrinters
	bl UpdatePaletteFade
	bl RunTasks
	pop {r0}
	bx r0
	thumb_func_end sub_819C7E0

	thumb_func_start sub_819C7FC
sub_819C7FC: @ 819C7FC
	push {lr}
	bl LoadOamFromSprites
	bl ProcessObjectCopyRequests
	bl TransferPlttBuffer
	pop {r0}
	bx r0
	thumb_func_end sub_819C7FC

	thumb_func_start sub_819C810
sub_819C810: @ 819C810
	push {r4-r6,lr}
	mov r6, r9
	mov r5, r8
	push {r5,r6}
	sub sp, 0x4
	ldr r4, =gPlayerParty
	ldr r5, =gUnknown_03001284
	ldr r1, [r5]
	ldrb r0, [r1, 0x12]
	movs r6, 0x64
	muls r0, r6
	adds r0, r4
	ldr r2, =gEnemyParty
	mov r9, r2
	ldrb r1, [r1, 0x13]
	muls r1, r6
	add r1, r9
	movs r2, 0x64
	bl memcpy
	movs r1, 0
	mov r0, sp
	strb r1, [r0]
	ldr r0, [r5]
	ldrb r0, [r0, 0x12]
	muls r0, r6
	adds r0, r4
	movs r1, 0x20
	mov r2, sp
	bl pokemon_setattr
	ldr r3, =gSaveBlock2Ptr
	mov r8, r3
	ldr r3, [r3]
	ldr r4, [r5]
	ldrb r0, [r4, 0x12]
	lsls r2, r0, 1
	adds r2, r0
	lsls r2, 2
	adds r2, r3, r2
	ldrb r1, [r4, 0x13]
	adds r1, 0x3
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r3, r0
	movs r1, 0xE7
	lsls r1, 4
	adds r0, r1
	ldrh r0, [r0]
	adds r2, r1
	strh r0, [r2]
	ldrb r0, [r4, 0x12]
	lsls r2, r0, 1
	adds r2, r0
	lsls r2, 2
	adds r2, r3, r2
	ldrb r1, [r4, 0x13]
	adds r1, 0x3
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r3, r0
	ldr r0, =0x00000e78
	adds r3, r0
	ldrb r1, [r3]
	adds r2, r0
	strb r1, [r2]
	ldr r0, [r5]
	ldrb r0, [r0, 0x13]
	muls r0, r6
	add r0, r9
	movs r1, 0
	movs r2, 0
	bl GetMonData
	mov r1, r8
	ldr r2, [r1]
	ldr r4, [r5]
	ldrb r3, [r4, 0x12]
	lsls r1, r3, 1
	adds r1, r3
	lsls r1, 2
	ldr r3, =0x00000e74
	adds r2, r3
	adds r2, r1
	str r0, [r2]
	ldrb r0, [r4, 0x13]
	muls r0, r6
	add r0, r9
	movs r1, 0x2E
	movs r2, 0
	bl pokemon_getattr_encrypted
	mov r1, r8
	ldr r2, [r1]
	ldr r1, [r5]
	ldrb r3, [r1, 0x12]
	lsls r1, r3, 1
	adds r1, r3
	lsls r1, 2
	adds r2, r1
	ldr r3, =0x00000e79
	adds r2, r3
	strb r0, [r2]
	add sp, 0x4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819C810

	thumb_func_start sub_819C90C
sub_819C90C: @ 819C90C
	push {r4-r6,lr}
	sub sp, 0x4
	lsls r0, 24
	lsrs r2, r0, 24
	ldr r1, =gTasks
	lsls r0, r2, 2
	adds r0, r2
	lsls r0, 3
	adds r6, r0, r1
	movs r1, 0x8
	ldrsh r0, [r6, r1]
	cmp r0, 0x7
	beq _0819C950
	cmp r0, 0x7
	bgt _0819C934
	cmp r0, 0x6
	beq _0819C93A
	b _0819C9F0
	.pool
_0819C934:
	cmp r0, 0x8
	beq _0819C9C4
	b _0819C9F0
_0819C93A:
	movs r0, 0x1
	negs r0, r0
	movs r1, 0
	str r1, [sp]
	movs r2, 0
	movs r3, 0x10
	bl BeginNormalPaletteFade
	movs r0, 0x7
	strh r0, [r6, 0x8]
	b _0819C9F0
_0819C950:
	ldr r0, =gPaletteFade
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, 0
	bne _0819C9F0
	ldr r4, =gUnknown_03001284
	ldr r0, [r4]
	adds r0, 0x21
	ldrb r0, [r0]
	bl DestroyTask
	ldr r1, [r4]
	ldr r0, [r1, 0x2C]
	adds r1, 0x30
	bl sub_819F444
	bl sub_819E538
	ldr r4, =gUnknown_0203CE40
	ldr r0, [r4]
	bl Free
	str r5, [r4]
	ldr r4, =gUnknown_0203CE44
	ldr r0, [r4]
	bl Free
	str r5, [r4]
	ldr r4, =gUnknown_0203CE48
	ldr r0, [r4]
	bl Free
	str r5, [r4]
	ldr r4, =gUnknown_0203CE4C
	ldr r0, [r4]
	bl Free
	str r5, [r4]
	bl FreeAllWindowBuffers
	movs r0, 0x8
	strh r0, [r6, 0x8]
	b _0819C9F0
	.pool
_0819C9C4:
	adds r0, r2, 0
	bl DestroyTask
	ldr r2, =gUnknown_03001284
	ldr r1, [r2]
	movs r0, 0x1
	strb r0, [r1, 0x15]
	ldr r2, [r2]
	ldr r0, =gPlttBufferUnfaded
	movs r1, 0xF4
	lsls r1, 1
	adds r0, r1
	ldrh r0, [r0]
	strh r0, [r2, 0x24]
	ldr r1, =gPlayerParty
	ldrb r2, [r2, 0x3]
	ldr r0, =sub_819DC1C
	str r0, [sp]
	movs r0, 0
	movs r3, 0x2
	bl sub_81BF8EC
_0819C9F0:
	add sp, 0x4
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819C90C

	thumb_func_start sub_819CA08
sub_819CA08: @ 819CA08
	push {r4-r7,lr}
	sub sp, 0x4
	lsls r0, 24
	lsrs r6, r0, 24
	ldr r7, =gUnknown_03001284
	ldr r2, [r7]
	adds r0, r2, 0
	adds r0, 0x30
	ldrb r0, [r0]
	cmp r0, 0x1
	beq _0819CAFE
	ldr r1, =gTasks
	lsls r0, r6, 2
	adds r0, r6
	lsls r0, 3
	adds r4, r0, r1
	movs r0, 0x8
	ldrsh r1, [r4, r0]
	cmp r1, 0x1
	beq _0819CA78
	cmp r1, 0x1
	bgt _0819CA44
	cmp r1, 0
	beq _0819CA4E
	b _0819CAFE
	.pool
_0819CA44:
	cmp r1, 0x2
	beq _0819CA8C
	cmp r1, 0x3
	beq _0819CAA4
	b _0819CAFE
_0819CA4E:
	adds r0, r2, 0
	adds r0, 0x20
	ldrb r0, [r0]
	cmp r0, 0x1
	bne _0819CA68
	ldrh r0, [r4, 0x8]
	adds r0, 0x1
	strh r0, [r4, 0x8]
	ldr r0, =gUnknown_020375F0
	strh r1, [r0]
	b _0819CAFE
	.pool
_0819CA68:
	movs r0, 0x2
	strh r0, [r4, 0x8]
	ldr r1, =gUnknown_020375F0
	movs r0, 0x1
	strh r0, [r1]
	b _0819CAFE
	.pool
_0819CA78:
	adds r0, r2, 0
	adds r0, 0x20
	ldrb r0, [r0]
	cmp r0, 0x1
	bne _0819CA9C
	ldrb r0, [r2, 0x3]
	strb r0, [r2, 0x13]
	bl sub_819C810
	b _0819CA9C
_0819CA8C:
	movs r0, 0x1
	negs r0, r0
	movs r1, 0
	str r1, [sp]
	movs r2, 0
	movs r3, 0x10
	bl BeginNormalPaletteFade
_0819CA9C:
	ldrh r0, [r4, 0x8]
	adds r0, 0x1
	strh r0, [r4, 0x8]
	b _0819CAFE
_0819CAA4:
	bl UpdatePaletteFade
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, 0
	bne _0819CAFE
	ldr r0, [r7]
	adds r0, 0x21
	ldrb r0, [r0]
	bl DestroyTask
	bl sub_819E538
	ldr r4, =gUnknown_0203CE40
	ldr r0, [r4]
	bl Free
	str r5, [r4]
	ldr r4, =gUnknown_0203CE44
	ldr r0, [r4]
	bl Free
	str r5, [r4]
	ldr r4, =gUnknown_0203CE48
	ldr r0, [r4]
	bl Free
	str r5, [r4]
	ldr r4, =gUnknown_0203CE4C
	ldr r0, [r4]
	bl Free
	str r5, [r4]
	ldr r0, [r7]
	bl Free
	str r5, [r7]
	bl FreeAllWindowBuffers
	ldr r0, =sub_80861B0
	bl SetMainCallback2
	adds r0, r6, 0
	bl DestroyTask
_0819CAFE:
	add sp, 0x4
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819CA08

	thumb_func_start sub_819CB1C
sub_819CB1C: @ 819CB1C
	push {r4-r7,lr}
	lsls r0, 24
	lsrs r2, r0, 24
	ldr r7, =gUnknown_03001284
	ldr r0, [r7]
	adds r0, 0x30
	ldrb r0, [r0]
	cmp r0, 0x1
	beq _0819CBD6
	ldr r1, =gTasks
	lsls r0, r2, 2
	adds r0, r2
	lsls r0, 3
	adds r4, r0, r1
	movs r1, 0x8
	ldrsh r0, [r4, r1]
	cmp r0, 0x4
	beq _0819CB50
	cmp r0, 0x5
	beq _0819CB5A
	b _0819CBD6
	.pool
_0819CB50:
	bl sub_819E9E0
	movs r0, 0x5
	strh r0, [r4, 0x8]
	b _0819CBD6
_0819CB5A:
	ldr r2, =gMain
	ldrh r1, [r2, 0x2E]
	movs r6, 0x1
	adds r5, r6, 0
	ands r5, r1
	cmp r5, 0
	beq _0819CB86
	movs r0, 0x5
	bl audio_play
	ldr r0, [r7]
	ldrb r0, [r0, 0x16]
	cmp r0, 0
	bne _0819CB80
	strh r6, [r4, 0xA]
	b _0819CB9C
	.pool
_0819CB80:
	movs r0, 0
	strh r0, [r4, 0xA]
	b _0819CB96
_0819CB86:
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _0819CBA8
	movs r0, 0x5
	bl audio_play
	strh r5, [r4, 0xA]
_0819CB96:
	movs r0, 0x4
	bl sub_819EA64
_0819CB9C:
	ldrh r0, [r4, 0x14]
	ldrh r1, [r4, 0x16]
	lsls r0, 16
	orrs r0, r1
	str r0, [r4]
	b _0819CBD6
_0819CBA8:
	ldrh r1, [r2, 0x30]
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	beq _0819CBC2
	movs r0, 0x5
	bl audio_play
	movs r0, 0x1
	negs r0, r0
	bl sub_819E758
	b _0819CBD6
_0819CBC2:
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _0819CBD6
	movs r0, 0x5
	bl audio_play
	movs r0, 0x1
	bl sub_819E758
_0819CBD6:
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_819CB1C

	thumb_func_start sub_819CBDC
sub_819CBDC: @ 819CBDC
	push {lr}
	lsls r0, 24
	lsrs r0, 24
	ldr r2, =gTasks
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	adds r2, r1, r2
	movs r1, 0xA
	ldrsh r0, [r2, r1]
	cmp r0, 0x1
	bne _0819CC04
	movs r0, 0
	strh r0, [r2, 0x8]
	ldr r0, =sub_819CA08
	b _0819CC16
	.pool
_0819CC04:
	movs r0, 0
	strh r0, [r2, 0x8]
	ldr r1, =sub_819CE40
	lsrs r0, r1, 16
	strh r0, [r2, 0x14]
	strh r1, [r2, 0x16]
	movs r0, 0x1
	strh r0, [r2, 0x12]
	ldr r0, =sub_819D770
_0819CC16:
	str r0, [r2]
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819CBDC

	thumb_func_start sub_819CC24
sub_819CC24: @ 819CC24
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r0, 24
	ldr r2, =gTasks
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	adds r4, r1, r2
	movs r0, 0x8
	ldrsh r5, [r4, r0]
	cmp r5, 0
	bne _0819CC5A
	ldr r0, =gUnknown_085EECBB
	bl sub_819EBEC
	ldr r0, =gUnknown_03001284
	ldr r0, [r0]
	adds r0, 0x20
	strb r5, [r0]
	movs r0, 0x4
	strh r0, [r4, 0x8]
	ldr r1, =sub_819CBDC
	lsrs r0, r1, 16
	strh r0, [r4, 0x14]
	strh r1, [r4, 0x16]
	ldr r0, =sub_819CB1C
	str r0, [r4]
_0819CC5A:
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819CC24

	thumb_func_start sub_819CC74
sub_819CC74: @ 819CC74
	push {r4,lr}
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	ldr r0, =gUnknown_03001284
	ldr r1, [r0]
	ldr r0, [r1, 0x2C]
	adds r1, 0x30
	movs r2, 0x1
	bl sub_819F3F8
	ldr r1, =gTasks
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	adds r2, r0, r1
	movs r1, 0xA
	ldrsh r0, [r2, r1]
	cmp r0, 0x1
	bne _0819CCB0
	movs r0, 0
	strh r0, [r2, 0x8]
	ldr r0, =sub_819CA08
	b _0819CCC2
	.pool
_0819CCB0:
	movs r0, 0
	strh r0, [r2, 0x8]
	ldr r1, =sub_819CE40
	lsrs r0, r1, 16
	strh r0, [r2, 0x14]
	strh r1, [r2, 0x16]
	movs r0, 0x1
	strh r0, [r2, 0x12]
	ldr r0, =sub_819D770
_0819CCC2:
	str r0, [r2]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819CC74

	thumb_func_start sub_819CCD4
sub_819CCD4: @ 819CCD4
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r0, 24
	ldr r2, =gTasks
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	adds r5, r1, r2
	movs r1, 0x8
	ldrsh r0, [r5, r1]
	cmp r0, 0
	bne _0819CD1A
	ldr r4, =gUnknown_03001284
	ldr r1, [r4]
	adds r0, r1, 0
	adds r0, 0x2D
	adds r1, 0x30
	movs r2, 0x1
	bl sub_819F2B4
	ldr r0, =gUnknown_085EECF0
	bl sub_819EBEC
	ldr r0, [r4]
	adds r0, 0x20
	movs r1, 0x1
	strb r1, [r0]
	movs r0, 0x4
	strh r0, [r5, 0x8]
	ldr r1, =sub_819CC74
	lsrs r0, r1, 16
	strh r0, [r5, 0x14]
	strh r1, [r5, 0x16]
	ldr r0, =sub_819CB1C
	str r0, [r5]
_0819CD1A:
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819CCD4

	thumb_func_start sub_819CD34
sub_819CD34: @ 819CD34
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	lsls r0, 24
	lsrs r6, r0, 24
	ldr r1, =gTasks
	lsls r0, r6, 2
	adds r0, r6
	lsls r0, 3
	adds r5, r0, r1
	movs r1, 0x8
	ldrsh r0, [r5, r1]
	cmp r0, 0x3
	beq _0819CDA4
	cmp r0, 0x3
	bgt _0819CD60
	cmp r0, 0x2
	beq _0819CD66
	b _0819CE36
	.pool
_0819CD60:
	cmp r0, 0x9
	beq _0819CD88
	b _0819CE36
_0819CD66:
	ldr r0, =gUnknown_03001284
	ldr r1, [r0]
	ldrb r0, [r1, 0x15]
	cmp r0, 0
	bne _0819CD7C
	adds r0, r1, 0
	adds r0, 0x2D
	adds r1, 0x30
	movs r2, 0x1
	bl sub_819F2B4
_0819CD7C:
	movs r0, 0x9
	strh r0, [r5, 0x8]
	b _0819CE36
	.pool
_0819CD88:
	ldr r0, =gUnknown_03001284
	ldr r0, [r0]
	adds r0, 0x30
	ldrb r0, [r0]
	cmp r0, 0x1
	beq _0819CE36
	bl sub_819E944
	movs r0, 0x3
	strh r0, [r5, 0x8]
	b _0819CE36
	.pool
_0819CDA4:
	ldr r7, =gUnknown_03001284
	ldr r0, [r7]
	adds r0, 0x30
	ldrb r0, [r0]
	cmp r0, 0x1
	beq _0819CE36
	ldr r2, =gMain
	ldrh r1, [r2, 0x2E]
	movs r0, 0x1
	mov r8, r0
	mov r4, r8
	ands r4, r1
	cmp r4, 0
	beq _0819CDD8
	movs r0, 0x5
	bl audio_play
	adds r0, r6, 0
	bl sub_819F0A0
	b _0819CE36
	.pool
_0819CDD8:
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _0819CE14
	movs r0, 0x5
	bl audio_play
	ldr r1, [r7]
	ldr r0, [r1, 0x2C]
	adds r1, 0x30
	movs r2, 0x1
	bl sub_819F3F8
	movs r0, 0x3
	bl sub_819EA64
	strh r4, [r5, 0x8]
	ldr r1, =sub_819CE40
	lsrs r0, r1, 16
	strh r0, [r5, 0x14]
	strh r1, [r5, 0x16]
	mov r1, r8
	strh r1, [r5, 0x12]
	ldr r0, =sub_819D770
	str r0, [r5]
	b _0819CE36
	.pool
_0819CE14:
	ldrh r1, [r2, 0x30]
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	beq _0819CE28
	movs r0, 0x1
	negs r0, r0
	bl sub_819E7C0
	b _0819CE36
_0819CE28:
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _0819CE36
	movs r0, 0x1
	bl sub_819E7C0
_0819CE36:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_819CD34

	thumb_func_start sub_819CE40
sub_819CE40: @ 819CE40
	push {r4-r6,lr}
	lsls r0, 24
	lsrs r6, r0, 24
	ldr r1, =gTasks
	lsls r0, r6, 2
	adds r0, r6
	lsls r0, 3
	adds r4, r0, r1
	movs r1, 0x8
	ldrsh r0, [r4, r1]
	cmp r0, 0
	beq _0819CE64
	cmp r0, 0x1
	beq _0819CE88
	b _0819CF4C
	.pool
_0819CE64:
	ldr r0, =gPaletteFade
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	bne _0819CF4C
	ldr r0, =gUnknown_03001284
	ldr r0, [r0]
	adds r0, 0x22
	movs r1, 0x1
	strb r1, [r0]
	strh r1, [r4, 0x8]
	b _0819CF4C
	.pool
_0819CE88:
	ldr r2, =gMain
	ldrh r1, [r2, 0x2E]
	adds r5, r1, 0
	ands r5, r0
	cmp r5, 0
	beq _0819CEBC
	movs r0, 0x5
	bl audio_play
	ldr r0, =gUnknown_03001284
	ldr r0, [r0]
	adds r0, 0x22
	movs r1, 0
	strb r1, [r0]
	bl sub_819EE08
	bl sub_819EAC0
	adds r0, r6, 0
	bl sub_819F184
	b _0819CF4C
	.pool
_0819CEBC:
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _0819CEF8
	movs r0, 0x5
	bl audio_play
	ldr r0, =gUnknown_03001284
	ldr r0, [r0]
	adds r0, 0x22
	strb r5, [r0]
	bl sub_819EE08
	bl sub_819EAC0
	ldr r1, =sub_819CC24
	lsrs r0, r1, 16
	strh r0, [r4, 0x14]
	strh r1, [r4, 0x16]
	strh r5, [r4, 0x8]
	strh r5, [r4, 0x12]
	ldr r0, =sub_819D588
	str r0, [r4]
	b _0819CF4C
	.pool
_0819CEF8:
	ldrh r1, [r2, 0x30]
	movs r0, 0x20
	ands r0, r1
	cmp r0, 0
	beq _0819CF0C
	movs r0, 0x1
	negs r0, r0
	bl sub_819E694
	b _0819CF2A
_0819CF0C:
	movs r0, 0x10
	ands r0, r1
	cmp r0, 0
	beq _0819CF1C
	movs r0, 0x1
	bl sub_819E694
	b _0819CF2A
_0819CF1C:
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _0819CF34
	movs r0, 0x1
	bl sub_819E6E8
_0819CF2A:
	bl sub_819EFA8
	bl sub_819EB4C
	b _0819CF4C
_0819CF34:
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	beq _0819CF4C
	movs r0, 0x1
	negs r0, r0
	bl sub_819E6E8
	bl sub_819EFA8
	bl sub_819EB4C
_0819CF4C:
	pop {r4-r6}
	pop {r0}
	bx r0
	thumb_func_end sub_819CE40

	thumb_func_start sub_819CF54
sub_819CF54: @ 819CF54
	push {r4-r6,lr}
	lsls r0, 24
	lsrs r5, r0, 24
	ldr r1, =gTasks
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	adds r4, r0, r1
	movs r0, 0x8
	ldrsh r2, [r4, r0]
	cmp r2, 0x1
	beq _0819CFA0
	cmp r2, 0x1
	bgt _0819CF7C
	cmp r2, 0
	beq _0819CF82
	b _0819D05C
	.pool
_0819CF7C:
	cmp r2, 0x2
	beq _0819D03C
	b _0819D05C
_0819CF82:
	ldr r1, =gUnknown_03001284
	ldr r0, [r1]
	adds r0, 0x27
	strb r2, [r0]
	ldr r0, [r1]
	adds r0, 0x28
	strb r2, [r0]
	ldr r0, [r1]
	adds r0, 0x26
	movs r1, 0x1
	strb r1, [r0]
	strh r1, [r4, 0x8]
	b _0819D05C
	.pool
_0819CFA0:
	ldr r1, =gUnknown_03001284
	ldr r2, [r1]
	adds r0, r2, 0
	adds r0, 0x22
	ldrb r0, [r0]
	adds r6, r1, 0
	cmp r0, 0
	beq _0819D05C
	adds r0, r2, 0
	adds r0, 0x29
	ldrb r3, [r0]
	cmp r3, 0
	beq _0819CFC4
	movs r0, 0x2
	strh r0, [r4, 0x8]
	b _0819D05C
	.pool
_0819CFC4:
	adds r1, r2, 0
	adds r1, 0x27
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	ldr r0, [r6]
	adds r1, r0, 0
	adds r1, 0x27
	ldrb r0, [r1]
	cmp r0, 0x6
	bls _0819CFF8
	strb r3, [r1]
	ldr r1, [r6]
	adds r0, r1, 0
	adds r0, 0x26
	ldrb r0, [r0]
	cmp r0, 0
	bne _0819CFF0
	adds r1, 0x28
	ldrb r0, [r1]
	subs r0, 0x1
	b _0819CFF6
_0819CFF0:
	adds r1, 0x28
	ldrb r0, [r1]
	adds r0, 0x1
_0819CFF6:
	strb r0, [r1]
_0819CFF8:
	movs r0, 0x80
	lsls r0, 7
	ldr r1, [r6]
	adds r1, 0x28
	ldrb r1, [r1]
	movs r2, 0
	bl BlendPalettes
	ldr r2, [r6]
	adds r0, r2, 0
	adds r0, 0x28
	ldrb r0, [r0]
	cmp r0, 0x5
	bls _0819D01C
	adds r1, r2, 0
	adds r1, 0x26
	movs r0, 0
	b _0819D05A
_0819D01C:
	cmp r0, 0
	bne _0819D05C
	ldr r1, =gTasks
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	adds r0, r1
	movs r1, 0x2
	strh r1, [r0, 0x8]
	adds r1, r2, 0
	adds r1, 0x26
	movs r0, 0x1
	b _0819D05A
	.pool
_0819D03C:
	ldr r0, =gUnknown_03001284
	ldr r0, [r0]
	adds r1, r0, 0
	adds r1, 0x29
	ldrb r0, [r1]
	cmp r0, 0xE
	bls _0819D058
	movs r0, 0
	strb r0, [r1]
	movs r0, 0x1
	strh r0, [r4, 0x8]
	b _0819D05C
	.pool
_0819D058:
	adds r0, 0x1
_0819D05A:
	strb r0, [r1]
_0819D05C:
	pop {r4-r6}
	pop {r0}
	bx r0
	thumb_func_end sub_819CF54

	thumb_func_start sub_819D064
sub_819D064: @ 819D064
	push {r4,lr}
	lsls r0, 24
	lsrs r0, 24
	ldr r2, =gTasks
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	adds r4, r1, r2
	movs r0, 0x8
	ldrsh r1, [r4, r0]
	cmp r1, 0x1
	beq _0819D0A4
	cmp r1, 0x1
	bgt _0819D08C
	cmp r1, 0
	beq _0819D092
	b _0819D118
	.pool
_0819D08C:
	cmp r1, 0x2
	beq _0819D0BC
	b _0819D118
_0819D092:
	ldr r0, =gUnknown_03001284
	ldr r0, [r0]
	adds r0, 0x27
	strb r1, [r0]
	strh r1, [r4, 0x10]
	b _0819D0AE
	.pool
_0819D0A4:
	ldr r0, =gPlttBufferUnfaded+ 0x1E0
	movs r1, 0xE0
	movs r2, 0xA
	bl LoadPalette
_0819D0AE:
	ldrh r0, [r4, 0x8]
	adds r0, 0x1
	strh r0, [r4, 0x8]
	b _0819D118
	.pool
_0819D0BC:
	ldr r2, =gUnknown_03001284
	ldr r0, [r2]
	adds r0, 0x28
	ldrb r0, [r0]
	cmp r0, 0xF
	bls _0819D0D2
	movs r0, 0x1
	strh r0, [r4, 0x10]
	ldrh r0, [r4, 0x8]
	adds r0, 0x1
	strh r0, [r4, 0x8]
_0819D0D2:
	ldr r1, [r2]
	adds r1, 0x27
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	ldr r0, [r2]
	adds r1, r0, 0
	adds r1, 0x27
	ldrb r0, [r1]
	cmp r0, 0x3
	bls _0819D108
	movs r0, 0
	strb r0, [r1]
	ldr r1, =gPlttBufferUnfaded
	ldr r0, =gPlttBufferFaded
	movs r3, 0xE4
	lsls r3, 1
	adds r0, r3
	ldrh r0, [r0]
	adds r3, 0x20
	adds r1, r3
	strh r0, [r1]
	ldr r1, [r2]
	adds r1, 0x28
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
_0819D108:
	movs r0, 0x80
	lsls r0, 7
	ldr r1, [r2]
	adds r1, 0x28
	ldrb r1, [r1]
	movs r2, 0
	bl BlendPalettes
_0819D118:
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819D064

	thumb_func_start sub_819D12C
sub_819D12C: @ 819D12C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x10
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp]
	ldr r1, =gTasks
	lsls r0, 2
	ldr r2, [sp]
	adds r0, r2
	lsls r0, 3
	adds r4, r0, r1
	movs r2, 0x8
	ldrsh r3, [r4, r2]
	cmp r3, 0
	beq _0819D15C
	cmp r3, 0x1
	beq _0819D168
	b _0819D310
	.pool
_0819D15C:
	strh r3, [r4, 0xA]
	strh r3, [r4, 0xC]
	strh r3, [r4, 0xE]
	movs r0, 0x1
	strh r0, [r4, 0x8]
	b _0819D310
_0819D168:
	movs r3, 0
	str r3, [sp, 0x4]
	movs r1, 0x2
	str r0, [sp, 0x8]
	ldr r0, =gTasks
	str r0, [sp, 0xC]
_0819D174:
	lsls r0, r1, 24
	asrs r4, r0, 24
	mov r9, r0
	cmp r4, 0x2
	beq _0819D1F2
	ldr r2, =gUnknown_02020630
	ldr r3, =gUnknown_03001284
	ldr r0, [r3]
	adds r0, 0x5
	mov r8, r0
	adds r0, r4
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r6, r0, r2
	ldrh r1, [r6, 0x20]
	mov r12, r1
	mov r7, r12
	ldr r1, [sp, 0x4]
	subs r0, r1, r7
	lsls r0, 24
	lsrs r5, r0, 24
	mov r10, r2
	cmp r5, 0x10
	beq _0819D1BE
	adds r0, r4, 0x2
	lsls r0, 1
	ldr r2, [sp, 0x8]
	adds r0, r2
	ldr r1, =gTasks
	adds r1, 0x8
	adds r0, r1
	movs r3, 0
	ldrsh r0, [r0, r3]
	cmp r0, 0x1
	bne _0819D1D8
_0819D1BE:
	lsls r0, r7, 24
	lsrs r0, 24
	str r0, [sp, 0x4]
	mov r0, r12
	adds r0, 0xA
	strh r0, [r6, 0x20]
	b _0819D210
	.pool
_0819D1D8:
	cmp r5, 0x10
	bls _0819D210
	adds r0, r4, 0x1
	add r0, r8
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	add r0, r10
	ldrh r0, [r0, 0x20]
	subs r0, 0x30
	strh r0, [r6, 0x20]
	b _0819D210
_0819D1F2:
	ldr r3, =gUnknown_02020630
	ldr r4, =gUnknown_03001284
	ldr r0, [r4]
	ldrb r1, [r0, 0x7]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	ldrh r2, [r0, 0x20]
	lsls r1, r2, 24
	lsrs r1, 24
	str r1, [sp, 0x4]
	adds r2, 0xA
	strh r2, [r0, 0x20]
	mov r10, r3
_0819D210:
	mov r0, r9
	asrs r2, r0, 24
	adds r0, r2, 0x1
	lsls r0, 1
	ldr r1, [sp, 0x8]
	adds r0, r1
	ldr r1, =gTasks
	adds r1, 0x8
	adds r0, r1
	movs r3, 0
	ldrsh r0, [r0, r3]
	cmp r0, 0x1
	bne _0819D26A
	ldr r1, =gUnknown_03001284
	ldr r0, [r1]
	adds r0, 0x5
	adds r0, r2
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	mov r3, r10
	adds r1, r0, r3
	movs r0, 0x20
	ldrsh r3, [r1, r0]
	lsls r0, r2, 1
	adds r0, r2
	lsls r0, 4
	adds r0, 0x48
	cmp r3, r0
	ble _0819D260
	strh r0, [r1, 0x20]
	movs r7, 0x1
	b _0819D26C
	.pool
_0819D260:
	movs r7, 0
	cmp r3, r0
	bne _0819D26C
	movs r7, 0x1
	b _0819D26C
_0819D26A:
	movs r7, 0
_0819D26C:
	mov r6, r10
	ldr r5, =gUnknown_03001284
	ldr r2, [r5]
	mov r1, r9
	asrs r4, r1, 24
	adds r0, r2, 0x5
	adds r0, r4
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r1, r0, r6
	movs r3, 0x20
	ldrsh r0, [r1, r3]
	subs r0, 0x10
	cmp r0, 0xF0
	ble _0819D2F8
	ldrh r0, [r1, 0x20]
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp, 0x4]
	ldr r0, =0x0000fff0
	strh r0, [r1, 0x20]
	ldrb r0, [r2, 0x14]
	cmp r0, 0x1
	bne _0819D2C0
	movs r0, 0x65
	bl IndexOfObjectPaletteTag
	ldr r1, [r5]
	adds r1, 0x5
	adds r1, r4
	ldrb r1, [r1]
	lsls r2, r1, 4
	adds r2, r1
	lsls r2, 2
	adds r2, r6
	b _0819D2D8
	.pool
_0819D2C0:
	movs r0, 0x64
	bl IndexOfObjectPaletteTag
	ldr r2, =gUnknown_03001284
	ldr r1, [r2]
	adds r1, 0x5
	adds r1, r4
	ldrb r1, [r1]
	lsls r2, r1, 4
	adds r2, r1
	lsls r2, 2
	add r2, r10
_0819D2D8:
	lsls r0, 4
	ldrb r3, [r2, 0x5]
	movs r1, 0xF
	ands r1, r3
	orrs r1, r0
	strb r1, [r2, 0x5]
	mov r3, r9
	asrs r0, r3, 23
	adds r0, 0x2
	ldr r1, [sp, 0x8]
	adds r0, r1
	ldr r2, [sp, 0xC]
	adds r2, 0x8
	adds r0, r2
	movs r1, 0x1
	strh r1, [r0]
_0819D2F8:
	movs r0, 0xFF
	lsls r0, 24
	add r0, r9
	lsrs r1, r0, 24
	cmp r0, 0
	blt _0819D306
	b _0819D174
_0819D306:
	cmp r7, 0x1
	bne _0819D310
	ldr r0, [sp]
	bl DestroyTask
_0819D310:
	add sp, 0x10
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819D12C

	thumb_func_start sub_819D324
sub_819D324: @ 819D324
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	lsls r0, 24
	lsrs r7, r0, 24
	movs r0, 0
	mov r8, r0
	ldr r1, =gTasks
	lsls r0, r7, 2
	adds r0, r7
	lsls r0, 3
	adds r2, r0, r1
	ldrb r4, [r2, 0xE]
	movs r0, 0xC
	ldrsh r5, [r2, r0]
	mov r10, r1
	cmp r5, 0x1
	bne _0819D352
	lsls r0, r4, 24
	negs r0, r0
	lsrs r4, r0, 24
_0819D352:
	movs r1, 0x8
	ldrsh r0, [r2, r1]
	cmp r0, 0
	beq _0819D368
	cmp r0, 0x1
	bne _0819D360
	b _0819D480
_0819D360:
	b _0819D570
	.pool
_0819D368:
	ldr r3, =gUnknown_02020630
	ldr r2, =gUnknown_03001284
	ldr r0, [r2]
	ldrb r1, [r0, 0x8]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	ldrh r0, [r0, 0x20]
	cmp r5, 0
	bne _0819D39C
	lsls r0, 16
	asrs r0, 16
	lsls r2, r4, 24
	asrs r1, r2, 24
	adds r0, r1
	movs r1, 0x1
	cmp r0, 0xEF
	ble _0819D3B2
	movs r1, 0
	movs r0, 0xF0
	b _0819D3B0
	.pool
_0819D39C:
	lsls r0, 16
	asrs r0, 16
	lsls r2, r4, 24
	asrs r1, r2, 24
	adds r0, r1
	movs r1, 0x1
	cmp r0, 0xA0
	bgt _0819D3B2
	movs r1, 0
	movs r0, 0xA0
_0819D3B0:
	mov r8, r0
_0819D3B2:
	cmp r1, 0x1
	bne _0819D3FC
	movs r3, 0
	ldr r7, =gUnknown_02020630
	ldr r6, =gUnknown_03001284
	asrs r5, r2, 24
_0819D3BE:
	movs r4, 0
	adds r2, r3, 0x1
_0819D3C2:
	ldr r1, [r6]
	lsls r0, r4, 1
	adds r0, r4
	adds r0, r3, r0
	adds r1, 0x8
	adds r1, r0
	ldrb r1, [r1]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r7
	ldrh r1, [r0, 0x20]
	adds r1, r5
	strh r1, [r0, 0x20]
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x1
	bls _0819D3C2
	lsls r0, r2, 24
	lsrs r3, r0, 24
	cmp r3, 0x2
	bls _0819D3BE
	b _0819D570
	.pool
_0819D3FC:
	movs r4, 0
	lsls r1, r7, 2
	mov r12, r1
	mov r6, r8
	adds r6, 0x10
	movs r0, 0x30
	add r0, r8
	mov r9, r0
	ldr r5, =gUnknown_02020630
_0819D40E:
	ldr r1, =gUnknown_03001284
	ldr r2, [r1]
	lsls r3, r4, 1
	adds r3, r4
	adds r0, r2, 0
	adds r0, 0x8
	adds r0, r3
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	mov r1, r8
	strh r1, [r0, 0x20]
	adds r0, r2, 0
	adds r0, 0x9
	adds r0, r3
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	strh r6, [r0, 0x20]
	adds r2, 0xA
	adds r2, r3
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	mov r1, r9
	strh r1, [r0, 0x20]
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x1
	bls _0819D40E
	mov r1, r12
	adds r0, r1, r7
	lsls r0, 3
	add r0, r10
	ldrb r1, [r0, 0xA]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 3
	add r0, r10
	movs r1, 0x1
	strh r1, [r0, 0xE]
	adds r0, r7, 0
	bl DestroyTask
	b _0819D570
	.pool
_0819D480:
	ldr r2, =gUnknown_02020630
	ldr r0, =gUnknown_03001284
	ldr r0, [r0]
	ldrb r1, [r0, 0xE]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrh r0, [r0, 0x20]
	cmp r5, 0
	bne _0819D4B4
	lsls r0, 16
	asrs r0, 16
	lsls r2, r4, 24
	asrs r1, r2, 24
	adds r0, r1
	movs r1, 0x1
	cmp r0, 0xEF
	ble _0819D4CA
	movs r1, 0
	movs r0, 0xF0
	b _0819D4C8
	.pool
_0819D4B4:
	lsls r0, 16
	asrs r0, 16
	lsls r2, r4, 24
	asrs r1, r2, 24
	adds r0, r1
	movs r1, 0x1
	cmp r0, 0xC0
	bgt _0819D4CA
	movs r1, 0
	movs r0, 0xC0
_0819D4C8:
	mov r8, r0
_0819D4CA:
	cmp r1, 0x1
	bne _0819D510
	movs r3, 0
	ldr r7, =gUnknown_02020630
	ldr r6, =gUnknown_03001284
	asrs r5, r2, 24
_0819D4D6:
	movs r4, 0
	adds r2, r3, 0x1
_0819D4DA:
	ldr r0, [r6]
	lsls r1, r4, 1
	adds r1, r3, r1
	adds r0, 0xE
	adds r0, r1
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r7
	ldrh r1, [r0, 0x20]
	adds r1, r5
	strh r1, [r0, 0x20]
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x1
	bls _0819D4DA
	lsls r0, r2, 24
	lsrs r3, r0, 24
	cmp r3, 0x1
	bls _0819D4D6
	b _0819D570
	.pool
_0819D510:
	movs r4, 0
	lsls r1, r7, 2
	mov r12, r1
	mov r6, r8
	adds r6, 0x10
	ldr r5, =gUnknown_02020630
	ldr r0, =gUnknown_03001284
	mov r9, r0
_0819D520:
	mov r1, r9
	ldr r2, [r1]
	lsls r3, r4, 1
	adds r0, r2, 0
	adds r0, 0xE
	adds r0, r3
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	mov r1, r8
	strh r1, [r0, 0x20]
	adds r2, 0xF
	adds r2, r3
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	strh r6, [r0, 0x20]
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x1
	bls _0819D520
	mov r1, r12
	adds r0, r1, r7
	lsls r0, 3
	add r0, r10
	ldrb r1, [r0, 0xA]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 3
	add r0, r10
	movs r1, 0x1
	strh r1, [r0, 0x10]
	adds r0, r7, 0
	bl DestroyTask
_0819D570:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819D324

	thumb_func_start sub_819D588
sub_819D588: @ 819D588
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, 0x4
	lsls r0, 24
	lsrs r5, r0, 24
	ldr r1, =gTasks
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	adds r0, r1
	movs r2, 0x8
	ldrsh r0, [r0, r2]
	mov r8, r1
	cmp r0, 0x5
	bls _0819D5AA
	b _0819D762
_0819D5AA:
	lsls r0, 2
	ldr r1, =_0819D5BC
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_0819D5BC:
	.4byte _0819D5D4
	.4byte _0819D5F0
	.4byte _0819D60C
	.4byte _0819D63C
	.4byte _0819D6F0
	.4byte _0819D73A
_0819D5D4:
	ldr r0, =gUnknown_08610918
	movs r1, 0xE0
	movs r2, 0xA
	bl LoadPalette
	bl sub_819ED34
	movs r0, 0x5
	bl PutWindowTilemap
	b _0819D622
	.pool
_0819D5F0:
	movs r0, 0x3
	bl sub_819EA64
	ldr r0, =gTasks
	lsls r1, r5, 2
	adds r1, r5
	lsls r1, 3
	adds r1, r0
	ldrh r0, [r1, 0x8]
	adds r0, 0x1
	strh r0, [r1, 0x8]
	b _0819D762
	.pool
_0819D60C:
	movs r0, 0x80
	lsls r0, 7
	ldr r1, =gUnknown_0860F13C
	adds r1, 0x4A
	ldrh r1, [r1]
	str r1, [sp]
	movs r1, 0
	movs r2, 0
	movs r3, 0x10
	bl BeginNormalPaletteFade
_0819D622:
	ldr r1, =gTasks
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	adds r0, r1
	ldrh r1, [r0, 0x8]
	adds r1, 0x1
	strh r1, [r0, 0x8]
	b _0819D762
	.pool
_0819D63C:
	ldr r0, =gPaletteFade
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	lsls r0, 24
	lsrs r6, r0, 24
	cmp r6, 0
	beq _0819D64E
	b _0819D762
_0819D64E:
	movs r0, 0x5
	movs r1, 0
	bl FillWindowPixelBuffer
	movs r0, 0x5
	movs r1, 0x2
	bl CopyWindowToVram
	ldr r0, =gUnknown_03001284
	ldr r0, [r0]
	ldrb r0, [r0, 0x14]
	cmp r0, 0x1
	bne _0819D6B0
	ldr r0, =sub_819D324
	movs r1, 0
	bl CreateTask
	lsls r0, 24
	lsrs r4, r0, 24
	ldr r1, =gTasks
	lsls r2, r5, 2
	adds r2, r5
	lsls r2, 3
	adds r2, r1
	strh r6, [r2, 0xE]
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	adds r0, r1
	strh r5, [r0, 0xA]
	strh r6, [r0, 0x8]
	strh r6, [r0, 0xC]
	movs r1, 0x6
	strh r1, [r0, 0xE]
	movs r0, 0x5
	strh r0, [r2, 0xC]
	ldrh r0, [r2, 0x8]
	adds r0, 0x1
	strh r0, [r2, 0x8]
	b _0819D762
	.pool
_0819D6B0:
	ldr r0, =sub_819D324
	movs r1, 0
	bl CreateTask
	lsls r0, 24
	lsrs r4, r0, 24
	ldr r3, =gTasks
	lsls r2, r5, 2
	adds r2, r5
	lsls r2, 3
	adds r2, r3
	movs r1, 0x1
	strh r1, [r2, 0xE]
	strh r6, [r2, 0x10]
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	adds r0, r3
	strh r5, [r0, 0xA]
	strh r1, [r0, 0x8]
	strh r6, [r0, 0xC]
	movs r1, 0x6
	strh r1, [r0, 0xE]
	ldrh r0, [r2, 0x8]
	adds r0, 0x2
	strh r0, [r2, 0x8]
	b _0819D762
	.pool
_0819D6F0:
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	mov r1, r8
	adds r6, r0, r1
	ldrh r0, [r6, 0xC]
	movs r2, 0xC
	ldrsh r7, [r6, r2]
	cmp r7, 0
	bne _0819D734
	ldr r0, =sub_819D324
	movs r1, 0
	bl CreateTask
	lsls r0, 24
	lsrs r4, r0, 24
	strh r7, [r6, 0x10]
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	add r0, r8
	strh r5, [r0, 0xA]
	movs r1, 0x1
	strh r1, [r0, 0x8]
	strh r7, [r0, 0xC]
	movs r1, 0x6
	strh r1, [r0, 0xE]
	ldrh r0, [r6, 0x8]
	adds r0, 0x1
	strh r0, [r6, 0x8]
	b _0819D762
	.pool
_0819D734:
	subs r0, 0x1
	strh r0, [r6, 0xC]
	b _0819D762
_0819D73A:
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	mov r1, r8
	adds r2, r0, r1
	movs r1, 0xE
	ldrsh r0, [r2, r1]
	cmp r0, 0x1
	bne _0819D762
	movs r1, 0x10
	ldrsh r0, [r2, r1]
	cmp r0, 0x1
	bne _0819D762
	ldrh r0, [r2, 0x12]
	strh r0, [r2, 0x8]
	ldrh r0, [r2, 0x14]
	ldrh r1, [r2, 0x16]
	lsls r0, 16
	orrs r0, r1
	str r0, [r2]
_0819D762:
	add sp, 0x4
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_819D588

	thumb_func_start sub_819D770
sub_819D770: @ 819D770
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, 0x4
	lsls r0, 24
	lsrs r6, r0, 24
	ldr r1, =gUnknown_03001284
	ldr r0, [r1]
	adds r0, 0x30
	ldrb r0, [r0]
	adds r3, r1, 0
	cmp r0, 0x1
	bne _0819D78C
	b _0819D9D8
_0819D78C:
	ldr r0, =gTasks
	lsls r2, r6, 2
	adds r1, r2, r6
	lsls r1, 3
	adds r1, r0
	movs r4, 0x8
	ldrsh r1, [r1, r4]
	mov r8, r0
	adds r5, r2, 0
	cmp r1, 0x8
	bls _0819D7A4
	b _0819D9D8
_0819D7A4:
	lsls r0, r1, 2
	ldr r1, =_0819D7BC
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_0819D7BC:
	.4byte _0819D7E0
	.4byte _0819D868
	.4byte _0819D8AE
	.4byte _0819D8F4
	.4byte _0819D910
	.4byte _0819D928
	.4byte _0819D936
	.4byte _0819D948
	.4byte _0819D9B0
_0819D7E0:
	ldr r0, [r3]
	ldrb r7, [r0, 0x14]
	cmp r7, 0x1
	bne _0819D828
	ldr r0, =sub_819D324
	movs r1, 0
	bl CreateTask
	lsls r0, 24
	lsrs r4, r0, 24
	ldr r3, =gTasks
	adds r2, r5, r6
	lsls r2, 3
	adds r2, r3
	movs r1, 0
	strh r1, [r2, 0xE]
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	adds r0, r3
	strh r6, [r0, 0xA]
	strh r1, [r0, 0x8]
	strh r7, [r0, 0xC]
	movs r1, 0x6
	strh r1, [r0, 0xE]
	movs r0, 0xA
	strh r0, [r2, 0xC]
	ldrh r0, [r2, 0x8]
	adds r0, 0x1
	strh r0, [r2, 0x8]
	b _0819D9D8
	.pool
_0819D828:
	ldr r0, =sub_819D324
	movs r1, 0
	bl CreateTask
	lsls r0, 24
	lsrs r4, r0, 24
	ldr r3, =gTasks
	adds r2, r5, r6
	lsls r2, 3
	adds r2, r3
	movs r0, 0
	movs r1, 0x1
	strh r1, [r2, 0xE]
	strh r0, [r2, 0x10]
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	adds r0, r3
	strh r6, [r0, 0xA]
	strh r1, [r0, 0x8]
	strh r1, [r0, 0xC]
	movs r1, 0x6
	strh r1, [r0, 0xE]
	ldrh r0, [r2, 0x8]
	adds r0, 0x2
	strh r0, [r2, 0x8]
	b _0819D9D8
	.pool
_0819D868:
	adds r0, r5, r6
	lsls r0, 3
	mov r1, r8
	adds r5, r0, r1
	ldrh r0, [r5, 0xC]
	movs r2, 0xC
	ldrsh r7, [r5, r2]
	cmp r7, 0
	bne _0819D8A8
	ldr r0, =sub_819D324
	movs r1, 0
	bl CreateTask
	lsls r0, 24
	lsrs r4, r0, 24
	strh r7, [r5, 0x10]
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	add r0, r8
	strh r6, [r0, 0xA]
	movs r1, 0x1
	strh r1, [r0, 0x8]
	strh r1, [r0, 0xC]
	movs r1, 0x6
	strh r1, [r0, 0xE]
	ldrh r0, [r5, 0x8]
	adds r0, 0x1
	strh r0, [r5, 0x8]
	b _0819D9D8
	.pool
_0819D8A8:
	subs r0, 0x1
	strh r0, [r5, 0xC]
	b _0819D9D8
_0819D8AE:
	adds r0, r5, r6
	lsls r0, 3
	mov r1, r8
	adds r4, r0, r1
	movs r2, 0xE
	ldrsh r0, [r4, r2]
	cmp r0, 0x1
	beq _0819D8C0
	b _0819D9D8
_0819D8C0:
	movs r1, 0x10
	ldrsh r0, [r4, r1]
	cmp r0, 0x1
	beq _0819D8CA
	b _0819D9D8
_0819D8CA:
	ldr r1, =gPlttBufferFaded
	ldr r0, =gUnknown_0860F13C
	adds r0, 0x4A
	ldrh r0, [r0]
	movs r2, 0xE2
	lsls r2, 1
	adds r1, r2
	strh r0, [r1]
	bl sub_819ED34
	movs r0, 0x5
	bl PutWindowTilemap
	ldrh r0, [r4, 0x8]
	adds r0, 0x1
	strh r0, [r4, 0x8]
	b _0819D9D8
	.pool
_0819D8F4:
	movs r0, 0x80
	lsls r0, 7
	ldr r1, =gUnknown_0860F13C
	adds r1, 0x4A
	ldrh r1, [r1]
	str r1, [sp]
	movs r1, 0
	movs r2, 0x10
	movs r3, 0
	bl BeginNormalPaletteFade
	b _0819D990
	.pool
_0819D910:
	ldr r0, =gPaletteFade
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	bne _0819D9D8
	movs r0, 0
	bl sub_819EDBC
	b _0819D990
	.pool
_0819D928:
	movs r0, 0x1
	bl sub_819EDBC
	movs r0, 0x3
	bl PutWindowTilemap
	b _0819D990
_0819D936:
	movs r0, 0x5
	movs r1, 0
	bl FillWindowPixelBuffer
	movs r0, 0x5
	movs r1, 0x2
	bl CopyWindowToVram
	b _0819D990
_0819D948:
	ldr r0, =gUnknown_03001284
	ldr r0, [r0]
	ldrb r0, [r0, 0x14]
	cmp r0, 0
	bne _0819D964
	ldr r0, =gUnknown_085EEC73
	bl sub_819EBEC
	b _0819D96A
	.pool
_0819D964:
	ldr r0, =gUnknown_085EEC8B
	bl sub_819EBEC
_0819D96A:
	ldr r0, =gUnknown_03001284
	ldr r1, [r0]
	ldrb r0, [r1, 0x3]
	cmp r0, 0x2
	bhi _0819D98C
	ldr r2, =gUnknown_02020630
	ldrb r1, [r1, 0x4]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	adds r0, 0x3E
	ldrb r2, [r0]
	movs r1, 0x5
	negs r1, r1
	ands r1, r2
	strb r1, [r0]
_0819D98C:
	bl sub_819EFA8
_0819D990:
	ldr r0, =gTasks
	adds r1, r5, r6
	lsls r1, 3
	adds r1, r0
	ldrh r0, [r1, 0x8]
	adds r0, 0x1
	strh r0, [r1, 0x8]
	b _0819D9D8
	.pool
_0819D9B0:
	bl sub_819EEF0
	bl sub_819EADC
	ldr r0, =gUnknown_03001284
	ldr r0, [r0]
	adds r0, 0x22
	movs r1, 0x1
	strb r1, [r0]
	ldr r1, =gTasks
	adds r0, r5, r6
	lsls r0, 3
	adds r0, r1
	ldrh r1, [r0, 0x12]
	strh r1, [r0, 0x8]
	ldrh r1, [r0, 0x14]
	ldrh r2, [r0, 0x16]
	lsls r1, 16
	orrs r1, r2
	str r1, [r0]
_0819D9D8:
	add sp, 0x4
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819D770

	thumb_func_start sub_819D9EC
sub_819D9EC: @ 819D9EC
	push {r4-r7,lr}
	lsls r0, 24
	lsrs r6, r0, 24
	ldr r0, =gUnknown_03001284
	ldr r0, [r0]
	adds r0, 0x30
	ldrb r0, [r0]
	cmp r0, 0x1
	bne _0819DA00
	b _0819DBCA
_0819DA00:
	ldr r0, =gTasks
	lsls r2, r6, 2
	adds r1, r2, r6
	lsls r1, 3
	adds r1, r0
	movs r3, 0x8
	ldrsh r1, [r1, r3]
	adds r3, r0, 0
	adds r7, r2, 0
	cmp r1, 0x4
	bls _0819DA18
	b _0819DBCA
_0819DA18:
	lsls r0, r1, 2
	ldr r1, =_0819DA30
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_0819DA30:
	.4byte _0819DA44
	.4byte _0819DA58
	.4byte _0819DA8C
	.4byte _0819DABC
	.4byte _0819DBB0
_0819DA44:
	bl sub_819EEF0
	ldr r0, =gTasks
	adds r1, r7, r6
	lsls r1, 3
	adds r1, r0
	b _0819DB96
	.pool
_0819DA58:
	bl sub_819EADC
	ldr r2, =gUnknown_02020630
	ldr r0, =gUnknown_03001284
	ldr r0, [r0]
	ldrb r1, [r0, 0x4]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	adds r0, 0x3E
	ldrb r1, [r0]
	movs r2, 0x4
	orrs r1, r2
	strb r1, [r0]
	ldr r0, =gTasks
	adds r1, r7, r6
	lsls r1, 3
	adds r1, r0
	b _0819DB96
	.pool
_0819DA8C:
	ldr r0, =sub_819D12C
	movs r1, 0
	bl CreateTask
	ldr r2, =gTasks
	ldr r0, =gUnknown_03001284
	ldr r0, [r0]
	adds r0, 0x21
	ldrb r1, [r0]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 3
	adds r0, r2
	ldr r1, =sub_819D064
	str r1, [r0]
	b _0819DB90
	.pool
_0819DABC:
	ldr r0, =sub_819D12C
	bl FuncIsActiveTask
	lsls r0, 24
	cmp r0, 0
	beq _0819DACA
	b _0819DBCA
_0819DACA:
	ldr r2, =gTasks
	ldr r4, =gUnknown_03001284
	ldr r0, [r4]
	adds r0, 0x21
	ldrb r1, [r0]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 3
	adds r0, r2
	movs r1, 0x10
	ldrsh r0, [r0, r1]
	cmp r0, 0x1
	bne _0819DBCA
	bl sub_819EAC0
	ldr r0, [r4]
	ldrb r0, [r0, 0x14]
	cmp r0, 0
	bne _0819DB04
	movs r0, 0x1
	bl sub_819F048
	b _0819DB32
	.pool
_0819DB04:
	movs r0, 0
	bl sub_819F048
	movs r2, 0
	ldr r5, =gUnknown_02020630
	movs r3, 0x4
_0819DB10:
	ldr r0, [r4]
	adds r0, 0xB
	adds r0, r2
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	adds r0, 0x3E
	ldrb r1, [r0]
	orrs r1, r3
	strb r1, [r0]
	adds r0, r2, 0x1
	lsls r0, 24
	lsrs r2, r0, 24
	cmp r2, 0x2
	bls _0819DB10
_0819DB32:
	ldr r5, =gUnknown_02020630
	ldr r4, =gUnknown_03001284
	ldr r3, [r4]
	ldrb r0, [r3, 0x4]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r5
	adds r0, r3, 0x5
	ldrb r2, [r3, 0x3]
	adds r0, r2
	ldrb r2, [r0]
	lsls r0, r2, 4
	adds r0, r2
	lsls r0, 2
	adds r0, r5
	ldrh r0, [r0, 0x20]
	movs r5, 0
	strh r0, [r1, 0x20]
	ldr r2, =gTasks
	adds r0, r3, 0
	adds r0, 0x21
	ldrb r1, [r0]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 3
	adds r0, r2
	ldr r1, =sub_819CF54
	str r1, [r0]
	adds r3, 0x27
	strb r5, [r3]
	ldr r0, [r4]
	adds r0, 0x28
	movs r1, 0x6
	strb r1, [r0]
	ldr r0, [r4]
	adds r0, 0x26
	strb r5, [r0]
	ldr r0, [r4]
	adds r0, 0x21
	ldrb r1, [r0]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 3
	adds r0, r2
	movs r1, 0x1
	strh r1, [r0, 0x8]
_0819DB90:
	adds r1, r7, r6
	lsls r1, 3
	adds r1, r2
_0819DB96:
	ldrh r0, [r1, 0x8]
	adds r0, 0x1
	strh r0, [r1, 0x8]
	b _0819DBCA
	.pool
_0819DBB0:
	adds r0, r7, r6
	lsls r0, 3
	adds r0, r3
	movs r1, 0
	strh r1, [r0, 0x8]
	ldr r2, =sub_819CE40
	lsrs r1, r2, 16
	strh r1, [r0, 0x14]
	strh r2, [r0, 0x16]
	movs r1, 0x1
	strh r1, [r0, 0x12]
	ldr r1, =sub_819D770
	str r1, [r0]
_0819DBCA:
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819D9EC

	thumb_func_start sub_819DBD8
sub_819DBD8: @ 819DBD8
	push {r4,r5,lr}
	ldr r5, =gUnknown_03001284
	ldr r4, [r5]
	cmp r4, 0
	bne _0819DBF6
	movs r0, 0x34
	bl AllocZeroed
	str r0, [r5]
	strb r4, [r0, 0x3]
	ldr r0, [r5]
	adds r0, 0x30
	strb r4, [r0]
	ldr r0, [r5]
	strb r4, [r0, 0x15]
_0819DBF6:
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819DBD8

	thumb_func_start sub_819DC00
sub_819DC00: @ 819DC00
	push {lr}
	ldr r0, =gUnknown_03001284
	movs r1, 0
	str r1, [r0]
	ldr r0, =sub_819DC1C
	bl SetMainCallback2
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819DC00

	thumb_func_start sub_819DC1C
sub_819DC1C: @ 819DC1C
	push {r4-r6,lr}
	sub sp, 0xC
	ldr r1, =gMain
	movs r2, 0x87
	lsls r2, 3
	adds r0, r1, r2
	ldrb r0, [r0]
	adds r2, r1, 0
	cmp r0, 0xF
	bls _0819DC32
	b _0819E0AA
_0819DC32:
	lsls r0, 2
	ldr r1, =_0819DC44
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_0819DC44:
	.4byte _0819DC84
	.4byte _0819DCD4
	.4byte _0819DDA8
	.4byte _0819DE68
	.4byte _0819DE94
	.4byte _0819DECC
	.4byte _0819DEEC
	.4byte _0819DF10
	.4byte _0819DF30
	.4byte _0819DF3C
	.4byte _0819DF64
	.4byte _0819DF70
	.4byte _0819DF78
	.4byte _0819DF8C
	.4byte _0819DFA4
	.4byte _0819E01C
_0819DC84:
	movs r0, 0
	bl SetHBlankCallback
	movs r0, 0
	bl SetVBlankCallback
	movs r0, 0
	str r0, [sp, 0x8]
	movs r1, 0xC0
	lsls r1, 19
	ldr r2, =0x05006000
	add r0, sp, 0x8
	bl CpuSet
	movs r0, 0
	bl ResetBgsAndClearDma3BusyFlags
	ldr r1, =gUnknown_086108B8
	movs r0, 0
	movs r2, 0x4
	bl InitBgsFromTemplates
	ldr r0, =gUnknown_086108C8
	bl InitWindows
	bl DeactivateAllTextPrinters
	ldr r1, =gMain
	movs r0, 0x87
	lsls r0, 3
	adds r1, r0
	b _0819E00E
	.pool
_0819DCD4:
	ldr r5, =gUnknown_0203CE40
	movs r4, 0x88
	lsls r4, 3
	adds r0, r4, 0
	bl Alloc
	str r0, [r5]
	ldr r5, =gUnknown_0203CE44
	adds r0, r4, 0
	bl AllocZeroed
	str r0, [r5]
	ldr r5, =gUnknown_0203CE48
	movs r4, 0x80
	lsls r4, 4
	adds r0, r4, 0
	bl Alloc
	str r0, [r5]
	ldr r5, =gUnknown_0203CE4C
	adds r0, r4, 0
	bl AllocZeroed
	str r0, [r5]
	movs r0, 0
	movs r1, 0
	movs r2, 0
	bl ChangeBgX
	movs r0, 0
	movs r1, 0
	movs r2, 0
	bl ChangeBgY
	movs r0, 0x1
	movs r1, 0
	movs r2, 0
	bl ChangeBgX
	movs r0, 0x1
	movs r1, 0
	movs r2, 0
	bl ChangeBgY
	movs r0, 0x2
	movs r1, 0
	movs r2, 0
	bl ChangeBgX
	movs r0, 0x2
	movs r1, 0
	movs r2, 0
	bl ChangeBgY
	movs r0, 0x3
	movs r1, 0
	movs r2, 0
	bl ChangeBgX
	movs r0, 0x3
	movs r1, 0
	movs r2, 0
	bl ChangeBgY
	movs r0, 0x54
	movs r1, 0
	bl SetGpuReg
	movs r0, 0x4C
	movs r1, 0
	bl SetGpuReg
	movs r0, 0x40
	movs r1, 0
	bl SetGpuReg
	movs r0, 0x44
	movs r1, 0
	bl SetGpuReg
	movs r0, 0x42
	movs r1, 0
	bl SetGpuReg
	movs r0, 0x46
	movs r1, 0
	bl SetGpuReg
	movs r0, 0x48
	movs r1, 0
	bl SetGpuReg
	movs r0, 0x4A
	movs r1, 0
	bl SetGpuReg
	b _0819E006
	.pool
_0819DDA8:
	bl ResetPaletteFade
	bl ResetAllObjectData
	bl ResetTasks
	bl ResetObjectPaletteAllocator
	bl dp13_810BB8C
	ldr r0, =gUnknown_08DC0754
	ldr r5, =gUnknown_0203CE40
	ldr r1, [r5]
	movs r2, 0x88
	lsls r2, 2
	bl CpuSet
	ldr r0, =gUnknown_0861033C
	ldr r4, =gUnknown_0203CE44
	ldr r1, [r4]
	movs r2, 0x30
	bl CpuSet
	ldr r1, [r5]
	movs r2, 0x88
	lsls r2, 3
	movs r0, 0x1
	movs r3, 0
	bl LoadBgTiles
	ldr r1, [r4]
	movs r0, 0x3
	movs r2, 0x60
	movs r3, 0
	bl LoadBgTiles
	ldr r0, =gUnknown_08DC0B94
	ldr r4, =gUnknown_0203CE48
	ldr r1, [r4]
	movs r2, 0x80
	lsls r2, 3
	bl CpuSet
	ldr r1, [r4]
	movs r2, 0x80
	lsls r2, 4
	movs r0, 0x1
	movs r3, 0
	bl LoadBgTilemap
	ldr r0, =gUnknown_08DC0714
	movs r1, 0
	movs r2, 0x40
	bl LoadPalette
	ldr r4, =gUnknown_08610918
	adds r0, r4, 0
	movs r1, 0xF0
	movs r2, 0xA
	bl LoadPalette
	adds r0, r4, 0
	movs r1, 0xE0
	movs r2, 0xA
	bl LoadPalette
	ldr r0, =gUnknown_0861039C
	movs r1, 0x20
	movs r2, 0x4
	bl LoadPalette
	ldr r1, =gMain
	movs r0, 0x87
	lsls r0, 3
	adds r1, r0
	b _0819E00E
	.pool
_0819DE68:
	ldr r0, =gUnknown_0203CE4C
	ldr r1, [r0]
	movs r0, 0x3
	bl SetBgTilemapBuffer
	ldr r1, =gUnknown_0861023C
	movs r0, 0x8
	str r0, [sp]
	str r0, [sp, 0x4]
	movs r0, 0x3
	movs r2, 0xB
	movs r3, 0x4
	bl CopyToBgTilemapBufferRect
	movs r0, 0x3
	bl CopyBgTilemapBufferToVram
	b _0819E006
	.pool
_0819DE94:
	ldr r0, =gUnknown_086106B0
	bl LoadTaggedObjectPalettes
	ldr r0, =gUnknown_08610650
	bl LoadObjectPics
	ldr r0, =gUnknown_086106A0
	bl LoadCompressedObjectPic
	ldr r0, =sub_819C7FC
	bl SetVBlankCallback
	ldr r1, =gMain
	movs r0, 0x87
	lsls r0, 3
	adds r1, r0
	b _0819E00E
	.pool
_0819DECC:
	ldr r0, =gUnknown_03001284
	ldr r1, [r0]
	ldrb r0, [r1, 0x15]
	cmp r0, 0x1
	bne _0819DEDC
	ldr r0, =gUnknown_0203CF20
	ldrb r0, [r0]
	strb r0, [r1, 0x3]
_0819DEDC:
	movs r0, 0x87
	lsls r0, 3
	adds r1, r2, r0
	b _0819E00E
	.pool
_0819DEEC:
	bl sub_819DBD8
	bl sub_819E0C0
	ldr r0, =gUnknown_03001284
	ldr r0, [r0]
	ldrb r0, [r0, 0x15]
	cmp r0, 0x1
	bne _0819DF02
	bl sub_819F304
_0819DF02:
	movs r0, 0
	bl sub_819F048
	b _0819E006
	.pool
_0819DF10:
	ldr r0, =gUnknown_085EEC73
	bl sub_819EBEC
	movs r0, 0x2
	bl PutWindowTilemap
	ldr r1, =gMain
	movs r0, 0x87
	lsls r0, 3
	adds r1, r0
	b _0819E00E
	.pool
_0819DF30:
	bl sub_819EFA8
	movs r0, 0x8
	bl PutWindowTilemap
	b _0819E006
_0819DF3C:
	ldr r0, =gUnknown_03001284
	ldr r0, [r0]
	ldrb r0, [r0, 0x15]
	cmp r0, 0
	bne _0819DF4A
	bl sub_819EB4C
_0819DF4A:
	movs r0, 0x1
	bl PutWindowTilemap
	ldr r1, =gMain
	movs r0, 0x87
	lsls r0, 3
	adds r1, r0
	b _0819E00E
	.pool
_0819DF64:
	bl sub_819EB18
	movs r0, 0
	bl PutWindowTilemap
	b _0819E006
_0819DF70:
	movs r0, 0x87
	lsls r0, 3
	adds r1, r2, r0
	b _0819E00E
_0819DF78:
	ldr r0, =gUnknown_03001284
	ldr r0, [r0]
	ldrb r0, [r0, 0x15]
	cmp r0, 0
	beq _0819E006
	bl sub_819EE08
	b _0819E006
	.pool
_0819DF8C:
	bl sub_819ED78
	movs r0, 0x3
	bl PutWindowTilemap
	ldr r1, =gMain
	movs r0, 0x87
	lsls r0, 3
	adds r1, r0
	b _0819E00E
	.pool
_0819DFA4:
	movs r0, 0x1
	negs r0, r0
	movs r1, 0
	str r1, [sp]
	movs r2, 0x10
	movs r3, 0
	bl BeginNormalPaletteFade
	movs r1, 0x82
	lsls r1, 5
	movs r0, 0
	bl SetGpuReg
	movs r0, 0
	bl ShowBg
	movs r0, 0x1
	bl ShowBg
	movs r0, 0x2
	bl ShowBg
	ldr r0, =gUnknown_03001284
	ldr r0, [r0]
	ldrb r0, [r0, 0x15]
	cmp r0, 0x1
	bne _0819E000
	movs r0, 0x3
	bl ShowBg
	ldr r1, =0x00001248
	movs r0, 0x50
	bl SetGpuReg
	ldr r1, =0x0000040b
	movs r0, 0x52
	bl SetGpuReg
	b _0819E006
	.pool
_0819E000:
	movs r0, 0x3
	bl HideBg
_0819E006:
	ldr r1, =gMain
	movs r2, 0x87
	lsls r2, 3
	adds r1, r2
_0819E00E:
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	b _0819E0AA
	.pool
_0819E01C:
	ldr r0, =sub_819CF54
	movs r1, 0
	bl CreateTask
	ldr r6, =gUnknown_03001284
	ldr r1, [r6]
	adds r1, 0x21
	strb r0, [r1]
	ldr r0, [r6]
	ldrb r5, [r0, 0x15]
	cmp r5, 0
	bne _0819E06C
	ldr r4, =gTasks
	adds r0, 0x21
	ldrb r1, [r0]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 3
	adds r0, r4
	strh r5, [r0, 0x8]
	ldr r0, =sub_819CE40
	movs r1, 0
	bl CreateTask
	lsls r0, 24
	lsrs r1, r0, 24
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 3
	adds r0, r4
	strh r5, [r0, 0x8]
	b _0819E0A4
	.pool
_0819E06C:
	bl sub_819EAF8
	ldr r4, =gTasks
	ldr r2, [r6]
	adds r0, r2, 0
	adds r0, 0x21
	ldrb r1, [r0]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 3
	adds r0, r4
	movs r3, 0
	movs r1, 0x1
	strh r1, [r0, 0x8]
	adds r2, 0x22
	strb r3, [r2]
	ldr r0, =sub_819CD34
	movs r1, 0
	bl CreateTask
	lsls r0, 24
	lsrs r1, r0, 24
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 3
	adds r0, r4
	movs r1, 0x2
	strh r1, [r0, 0x8]
_0819E0A4:
	ldr r0, =sub_819C7E0
	bl SetMainCallback2
_0819E0AA:
	add sp, 0xC
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819DC1C

	thumb_func_start sub_819E0C0
sub_819E0C0: @ 819E0C0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x1C
	mov r1, sp
	ldr r0, =gUnknown_08610834
	ldm r0!, {r2-r4}
	stm r1!, {r2-r4}
	ldm r0!, {r2,r5,r6}
	stm r1!, {r2,r5,r6}
	mov r1, sp
	movs r0, 0x65
	strh r0, [r1, 0x2]
	movs r6, 0
	ldr r4, =gUnknown_03001284
	movs r7, 0
	ldr r5, =gUnknown_02020630
_0819E0E6:
	lsls r1, r6, 1
	adds r1, r6
	lsls r1, 20
	movs r3, 0x90
	lsls r3, 15
	adds r1, r3
	asrs r1, 16
	mov r0, sp
	movs r2, 0x40
	movs r3, 0x1
	bl AddObjectToFront
	ldr r1, [r4]
	adds r1, 0x5
	adds r1, r6
	strb r0, [r1]
	ldr r0, [r4]
	adds r0, 0x5
	adds r0, r6
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	strh r7, [r0, 0x2E]
	adds r0, r6, 0x1
	lsls r0, 24
	lsrs r6, r0, 24
	cmp r6, 0x2
	bls _0819E0E6
	ldr r7, =gUnknown_03001284
	ldr r1, [r7]
	adds r0, r1, 0x5
	ldrb r1, [r1, 0x3]
	adds r0, r1
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	ldr r4, =gUnknown_02020630
	adds r0, r4
	movs r5, 0x20
	ldrsh r1, [r0, r5]
	ldr r0, =gUnknown_0861084C
	movs r2, 0x58
	movs r3, 0
	bl AddObjectToFront
	ldr r1, [r7]
	movs r4, 0
	strb r0, [r1, 0x4]
	ldr r0, =gUnknown_08610864
	movs r1, 0xB0
	movs r2, 0x70
	movs r3, 0
	bl AddObjectToFront
	ldr r1, [r7]
	strb r0, [r1, 0x1]
	ldr r0, =gUnknown_0861087C
	movs r1, 0xB0
	movs r2, 0x90
	movs r3, 0
	bl AddObjectToFront
	ldr r1, [r7]
	strb r0, [r1, 0x2]
	ldr r0, [r7]
	ldrb r1, [r0, 0x1]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	ldr r6, =gUnknown_02020630
	adds r0, r6
	adds r0, 0x3E
	ldrb r1, [r0]
	movs r2, 0x4
	orrs r1, r2
	strb r1, [r0]
	ldr r0, [r7]
	ldrb r1, [r0, 0x2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r6
	adds r0, 0x3E
	ldrb r1, [r0]
	orrs r1, r2
	strb r1, [r0]
	ldr r0, [r7]
	ldrb r1, [r0, 0x1]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r6
	adds r0, 0x28
	strb r4, [r0]
	ldr r0, [r7]
	ldrb r1, [r0, 0x1]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r6
	adds r0, 0x29
	strb r4, [r0]
	ldr r0, [r7]
	ldrb r1, [r0, 0x2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r6
	adds r0, 0x28
	strb r4, [r0]
	ldr r0, [r7]
	ldrb r1, [r0, 0x2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r6
	adds r0, 0x29
	strb r4, [r0]
	ldr r0, [r7]
	ldrb r0, [r0, 0x15]
	movs r1, 0xC0
	str r1, [sp, 0x18]
	cmp r0, 0x1
	bne _0819E1E8
	movs r2, 0xF0
	str r2, [sp, 0x18]
_0819E1E8:
	mov r1, sp
	ldr r0, =gUnknown_0861084C
	ldm r0!, {r3-r5}
	stm r1!, {r3-r5}
	ldm r0!, {r2,r3,r6}
	stm r1!, {r2,r3,r6}
	mov r0, sp
	movs r4, 0x68
	mov r10, r4
	mov r5, r10
	strh r5, [r0]
	movs r1, 0xF0
	movs r2, 0x78
	movs r3, 0xA
	bl AddObjectToFront
	ldr r1, [r7]
	strb r0, [r1, 0x8]
	mov r1, sp
	ldr r0, =gUnknown_08610864
	ldm r0!, {r2,r3,r6}
	stm r1!, {r2,r3,r6}
	ldm r0!, {r4-r6}
	stm r1!, {r4-r6}
	mov r0, sp
	movs r1, 0x69
	mov r9, r1
	mov r2, r9
	strh r2, [r0]
	movs r4, 0x80
	lsls r4, 1
	adds r1, r4, 0
	movs r2, 0x78
	movs r3, 0xA
	bl AddObjectToFront
	ldr r1, [r7]
	strb r0, [r1, 0x9]
	movs r5, 0x90
	lsls r5, 1
	mov r0, sp
	adds r1, r5, 0
	movs r2, 0x78
	movs r3, 0xA
	bl AddObjectToFront
	ldr r1, [r7]
	strb r0, [r1, 0xA]
	mov r1, sp
	ldr r0, =gUnknown_0861084C
	ldm r0!, {r2,r3,r6}
	stm r1!, {r2,r3,r6}
	ldm r0!, {r2,r3,r6}
	stm r1!, {r2,r3,r6}
	mov r0, sp
	movs r3, 0x6A
	mov r8, r3
	mov r6, r8
	strh r6, [r0]
	movs r1, 0xF0
	movs r2, 0x78
	movs r3, 0x1
	bl AddObjectToFront
	ldr r1, [r7]
	strb r0, [r1, 0xB]
	mov r1, sp
	ldr r0, =gUnknown_08610864
	ldm r0!, {r2,r3,r6}
	stm r1!, {r2,r3,r6}
	ldm r0!, {r2,r3,r6}
	stm r1!, {r2,r3,r6}
	mov r1, sp
	movs r0, 0x6B
	strh r0, [r1]
	mov r0, sp
	adds r1, r4, 0
	movs r2, 0x78
	movs r3, 0x1
	bl AddObjectToFront
	ldr r1, [r7]
	strb r0, [r1, 0xC]
	mov r0, sp
	movs r6, 0x6C
	strh r6, [r0]
	adds r1, r5, 0
	movs r2, 0x78
	movs r3, 0x1
	bl AddObjectToFront
	ldr r1, [r7]
	strb r0, [r1, 0xD]
	mov r1, sp
	ldr r0, =gUnknown_0861084C
	ldm r0!, {r2-r4}
	stm r1!, {r2-r4}
	ldm r0!, {r2,r3,r5}
	stm r1!, {r2,r3,r5}
	mov r0, sp
	mov r4, r10
	strh r4, [r0]
	ldr r1, [sp, 0x18]
	movs r2, 0x90
	movs r3, 0xA
	bl AddObjectToFront
	ldr r1, [r7]
	strb r0, [r1, 0xE]
	mov r1, sp
	ldr r0, =gUnknown_08610864
	ldm r0!, {r2,r3,r5}
	stm r1!, {r2,r3,r5}
	ldm r0!, {r2,r4,r5}
	stm r1!, {r2,r4,r5}
	mov r0, sp
	mov r3, r9
	strh r3, [r0]
	ldr r4, [sp, 0x18]
	adds r4, 0x10
	adds r1, r4, 0
	movs r2, 0x90
	movs r3, 0xA
	bl AddObjectToFront
	ldr r1, [r7]
	strb r0, [r1, 0xF]
	mov r1, sp
	ldr r0, =gUnknown_0861084C
	ldm r0!, {r2,r3,r5}
	stm r1!, {r2,r3,r5}
	ldm r0!, {r2,r3,r5}
	stm r1!, {r2,r3,r5}
	mov r0, sp
	mov r5, r8
	strh r5, [r0]
	ldr r1, [sp, 0x18]
	movs r2, 0x90
	movs r3, 0x1
	bl AddObjectToFront
	ldr r1, [r7]
	strb r0, [r1, 0x10]
	mov r1, sp
	ldr r0, =gUnknown_08610864
	ldm r0!, {r2,r3,r5}
	stm r1!, {r2,r3,r5}
	ldm r0!, {r2,r3,r5}
	stm r1!, {r2,r3,r5}
	mov r0, sp
	strh r6, [r0]
	adds r1, r4, 0
	movs r2, 0x90
	movs r3, 0x1
	bl AddObjectToFront
	ldr r1, [r7]
	strb r0, [r1, 0x11]
	movs r6, 0
	ldr r5, =gUnknown_02020630
	adds r4, r7, 0
	movs r7, 0
	movs r0, 0x4
	mov r10, r0
_0819E330:
	ldr r0, [r4]
	lsls r3, r6, 1
	adds r2, r3, r6
	adds r0, 0x8
	adds r0, r2
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	adds r0, 0x28
	strb r7, [r0]
	ldr r0, [r4]
	adds r0, 0x8
	adds r0, r2
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	adds r0, 0x29
	strb r7, [r0]
	ldr r0, [r4]
	adds r0, 0x9
	adds r0, r2
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	adds r0, 0x28
	strb r7, [r0]
	ldr r0, [r4]
	adds r0, 0x9
	adds r0, r2
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	adds r0, 0x29
	strb r7, [r0]
	ldr r0, [r4]
	adds r0, 0xA
	adds r0, r2
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	adds r0, 0x28
	strb r7, [r0]
	ldr r0, [r4]
	adds r0, 0xA
	adds r0, r2
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	adds r0, 0x29
	strb r7, [r0]
	ldr r0, [r4]
	adds r0, 0xE
	adds r0, r3
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	adds r0, 0x28
	strb r7, [r0]
	ldr r0, [r4]
	adds r0, 0xE
	adds r0, r3
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	adds r0, 0x29
	strb r7, [r0]
	ldr r0, [r4]
	adds r0, 0xF
	adds r0, r3
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	adds r0, 0x28
	strb r7, [r0]
	ldr r0, [r4]
	adds r0, 0xF
	adds r0, r3
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	adds r0, 0x29
	strb r7, [r0]
	ldr r0, [r4]
	adds r0, 0x8
	adds r0, r2
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	adds r0, 0x3E
	mov r8, r0
	ldrb r1, [r0]
	mov r0, r10
	orrs r1, r0
	mov r0, r8
	strb r1, [r0]
	ldr r0, [r4]
	adds r0, 0x9
	adds r0, r2
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	adds r0, 0x3E
	mov r8, r0
	ldrb r1, [r0]
	mov r0, r10
	orrs r1, r0
	mov r0, r8
	strb r1, [r0]
	ldr r0, [r4]
	adds r0, 0xA
	adds r0, r2
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	adds r0, 0x3E
	ldrb r1, [r0]
	mov r2, r10
	orrs r1, r2
	strb r1, [r0]
	ldr r0, [r4]
	adds r0, 0xE
	adds r0, r3
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	adds r0, 0x3E
	ldrb r1, [r0]
	orrs r1, r2
	strb r1, [r0]
	ldr r0, [r4]
	adds r0, 0xF
	adds r0, r3
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	adds r0, 0x3E
	ldrb r1, [r0]
	orrs r1, r2
	strb r1, [r0]
	adds r0, r6, 0x1
	lsls r0, 24
	lsrs r6, r0, 24
	ldr r3, =gUnknown_03001284
	mov r8, r3
	ldr r0, =gUnknown_02020630
	mov r9, r0
	cmp r6, 0x1
	bhi _0819E496
	b _0819E330
_0819E496:
	ldr r0, [r3]
	ldrb r0, [r0, 0xE]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	add r1, r9
	adds r1, 0x3E
	ldrb r2, [r1]
	movs r3, 0x5
	negs r3, r3
	adds r0, r3, 0
	b _0819E4C8
	.pool
_0819E4C8:
	ands r0, r2
	strb r0, [r1]
	mov r1, r8
	ldr r0, [r1]
	ldrb r1, [r0, 0xF]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	add r0, r9
	adds r0, 0x3E
	ldrb r2, [r0]
	adds r1, r3, 0
	ands r1, r2
	strb r1, [r0]
	mov r2, r8
	ldr r0, [r2]
	ldrb r1, [r0, 0x8]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	add r0, r9
	adds r0, 0x3E
	ldrb r2, [r0]
	adds r1, r3, 0
	ands r1, r2
	strb r1, [r0]
	mov r4, r8
	ldr r0, [r4]
	ldrb r1, [r0, 0x9]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	add r0, r9
	adds r0, 0x3E
	ldrb r2, [r0]
	adds r1, r3, 0
	ands r1, r2
	strb r1, [r0]
	ldr r0, [r4]
	ldrb r1, [r0, 0xA]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	add r0, r9
	adds r0, 0x3E
	ldrb r1, [r0]
	ands r3, r1
	strb r3, [r0]
	add sp, 0x1C
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_819E0C0

	thumb_func_start sub_819E538
sub_819E538: @ 819E538
	push {r4-r7,lr}
	movs r5, 0
_0819E53C:
	ldr r6, =gUnknown_03001284
	ldr r0, [r6]
	adds r0, 0x5
	adds r0, r5
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	ldr r4, =gUnknown_02020630
	adds r0, r4
	bl RemoveObjectAndFreeTiles
	adds r0, r5, 0x1
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, 0x2
	bls _0819E53C
	ldr r0, [r6]
	ldrb r1, [r0, 0x4]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	bl RemoveObjectAndFreeTiles
	ldr r0, [r6]
	ldrb r1, [r0, 0x1]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	bl RemoveObjectAndFreeTiles
	ldr r0, [r6]
	ldrb r1, [r0, 0x2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	bl RemoveObjectAndFreeTiles
	movs r5, 0
_0819E590:
	movs r4, 0
	lsls r6, r5, 1
_0819E594:
	ldr r0, =gUnknown_03001284
	ldr r0, [r0]
	adds r1, r6, r5
	adds r1, r4, r1
	adds r0, 0x8
	adds r0, r1
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	ldr r1, =gUnknown_02020630
	adds r0, r1
	bl RemoveObjectAndFreeTiles
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x2
	bls _0819E594
	adds r0, r5, 0x1
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, 0x1
	bls _0819E590
	movs r5, 0
_0819E5C6:
	movs r4, 0
	adds r7, r5, 0x1
	lsls r6, r5, 1
_0819E5CC:
	ldr r0, =gUnknown_03001284
	ldr r0, [r0]
	adds r1, r4, r6
	adds r0, 0xE
	adds r0, r1
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	ldr r1, =gUnknown_02020630
	adds r0, r1
	bl RemoveObjectAndFreeTiles
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x1
	bls _0819E5CC
	lsls r0, r7, 24
	lsrs r5, r0, 24
	cmp r5, 0x1
	bls _0819E5C6
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819E538

	thumb_func_start sub_819E608
sub_819E608: @ 819E608
	push {r4-r6,lr}
	lsls r0, 24
	lsrs r6, r0, 24
	cmp r6, 0x2
	bhi _0819E65C
	ldr r4, =gUnknown_02020630
	ldr r5, =gUnknown_03001284
	ldr r0, [r5]
	ldrb r1, [r0, 0x4]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	adds r0, 0x3E
	ldrb r2, [r0]
	movs r1, 0x5
	negs r1, r1
	ands r1, r2
	strb r1, [r0]
	bl sub_819E8EC
	ldr r0, [r5]
	ldrb r2, [r0, 0x4]
	lsls r1, r2, 4
	adds r1, r2
	lsls r1, 2
	adds r1, r4
	adds r0, 0x5
	adds r0, r6
	ldrb r2, [r0]
	lsls r0, r2, 4
	adds r0, r2
	lsls r0, 2
	adds r0, r4
	ldrh r0, [r0, 0x20]
	strh r0, [r1, 0x20]
	b _0819E684
	.pool
_0819E65C:
	ldr r2, =gUnknown_02020630
	ldr r3, =gUnknown_03001284
	ldr r0, [r3]
	ldrb r1, [r0, 0x4]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	adds r0, 0x3E
	ldrb r1, [r0]
	movs r2, 0x4
	orrs r1, r2
	strb r1, [r0]
	ldr r0, [r3]
	ldr r1, [r0, 0x18]
	lsls r0, r6, 3
	adds r0, r1
	ldrb r0, [r0]
	bl sub_819E838
_0819E684:
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819E608

	thumb_func_start sub_819E694
sub_819E694: @ 819E694
	push {r4,lr}
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	movs r0, 0x5
	bl audio_play
	lsls r4, 24
	cmp r4, 0
	ble _0819E6C0
	ldr r1, =gUnknown_03001284
	ldr r2, [r1]
	ldrb r0, [r2, 0x3]
	adds r0, 0x1
	ldrb r3, [r2, 0x17]
	cmp r0, r3
	bne _0819E6D8
	movs r0, 0
	b _0819E6D8
	.pool
_0819E6C0:
	ldr r0, =gUnknown_03001284
	ldr r2, [r0]
	ldrb r3, [r2, 0x3]
	adds r1, r0, 0
	cmp r3, 0
	beq _0819E6D4
	subs r0, r3, 0x1
	b _0819E6D8
	.pool
_0819E6D4:
	ldrb r0, [r2, 0x17]
	subs r0, 0x1
_0819E6D8:
	strb r0, [r2, 0x3]
	ldr r0, [r1]
	ldrb r0, [r0, 0x3]
	bl sub_819E608
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_819E694

	thumb_func_start sub_819E6E8
sub_819E6E8: @ 819E6E8
	push {r4,lr}
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	movs r0, 0x5
	bl audio_play
	lsls r4, 24
	cmp r4, 0
	ble _0819E728
	ldr r0, =gUnknown_03001284
	ldr r2, [r0]
	ldrb r1, [r2, 0x3]
	adds r4, r0, 0
	cmp r1, 0x2
	bhi _0819E714
	movs r0, 0x3
	strb r0, [r2, 0x3]
	b _0819E74A
	.pool
_0819E714:
	ldrb r0, [r2, 0x3]
	adds r0, 0x1
	ldrb r1, [r2, 0x17]
	cmp r0, r1
	beq _0819E722
	strb r0, [r2, 0x3]
	b _0819E74A
_0819E722:
	movs r0, 0
	strb r0, [r2, 0x3]
	b _0819E74A
_0819E728:
	ldr r0, =gUnknown_03001284
	ldr r1, [r0]
	ldrb r3, [r1, 0x3]
	adds r2, r3, 0
	adds r4, r0, 0
	cmp r2, 0x2
	bls _0819E744
	cmp r2, 0
	beq _0819E744
	subs r0, r3, 0x1
	b _0819E748
	.pool
_0819E744:
	ldrb r0, [r1, 0x17]
	subs r0, 0x1
_0819E748:
	strb r0, [r1, 0x3]
_0819E74A:
	ldr r0, [r4]
	ldrb r0, [r0, 0x3]
	bl sub_819E608
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_819E6E8

	thumb_func_start sub_819E758
sub_819E758: @ 819E758
	push {lr}
	lsls r0, 24
	cmp r0, 0
	ble _0819E778
	ldr r0, =gUnknown_03001284
	ldr r1, [r0]
	ldrb r3, [r1, 0x16]
	adds r2, r0, 0
	cmp r3, 0x1
	beq _0819E774
	adds r0, r3, 0x1
	b _0819E78E
	.pool
_0819E774:
	movs r0, 0
	b _0819E78E
_0819E778:
	ldr r0, =gUnknown_03001284
	ldr r1, [r0]
	ldrb r3, [r1, 0x16]
	adds r2, r0, 0
	cmp r3, 0
	beq _0819E78C
	subs r0, r3, 0x1
	b _0819E78E
	.pool
_0819E78C:
	movs r0, 0x1
_0819E78E:
	strb r0, [r1, 0x16]
	ldr r3, =gUnknown_02020630
	ldr r2, [r2]
	ldrb r0, [r2, 0x1]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r3
	ldrb r0, [r2, 0x16]
	lsls r0, 4
	adds r0, 0x70
	strh r0, [r1, 0x22]
	ldrb r0, [r2, 0x2]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r3
	ldrb r0, [r2, 0x16]
	lsls r0, 4
	adds r0, 0x70
	strh r0, [r1, 0x22]
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819E758

	thumb_func_start sub_819E7C0
sub_819E7C0: @ 819E7C0
	push {r4,lr}
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	movs r0, 0x5
	bl audio_play
	lsls r4, 24
	cmp r4, 0
	ble _0819E7EC
	ldr r0, =gUnknown_03001284
	ldr r1, [r0]
	ldrb r3, [r1]
	adds r2, r0, 0
	cmp r3, 0x2
	beq _0819E7E8
	adds r0, r3, 0x1
	b _0819E802
	.pool
_0819E7E8:
	movs r0, 0
	b _0819E802
_0819E7EC:
	ldr r0, =gUnknown_03001284
	ldr r1, [r0]
	ldrb r3, [r1]
	adds r2, r0, 0
	cmp r3, 0
	beq _0819E800
	subs r0, r3, 0x1
	b _0819E802
	.pool
_0819E800:
	movs r0, 0x2
_0819E802:
	strb r0, [r1]
	ldr r3, =gUnknown_02020630
	ldr r2, [r2]
	ldrb r0, [r2, 0x1]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r3
	ldrb r0, [r2]
	lsls r0, 4
	adds r0, 0x70
	strh r0, [r1, 0x22]
	ldrb r0, [r2, 0x2]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r3
	ldrb r0, [r2]
	lsls r0, 4
	adds r0, 0x70
	strh r0, [r1, 0x22]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819E7C0

	thumb_func_start sub_819E838
sub_819E838: @ 819E838
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	lsls r0, 24
	lsrs r6, r0, 24
	movs r4, 0
	movs r0, 0x5
	negs r0, r0
	mov r9, r0
	movs r2, 0x4
	mov r8, r2
	ldr r0, =gUnknown_02020630
	mov r12, r0
	ldr r7, =gUnknown_03001284
_0819E856:
	cmp r6, 0x2
	bne _0819E898
	ldr r5, =gUnknown_02020630
	ldr r3, =gUnknown_03001284
	ldr r0, [r3]
	adds r0, 0xB
	adds r0, r4
	ldrb r0, [r0]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r5
	adds r1, 0x3E
	ldrb r2, [r1]
	mov r0, r9
	ands r0, r2
	strb r0, [r1]
	cmp r4, 0x1
	bhi _0819E8D4
	ldr r0, [r3]
	adds r0, 0x10
	adds r0, r4
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	b _0819E8CA
	.pool
_0819E898:
	cmp r6, 0x3
	bne _0819E8D4
	cmp r4, 0x1
	bhi _0819E8BA
	ldr r0, [r7]
	adds r0, 0x10
	adds r0, r4
	ldrb r0, [r0]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	add r1, r12
	adds r1, 0x3E
	ldrb r2, [r1]
	mov r0, r9
	ands r0, r2
	strb r0, [r1]
_0819E8BA:
	ldr r0, [r7]
	adds r0, 0xB
	adds r0, r4
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	add r0, r12
_0819E8CA:
	adds r0, 0x3E
	ldrb r1, [r0]
	mov r2, r8
	orrs r1, r2
	strb r1, [r0]
_0819E8D4:
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x2
	bls _0819E856
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_819E838

	thumb_func_start sub_819E8EC
sub_819E8EC: @ 819E8EC
	push {r4-r6,lr}
	movs r2, 0
	ldr r5, =gUnknown_02020630
	ldr r4, =gUnknown_03001284
	adds r6, r5, 0
	movs r3, 0x4
_0819E8F8:
	ldr r0, [r4]
	adds r0, 0xB
	adds r0, r2
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r6
	adds r0, 0x3E
	ldrb r1, [r0]
	orrs r1, r3
	strb r1, [r0]
	cmp r2, 0x1
	bhi _0819E92C
	ldr r0, [r4]
	adds r0, 0x10
	adds r0, r2
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	adds r0, 0x3E
	ldrb r1, [r0]
	orrs r1, r3
	strb r1, [r0]
_0819E92C:
	adds r0, r2, 0x1
	lsls r0, 24
	lsrs r2, r0, 24
	cmp r2, 0x2
	bls _0819E8F8
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819E8EC

	thumb_func_start sub_819E944
sub_819E944: @ 819E944
	push {r4,r5,lr}
	ldr r0, =gUnknown_03001284
	ldr r3, [r0]
	ldrb r1, [r3, 0x15]
	adds r5, r0, 0
	cmp r1, 0x1
	bne _0819E95C
	movs r0, 0
	strb r0, [r3, 0x15]
	b _0819E960
	.pool
_0819E95C:
	movs r0, 0
	strb r0, [r3]
_0819E960:
	ldr r4, =gUnknown_02020630
	ldr r2, [r5]
	ldrb r1, [r2, 0x1]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	movs r1, 0xB0
	strh r1, [r0, 0x20]
	ldrb r0, [r2, 0x1]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r4
	ldrb r0, [r2]
	lsls r0, 4
	adds r0, 0x70
	strh r0, [r1, 0x22]
	ldrb r1, [r2, 0x2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	movs r1, 0xD0
	strh r1, [r0, 0x20]
	ldrb r0, [r2, 0x2]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r4
	ldrb r0, [r2]
	lsls r0, 4
	adds r0, 0x70
	strh r0, [r1, 0x22]
	ldrb r0, [r2, 0x1]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r4
	adds r1, 0x3E
	ldrb r3, [r1]
	movs r2, 0x5
	negs r2, r2
	adds r0, r2, 0
	ands r0, r3
	strb r0, [r1]
	ldr r0, [r5]
	ldrb r1, [r0, 0x2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	adds r0, 0x3E
	ldrb r1, [r0]
	ands r2, r1
	strb r2, [r0]
	bl sub_819EC20
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819E944

	thumb_func_start sub_819E9E0
sub_819E9E0: @ 819E9E0
	push {r4,r5,lr}
	ldr r5, =gUnknown_03001284
	ldr r1, [r5]
	movs r0, 0
	strb r0, [r1, 0x16]
	ldr r4, =gUnknown_02020630
	ldr r2, [r5]
	ldrb r1, [r2, 0x1]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	movs r1, 0xB0
	strh r1, [r0, 0x20]
	ldrb r1, [r2, 0x1]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	movs r3, 0x70
	strh r3, [r0, 0x22]
	ldrb r1, [r2, 0x2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	movs r1, 0xD0
	strh r1, [r0, 0x20]
	ldrb r1, [r2, 0x2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	strh r3, [r0, 0x22]
	ldrb r0, [r2, 0x1]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r4
	adds r1, 0x3E
	ldrb r3, [r1]
	movs r2, 0x5
	negs r2, r2
	adds r0, r2, 0
	ands r0, r3
	strb r0, [r1]
	ldr r0, [r5]
	ldrb r1, [r0, 0x2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	adds r0, 0x3E
	ldrb r1, [r0]
	ands r2, r1
	strb r2, [r0]
	bl sub_819EC94
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819E9E0

	thumb_func_start sub_819EA64
sub_819EA64: @ 819EA64
	push {r4,r5,lr}
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	ldr r5, =gUnknown_02020630
	ldr r3, =gUnknown_03001284
	ldr r0, [r3]
	ldrb r1, [r0, 0x1]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	adds r0, 0x3E
	ldrb r1, [r0]
	movs r2, 0x4
	orrs r1, r2
	strb r1, [r0]
	ldr r0, [r3]
	ldrb r1, [r0, 0x2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	adds r0, 0x3E
	ldrb r1, [r0]
	orrs r1, r2
	strb r1, [r0]
	adds r0, r4, 0
	movs r1, 0
	bl FillWindowPixelBuffer
	adds r0, r4, 0
	movs r1, 0x2
	bl CopyWindowToVram
	adds r0, r4, 0
	bl ClearWindowTilemap
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819EA64

	thumb_func_start sub_819EAC0
sub_819EAC0: @ 819EAC0
	push {lr}
	movs r0, 0x1
	bl PutWindowTilemap
	movs r0, 0x1
	movs r1, 0
	bl FillWindowPixelBuffer
	movs r0, 0x1
	movs r1, 0x2
	bl CopyWindowToVram
	pop {r0}
	bx r0
	thumb_func_end sub_819EAC0

	thumb_func_start sub_819EADC
sub_819EADC: @ 819EADC
	push {lr}
	movs r0, 0x7
	bl PutWindowTilemap
	movs r0, 0x7
	movs r1, 0
	bl FillWindowPixelBuffer
	movs r0, 0x7
	movs r1, 0x2
	bl CopyWindowToVram
	pop {r0}
	bx r0
	thumb_func_end sub_819EADC

	thumb_func_start sub_819EAF8
sub_819EAF8: @ 819EAF8
	push {lr}
	bl sub_819EAC0
	movs r0, 0x5
	bl PutWindowTilemap
	movs r0, 0x5
	movs r1, 0
	bl FillWindowPixelBuffer
	movs r0, 0x5
	movs r1, 0x2
	bl CopyWindowToVram
	pop {r0}
	bx r0
	thumb_func_end sub_819EAF8

	thumb_func_start sub_819EB18
sub_819EB18: @ 819EB18
	push {lr}
	sub sp, 0xC
	movs r0, 0
	movs r1, 0x11
	bl FillWindowPixelBuffer
	ldr r2, =gUnknown_085EEC66
	movs r0, 0x1
	str r0, [sp]
	movs r0, 0
	str r0, [sp, 0x4]
	str r0, [sp, 0x8]
	movs r1, 0x1
	movs r3, 0x2
	bl Print
	movs r0, 0
	movs r1, 0x3
	bl CopyWindowToVram
	add sp, 0xC
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819EB18

	thumb_func_start sub_819EB4C
sub_819EB4C: @ 819EB4C
	push {r4,lr}
	sub sp, 0xC
	movs r0, 0x1
	movs r1, 0
	bl FillWindowPixelBuffer
	ldr r0, =gUnknown_03001284
	ldr r1, [r0]
	ldrb r0, [r1, 0x3]
	cmp r0, 0x2
	bls _0819EB70
	movs r0, 0x1
	movs r1, 0x2
	bl CopyWindowToVram
	b _0819EBD4
	.pool
_0819EB70:
	ldrb r2, [r1, 0x3]
	ldrb r0, [r1, 0x14]
	cmp r0, 0
	bne _0819EB84
	movs r0, 0x64
	muls r0, r2
	ldr r1, =gPlayerParty
	b _0819EB8A
	.pool
_0819EB84:
	movs r0, 0x64
	muls r0, r2
	ldr r1, =gEnemyParty
_0819EB8A:
	adds r0, r1
	movs r1, 0xB
	movs r2, 0
	bl GetMonData
	lsls r0, 16
	lsrs r1, r0, 16
	ldr r4, =gStringVar4
	movs r0, 0xB
	muls r1, r0
	ldr r0, =gSpeciesNames
	adds r1, r0
	adds r0, r4, 0
	bl StringCopy
	movs r0, 0x1
	adds r1, r4, 0
	movs r2, 0x56
	bl GetStringRightAlignXOffset
	adds r2, r0, 0
	lsls r2, 24
	lsrs r2, 24
	ldr r0, =gUnknown_08610925
	str r0, [sp]
	movs r0, 0
	str r0, [sp, 0x4]
	str r4, [sp, 0x8]
	movs r0, 0x1
	movs r1, 0x1
	movs r3, 0x1
	bl box_print
	movs r0, 0x1
	movs r1, 0x3
	bl CopyWindowToVram
_0819EBD4:
	add sp, 0xC
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819EB4C

	thumb_func_start sub_819EBEC
sub_819EBEC: @ 819EBEC
	push {r4,lr}
	sub sp, 0xC
	adds r4, r0, 0
	movs r0, 0x2
	movs r1, 0
	bl FillWindowPixelBuffer
	movs r0, 0x5
	str r0, [sp]
	movs r0, 0
	str r0, [sp, 0x4]
	str r0, [sp, 0x8]
	movs r0, 0x2
	movs r1, 0x1
	adds r2, r4, 0
	movs r3, 0x2
	bl Print
	movs r0, 0x2
	movs r1, 0x2
	bl CopyWindowToVram
	add sp, 0xC
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_819EBEC

	thumb_func_start sub_819EC20
sub_819EC20: @ 819EC20
	push {r4,r5,lr}
	sub sp, 0xC
	movs r0, 0x3
	bl PutWindowTilemap
	movs r0, 0x3
	movs r1, 0
	bl FillWindowPixelBuffer
	ldr r5, =gUnknown_08610922
	str r5, [sp]
	movs r4, 0
	str r4, [sp, 0x4]
	ldr r0, =gUnknown_085EECAA
	str r0, [sp, 0x8]
	movs r0, 0x3
	movs r1, 0x1
	movs r2, 0xF
	movs r3, 0x1
	bl box_print
	str r5, [sp]
	str r4, [sp, 0x4]
	ldr r0, =gUnknown_085EECA5
	str r0, [sp, 0x8]
	movs r0, 0x3
	movs r1, 0x1
	movs r2, 0xF
	movs r3, 0x11
	bl box_print
	str r5, [sp]
	str r4, [sp, 0x4]
	ldr r0, =gUnknown_085EECB2
	str r0, [sp, 0x8]
	movs r0, 0x3
	movs r1, 0x1
	movs r2, 0xF
	movs r3, 0x21
	bl box_print
	movs r0, 0x3
	movs r1, 0x3
	bl CopyWindowToVram
	add sp, 0xC
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819EC20

	thumb_func_start sub_819EC94
sub_819EC94: @ 819EC94
	push {r4,r5,lr}
	sub sp, 0xC
	movs r0, 0x4
	bl PutWindowTilemap
	movs r0, 0x4
	movs r1, 0
	bl FillWindowPixelBuffer
	ldr r5, =gUnknown_08610922
	str r5, [sp]
	movs r4, 0
	str r4, [sp, 0x4]
	ldr r0, =gUnknown_085EECCA
	str r0, [sp, 0x8]
	movs r0, 0x4
	movs r1, 0x1
	movs r2, 0x7
	movs r3, 0x1
	bl box_print
	str r5, [sp]
	str r4, [sp, 0x4]
	ldr r0, =gUnknown_085EECCE
	str r0, [sp, 0x8]
	movs r0, 0x4
	movs r1, 0x1
	movs r2, 0x7
	movs r3, 0x11
	bl box_print
	movs r0, 0x4
	movs r1, 0x3
	bl CopyWindowToVram
	add sp, 0xC
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819EC94

	thumb_func_start sub_819ECF0
sub_819ECF0: @ 819ECF0
	push {r4-r6,lr}
	sub sp, 0xC
	adds r6, r0, 0
	adds r5, r1, 0
	adds r4, r2, 0
	movs r0, 0
	adds r1, r6, 0
	movs r2, 0x46
	bl GetStringRightAlignXOffset
	adds r2, r0, 0
	lsls r4, 24
	lsrs r4, 24
	lsls r2, 24
	lsrs r2, 24
	lsls r5, 24
	lsrs r5, 24
	ldr r0, =gUnknown_08610922
	str r0, [sp]
	movs r0, 0
	str r0, [sp, 0x4]
	str r6, [sp, 0x8]
	adds r0, r4, 0
	movs r1, 0
	adds r3, r5, 0
	bl box_print
	add sp, 0xC
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819ECF0

	thumb_func_start sub_819ED34
sub_819ED34: @ 819ED34
	push {lr}
	movs r0, 0x5
	movs r1, 0
	bl FillWindowPixelBuffer
	ldr r0, =gUnknown_03001284
	ldr r0, [r0]
	ldrb r0, [r0, 0x14]
	cmp r0, 0
	beq _0819ED56
	cmp r0, 0x1
	bne _0819ED60
	ldr r0, =gUnknown_085EECD1
	movs r1, 0
	movs r2, 0x5
	bl sub_819ECF0
_0819ED56:
	ldr r0, =gUnknown_085EECDD
	movs r1, 0x18
	movs r2, 0x5
	bl sub_819ECF0
_0819ED60:
	movs r0, 0x5
	movs r1, 0x3
	bl CopyWindowToVram
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819ED34

	thumb_func_start sub_819ED78
sub_819ED78: @ 819ED78
	push {lr}
	movs r0, 0x3
	movs r1, 0
	bl FillWindowPixelBuffer
	ldr r0, =gUnknown_03001284
	ldr r0, [r0]
	ldrb r0, [r0, 0x14]
	cmp r0, 0
	beq _0819ED9A
	cmp r0, 0x1
	bne _0819EDA4
	ldr r0, =gUnknown_085EECD1
	movs r1, 0x8
	movs r2, 0x3
	bl sub_819ECF0
_0819ED9A:
	ldr r0, =gUnknown_085EECDD
	movs r1, 0x20
	movs r2, 0x3
	bl sub_819ECF0
_0819EDA4:
	movs r0, 0x3
	movs r1, 0x3
	bl CopyWindowToVram
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819ED78

	thumb_func_start sub_819EDBC
sub_819EDBC: @ 819EDBC
	push {lr}
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0
	beq _0819EDCC
	cmp r0, 0x1
	beq _0819EDEC
	b _0819EDF6
_0819EDCC:
	ldr r0, =gUnknown_03001284
	ldr r0, [r0]
	ldrb r0, [r0, 0x14]
	cmp r0, 0x1
	bne _0819EDF6
	ldr r0, =gUnknown_085EECD1
	movs r1, 0x8
	movs r2, 0x3
	bl sub_819ECF0
	b _0819EDF6
	.pool
_0819EDEC:
	ldr r0, =gUnknown_085EECDD
	movs r1, 0x20
	movs r2, 0x3
	bl sub_819ECF0
_0819EDF6:
	movs r0, 0x3
	movs r1, 0x3
	bl CopyWindowToVram
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819EDBC

	thumb_func_start sub_819EE08
sub_819EE08: @ 819EE08
	push {r4,lr}
	sub sp, 0x18
	ldr r0, =gUnknown_08610918
	add r1, sp, 0xC
	movs r2, 0x4
	bl CpuSet
	ldr r0, =gUnknown_03001284
	ldr r2, [r0]
	ldrb r0, [r2, 0x15]
	cmp r0, 0
	bne _0819EE3C
	add r0, sp, 0xC
	ldr r1, =gPlttBufferFaded
	movs r2, 0xE4
	lsls r2, 1
	adds r1, r2
	ldrh r1, [r1]
	strh r1, [r0, 0x8]
	b _0819EE42
	.pool
_0819EE3C:
	add r1, sp, 0xC
	ldrh r0, [r2, 0x24]
	strh r0, [r1, 0x8]
_0819EE42:
	add r0, sp, 0xC
	movs r1, 0xF0
	movs r2, 0xA
	bl LoadPalette
	movs r0, 0x7
	bl PutWindowTilemap
	movs r0, 0x7
	movs r1, 0
	bl FillWindowPixelBuffer
	ldr r0, =gUnknown_03001284
	ldr r1, [r0]
	ldrb r0, [r1, 0x3]
	cmp r0, 0x2
	bls _0819EE74
	movs r0, 0x7
	movs r1, 0x3
	bl CopyWindowToVram
	b _0819EED8
	.pool
_0819EE74:
	ldrb r2, [r1, 0x3]
	ldrb r0, [r1, 0x14]
	cmp r0, 0
	bne _0819EE88
	movs r0, 0x64
	muls r0, r2
	ldr r1, =gPlayerParty
	b _0819EE8E
	.pool
_0819EE88:
	movs r0, 0x64
	muls r0, r2
	ldr r1, =gEnemyParty
_0819EE8E:
	adds r0, r1
	movs r1, 0xB
	movs r2, 0
	bl GetMonData
	lsls r0, 16
	lsrs r1, r0, 16
	ldr r4, =gStringVar4
	movs r0, 0xB
	muls r1, r0
	ldr r0, =gSpeciesNames
	adds r1, r0
	adds r0, r4, 0
	bl StringCopy
	movs r0, 0x1
	adds r1, r4, 0
	movs r2, 0x56
	bl GetStringRightAlignXOffset
	adds r2, r0, 0
	lsls r2, 24
	lsrs r2, 24
	ldr r0, =gUnknown_08610925
	str r0, [sp]
	movs r0, 0
	str r0, [sp, 0x4]
	str r4, [sp, 0x8]
	movs r0, 0x7
	movs r1, 0x1
	movs r3, 0x1
	bl box_print
	movs r0, 0x7
	movs r1, 0x3
	bl CopyWindowToVram
_0819EED8:
	add sp, 0x18
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819EE08

	thumb_func_start sub_819EEF0
sub_819EEF0: @ 819EEF0
	push {r4,lr}
	sub sp, 0xC
	ldr r0, =gUnknown_08610918
	movs r1, 0xE0
	movs r2, 0xA
	bl LoadPalette
	ldr r0, =gPlttBufferUnfaded+ 0x1E0
	ldr r1, =gPlttBufferFaded + 0x1C0
	movs r2, 0x5
	bl CpuSet
	ldr r0, =gUnknown_03001284
	ldr r1, [r0]
	ldrb r0, [r1, 0x3]
	cmp r0, 0x2
	bls _0819EF2C
	movs r0, 0x1
	movs r1, 0x2
	bl CopyWindowToVram
	b _0819EF90
	.pool
_0819EF2C:
	ldrb r2, [r1, 0x3]
	ldrb r0, [r1, 0x14]
	cmp r0, 0
	bne _0819EF40
	movs r0, 0x64
	muls r0, r2
	ldr r1, =gPlayerParty
	b _0819EF46
	.pool
_0819EF40:
	movs r0, 0x64
	muls r0, r2
	ldr r1, =gEnemyParty
_0819EF46:
	adds r0, r1
	movs r1, 0xB
	movs r2, 0
	bl GetMonData
	lsls r0, 16
	lsrs r1, r0, 16
	ldr r4, =gStringVar4
	movs r0, 0xB
	muls r1, r0
	ldr r0, =gSpeciesNames
	adds r1, r0
	adds r0, r4, 0
	bl StringCopy
	movs r0, 0x1
	adds r1, r4, 0
	movs r2, 0x56
	bl GetStringRightAlignXOffset
	adds r2, r0, 0
	lsls r2, 24
	lsrs r2, 24
	ldr r0, =gUnknown_08610925
	str r0, [sp]
	movs r0, 0
	str r0, [sp, 0x4]
	str r4, [sp, 0x8]
	movs r0, 0x1
	movs r1, 0x1
	movs r3, 0x1
	bl box_print
	movs r0, 0x1
	movs r1, 0x3
	bl CopyWindowToVram
_0819EF90:
	add sp, 0xC
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819EEF0

	thumb_func_start sub_819EFA8
sub_819EFA8: @ 819EFA8
	push {r4-r6,lr}
	sub sp, 0x2C
	ldr r6, =gUnknown_03001284
	ldr r0, [r6]
	ldrb r4, [r0, 0x3]
	adds r5, r4, 0
	movs r0, 0x8
	movs r1, 0
	bl FillWindowPixelBuffer
	cmp r4, 0x2
	bls _0819EFD0
	movs r0, 0x8
	movs r1, 0x2
	bl CopyWindowToVram
	b _0819F03A
	.pool
_0819EFD0:
	movs r0, 0x8
	bl PutWindowTilemap
	ldr r0, [r6]
	ldrb r0, [r0, 0x14]
	cmp r0, 0
	bne _0819EFEC
	movs r0, 0x64
	muls r0, r4
	ldr r1, =gPlayerParty
	b _0819EFF2
	.pool
_0819EFEC:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gEnemyParty
_0819EFF2:
	adds r0, r1
	movs r1, 0xB
	movs r2, 0
	bl GetMonData
	lsls r0, 16
	lsrs r0, 16
	bl SpeciesToNationalPokedexNum
	lsls r0, 16
	lsrs r0, 16
	add r1, sp, 0xC
	bl sub_81DB468
	movs r0, 0x1
	add r1, sp, 0xC
	movs r2, 0x76
	bl GetStringRightAlignXOffset
	adds r3, r0, 0
	lsls r3, 24
	lsrs r3, 24
	movs r0, 0x1
	str r0, [sp]
	movs r0, 0
	str r0, [sp, 0x4]
	str r0, [sp, 0x8]
	movs r0, 0x8
	movs r1, 0x1
	add r2, sp, 0xC
	bl Print
	movs r0, 0x8
	movs r1, 0x2
	bl CopyWindowToVram
_0819F03A:
	add sp, 0x2C
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819EFA8

	thumb_func_start sub_819F048
sub_819F048: @ 819F048
	push {r4,lr}
	lsls r0, 24
	lsrs r2, r0, 24
	ldr r4, =gUnknown_03001284
	ldr r3, [r4]
	ldrb r0, [r3, 0x15]
	cmp r0, 0x1
	beq _0819F094
	cmp r2, 0
	beq _0819F068
	cmp r2, 0x1
	beq _0819F080
	b _0819F094
	.pool
_0819F068:
	strb r2, [r3, 0x14]
	ldr r0, [r4]
	strb r2, [r0, 0x3]
	ldr r1, [r4]
	movs r0, 0x4
	strb r0, [r1, 0x17]
	ldr r1, [r4]
	ldr r0, =gUnknown_08610928
	b _0819F092
	.pool
_0819F080:
	movs r1, 0
	strb r2, [r3, 0x14]
	ldr r0, [r4]
	strb r1, [r0, 0x3]
	ldr r1, [r4]
	movs r0, 0x5
	strb r0, [r1, 0x17]
	ldr r1, [r4]
	ldr r0, =gUnknown_08610948
_0819F092:
	str r0, [r1, 0x18]
_0819F094:
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819F048

	thumb_func_start sub_819F0A0
sub_819F0A0: @ 819F0A0
	push {lr}
	lsls r0, 24
	lsrs r0, 24
	ldr r3, =gUnknown_03001280
	ldr r2, =gUnknown_086108AC
	ldr r1, =gUnknown_03001284
	ldr r1, [r1]
	ldrb r1, [r1]
	lsls r1, 2
	adds r1, r2
	ldr r1, [r1]
	str r1, [r3]
	bl _call_via_r1
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819F0A0

	thumb_func_start sub_819F0CC
sub_819F0CC: @ 819F0CC
	push {r4,r5,lr}
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	ldr r5, =gUnknown_03001284
	ldr r1, [r5]
	ldr r0, [r1, 0x2C]
	adds r1, 0x30
	movs r2, 0x1
	bl sub_819F3F8
	ldr r0, [r5]
	ldrb r1, [r0, 0x3]
	movs r5, 0
	strb r1, [r0, 0x12]
	movs r0, 0x3
	bl sub_819EA64
	ldr r1, =gTasks
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	adds r0, r1
	strh r5, [r0, 0x8]
	ldr r1, =sub_819D9EC
	str r1, [r0]
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819F0CC

	thumb_func_start sub_819F114
sub_819F114: @ 819F114
	lsls r0, 24
	lsrs r0, 24
	ldr r2, =gTasks
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	adds r1, r2
	movs r0, 0x6
	strh r0, [r1, 0x8]
	ldr r0, =sub_819C90C
	str r0, [r1]
	bx lr
	.pool
	thumb_func_end sub_819F114

	thumb_func_start sub_819F134
sub_819F134: @ 819F134
	push {r4,lr}
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	ldr r0, =gUnknown_03001284
	ldr r1, [r0]
	ldr r0, [r1, 0x2C]
	adds r1, 0x30
	movs r2, 0x1
	bl sub_819F3F8
	movs r0, 0x3
	bl sub_819EA64
	ldr r1, =gTasks
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	adds r0, r1
	movs r1, 0
	strh r1, [r0, 0x8]
	ldr r2, =sub_819CE40
	lsrs r1, r2, 16
	strh r1, [r0, 0x14]
	strh r2, [r0, 0x16]
	movs r1, 0x1
	strh r1, [r0, 0x12]
	ldr r1, =sub_819D770
	str r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819F134

	thumb_func_start sub_819F184
sub_819F184: @ 819F184
	push {lr}
	lsls r0, 24
	lsrs r0, 24
	ldr r3, =gUnknown_03001280
	ldr r1, =gUnknown_03001284
	ldr r2, [r1]
	ldrb r1, [r2, 0x3]
	ldr r2, [r2, 0x18]
	lsls r1, 3
	adds r1, r2
	ldr r1, [r1, 0x4]
	str r1, [r3]
	bl _call_via_r1
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819F184

	thumb_func_start sub_819F1AC
sub_819F1AC: @ 819F1AC
	lsls r0, 24
	lsrs r0, 24
	ldr r2, =gTasks
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	adds r1, r2
	ldr r2, =sub_819CC24
	lsrs r0, r2, 16
	movs r3, 0
	strh r0, [r1, 0x14]
	strh r2, [r1, 0x16]
	strh r3, [r1, 0x8]
	strh r3, [r1, 0x12]
	ldr r0, =sub_819D588
	str r0, [r1]
	bx lr
	.pool
	thumb_func_end sub_819F1AC

	thumb_func_start sub_819F1DC
sub_819F1DC: @ 819F1DC
	lsls r0, 24
	lsrs r0, 24
	ldr r2, =gTasks
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	adds r1, r2
	ldr r2, =sub_819D9EC
	lsrs r0, r2, 16
	movs r3, 0
	strh r0, [r1, 0x14]
	strh r2, [r1, 0x16]
	strh r3, [r1, 0x12]
	strh r3, [r1, 0x8]
	ldr r0, =sub_819D588
	str r0, [r1]
	bx lr
	.pool
	thumb_func_end sub_819F1DC

	thumb_func_start sub_819F20C
sub_819F20C: @ 819F20C
	push {r4-r6,lr}
	lsls r0, 24
	lsrs r6, r0, 24
	ldr r5, =gUnknown_03001284
	ldr r1, [r5]
	ldrb r0, [r1, 0x14]
	cmp r0, 0
	bne _0819F240
	ldr r3, =gTasks
	lsls r4, r6, 2
	adds r0, r4, r6
	lsls r0, 3
	adds r0, r3
	ldr r2, =sub_819CD34
	lsrs r1, r2, 16
	strh r1, [r0, 0x14]
	strh r2, [r0, 0x16]
	movs r1, 0x2
	strh r1, [r0, 0x12]
	b _0819F292
	.pool
_0819F240:
	ldrb r0, [r1, 0x3]
	bl sub_819F59C
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x1
	bne _0819F278
	ldr r1, [r5]
	adds r0, r1, 0
	adds r0, 0x2D
	adds r1, 0x30
	movs r2, 0x1
	bl sub_819F2B4
	ldr r1, =gTasks
	lsls r0, r6, 2
	adds r0, r6
	lsls r0, 3
	adds r0, r1
	movs r1, 0
	strh r1, [r0, 0x8]
	strh r4, [r0, 0x12]
	ldr r1, =sub_819F488
	b _0819F29E
	.pool
_0819F278:
	ldr r4, =gTasks
	lsls r5, r6, 2
	adds r0, r5, r6
	lsls r0, 3
	adds r0, r4
	ldr r2, =sub_819CCD4
	lsrs r1, r2, 16
	movs r3, 0
	strh r1, [r0, 0x14]
	strh r2, [r0, 0x16]
	strh r3, [r0, 0x12]
	adds r3, r4, 0
	adds r4, r5, 0
_0819F292:
	adds r0, r4, r6
	lsls r0, 3
	adds r0, r3
	movs r1, 0
	strh r1, [r0, 0x8]
	ldr r1, =sub_819D588
_0819F29E:
	str r1, [r0]
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819F20C

	thumb_func_start sub_819F2B4
sub_819F2B4: @ 819F2B4
	push {r4-r6,lr}
	adds r4, r0, 0
	adds r6, r1, 0
	lsls r5, r2, 24
	lsrs r5, 24
	ldr r0, =gUnknown_08610894
	movs r1, 0x78
	movs r2, 0x40
	movs r3, 0x1
	bl AddObjectToFront
	strb r0, [r4]
	ldr r2, =gUnknown_02020630
	ldrb r1, [r4]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r1, r2, 0
	adds r1, 0x1C
	adds r0, r1
	ldr r1, =sub_819F600
	str r1, [r0]
	ldrb r1, [r4]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	strh r5, [r0, 0x3C]
	movs r0, 0x1
	strb r0, [r6]
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819F2B4

	thumb_func_start sub_819F304
sub_819F304: @ 819F304
	push {r4-r6,lr}
	mov r6, r10
	mov r5, r9
	mov r4, r8
	push {r4-r6}
	sub sp, 0x10
	ldr r0, =gUnknown_08610894
	movs r1, 0x78
	movs r2, 0x40
	movs r3, 0x1
	bl AddObjectToFront
	ldr r6, =gUnknown_03001284
	ldr r1, [r6]
	adds r1, 0x2D
	movs r2, 0
	mov r10, r2
	strb r0, [r1]
	ldr r0, [r6]
	adds r0, 0x2D
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	ldr r1, =gUnknown_02020630
	mov r8, r1
	add r0, r8
	movs r1, 0x2
	bl StartObjectRotScalAnim
	ldr r0, [r6]
	ldrb r1, [r0, 0x3]
	movs r0, 0x64
	adds r4, r1, 0
	muls r4, r0
	ldr r0, =gPlayerParty
	adds r4, r0
	adds r0, r4, 0
	movs r1, 0xB
	movs r2, 0
	bl GetMonData
	adds r5, r0, 0
	lsls r5, 16
	lsrs r5, 16
	adds r0, r4, 0
	movs r1, 0
	movs r2, 0
	bl GetMonData
	mov r9, r0
	adds r0, r4, 0
	movs r1, 0x1
	movs r2, 0
	bl GetMonData
	adds r2, r0, 0
	movs r0, 0x58
	str r0, [sp]
	movs r0, 0x20
	str r0, [sp, 0x4]
	movs r0, 0xF
	str r0, [sp, 0x8]
	ldr r0, =0x0000ffff
	str r0, [sp, 0xC]
	adds r0, r5, 0
	mov r1, r9
	movs r3, 0x1
	bl sub_818D7D8
	ldr r1, [r6]
	adds r1, 0x2C
	strb r0, [r1]
	ldr r0, [r6]
	adds r0, 0x2C
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	add r0, r8
	adds r0, 0x28
	mov r2, r10
	strb r2, [r0]
	ldr r0, [r6]
	adds r0, 0x2C
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	add r0, r8
	adds r0, 0x29
	strb r2, [r0]
	ldr r0, [r6]
	adds r0, 0x2D
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	add r0, r8
	adds r0, 0x3E
	ldrb r1, [r0]
	movs r2, 0x4
	orrs r1, r2
	strb r1, [r0]
	add sp, 0x10
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819F304

	thumb_func_start sub_819F3F8
sub_819F3F8: @ 819F3F8
	push {r4-r6,lr}
	adds r4, r0, 0
	adds r6, r1, 0
	lsls r5, r2, 24
	lsrs r5, 24
	lsls r0, r4, 24
	lsrs r0, 24
	bl sub_818D820
	ldr r0, =sub_819F7B4
	movs r1, 0x1
	bl CreateTask
	lsls r0, 24
	lsrs r0, 24
	ldr r2, =gTasks
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	adds r1, r2
	strh r5, [r1, 0x16]
	lsrs r4, 8
	lsls r4, 24
	lsrs r4, 24
	strh r4, [r1, 0x14]
	ldr r1, [r1]
	bl _call_via_r1
	movs r0, 0x1
	strb r0, [r6]
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819F3F8

	thumb_func_start sub_819F444
sub_819F444: @ 819F444
	push {r4-r6,lr}
	adds r4, r0, 0
	adds r6, r1, 0
	lsls r0, r4, 24
	lsrs r0, 24
	bl sub_818D820
	ldr r5, =gUnknown_02020630
	lsls r4, 16
	lsrs r1, r4, 24
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	ldrb r0, [r0, 0x3]
	lsls r0, 26
	lsrs r0, 27
	bl rotscale_free_entry
	lsrs r4, 24
	lsls r0, r4, 4
	adds r0, r4
	lsls r0, 2
	adds r0, r5
	bl RemoveObjectAndFreeTiles
	movs r0, 0
	strb r0, [r6]
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819F444

	thumb_func_start sub_819F488
sub_819F488: @ 819F488
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	ldr r1, =gUnknown_03001284
	ldr r0, [r1]
	adds r0, 0x30
	ldrb r0, [r0]
	adds r3, r1, 0
	cmp r0, 0x1
	beq _0819F58A
	ldr r2, =gTasks
	lsls r1, r4, 2
	adds r0, r1, r4
	lsls r0, 3
	adds r0, r2
	movs r2, 0x8
	ldrsh r0, [r0, r2]
	adds r5, r1, 0
	cmp r0, 0x4
	bhi _0819F58A
	lsls r0, 2
	ldr r1, =_0819F4C8
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_0819F4C8:
	.4byte _0819F4DC
	.4byte _0819F4F8
	.4byte _0819F52C
	.4byte _0819F548
	.4byte _0819F568
_0819F4DC:
	ldr r0, =gUnknown_085EED0A
	bl sub_819EBEC
	ldr r0, =gUnknown_03001284
	ldr r0, [r0]
	adds r0, 0x20
	movs r1, 0
	strb r1, [r0]
	b _0819F54E
	.pool
_0819F4F8:
	ldr r0, =gMain
	ldrh r1, [r0, 0x2E]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	bne _0819F50C
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _0819F58A
_0819F50C:
	movs r0, 0x5
	bl audio_play
	ldr r0, =gUnknown_03001284
	ldr r1, [r0]
	ldr r0, [r1, 0x2C]
	adds r1, 0x30
	movs r2, 0x1
	bl sub_819F3F8
	b _0819F54E
	.pool
_0819F52C:
	ldr r0, [r3]
	adds r0, 0x30
	ldrb r0, [r0]
	cmp r0, 0x1
	beq _0819F58A
	movs r0, 0x5
	movs r1, 0
	bl FillWindowPixelBuffer
	movs r0, 0x5
	movs r1, 0x2
	bl CopyWindowToVram
	b _0819F54E
_0819F548:
	ldr r0, =gUnknown_085EEC8B
	bl sub_819EBEC
_0819F54E:
	ldr r0, =gTasks
	adds r1, r5, r4
	lsls r1, 3
	adds r1, r0
	ldrh r0, [r1, 0x8]
	adds r0, 0x1
	strh r0, [r1, 0x8]
	b _0819F58A
	.pool
_0819F568:
	bl sub_819EEF0
	bl sub_819EADC
	ldr r0, =gUnknown_03001284
	ldr r0, [r0]
	adds r0, 0x22
	movs r1, 0x1
	strb r1, [r0]
	ldr r1, =gTasks
	adds r0, r5, r4
	lsls r0, 3
	adds r0, r1
	ldrh r1, [r0, 0x12]
	strh r1, [r0, 0x8]
	ldr r1, =sub_819CE40
	str r1, [r0]
_0819F58A:
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819F488

	thumb_func_start sub_819F59C
sub_819F59C: @ 819F59C
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r0, 24
	movs r1, 0x64
	muls r0, r1
	ldr r1, =gEnemyParty
	adds r0, r1
	movs r1, 0xB
	movs r2, 0
	bl GetMonData
	lsls r0, 16
	lsrs r5, r0, 16
	movs r4, 0
_0819F5B8:
	ldr r0, =gUnknown_03001284
	ldr r0, [r0]
	ldrb r0, [r0, 0x12]
	cmp r4, r0
	beq _0819F5EC
	movs r0, 0x64
	muls r0, r4
	ldr r1, =gPlayerParty
	adds r0, r1
	movs r1, 0xB
	movs r2, 0
	bl GetMonData
	lsls r0, 16
	lsrs r0, 16
	cmp r0, r5
	bne _0819F5EC
	movs r0, 0x1
	b _0819F5F8
	.pool
_0819F5EC:
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x2
	bls _0819F5B8
	movs r0, 0
_0819F5F8:
	pop {r4,r5}
	pop {r1}
	bx r1
	thumb_func_end sub_819F59C

	thumb_func_start sub_819F600
sub_819F600: @ 819F600
	push {r4,lr}
	adds r4, r0, 0
	adds r0, 0x3F
	ldrb r1, [r0]
	movs r0, 0x20
	ands r0, r1
	cmp r0, 0
	beq _0819F640
	adds r2, r4, 0
	adds r2, 0x3E
	ldrb r0, [r2]
	movs r1, 0x4
	orrs r0, r1
	strb r0, [r2]
	ldr r0, =sub_819F69C
	movs r1, 0x1
	bl CreateTask
	lsls r0, 24
	lsrs r0, 24
	ldr r2, =gTasks
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	adds r1, r2
	ldrh r2, [r4, 0x3C]
	strh r2, [r1, 0x16]
	ldr r1, [r1]
	bl _call_via_r1
	ldr r0, =DummyObjectCallback
	str r0, [r4, 0x1C]
_0819F640:
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819F600

	thumb_func_start sub_819F654
sub_819F654: @ 819F654
	push {r4,lr}
	adds r4, r0, 0
	adds r0, 0x3F
	ldrb r1, [r0]
	movs r0, 0x20
	ands r0, r1
	cmp r0, 0
	beq _0819F694
	ldrb r0, [r4, 0x3]
	lsls r0, 26
	lsrs r0, 27
	bl rotscale_free_entry
	movs r1, 0x3C
	ldrsh r0, [r4, r1]
	cmp r0, 0x1
	bne _0819F688
	ldr r0, =gUnknown_03001284
	ldr r0, [r0]
	adds r0, 0x30
	movs r1, 0
	strb r1, [r0]
	b _0819F68E
	.pool
_0819F688:
	movs r0, 0
	bl sub_819BE20
_0819F68E:
	adds r0, r4, 0
	bl RemoveObjectAndFreeTiles
_0819F694:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_819F654

	thumb_func_start sub_819F69C
sub_819F69C: @ 819F69C
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r5, r0, 24
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	ldr r1, =gTasks
	adds r4, r0, r1
	movs r1, 0x8
	ldrsh r0, [r4, r1]
	cmp r0, 0x1
	beq _0819F71A
	cmp r0, 0x1
	bgt _0819F6C4
	cmp r0, 0
	beq _0819F6CA
	b _0819F77C
	.pool
_0819F6C4:
	cmp r0, 0x2
	beq _0819F73C
	b _0819F77C
_0819F6CA:
	movs r0, 0x58
	strh r0, [r4, 0xE]
	movs r0, 0x98
	strh r0, [r4, 0x38]
	movs r0, 0x40
	strh r0, [r4, 0x12]
	movs r0, 0x41
	strh r0, [r4, 0x18]
	movs r1, 0x80
	lsls r1, 6
	movs r0, 0
	bl SetGpuRegBits
	ldrh r1, [r4, 0xE]
	lsls r1, 8
	ldrh r0, [r4, 0x38]
	orrs r1, r0
	lsls r1, 16
	lsrs r1, 16
	movs r0, 0x40
	bl SetGpuReg
	ldrh r1, [r4, 0x12]
	lsls r1, 8
	ldrh r0, [r4, 0x18]
	orrs r1, r0
	lsls r1, 16
	lsrs r1, 16
	movs r0, 0x44
	bl SetGpuReg
	movs r0, 0x48
	movs r1, 0x3F
	bl SetGpuReg
	movs r0, 0x4A
	movs r1, 0x37
	bl SetGpuReg
	b _0819F7A6
_0819F71A:
	movs r0, 0x3
	bl ShowBg
	ldr r1, =0x00001248
	movs r0, 0x50
	bl SetGpuReg
	ldr r1, =0x0000040b
	movs r0, 0x52
	bl SetGpuReg
	b _0819F7A6
	.pool
_0819F73C:
	ldrh r0, [r4, 0x12]
	subs r0, 0x4
	strh r0, [r4, 0x12]
	ldrh r1, [r4, 0x18]
	adds r1, 0x4
	strh r1, [r4, 0x18]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0x20
	ble _0819F758
	lsls r0, r1, 16
	asrs r0, 16
	cmp r0, 0x5F
	ble _0819F760
_0819F758:
	movs r0, 0x20
	strh r0, [r4, 0x12]
	movs r0, 0x60
	strh r0, [r4, 0x18]
_0819F760:
	ldrh r1, [r4, 0x12]
	lsls r1, 8
	ldrh r0, [r4, 0x18]
	orrs r1, r0
	lsls r1, 16
	lsrs r1, 16
	movs r0, 0x44
	bl SetGpuReg
	movs r2, 0x12
	ldrsh r0, [r4, r2]
	cmp r0, 0x20
	bne _0819F7AC
	b _0819F7A6
_0819F77C:
	adds r0, r5, 0
	bl DestroyTask
	ldr r0, =gTasks
	lsls r1, r5, 2
	adds r1, r5
	lsls r1, 3
	adds r1, r0
	movs r2, 0x16
	ldrsh r0, [r1, r2]
	cmp r0, 0x1
	bne _0819F7A0
	bl sub_819F8E0
	b _0819F7AC
	.pool
_0819F7A0:
	bl sub_819BD70
	b _0819F7AC
_0819F7A6:
	ldrh r0, [r4, 0x8]
	adds r0, 0x1
	strh r0, [r4, 0x8]
_0819F7AC:
	pop {r4,r5}
	pop {r0}
	bx r0
	thumb_func_end sub_819F69C

	thumb_func_start sub_819F7B4
sub_819F7B4: @ 819F7B4
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r5, r0, 24
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	ldr r1, =gTasks
	adds r4, r0, r1
	movs r1, 0x8
	ldrsh r0, [r4, r1]
	cmp r0, 0
	beq _0819F844
	cmp r0, 0x1
	beq _0819F894
	movs r0, 0x3
	bl HideBg
	ldr r3, =gUnknown_02020630
	movs r0, 0x14
	ldrsh r1, [r4, r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	ldrh r1, [r4, 0x16]
	strh r1, [r0, 0x3C]
	movs r0, 0x14
	ldrsh r1, [r4, r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	adds r0, 0x3E
	ldrb r2, [r0]
	movs r1, 0x5
	negs r1, r1
	ands r1, r2
	strb r1, [r0]
	movs r0, 0x14
	ldrsh r1, [r4, r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r1, r3, 0
	adds r1, 0x1C
	adds r0, r1
	ldr r1, =sub_819F654
	str r1, [r0]
	movs r0, 0x14
	ldrsh r1, [r4, r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	movs r1, 0x1
	bl StartObjectRotScalAnim
	movs r1, 0x80
	lsls r1, 6
	movs r0, 0
	bl ClearGpuRegBits
	adds r0, r5, 0
	bl DestroyTask
	b _0819F8D8
	.pool
_0819F844:
	movs r0, 0x58
	strh r0, [r4, 0xE]
	movs r0, 0x98
	strh r0, [r4, 0x38]
	movs r0, 0x20
	strh r0, [r4, 0x12]
	movs r0, 0x60
	strh r0, [r4, 0x18]
	movs r1, 0x80
	lsls r1, 6
	movs r0, 0
	bl SetGpuRegBits
	ldrh r1, [r4, 0xE]
	lsls r1, 8
	ldrh r0, [r4, 0x38]
	orrs r1, r0
	lsls r1, 16
	lsrs r1, 16
	movs r0, 0x40
	bl SetGpuReg
	ldrh r1, [r4, 0x12]
	lsls r1, 8
	ldrh r0, [r4, 0x18]
	orrs r1, r0
	lsls r1, 16
	lsrs r1, 16
	movs r0, 0x44
	bl SetGpuReg
	movs r0, 0x48
	movs r1, 0x3F
	bl SetGpuReg
	movs r0, 0x4A
	movs r1, 0x37
	bl SetGpuReg
	b _0819F8D2
_0819F894:
	ldrh r0, [r4, 0x12]
	adds r0, 0x4
	strh r0, [r4, 0x12]
	ldrh r1, [r4, 0x18]
	subs r1, 0x4
	strh r1, [r4, 0x18]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0x3F
	bgt _0819F8B0
	lsls r0, r1, 16
	asrs r0, 16
	cmp r0, 0x41
	bgt _0819F8B8
_0819F8B0:
	movs r0, 0x40
	strh r0, [r4, 0x12]
	movs r0, 0x41
	strh r0, [r4, 0x18]
_0819F8B8:
	ldrh r1, [r4, 0x12]
	lsls r1, 8
	ldrh r0, [r4, 0x18]
	orrs r1, r0
	lsls r1, 16
	lsrs r1, 16
	movs r0, 0x44
	bl SetGpuReg
	movs r1, 0x12
	ldrsh r0, [r4, r1]
	cmp r0, 0x40
	bne _0819F8D8
_0819F8D2:
	ldrh r0, [r4, 0x8]
	adds r0, 0x1
	strh r0, [r4, 0x8]
_0819F8D8:
	pop {r4,r5}
	pop {r0}
	bx r0
	thumb_func_end sub_819F7B4

	thumb_func_start sub_819F8E0
sub_819F8E0: @ 819F8E0
	push {r4-r6,lr}
	sub sp, 0x10
	ldr r0, =gUnknown_03001284
	ldr r1, [r0]
	ldrb r0, [r1, 0x14]
	cmp r0, 0
	bne _0819F900
	ldrb r1, [r1, 0x3]
	movs r0, 0x64
	muls r1, r0
	ldr r0, =gPlayerParty
	b _0819F908
	.pool
_0819F900:
	ldrb r1, [r1, 0x3]
	movs r0, 0x64
	muls r1, r0
	ldr r0, =gEnemyParty
_0819F908:
	adds r6, r1, r0
	adds r0, r6, 0
	movs r1, 0xB
	movs r2, 0
	bl GetMonData
	adds r4, r0, 0
	lsls r4, 16
	lsrs r4, 16
	adds r0, r6, 0
	movs r1, 0
	movs r2, 0
	bl GetMonData
	adds r5, r0, 0
	adds r0, r6, 0
	movs r1, 0x1
	movs r2, 0
	bl GetMonData
	adds r1, r0, 0
	movs r0, 0x58
	str r0, [sp]
	movs r0, 0x20
	str r0, [sp, 0x4]
	movs r0, 0xF
	str r0, [sp, 0x8]
	ldr r0, =0x0000ffff
	str r0, [sp, 0xC]
	adds r0, r4, 0
	adds r2, r5, 0
	movs r3, 0x1
	bl sub_818D7D8
	ldr r2, =gUnknown_03001284
	ldr r1, [r2]
	adds r1, 0x2C
	movs r3, 0
	strb r0, [r1]
	ldr r4, =gUnknown_02020630
	ldr r0, [r2]
	adds r0, 0x2C
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	adds r0, 0x28
	strb r3, [r0]
	ldr r0, [r2]
	adds r0, 0x2C
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	adds r0, 0x29
	strb r3, [r0]
	ldr r0, [r2]
	adds r0, 0x30
	strb r3, [r0]
	add sp, 0x10
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819F8E0

	thumb_func_start sub_819F99C
sub_819F99C: @ 819F99C
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	lsls r0, 24
	lsrs r5, r0, 24
	ldr r2, =gSaveBlock2Ptr
	ldr r1, [r2]
	lsls r0, r5, 4
	adds r0, r5
	lsls r0, 2
	adds r1, r0
	adds r1, 0xDE
	ldrb r1, [r1]
	movs r6, 0
	adds r7, r2, 0
	ldr r0, =gStringVar1
	mov r8, r0
	cmp r1, 0
	beq _0819F9DC
_0819F9C2:
	adds r0, r1, 0
	movs r1, 0xA
	bl __udivsi3
	lsls r0, 24
	lsrs r1, r0, 24
	adds r0, r6, 0x1
	lsls r0, 24
	lsrs r6, r0, 24
	cmp r1, 0
	beq _0819F9DC
	cmp r6, 0x3
	bls _0819F9C2
_0819F9DC:
	lsls r4, r5, 4
	adds r4, r5
	lsls r4, 2
	ldr r1, [r7]
	adds r1, r4, r1
	movs r0, 0x8A
	lsls r0, 1
	adds r1, r0
	mov r0, r8
	bl StringCopy7
	ldr r0, [r7]
	adds r0, r4
	ldr r1, =0x0000011b
	adds r0, r1
	ldrb r1, [r0]
	mov r0, r8
	bl ConvertInternationalString
	ldr r0, =gStringVar2
	ldr r1, [r7]
	adds r1, r4
	adds r1, 0xDE
	ldrb r1, [r1]
	movs r2, 0x1
	adds r3, r6, 0
	bl ConvertIntToDecimalStringN
	ldr r1, =gUnknown_08611330
	ldr r0, [r7]
	adds r0, r4
	adds r0, 0xDC
	ldrb r0, [r0]
	lsls r0, 27
	lsrs r0, 25
	adds r0, r1
	ldr r1, [r0]
	ldr r0, =gStringVar4
	bl StringExpandPlaceholders
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819F99C

	thumb_func_start sub_819FA50
sub_819FA50: @ 819FA50
	push {lr}
	bl script_env_2_enable_and_set_ctx_running
	pop {r0}
	bx r0
	thumb_func_end sub_819FA50

	thumb_func_start sub_819FA5C
sub_819FA5C: @ 819FA5C
	push {r4,r5,lr}
	adds r3, r0, 0
	movs r2, 0
	adds r4, r3, 0
	adds r4, 0x28
	ldr r0, =0x0000ffff
	adds r5, r0, 0
_0819FA6A:
	lsls r0, r2, 1
	adds r0, r4, r0
	ldrh r1, [r0]
	orrs r1, r5
	strh r1, [r0]
	adds r0, r2, 0x1
	lsls r0, 24
	lsrs r2, r0, 24
	cmp r2, 0x5
	bls _0819FA6A
	adds r1, r3, 0
	adds r1, 0x38
	movs r0, 0xFF
	strb r0, [r1]
	ldrb r1, [r3]
	movs r0, 0x20
	negs r0, r0
	ands r0, r1
	movs r1, 0x10
	orrs r0, r1
	strb r0, [r3]
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819FA5C

	thumb_func_start sub_819FAA0
sub_819FAA0: @ 819FAA0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	ldr r3, =gSaveBlock2Ptr
	ldr r1, [r3]
	adds r1, 0xB2
	ldrb r2, [r1]
	movs r0, 0x19
	negs r0, r0
	ands r0, r2
	strb r0, [r1]
	movs r0, 0
	mov r12, r0
	adds r5, r3, 0
	mov r8, r0
	ldr r1, =0x0000ffff
	mov r10, r1
_0819FAC6:
	movs r2, 0
	mov r3, r12
	lsls r7, r3, 4
	movs r4, 0x1
	add r4, r12
	mov r9, r4
	adds r0, r7, r3
	lsls r3, r0, 2
_0819FAD6:
	ldr r1, [r5]
	lsls r0, r2, 1
	adds r0, r3
	movs r4, 0x82
	lsls r4, 1
	adds r1, r4
	adds r1, r0
	ldrh r0, [r1]
	mov r4, r10
	orrs r0, r4
	strh r0, [r1]
	adds r0, r2, 0x1
	lsls r0, 24
	lsrs r2, r0, 24
	cmp r2, 0x5
	bls _0819FAD6
	ldr r2, [r5]
	mov r0, r12
	adds r3, r7, r0
	lsls r3, 2
	adds r2, r3
	adds r2, 0xDC
	ldrb r1, [r2]
	movs r0, 0x20
	negs r0, r0
	ands r0, r1
	movs r1, 0x10
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [r5]
	adds r0, r3
	movs r1, 0x8A
	lsls r1, 1
	adds r0, r1
	movs r1, 0xFF
	strb r1, [r0]
	ldr r1, [r5]
	adds r1, r3
	adds r1, 0xDC
	ldrb r2, [r1]
	movs r0, 0x61
	negs r0, r0
	ands r0, r2
	strb r0, [r1]
	ldr r0, [r5]
	adds r0, r3
	adds r0, 0xDE
	mov r4, r8
	strb r4, [r0]
	ldr r0, [r5]
	adds r0, r3
	adds r0, 0xDD
	strb r4, [r0]
	movs r2, 0
	ldr r6, =gSaveBlock2Ptr
	movs r4, 0x88
	lsls r4, 1
_0819FB48:
	ldr r0, [r6]
	adds r1, r2, r3
	adds r0, r4
	adds r0, r1
	mov r1, r8
	strb r1, [r0]
	adds r0, r2, 0x1
	lsls r0, 24
	lsrs r2, r0, 24
	cmp r2, 0x3
	bls _0819FB48
	ldr r0, [r5]
	mov r3, r12
	adds r2, r7, r3
	lsls r2, 2
	adds r0, r2
	ldr r4, =gGameLanguage
	ldrb r1, [r4]
	ldr r3, =0x0000011b
	adds r0, r3
	strb r1, [r0]
	ldr r0, [r5]
	movs r4, 0x8E
	lsls r4, 1
	adds r0, r4
	adds r0, r2
	mov r1, r8
	str r1, [r0]
	mov r3, r9
	lsls r0, r3, 24
	lsrs r0, 24
	mov r12, r0
	cmp r0, 0x3
	bls _0819FAC6
	bl sub_81A087C
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819FAA0

	thumb_func_start sub_819FBB0
sub_819FBB0: @ 819FBB0
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	adds r0, 0xB1
	ldrb r0, [r0]
	movs r1, 0x3
	ands r1, r0
	negs r0, r1
	orrs r0, r1
	lsrs r0, 31
	bx lr
	.pool
	thumb_func_end sub_819FBB0

	thumb_func_start sub_819FBC8
sub_819FBC8: @ 819FBC8
	push {r4,r5,lr}
	ldr r2, =gSaveBlock2Ptr
	ldr r0, [r2]
	adds r0, 0xDE
	ldrb r0, [r0]
	cmp r0, 0
	bne _0819FC10
	adds r4, r2, 0
	ldr r5, =gUnknown_08611548
_0819FBDA:
	bl Random
	ldr r2, [r4]
	lsls r0, 16
	movs r1, 0xE0
	lsls r1, 11
	ands r1, r0
	lsrs r1, 16
	adds r1, r5
	ldrb r0, [r1]
	adds r2, 0xB0
	strb r0, [r2]
	ldr r0, [r4]
	adds r1, r0, 0
	adds r1, 0xB0
	adds r0, 0xDC
	ldrb r0, [r0]
	lsls r0, 27
	ldrb r1, [r1]
	lsrs r0, 27
	cmp r1, r0
	beq _0819FBDA
	b _0819FC38
	.pool
_0819FC10:
	adds r4, r2, 0
_0819FC12:
	bl Random
	ldr r2, [r4]
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0xF
	ands r0, r1
	adds r2, 0xB0
	strb r0, [r2]
	ldr r0, [r4]
	adds r1, r0, 0
	adds r1, 0xB0
	adds r0, 0xDC
	ldrb r0, [r0]
	lsls r0, 27
	ldrb r1, [r1]
	lsrs r0, 27
	cmp r1, r0
	beq _0819FC12
_0819FC38:
	pop {r4,r5}
	pop {r0}
	bx r0
	thumb_func_end sub_819FBC8

	thumb_func_start sub_819FC40
sub_819FC40: @ 819FC40
	lsls r0, 24
	lsrs r0, 24
	ldr r1, =gSaveBlock2Ptr
	ldr r2, [r1]
	adds r2, 0xB1
	movs r1, 0x3
	ands r0, r1
	ldrb r3, [r2]
	subs r1, 0x7
	ands r1, r3
	orrs r1, r0
	strb r1, [r2]
	bx lr
	.pool
	thumb_func_end sub_819FC40

	thumb_func_start sub_819FC60
sub_819FC60: @ 819FC60
	push {r4-r7,lr}
	sub sp, 0xC
	movs r5, 0
_0819FC66:
	mov r1, sp
	adds r0, r1, r5
	strb r5, [r0]
	adds r0, r5, 0x1
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, 0x9
	bls _0819FC66
	movs r5, 0
_0819FC78:
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0xA
	bl __umodsi3
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0xA
	bl __umodsi3
	lsls r0, 24
	lsrs r0, 24
	mov r7, sp
	adds r2, r7, r4
	ldrb r3, [r2]
	adds r1, r7, r0
	ldrb r0, [r1]
	strb r0, [r2]
	strb r3, [r1]
	adds r0, r5, 0x1
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, 0x31
	bls _0819FC78
	movs r5, 0
	ldr r6, =gSaveBlock2Ptr
	movs r4, 0xF
_0819FCBC:
	ldr r3, [r6]
	adds r3, 0xB4
	adds r3, r5
	lsls r2, r5, 1
	mov r1, sp
	adds r0, r1, r2
	ldrb r0, [r0]
	adds r1, r4, 0
	ands r1, r0
	lsls r1, 4
	adds r2, 0x1
	mov r7, sp
	adds r0, r7, r2
	ldrb r2, [r0]
	adds r0, r4, 0
	ands r0, r2
	orrs r1, r0
	strb r1, [r3]
	adds r0, r5, 0x1
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, 0x2
	bls _0819FCBC
	add sp, 0xC
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819FC60

	thumb_func_start sub_819FCF8
sub_819FCF8: @ 819FCF8
	push {r4-r6,lr}
	lsls r0, 24
	lsrs r0, 24
	movs r5, 0
	cmp r0, 0x2
	bne _0819FD4C
	ldr r6, =gUnknown_030062EC
_0819FD06:
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x3
	bl __umodsi3
	lsls r0, 24
	lsrs r5, r0, 24
	movs r3, 0
	movs r2, 0
	ldr r1, [r6]
	lsls r0, r5, 2
	adds r0, r5
	lsls r4, r0, 1
	adds r1, 0x2
_0819FD26:
	lsls r0, r2, 1
	adds r0, r4
	adds r0, r1, r0
	ldrh r0, [r0]
	cmp r0, 0
	beq _0819FD38
	adds r0, r3, 0x1
	lsls r0, 24
	lsrs r3, r0, 24
_0819FD38:
	adds r0, r2, 0x1
	lsls r0, 24
	lsrs r2, r0, 24
	cmp r2, 0x4
	bls _0819FD26
	cmp r3, 0x3
	bhi _0819FD06
	b _0819FD5A
	.pool
_0819FD4C:
	cmp r0, 0x1
	bne _0819FD5A
	ldrb r0, [r2]
	adds r1, r0
	ldrb r5, [r1]
	adds r0, 0x1
	strb r0, [r2]
_0819FD5A:
	adds r0, r5, 0
	pop {r4-r6}
	pop {r1}
	bx r1
	thumb_func_end sub_819FCF8

	thumb_func_start sub_819FD64
sub_819FD64: @ 819FD64
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x20
	movs r5, 0
	mov r0, sp
	adds r0, 0xC
	str r0, [sp, 0x14]
	mov r1, sp
	adds r1, 0x10
	str r1, [sp, 0x18]
	adds r1, r0, 0
_0819FD80:
	adds r0, r1, r5
	strb r5, [r0]
	adds r0, r5, 0x1
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, 0x2
	bls _0819FD80
	movs r5, 0
	ldr r6, [sp, 0x14]
_0819FD92:
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x3
	bl __umodsi3
	lsls r0, 24
	lsrs r4, r0, 24
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x3
	bl __umodsi3
	lsls r0, 24
	lsrs r0, 24
	adds r2, r6, r4
	ldrb r3, [r2]
	adds r1, r6, r0
	ldrb r0, [r1]
	strb r0, [r2]
	strb r3, [r1]
	adds r0, r5, 0x1
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, 0x9
	bls _0819FD92
	movs r5, 0
	ldr r2, =gUnknown_086114D3
_0819FDD0:
	mov r4, sp
	adds r1, r4, r5
	adds r0, r5, r2
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r5, 0x1
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, 0x9
	bls _0819FDD0
	movs r5, 0
_0819FDE6:
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0xA
	bl __umodsi3
	lsls r0, 24
	lsrs r4, r0, 24
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0xA
	bl __umodsi3
	lsls r0, 24
	lsrs r0, 24
	mov r6, sp
	adds r2, r6, r4
	ldrb r3, [r2]
	adds r1, r6, r0
	ldrb r0, [r1]
	strb r0, [r2]
	strb r3, [r1]
	adds r0, r5, 0x1
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, 0x31
	bls _0819FDE6
	ldr r4, =gUnknown_030062EC
	movs r0, 0x30
	bl AllocZeroed
	str r0, [r4]
	movs r1, 0
	strb r1, [r0]
	movs r5, 0
	movs r2, 0x4
_0819FE34:
	movs r3, 0
_0819FE36:
	ldr r0, [r4]
	lsls r1, r3, 2
	adds r1, r3
	adds r1, r5, r1
	adds r0, 0x20
	adds r0, r1
	strb r2, [r0]
	adds r0, r3, 0x1
	lsls r0, 24
	lsrs r3, r0, 24
	cmp r3, 0x2
	bls _0819FE36
	adds r0, r5, 0x1
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, 0x4
	bls _0819FE34
	movs r0, 0
	ldr r7, [sp, 0x18]
	strb r0, [r7]
	movs r5, 0
_0819FE60:
	ldr r0, =gSaveBlock2Ptr
	ldr r3, [r0]
	lsls r4, r5, 2
	adds r3, r4
	mov r1, sp
	adds r6, r1, r5
	ldrb r0, [r6]
	adds r3, 0xB8
	movs r2, 0x3
	ands r2, r0
	ldrb r0, [r3]
	movs r7, 0x4
	negs r7, r7
	adds r1, r7, 0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
	ldrb r0, [r6]
	adds r5, 0x1
	str r5, [sp, 0x1C]
	mov r8, r4
	cmp r0, 0x3
	beq _0819FF62
	ldrb r0, [r6]
	ldr r1, [sp, 0x14]
	ldr r2, [sp, 0x18]
	bl sub_819FCF8
	ldr r1, =gSaveBlock2Ptr
	ldr r3, [r1]
	add r3, r8
	adds r3, 0xB8
	movs r2, 0x3
	ands r2, r0
	lsls r2, 2
	ldrb r0, [r3]
	movs r4, 0xD
	negs r4, r4
	adds r1, r4, 0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
	ldr r7, =gSaveBlock2Ptr
	ldr r0, [r7]
	add r0, r8
	adds r0, 0xB8
	ldrb r0, [r0]
	lsls r0, 28
	lsrs r7, r0, 30
	ldrb r0, [r6]
	cmp r0, 0x2
	bne _0819FF62
	lsls r0, r7, 2
	adds r0, r7
	mov r10, r0
	ldr r0, =gUnknown_030062EC
	mov r9, r0
_0819FED2:
	bl Random
	lsls r0, 16
	lsrs r4, r0, 16
	movs r1, 0x3
	ands r4, r1
	movs r3, 0
	mov r6, r9
	ldr r2, [r6]
	ldrb r0, [r2]
	adds r1, r0, 0x1
	lsls r5, r7, 2
	cmp r3, r1
	bge _0819FF12
	adds r2, 0x20
	mov r6, r10
	adds r0, r2, r6
	ldrb r0, [r0]
	cmp r0, r4
	beq _0819FF12
	adds r6, r1, 0
	adds r1, r5, r7
_0819FEFE:
	adds r0, r3, 0x1
	lsls r0, 24
	lsrs r3, r0, 24
	cmp r3, r6
	bge _0819FF12
	adds r0, r3, r1
	adds r0, r2, r0
	ldrb r0, [r0]
	cmp r0, r4
	bne _0819FEFE
_0819FF12:
	mov r1, r9
	ldr r0, [r1]
	ldrb r0, [r0]
	adds r0, 0x1
	ldr r1, =gUnknown_030062EC
	cmp r3, r0
	bne _0819FED2
	ldr r0, [r1]
	orrs r5, r7
	ldrb r2, [r0]
	adds r1, r5, r2
	adds r0, 0x20
	adds r0, r1
	strb r4, [r0]
	ldr r6, =gSaveBlock2Ptr
	ldr r2, [r6]
	add r2, r8
	adds r2, 0xB8
	movs r7, 0x3
	ands r4, r7
	lsls r3, r4, 4
	ldrb r0, [r2]
	movs r4, 0x31
	negs r4, r4
	adds r1, r4, 0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2]
	ldr r0, [r6]
	add r0, r8
	adds r0, 0xB8
	ldrb r0, [r0]
	lsls r0, 28
	lsrs r0, 30
	bl sub_819FF98
	ldr r1, [r6]
	add r1, r8
	adds r1, 0xBA
	strh r0, [r1]
_0819FF62:
	ldr r6, [sp, 0x1C]
	lsls r0, r6, 24
	lsrs r5, r0, 24
	cmp r5, 0x8
	bhi _0819FF6E
	b _0819FE60
_0819FF6E:
	ldr r4, =gUnknown_030062EC
	ldr r0, [r4]
	bl Free
	movs r0, 0
	str r0, [r4]
	add sp, 0x20
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819FD64

	thumb_func_start sub_819FF98
sub_819FF98: @ 819FF98
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x10
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp]
	movs r0, 0
	str r0, [sp, 0xC]
	movs r7, 0
	ldr r1, [sp]
	cmp r1, 0x2
	bhi _0819FFE0
	ldr r2, =gSaveBlock2Ptr
	ldr r1, [r2]
	adds r0, r1, 0
	adds r0, 0xB4
	ldr r3, [sp]
	adds r0, r3
	ldrb r4, [r0]
	adds r1, 0xB2
	ldrb r0, [r1]
	lsls r0, 29
	lsrs r0, 29
	asrs r0, r3
	movs r1, 0x1
	ands r0, r1
	lsls r0, 2
	asrs r4, r0
	movs r0, 0xF
	ands r4, r0
	b _0819FFE4
	.pool
_0819FFE0:
	movs r4, 0
	ldr r2, =gSaveBlock2Ptr
_0819FFE4:
	ldr r3, =gUnknown_08610970
	lsls r1, r4, 1
	ldr r4, [r2]
	adds r0, r4, 0
	adds r0, 0xB0
	ldrb r2, [r0]
	movs r0, 0x58
	muls r0, r2
	adds r1, r0
	adds r3, 0x34
	adds r1, r3
	ldrh r1, [r1]
	str r1, [sp, 0x8]
	ldr r1, =gLevelUpLearnsetPointers
	ldr r2, [sp, 0x8]
	lsls r0, r2, 2
	adds r0, r1
	ldr r6, [r0]
	movs r3, 0
	adds r4, 0xB1
	ldrb r1, [r4]
	movs r0, 0x3
	ands r0, r1
	movs r5, 0x3C
	cmp r0, 0x1
	bne _081A001A
	movs r5, 0x32
_081A001A:
	ldrh r1, [r6]
	ldr r4, =0x0000ffff
	cmp r1, r4
	beq _081A004C
	movs r2, 0xFE
	lsls r2, 8
	adds r0, r2, 0
	ands r0, r1
	lsls r1, r5, 9
	cmp r0, r1
	bgt _081A004C
	adds r5, r2, 0
	adds r2, r1, 0
_081A0034:
	adds r0, r3, 0x1
	lsls r0, 24
	lsrs r3, r0, 24
	lsls r0, r3, 1
	adds r0, r6
	ldrh r1, [r0]
	cmp r1, r4
	beq _081A004C
	adds r0, r5, 0
	ands r0, r1
	cmp r0, r2
	ble _081A0034
_081A004C:
	adds r5, r3, 0
	movs r3, 0
	str r3, [sp, 0x4]
_081A0052:
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x1
	ands r0, r1
	cmp r0, 0
	beq _081A0068
	ldr r0, [sp, 0xC]
	cmp r0, 0x1
	bne _081A00E0
_081A0068:
	ldr r1, =0x000001ff
	mov r8, r1
_081A006C:
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x3A
	bl __umodsi3
	lsls r0, 24
	lsrs r4, r0, 24
	ldr r0, [sp, 0x8]
	adds r1, r4, 0
	bl sub_806E064
	adds r2, r0, 0
	cmp r2, 0
	beq _081A006C
	ldr r2, =0x00000121
	adds r0, r4, r2
	bl ItemIdToBattleMoveId
	lsls r0, 16
	lsrs r7, r0, 16
	movs r2, 0x1
	cmp r5, 0x4
	bhi _081A00BC
	movs r3, 0
	b _081A00C6
	.pool
_081A00BC:
	subs r0, r5, 0x4
	b _081A00C2
_081A00C0:
	adds r0, r3, 0x1
_081A00C2:
	lsls r0, 24
	lsrs r3, r0, 24
_081A00C6:
	cmp r3, r5
	bcs _081A00DA
	lsls r0, r3, 1
	adds r0, r6
	ldrh r0, [r0]
	mov r1, r8
	ands r0, r1
	cmp r0, r7
	bne _081A00C0
	movs r2, 0
_081A00DA:
	cmp r2, 0x1
	bne _081A006C
	b _081A0146
_081A00E0:
	cmp r5, 0x4
	bhi _081A00EA
	movs r2, 0x1
	str r2, [sp, 0xC]
	b _081A0168
_081A00EA:
	subs r4, r5, 0x4
	ldr r3, =0x000001ff
	mov r10, r3
	mov r8, r3
	lsls r0, r4, 24
	mov r9, r0
_081A00F6:
	bl Random
	lsls r0, 16
	lsrs r0, 16
	adds r1, r4, 0
	bl __modsi3
	lsls r0, 24
	lsrs r0, 23
	adds r0, r6
	ldrh r0, [r0]
	mov r7, r8
	ands r7, r0
	movs r2, 0x1
	mov r1, r9
	lsrs r3, r1, 24
	cmp r3, r5
	bcs _081A0142
	lsls r0, r3, 1
	adds r0, r6
	ldrh r1, [r0]
	mov r0, r8
	b _081A013A
	.pool
_081A0128:
	adds r0, r3, 0x1
	lsls r0, 24
	lsrs r3, r0, 24
	cmp r3, r5
	bcs _081A0142
	lsls r0, r3, 1
	adds r0, r6
	ldrh r0, [r0]
	mov r1, r10
_081A013A:
	ands r0, r1
	cmp r0, r7
	bne _081A0128
	movs r2, 0
_081A0142:
	cmp r2, 0x1
	bne _081A00F6
_081A0146:
	ldr r0, [sp]
	adds r1, r7, 0
	bl sub_81A0194
	lsls r0, 24
	cmp r0, 0
	beq _081A0168
	ldr r0, =gUnknown_08611370
	adds r0, r7, r0
	ldrb r0, [r0]
	cmp r0, 0
	bne _081A0170
	ldr r0, [sp, 0x4]
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp, 0x4]
_081A0168:
	ldr r2, [sp, 0x4]
	cmp r2, 0x4
	bhi _081A0170
	b _081A0052
_081A0170:
	ldr r0, =gUnknown_030062EC
	ldr r1, [r0]
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	adds r0, r7, 0
	add sp, 0x10
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_819FF98

	thumb_func_start sub_81A0194
sub_81A0194: @ 81A0194
	push {r4-r7,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	lsls r1, 16
	lsrs r5, r1, 16
	movs r3, 0
	ldr r0, =gUnknown_030062EC
	mov r12, r0
	ldr r2, [r0]
	lsls r1, r4, 2
	adds r0, r1, r4
	lsls r6, r0, 1
	adds r2, 0x2
	adds r7, r1, 0
_081A01B0:
	lsls r0, r3, 1
	adds r0, r6
	adds r0, r2, r0
	ldrh r0, [r0]
	cmp r0, r5
	bne _081A01C4
	movs r0, 0
	b _081A01E2
	.pool
_081A01C4:
	adds r0, r3, 0x1
	lsls r0, 24
	lsrs r3, r0, 24
	cmp r3, 0x4
	bls _081A01B0
	mov r2, r12
	ldr r1, [r2]
	adds r0, r7, r4
	ldrb r2, [r1]
	adds r0, r2
	lsls r0, 1
	adds r1, 0x2
	adds r1, r0
	strh r5, [r1]
	movs r0, 0x1
_081A01E2:
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end sub_81A0194

	thumb_func_start sub_81A01E8
sub_81A01E8: @ 81A01E8
	push {r4-r7,lr}
	mov r12, r1
	lsls r0, 16
	lsrs r2, r0, 16
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	adds r0, 0xB1
	ldrb r1, [r0]
	movs r0, 0x3
	ands r0, r1
	movs r4, 0x3C
	cmp r0, 0x1
	bne _081A0204
	movs r4, 0x32
_081A0204:
	ldr r1, =gLevelUpLearnsetPointers
	lsls r0, r2, 2
	adds r0, r1
	ldr r6, [r0]
	movs r5, 0
	ldrh r1, [r6]
	ldr r3, =0x0000ffff
	cmp r1, r3
	beq _081A0240
	movs r2, 0xFE
	lsls r2, 8
	adds r0, r2, 0
	ands r0, r1
	lsls r1, r4, 9
	cmp r0, r1
	bgt _081A0240
	adds r4, r2, 0
	adds r2, r1, 0
_081A0228:
	adds r0, r5, 0x1
	lsls r0, 24
	lsrs r5, r0, 24
	lsls r0, r5, 1
	adds r0, r6
	ldrh r1, [r0]
	cmp r1, r3
	beq _081A0240
	adds r0, r4, 0
	ands r0, r1
	cmp r0, r2
	ble _081A0228
_081A0240:
	adds r4, r5, 0
	cmp r4, 0x4
	bls _081A0248
	movs r4, 0x4
_081A0248:
	movs r2, 0
	cmp r2, r4
	bcs _081A026C
	ldr r7, =0x000001ff
_081A0250:
	lsls r3, r2, 1
	add r3, r12
	adds r2, 0x1
	subs r0, r5, r2
	lsls r0, 1
	adds r0, r6
	ldrh r1, [r0]
	adds r0, r7, 0
	ands r0, r1
	strh r0, [r3]
	lsls r2, 24
	lsrs r2, 24
	cmp r2, r4
	bcc _081A0250
_081A026C:
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A01E8

	thumb_func_start sub_81A0284
sub_81A0284: @ 81A0284
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, 0x8
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
	lsls r1, 24
	lsrs r6, r1, 24
	lsls r2, 24
	lsrs r5, r2, 24
	ldr r1, =gSaveBlock2Ptr
	ldr r2, [r1]
	adds r0, r2, 0
	adds r0, 0xB1
	ldrb r0, [r0]
	lsls r0, 26
	lsrs r0, 28
	adds r7, r1, 0
	cmp r0, 0x2
	bhi _081A02B8
	movs r0, 0
	b _081A037C
	.pool
_081A02B8:
	movs r4, 0
	movs r3, 0
	adds r0, r2, 0
	adds r0, 0xB8
	ldrb r0, [r0]
	lsls r0, 30
	ldr r1, =gUnknown_08610970
	mov r12, r1
	lsls r6, 1
	lsls r5, 1
	mov r9, r5
	cmp r0, 0
	beq _081A02F4
	adds r2, r7, 0
_081A02D4:
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	adds r0, r3, 0x1
	lsls r0, 24
	lsrs r3, r0, 24
	cmp r3, 0x8
	bhi _081A02F4
	ldr r0, [r2]
	lsls r1, r3, 2
	adds r0, r1
	adds r0, 0xB8
	ldrb r0, [r0]
	lsls r0, 30
	cmp r0, 0
	bne _081A02D4
_081A02F4:
	ldr r0, [r7]
	adds r0, 0xB0
	ldrb r1, [r0]
	movs r0, 0x58
	muls r0, r1
	adds r0, r6, r0
	mov r1, r12
	adds r1, 0x34
	adds r0, r1
	ldrh r0, [r0]
	mov r1, sp
	bl sub_81A01E8
	movs r3, 0
	cmp r3, r4
	bcs _081A0376
	ldr r1, [r7]
	adds r0, r1, 0
	adds r0, 0xB1
	ldrb r0, [r0]
	lsls r0, 26
	lsrs r0, 28
	subs r0, 0x3
	cmp r3, r0
	bge _081A0376
	adds r6, r7, 0
	adds r5, r1, 0
_081A032A:
	lsls r0, r3, 2
	adds r2, r5, r0
	adds r0, r2, 0
	adds r0, 0xB8
	ldrb r1, [r0]
	lsls r0, r1, 30
	lsrs r0, 30
	cmp r0, 0x2
	bne _081A035C
	lsls r0, r1, 28
	lsrs r0, 30
	cmp r0, r8
	bne _081A035C
	lsrs r0, r1, 6
	cmp r0, 0
	beq _081A035C
	lsls r0, r1, 26
	lsrs r0, 30
	lsls r0, 1
	mov r7, sp
	adds r1, r7, r0
	adds r0, r2, 0
	adds r0, 0xBA
	ldrh r0, [r0]
	strh r0, [r1]
_081A035C:
	adds r0, r3, 0x1
	lsls r0, 24
	lsrs r3, r0, 24
	cmp r3, r4
	bcs _081A0376
	ldr r0, [r6]
	adds r0, 0xB1
	ldrb r0, [r0]
	lsls r0, 26
	lsrs r0, 28
	subs r0, 0x3
	cmp r3, r0
	blt _081A032A
_081A0376:
	mov r0, sp
	add r0, r9
	ldrh r0, [r0]
_081A037C:
	add sp, 0x8
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_81A0284

	thumb_func_start sub_81A0390
sub_81A0390: @ 81A0390
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, 0xC
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
	movs r5, 0
	ldr r7, =gSaveBlock2Ptr
	adds r6, r7, 0
	movs r4, 0
_081A03A6:
	ldr r0, [r6]
	lsls r2, r5, 1
	adds r2, r5
	lsls r2, 2
	adds r0, r2
	adds r1, r0, 0
	adds r1, 0xE0
	strh r4, [r1]
	adds r0, 0xEA
	strh r4, [r0]
	movs r3, 0
_081A03BC:
	ldr r0, [r6]
	lsls r1, r3, 1
	adds r1, r2
	adds r0, 0xE2
	adds r0, r1
	strh r4, [r0]
	adds r0, r3, 0x1
	lsls r0, 24
	lsrs r3, r0, 24
	cmp r3, 0x3
	bls _081A03BC
	adds r0, r5, 0x1
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, 0x2
	bls _081A03A6
	ldr r0, [r7]
	adds r0, 0xB1
	ldrb r0, [r0]
	lsrs r3, r0, 6
	movs r5, 0
_081A03E6:
	lsls r0, r3, 2
	mov r1, sp
	adds r2, r1, r0
	lsls r0, r5, 1
	adds r0, r5
	lsls r0, 2
	adds r0, 0xE0
	ldr r1, [r7]
	adds r1, r0
	str r1, [r2]
	adds r0, r3, 0x1
	movs r1, 0x3
	bl __modsi3
	lsls r0, 24
	lsrs r3, r0, 24
	adds r0, r5, 0x1
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, 0x2
	bls _081A03E6
	movs r5, 0
	ldr r7, =gSaveBlock2Ptr
	ldr r6, =gUnknown_086109A4
_081A0416:
	ldr r0, [r7]
	mov r12, r0
	adds r0, 0xB4
	adds r0, r5
	ldrb r2, [r0]
	mov r0, r12
	adds r0, 0xB2
	ldrb r0, [r0]
	lsls r0, 29
	lsrs r0, 29
	asrs r0, r5
	movs r1, 0x1
	ands r0, r1
	lsls r0, 2
	asrs r2, r0
	movs r0, 0xF
	ands r2, r0
	lsls r0, r5, 2
	mov r1, sp
	adds r3, r1, r0
	ldr r4, [r3]
	lsls r2, 1
	mov r0, r12
	adds r0, 0xB0
	ldrb r1, [r0]
	movs r0, 0x58
	muls r0, r1
	adds r2, r0
	adds r2, r6
	ldrh r0, [r2]
	strh r0, [r4]
	ldr r1, [r3]
	ldrh r0, [r1]
	adds r1, 0x2
	bl sub_81A01E8
	adds r0, r5, 0x1
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, 0x2
	bls _081A0416
	movs r5, 0
	cmp r5, r8
	bcs _081A04D6
	ldr r7, =gSaveBlock2Ptr
_081A0470:
	ldr r1, [r7]
	lsls r0, r5, 2
	adds r4, r1, r0
	adds r0, r4, 0
	adds r0, 0xB8
	ldrb r2, [r0]
	lsls r0, r2, 30
	lsrs r1, r0, 30
	lsls r0, r2, 28
	lsrs r3, r0, 30
	adds r6, r3, 0
	cmp r1, 0x1
	bne _081A04A8
	lsrs r0, r2, 6
	cmp r0, 0
	beq _081A04CC
	lsls r0, r3, 2
	add r0, sp
	ldr r1, [r0]
	adds r0, r4, 0
	adds r0, 0xBA
	ldrh r0, [r0]
	strh r0, [r1, 0xA]
	b _081A04CC
	.pool
_081A04A8:
	cmp r1, 0x2
	bne _081A04CC
	lsls r0, r2, 24
	lsrs r0, 30
	cmp r0, 0
	beq _081A04CC
	lsls r2, 26
	lsrs r2, 30
	lsls r0, r6, 2
	add r0, sp
	ldr r1, [r0]
	lsls r2, 1
	adds r1, 0x2
	adds r1, r2
	adds r0, r4, 0
	adds r0, 0xBA
	ldrh r0, [r0]
	strh r0, [r1]
_081A04CC:
	adds r0, r5, 0x1
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, r8
	bcc _081A0470
_081A04D6:
	add sp, 0xC
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_81A0390

	thumb_func_start sub_81A04E4
sub_81A04E4: @ 81A04E4
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x18
	lsls r0, 24
	lsrs r0, 24
	movs r7, 0x2
	cmp r0, 0x6
	bls _081A04FC
	b _081A064C
_081A04FC:
	lsls r0, 2
	ldr r1, =_081A050C
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_081A050C:
	.4byte _081A0528
	.4byte _081A0540
	.4byte _081A05B4
	.4byte _081A05F4
	.4byte _081A061C
	.4byte _081A064C
	.4byte _081A0634
_081A0528:
	movs r0, 0x12
	mov r10, r0
	movs r6, 0x8
	ldr r0, =gUnknown_085EAEB1
	str r0, [sp, 0xC]
	ldr r0, =gUnknown_085EAEB8
	str r0, [sp, 0x10]
	b _081A0652
	.pool
_081A0540:
	movs r7, 0x3
	movs r1, 0x12
	mov r10, r1
	movs r6, 0x6
	movs r4, 0
	ldr r0, =gSpeciesNames
	mov r9, r0
	ldr r0, =gSaveBlock2Ptr
	ldr r3, [r0]
	movs r1, 0xB2
	adds r1, r3
	mov r12, r1
	adds r5, r3, 0
	adds r5, 0xB0
	ldr r0, =gUnknown_086109A4
	mov r8, r0
_081A0560:
	adds r0, r3, 0
	adds r0, 0xB4
	adds r0, r4
	ldrb r2, [r0]
	mov r1, r12
	ldrb r0, [r1]
	lsls r0, 29
	lsrs r0, 29
	asrs r0, r4
	movs r1, 0x1
	ands r0, r1
	lsls r0, 2
	asrs r2, r0
	movs r0, 0xF
	ands r2, r0
	lsls r2, 1
	ldrb r1, [r5]
	movs r0, 0x58
	muls r0, r1
	adds r2, r0
	add r2, r8
	ldrh r1, [r2]
	lsls r0, r4, 2
	mov r2, sp
	adds r2, r0
	adds r2, 0xC
	movs r0, 0xB
	muls r0, r1
	add r0, r9
	str r0, [r2]
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x2
	bls _081A0560
	b _081A0652
	.pool
_081A05B4:
	movs r0, 0x12
	mov r10, r0
	movs r6, 0x8
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	adds r0, 0xB1
	ldrb r0, [r0]
	lsls r0, 26
	lsrs r0, 28
	cmp r0, 0x2
	bls _081A05CC
	b _081A06FA
_081A05CC:
	ldr r0, =gUnknown_030062F0
	ldr r3, [r0]
	ldrh r0, [r3, 0x2]
	movs r2, 0xB
	muls r0, r2
	ldr r1, =gSpeciesNames
	adds r0, r1
	str r0, [sp, 0x10]
	ldrh r0, [r3]
	muls r0, r2
	adds r0, r1
	str r0, [sp, 0xC]
	b _081A0652
	.pool
_081A05F4:
	movs r1, 0x11
	mov r10, r1
	movs r6, 0x8
	ldr r0, =gUnknown_030062F0
	ldr r3, [r0]
	ldrh r0, [r3, 0x4]
	movs r2, 0xD
	muls r0, r2
	ldr r1, =gMoveNames
	adds r0, r1
	str r0, [sp, 0xC]
	ldrh r0, [r3, 0x6]
	muls r0, r2
	adds r0, r1
	str r0, [sp, 0x10]
	b _081A0652
	.pool
_081A061C:
	movs r0, 0x12
	mov r10, r0
	movs r6, 0x8
	ldr r0, =gUnknown_085ED193
	str r0, [sp, 0xC]
	ldr r0, =gUnknown_085ED198
	str r0, [sp, 0x10]
	b _081A0652
	.pool
_081A0634:
	movs r1, 0x14
	mov r10, r1
	movs r6, 0x8
	ldr r0, =gUnknown_085EAE62
	str r0, [sp, 0xC]
	ldr r0, =gUnknown_085EAE66
	str r0, [sp, 0x10]
	b _081A0652
	.pool
_081A064C:
	movs r0, 0
	mov r10, r0
	movs r6, 0
_081A0652:
	movs r5, 0
	movs r4, 0
	lsls r1, r7, 25
	mov r8, r1
	cmp r4, r7
	bcs _081A067E
_081A065E:
	lsls r0, r4, 2
	add r0, sp
	adds r0, 0xC
	ldr r1, [r0]
	movs r0, 0x1
	movs r2, 0
	bl GetStringWidth
	cmp r0, r5
	ble _081A0674
	adds r5, r0, 0
_081A0674:
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, r7
	bcc _081A065E
_081A067E:
	adds r0, r5, 0
	bl convert_pixel_width_to_tile_width
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	mov r0, r10
	adds r1, r4, 0
	bl sub_80E2D5C
	lsls r0, 24
	lsrs r0, 24
	mov r10, r0
	mov r0, r8
	lsrs r3, r0, 24
	mov r0, r10
	adds r1, r6, 0
	adds r2, r4, 0
	bl sub_81A0784
	lsls r0, 24
	lsrs r5, r0, 24
	adds r0, r5, 0
	movs r1, 0
	bl SetStandardWindowBorderStyle
	movs r4, 0
	cmp r4, r7
	bcs _081A06E6
_081A06B8:
	lsls r0, r4, 2
	add r0, sp
	adds r0, 0xC
	ldr r2, [r0]
	lsls r0, r4, 4
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp]
	movs r0, 0xFF
	str r0, [sp, 0x4]
	movs r0, 0
	str r0, [sp, 0x8]
	adds r0, r5, 0
	movs r1, 0x1
	movs r3, 0x8
	bl Print
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, r7
	bcc _081A06B8
_081A06E6:
	adds r0, r5, 0
	adds r1, r7, 0
	movs r2, 0
	bl InitMenuInUpperLeftCornerPlaySoundWhenAPressed
	movs r0, 0x1
	adds r1, r7, 0
	adds r2, r5, 0
	bl sub_81A0804
_081A06FA:
	add sp, 0x18
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_81A04E4

	thumb_func_start sub_81A070C
sub_81A070C: @ 81A070C
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r5, r0, 24
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	ldr r1, =gTasks + 0x8
	adds r4, r0, r1
	movs r1, 0xA
	ldrsh r0, [r4, r1]
	cmp r0, 0
	bne _081A0730
	bl ProcessMenuInputNoWrapAround
	b _081A0734
	.pool
_081A0730:
	bl ProcessMenuInput
_081A0734:
	lsls r0, 24
	lsrs r0, 24
	lsls r0, 24
	asrs r1, r0, 24
	movs r0, 0x2
	negs r0, r0
	cmp r1, r0
	beq _081A0778
	adds r0, 0x1
	cmp r1, r0
	bne _081A0764
	movs r1, 0x8
	ldrsh r0, [r4, r1]
	cmp r0, 0
	bne _081A0778
	movs r0, 0x5
	bl audio_play
	ldr r1, =gUnknown_020375F0
	movs r0, 0x7F
	strh r0, [r1]
	b _081A0768
	.pool
_081A0764:
	ldr r0, =gUnknown_020375F0
	strh r1, [r0]
_081A0768:
	ldrb r0, [r4, 0xC]
	bl sub_81A07E8
	adds r0, r5, 0
	bl DestroyTask
	bl script_env_2_enable_and_set_ctx_running
_081A0778:
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A070C

	thumb_func_start sub_81A0784
sub_81A0784: @ 81A0784
	push {r4,r5,lr}
	sub sp, 0x20
	adds r4, r0, 0
	adds r5, r1, 0
	lsls r4, 24
	lsls r5, 24
	lsls r2, 24
	lsrs r2, 24
	lsls r3, 24
	lsrs r3, 24
	movs r0, 0x80
	lsls r0, 17
	adds r4, r0
	lsrs r4, 24
	adds r5, r0
	lsrs r5, 24
	str r2, [sp]
	str r3, [sp, 0x4]
	movs r0, 0xF
	str r0, [sp, 0x8]
	movs r0, 0x64
	str r0, [sp, 0xC]
	add r0, sp, 0x10
	movs r1, 0
	adds r2, r4, 0
	adds r3, r5, 0
	bl sub_8198A50
	ldr r0, [sp, 0x10]
	ldr r1, [sp, 0x14]
	str r0, [sp, 0x18]
	str r1, [sp, 0x1C]
	add r0, sp, 0x18
	bl AddWindow
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	adds r0, r4, 0
	bl PutWindowTilemap
	adds r0, r4, 0
	movs r1, 0x3
	bl CopyWindowToVram
	adds r0, r4, 0
	add sp, 0x20
	pop {r4,r5}
	pop {r1}
	bx r1
	thumb_func_end sub_81A0784

	thumb_func_start sub_81A07E8
sub_81A07E8: @ 81A07E8
	push {r4,lr}
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	adds r0, r4, 0
	movs r1, 0x1
	bl sub_8198070
	adds r0, r4, 0
	bl RemoveWindow
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_81A07E8

	thumb_func_start sub_81A0804
sub_81A0804: @ 81A0804
	push {r4-r6,lr}
	adds r4, r0, 0
	adds r5, r1, 0
	lsls r4, 24
	lsrs r4, 24
	lsls r5, 24
	lsrs r5, 24
	lsls r2, 24
	lsrs r6, r2, 24
	ldr r0, =sub_81A070C
	movs r1, 0x50
	bl CreateTask
	lsls r0, 24
	lsrs r2, r0, 24
	ldr r1, =gTasks
	lsls r0, r2, 2
	adds r0, r2
	lsls r0, 3
	adds r1, r0, r1
	strh r4, [r1, 0x10]
	cmp r5, 0x3
	bls _081A0840
	movs r0, 0x1
	b _081A0842
	.pool
_081A0840:
	movs r0, 0
_081A0842:
	strh r0, [r1, 0x12]
	ldr r1, =gTasks
	lsls r0, r2, 2
	adds r0, r2
	lsls r0, 3
	adds r0, r1
	strh r6, [r0, 0x14]
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A0804

	thumb_func_start sub_81A085C
sub_81A085C: @ 81A085C
	push {lr}
	ldr r1, =gUnknown_086114E0
	ldr r0, =gUnknown_020375E0
	ldrh r0, [r0]
	lsls r0, 2
	adds r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A085C

	thumb_func_start sub_81A087C
sub_81A087C: @ 81A087C
	push {r4-r7,lr}
	bl sub_819FBC8
	ldr r3, =gSaveBlock2Ptr
	ldr r1, [r3]
	adds r1, 0xB1
	ldrb r2, [r1]
	movs r0, 0x4
	negs r0, r0
	ands r0, r2
	strb r0, [r1]
	ldr r1, [r3]
	adds r1, 0xB1
	ldrb r2, [r1]
	movs r0, 0x3D
	negs r0, r0
	ands r0, r2
	strb r0, [r1]
	ldr r1, [r3]
	adds r1, 0xB1
	ldrb r2, [r1]
	movs r0, 0x3F
	ands r0, r2
	strb r0, [r1]
	ldr r1, [r3]
	adds r1, 0xB2
	ldrb r2, [r1]
	movs r0, 0x8
	negs r0, r0
	ands r0, r2
	strb r0, [r1]
	movs r4, 0
	movs r1, 0
_081A08BE:
	ldr r0, [r3]
	adds r0, 0xB4
	adds r0, r4
	strb r1, [r0]
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x2
	bls _081A08BE
	movs r4, 0
	ldr r5, =gSaveBlock2Ptr
	movs r0, 0x4
	negs r0, r0
	mov r12, r0
	movs r7, 0xD
	negs r7, r7
	movs r6, 0x31
	negs r6, r6
_081A08E2:
	ldr r1, [r5]
	lsls r3, r4, 2
	adds r1, r3
	adds r1, 0xB8
	ldrb r2, [r1]
	mov r0, r12
	ands r0, r2
	strb r0, [r1]
	ldr r1, [r5]
	adds r1, r3
	adds r1, 0xB8
	ldrb r2, [r1]
	adds r0, r7, 0
	ands r0, r2
	strb r0, [r1]
	ldr r1, [r5]
	adds r1, r3
	adds r1, 0xB8
	ldrb r2, [r1]
	adds r0, r6, 0
	ands r0, r2
	strb r0, [r1]
	ldr r1, [r5]
	adds r1, r3
	adds r1, 0xB8
	ldrb r2, [r1]
	movs r0, 0x3F
	ands r0, r2
	strb r0, [r1]
	ldr r0, [r5]
	adds r0, r3
	adds r0, 0xBA
	movs r1, 0
	strh r1, [r0]
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x8
	bls _081A08E2
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A087C

	thumb_func_start sub_81A093C
sub_81A093C: @ 81A093C
	push {lr}
	bl sub_819FBB0
	lsls r0, 24
	lsrs r1, r0, 24
	cmp r1, 0
	bne _081A0954
	ldr r0, =gUnknown_020375F0
	strh r1, [r0]
	b _081A095A
	.pool
_081A0954:
	ldr r1, =gUnknown_020375F0
	movs r0, 0x1
	strh r0, [r1]
_081A095A:
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A093C

	thumb_func_start sub_81A0964
sub_81A0964: @ 81A0964
	push {lr}
	ldr r0, =gUnknown_020375E2
	ldrb r0, [r0]
	bl sub_819FC40
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A0964

	thumb_func_start sub_81A0978
sub_81A0978: @ 81A0978
	push {lr}
	bl sub_819FBC8
	pop {r0}
	bx r0
	thumb_func_end sub_81A0978

	thumb_func_start sub_81A0984
sub_81A0984: @ 81A0984
	push {lr}
	bl sub_819FD64
	pop {r0}
	bx r0
	thumb_func_end sub_81A0984

	thumb_func_start sub_81A0990
sub_81A0990: @ 81A0990
	ldr r0, =gSaveBlock2Ptr
	ldr r2, [r0]
	adds r2, 0xB1
	ldrb r3, [r2]
	lsls r1, r3, 26
	lsrs r1, 28
	adds r1, 0x1
	movs r0, 0xF
	ands r1, r0
	lsls r1, 2
	movs r0, 0x3D
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2]
	bx lr
	.pool
	thumb_func_end sub_81A0990

	thumb_func_start sub_81A09B4
sub_81A09B4: @ 81A09B4
	ldr r1, =gUnknown_020375F0
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	adds r0, 0xB1
	ldrb r0, [r0]
	lsls r0, 26
	lsrs r0, 28
	strh r0, [r1]
	bx lr
	.pool
	thumb_func_end sub_81A09B4

	thumb_func_start sub_81A09D0
sub_81A09D0: @ 81A09D0
	push {lr}
	ldr r3, =gSaveBlock2Ptr
	ldr r0, [r3]
	adds r0, 0xB1
	ldrb r0, [r0]
	lsls r0, 26
	lsrs r0, 28
	subs r1, r0, 0x3
	cmp r1, 0
	bge _081A09F4
	ldr r1, =gUnknown_020375F0
	movs r0, 0
	strh r0, [r1]
	b _081A0A1C
	.pool
_081A09F4:
	ldr r2, =gUnknown_020375F0
	cmp r1, 0x8
	ble _081A09FE
	movs r0, 0x1
	strh r0, [r2]
_081A09FE:
	ldr r0, [r3]
	lsls r1, 2
	adds r0, r1
	adds r0, 0xB8
	ldrb r0, [r0]
	lsls r0, 30
	cmp r0, 0
	bne _081A0A18
	movs r0, 0x1
	b _081A0A1A
	.pool
_081A0A18:
	movs r0, 0
_081A0A1A:
	strh r0, [r2]
_081A0A1C:
	pop {r0}
	bx r0
	thumb_func_end sub_81A09D0

	thumb_func_start sub_81A0A20
sub_81A0A20: @ 81A0A20
	push {lr}
	ldr r0, =gUnknown_020375E2
	ldrb r0, [r0]
	bl sub_81A04E4
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A0A20

	thumb_func_start sub_81A0A34
sub_81A0A34: @ 81A0A34
	push {r4,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	bl sub_8197224
	lsls r0, 16
	cmp r0, 0
	bne _081A0A68
	adds r0, r4, 0
	bl DestroyTask
	ldr r0, =gUnknown_020375E2
	ldrh r0, [r0]
	cmp r0, 0
	beq _081A0A64
	ldr r0, =script_env_2_enable_and_set_ctx_running
	bl sub_81A172C
	b _081A0A68
	.pool
_081A0A64:
	bl script_env_2_enable_and_set_ctx_running
_081A0A68:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_81A0A34

	thumb_func_start sub_81A0A70
sub_81A0A70: @ 81A0A70
	push {lr}
	ldr r1, =gUnknown_020375E4
	ldrh r0, [r1]
	cmp r0, 0x6
	bne _081A0A94
	ldr r1, =gUnknown_08610FF0
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	adds r0, 0xB0
	ldrb r0, [r0]
	lsls r0, 3
	b _081A0C66
	.pool
_081A0A94:
	cmp r0, 0x7
	bne _081A0AB0
	ldr r1, =gUnknown_08610FF0
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	adds r0, 0xB0
	ldrb r0, [r0]
	lsls r0, 3
	adds r1, 0x4
	b _081A0C66
	.pool
_081A0AB0:
	cmp r0, 0x8
	bne _081A0ACC
	ldr r1, =gUnknown_086111B0
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	adds r0, 0xB0
	ldrb r0, [r0]
	lsls r0, 3
	b _081A0C66
	.pool
_081A0ACC:
	cmp r0, 0x9
	bne _081A0AE8
	ldr r1, =gUnknown_086111B0
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	adds r0, 0xB0
	ldrb r0, [r0]
	lsls r0, 3
	adds r1, 0x4
	b _081A0C66
	.pool
_081A0AE8:
	cmp r0, 0x4
	bne _081A0B04
	ldr r1, =gUnknown_08611230
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	adds r0, 0xB0
	ldrb r0, [r0]
	lsls r0, 3
	b _081A0C66
	.pool
_081A0B04:
	cmp r0, 0x5
	bne _081A0B20
	ldr r1, =gUnknown_08611230
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	adds r0, 0xB0
	ldrb r0, [r0]
	lsls r0, 3
	adds r1, 0x4
	b _081A0C66
	.pool
_081A0B20:
	cmp r0, 0xA
	bne _081A0B40
	ldr r2, =gUnknown_08611070
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	adds r0, 0xB0
	ldrb r1, [r0]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 2
	b _081A0BD6
	.pool
_081A0B40:
	cmp r0, 0xB
	bne _081A0B5C
	ldr r1, =gUnknown_086112B0
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	adds r0, 0xB0
	ldrb r0, [r0]
	lsls r0, 3
	b _081A0C66
	.pool
_081A0B5C:
	cmp r0, 0xC
	bne _081A0B7C
	ldr r2, =gUnknown_08611070
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	adds r0, 0xB0
	ldrb r1, [r0]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 2
	adds r2, 0xC
	b _081A0BD6
	.pool
_081A0B7C:
	cmp r0, 0xD
	bne _081A0B9C
	ldr r2, =gUnknown_08611070
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	adds r0, 0xB0
	ldrb r1, [r0]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 2
	adds r2, 0x4
	b _081A0BD6
	.pool
_081A0B9C:
	ldrh r0, [r1]
	cmp r0, 0x10
	bne _081A0BC0
	ldr r2, =gUnknown_08611070
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	adds r0, 0xB0
	ldrb r1, [r0]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 2
	adds r2, 0x10
	b _081A0BD6
	.pool
_081A0BC0:
	cmp r0, 0xE
	bne _081A0BE4
	ldr r2, =gUnknown_08611070
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	adds r0, 0xB0
	ldrb r1, [r0]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 2
	adds r2, 0x8
_081A0BD6:
	adds r0, r2
	ldr r1, [r0]
	b _081A0C7A
	.pool
_081A0BE4:
	cmp r0, 0xF
	bne _081A0C00
	ldr r1, =gUnknown_086112B0
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	adds r0, 0xB0
	ldrb r0, [r0]
	lsls r0, 3
	adds r1, 0x4
	b _081A0C66
	.pool
_081A0C00:
	cmp r0, 0
	bne _081A0C1C
	ldr r1, =gUnknown_08610EF0
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	adds r0, 0xB0
	ldrb r0, [r0]
	lsls r0, 4
	b _081A0C66
	.pool
_081A0C1C:
	cmp r0, 0x1
	bne _081A0C38
	ldr r1, =gUnknown_08610EF0
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	adds r0, 0xB0
	ldrb r0, [r0]
	lsls r0, 4
	adds r1, 0x4
	b _081A0C66
	.pool
_081A0C38:
	cmp r0, 0x2
	bne _081A0C54
	ldr r1, =gUnknown_08610EF0
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	adds r0, 0xB0
	ldrb r0, [r0]
	lsls r0, 4
	adds r1, 0x8
	b _081A0C66
	.pool
_081A0C54:
	cmp r0, 0x3
	bne _081A0C74
	ldr r1, =gUnknown_08610EF0
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	adds r0, 0xB0
	ldrb r0, [r0]
	lsls r0, 4
	adds r1, 0xC
_081A0C66:
	adds r0, r1
	ldr r1, [r0]
	b _081A0C7A
	.pool
_081A0C74:
	bl script_env_2_enable_and_set_ctx_running
	b _081A0C8E
_081A0C7A:
	ldr r0, =gStringVar4
	bl StringExpandPlaceholders
	movs r0, 0x1
	bl AddTextPrinterForMessage
	ldr r0, =sub_81A0A34
	movs r1, 0x1
	bl CreateTask
_081A0C8E:
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A0A70

	thumb_func_start sub_81A0C9C
sub_81A0C9C: @ 81A0C9C
	push {lr}
	bl script_env_2_enable
	bl player_bitmagic
	bl sub_808B864
	bl sub_808BCF4
	movs r0, 0
	movs r1, 0x1
	bl sub_81973C4
	bl sub_81A0A70
	pop {r0}
	bx r0
	thumb_func_end sub_81A0C9C

	thumb_func_start sub_81A0CC0
sub_81A0CC0: @ 81A0CC0
	push {lr}
	ldr r0, =gSaveBlock2Ptr
	ldr r2, [r0]
	adds r0, r2, 0
	adds r0, 0xB1
	ldrb r0, [r0]
	lsls r1, r0, 26
	lsrs r0, r1, 28
	cmp r0, 0x2
	bhi _081A0CE4
	ldr r1, =gUnknown_020375F0
	movs r0, 0x2
	b _081A0D34
	.pool
_081A0CE4:
	lsrs r0, r1, 28
	cmp r0, 0xB
	bhi _081A0D30
	lsrs r0, r1, 28
	subs r0, 0x3
	lsls r0, 2
	adds r0, r2, r0
	adds r0, 0xB8
	ldrb r0, [r0]
	lsls r0, 30
	lsrs r0, 30
	cmp r0, 0x2
	beq _081A0D18
	cmp r0, 0x2
	bgt _081A0D08
	cmp r0, 0x1
	beq _081A0D0E
	b _081A0D30
_081A0D08:
	cmp r0, 0x3
	beq _081A0D24
	b _081A0D30
_081A0D0E:
	ldr r1, =gUnknown_020375F0
	movs r0, 0x4
	b _081A0D34
	.pool
_081A0D18:
	ldr r1, =gUnknown_020375F0
	movs r0, 0x3
	b _081A0D34
	.pool
_081A0D24:
	ldr r1, =gUnknown_020375F0
	movs r0, 0x1
	b _081A0D34
	.pool
_081A0D30:
	ldr r1, =gUnknown_020375F0
	movs r0, 0x5
_081A0D34:
	strh r0, [r1]
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A0CC0

	thumb_func_start sub_81A0D40
sub_81A0D40: @ 81A0D40
	push {r4,lr}
	ldr r0, =gUnknown_020375E2
	ldrh r0, [r0]
	cmp r0, 0
	beq _081A0D6E
	ldr r4, =gUnknown_020375E4
	ldr r0, =gSaveBlock2Ptr
	ldr r2, [r0]
	adds r2, 0xB2
	ldrb r3, [r2]
	lsls r0, r3, 29
	lsrs r0, 29
	movs r1, 0x1
	ldrb r4, [r4]
	lsls r1, r4
	orrs r1, r0
	movs r0, 0x7
	ands r1, r0
	movs r0, 0x8
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2]
_081A0D6E:
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A0D40

	thumb_func_start sub_81A0D80
sub_81A0D80: @ 81A0D80
	push {lr}
	ldr r0, =gSaveBlock2Ptr
	ldr r3, [r0]
	adds r0, r3, 0
	adds r0, 0xB1
	ldrb r0, [r0]
	lsls r1, r0, 26
	lsrs r0, r1, 28
	cmp r0, 0x2
	bls _081A0DCE
	subs r0, 0x3
	lsls r0, 24
	lsrs r2, r0, 24
	ldr r0, =gUnknown_020375E2
	ldrh r0, [r0]
	cmp r0, 0
	beq _081A0DC0
	lsls r2, 2
	adds r2, r3, r2
	adds r2, 0xB8
	ldrb r1, [r2]
	movs r0, 0x3F
	ands r0, r1
	movs r1, 0x40
	orrs r0, r1
	strb r0, [r2]
	b _081A0DCE
	.pool
_081A0DC0:
	lsls r0, r2, 2
	adds r0, r3, r0
	adds r0, 0xB8
	ldrb r2, [r0]
	movs r1, 0x3F
	ands r1, r2
	strb r1, [r0]
_081A0DCE:
	pop {r0}
	bx r0
	thumb_func_end sub_81A0D80

	thumb_func_start sub_81A0DD4
sub_81A0DD4: @ 81A0DD4
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	movs r6, 0
	movs r2, 0
	ldr r1, =gSaveBlock2Ptr
	ldr r0, [r1]
	adds r0, 0xB8
	ldrb r0, [r0]
	lsls r0, 30
	ldr r3, =gUnknown_030062F0
	mov r9, r3
	cmp r0, 0
	beq _081A0E14
	adds r3, r1, 0
_081A0DF4:
	adds r0, r6, 0x1
	lsls r0, 24
	lsrs r6, r0, 24
	adds r0, r2, 0x1
	lsls r0, 24
	lsrs r2, r0, 24
	cmp r2, 0x8
	bhi _081A0E14
	ldr r0, [r3]
	lsls r1, r2, 2
	adds r0, r1
	adds r0, 0xB8
	ldrb r0, [r0]
	lsls r0, 30
	cmp r0, 0
	bne _081A0DF4
_081A0E14:
	mov r4, r9
	movs r0, 0x8
	bl AllocZeroed
	adds r7, r0, 0
	str r7, [r4]
	ldr r0, =gUnknown_020375E2
	ldrh r0, [r0]
	cmp r0, 0x2
	bne _081A0E88
	ldr r0, =gSaveBlock2Ptr
	ldr r5, [r0]
	adds r6, r5, 0
	adds r6, 0xB1
	ldrb r0, [r6]
	lsls r1, r0, 26
	lsrs r0, r1, 28
	cmp r0, 0x2
	bls _081A0E3C
	b _081A0FCE
_081A0E3C:
	adds r2, r5, 0
	adds r2, 0xB4
	adds r0, r2, r0
	ldrb r0, [r0]
	lsrs r4, r0, 4
	ldr r3, =gUnknown_08610970
	lsls r1, r4, 1
	adds r5, 0xB0
	ldrb r0, [r5]
	movs r4, 0x58
	muls r0, r4
	adds r1, r0
	adds r3, 0x34
	adds r1, r3
	ldrh r0, [r1]
	strh r0, [r7, 0x2]
	ldrb r0, [r6]
	lsls r0, 26
	lsrs r0, 28
	adds r2, r0
	ldrb r1, [r2]
	movs r0, 0xF
	ands r0, r1
	lsls r0, 1
	ldrb r1, [r5]
	muls r1, r4
	adds r0, r1
	adds r0, r3
	b _081A0FCA
	.pool
_081A0E88:
	cmp r0, 0x3
	bne _081A0F54
	ldr r0, =gSaveBlock2Ptr
	mov r8, r0
	ldr r5, [r0]
	movs r1, 0xB1
	adds r1, r5
	mov r12, r1
	ldrb r0, [r1]
	lsls r2, r0, 26
	lsrs r0, r2, 28
	cmp r0, 0x2
	bhi _081A0EA4
	b _081A0FCE
_081A0EA4:
	adds r1, r0, 0
	adds r0, r6, 0x3
	cmp r1, r0
	blt _081A0EAE
	b _081A0FCE
_081A0EAE:
	adds r0, r1, 0
	subs r0, 0x3
	lsls r0, 2
	adds r0, r5, r0
	adds r0, 0xB8
	ldrb r0, [r0]
	lsls r0, 30
	lsrs r0, 30
	cmp r0, 0x2
	beq _081A0EC4
	b _081A0FCE
_081A0EC4:
	adds r0, r1, 0
	subs r0, 0x3
	lsls r0, 2
	adds r0, r5, r0
	adds r0, 0xB8
	ldrb r0, [r0]
	lsls r0, 28
	lsrs r6, r0, 30
	adds r0, r5, 0
	adds r0, 0xB2
	ldrb r1, [r0]
	lsls r1, 29
	lsrs r1, 29
	asrs r1, r6
	movs r0, 0x1
	ands r1, r0
	adds r0, r5, 0
	adds r0, 0xB4
	adds r0, r6
	ldrb r4, [r0]
	lsls r1, 2
	asrs r4, r1
	movs r0, 0xF
	ands r4, r0
	ldr r2, =gUnknown_08610970
	lsls r1, r4, 1
	adds r0, r5, 0
	adds r0, 0xB0
	ldrb r3, [r0]
	movs r0, 0x58
	muls r0, r3
	adds r1, r0
	adds r2, 0x34
	adds r1, r2
	ldrh r0, [r1]
	strh r0, [r7]
	mov r3, r12
	ldrb r0, [r3]
	lsls r0, 26
	lsrs r0, 28
	subs r0, 0x3
	lsls r0, 2
	adds r0, r5, r0
	adds r0, 0xB8
	ldrb r2, [r0]
	lsls r2, 26
	lsrs r2, 30
	adds r0, r6, 0
	adds r1, r4, 0
	bl sub_81A0284
	mov r1, r9
	ldr r2, [r1]
	strh r0, [r2, 0x4]
	mov r3, r8
	ldr r1, [r3]
	adds r0, r1, 0
	adds r0, 0xB1
	ldrb r0, [r0]
	lsls r0, 26
	lsrs r0, 28
	subs r0, 0x3
	lsls r0, 2
	adds r1, r0
	adds r1, 0xBA
	ldrh r0, [r1]
	strh r0, [r2, 0x6]
	b _081A0FCE
	.pool
_081A0F54:
	cmp r0, 0x4
	bne _081A0FCE
	ldr r0, =gSaveBlock2Ptr
	ldr r3, [r0]
	adds r0, r3, 0
	adds r0, 0xB1
	ldrb r0, [r0]
	lsls r2, r0, 26
	lsrs r0, r2, 28
	cmp r0, 0x2
	bls _081A0FCE
	adds r1, r0, 0
	adds r0, r6, 0x3
	cmp r1, r0
	bge _081A0FCE
	adds r0, r1, 0
	subs r0, 0x3
	lsls r0, 2
	adds r0, r3, r0
	adds r0, 0xB8
	ldrb r0, [r0]
	lsls r0, 30
	lsrs r0, 30
	cmp r0, 0x1
	bne _081A0FCE
	adds r0, r1, 0
	subs r0, 0x3
	lsls r0, 2
	adds r0, r3, r0
	adds r0, 0xB8
	ldrb r0, [r0]
	lsls r0, 28
	lsrs r6, r0, 30
	adds r0, r3, 0
	adds r0, 0xB2
	ldrb r1, [r0]
	lsls r1, 29
	lsrs r1, 29
	asrs r1, r6
	movs r0, 0x1
	ands r1, r0
	adds r0, r3, 0
	adds r0, 0xB4
	adds r0, r6
	ldrb r0, [r0]
	lsls r1, 2
	asrs r0, r1
	movs r1, 0xF
	ands r0, r1
	ldr r2, =gUnknown_08610970
	lsls r0, 1
	adds r1, r3, 0
	adds r1, 0xB0
	ldrb r3, [r1]
	movs r1, 0x58
	muls r1, r3
	adds r0, r1
	adds r2, 0x34
	adds r0, r2
_081A0FCA:
	ldrh r0, [r0]
	strh r0, [r7]
_081A0FCE:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A0DD4

	thumb_func_start sub_81A0FE4
sub_81A0FE4: @ 81A0FE4
	push {r4,lr}
	ldr r4, =gUnknown_030062F0
	ldr r0, [r4]
	bl Free
	movs r0, 0
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A0FE4

	thumb_func_start sub_81A0FFC
sub_81A0FFC: @ 81A0FFC
	push {r4-r6,lr}
	sub sp, 0x10
	ldr r0, =gUnknown_020375E2
	ldrh r0, [r0]
	cmp r0, 0x1
	beq _081A1028
	cmp r0, 0x1
	bgt _081A1018
	cmp r0, 0
	beq _081A101E
	b _081A11E6
	.pool
_081A1018:
	cmp r0, 0x2
	beq _081A1030
	b _081A11E6
_081A101E:
	ldr r5, =gStringVar1
	b _081A1032
	.pool
_081A1028:
	ldr r5, =gStringVar2
	b _081A1032
	.pool
_081A1030:
	ldr r5, =gStringVar3
_081A1032:
	ldr r0, =gUnknown_020375E4
	ldrh r0, [r0]
	cmp r0, 0x9
	bls _081A103C
	b _081A11E6
_081A103C:
	lsls r0, 2
	ldr r1, =_081A1054
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_081A1054:
	.4byte _081A107C
	.4byte _081A1094
	.4byte _081A10AC
	.4byte _081A10C4
	.4byte _081A10DC
	.4byte _081A10F4
	.4byte _081A1118
	.4byte _081A1164
	.4byte _081A1140
	.4byte _081A1184
_081A107C:
	ldr r0, =gUnknown_030062F0
	ldr r0, [r0]
	ldrh r1, [r0]
	movs r0, 0xB
	muls r1, r0
	ldr r0, =gSpeciesNames
	adds r1, r0
	b _081A1174
	.pool
_081A1094:
	ldr r0, =gUnknown_030062F0
	ldr r0, [r0]
	ldrh r1, [r0, 0x2]
	movs r0, 0xB
	muls r1, r0
	ldr r0, =gSpeciesNames
	adds r1, r0
	b _081A1174
	.pool
_081A10AC:
	ldr r0, =gUnknown_030062F0
	ldr r0, [r0]
	ldrh r1, [r0]
	movs r0, 0xB
	muls r1, r0
	ldr r0, =gSpeciesNames
	adds r1, r0
	b _081A1174
	.pool
_081A10C4:
	ldr r0, =gUnknown_030062F0
	ldr r0, [r0]
	ldrh r1, [r0, 0x4]
	movs r0, 0xD
	muls r1, r0
	ldr r0, =gMoveNames
	adds r1, r0
	b _081A1174
	.pool
_081A10DC:
	ldr r0, =gUnknown_030062F0
	ldr r0, [r0]
	ldrh r1, [r0, 0x6]
	movs r0, 0xD
	muls r1, r0
	ldr r0, =gMoveNames
	adds r1, r0
	b _081A1174
	.pool
_081A10F4:
	ldr r0, =gSaveBlock2Ptr
	ldr r1, [r0]
	adds r0, r1, 0
	adds r0, 0xB1
	ldrb r0, [r0]
	lsls r0, 26
	lsrs r0, 28
	subs r0, 0x3
	lsls r0, 2
	adds r1, r0
	adds r1, 0xBA
	ldrh r0, [r1]
	bl itemid_get_item
	adds r1, r0, 0
	b _081A1174
	.pool
_081A1118:
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	adds r0, 0xB0
	ldrb r0, [r0]
	movs r1, 0x2
	bl sub_81A1650
	adds r1, r0, 0
	mov r0, sp
	movs r2, 0x2
	bl sub_81DB5E8
	adds r0, r5, 0
	mov r1, sp
	bl StringCopy
	b _081A11E6
	.pool
_081A1140:
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	adds r0, 0xB1
	ldrb r1, [r0]
	movs r0, 0x3
	ands r0, r1
	cmp r0, 0x1
	bne _081A115C
	ldr r1, =gUnknown_085EAEB1
	b _081A1174
	.pool
_081A115C:
	ldr r1, =gUnknown_085EAEB8
	b _081A1174
	.pool
_081A1164:
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	movs r1, 0x82
	lsls r1, 1
	adds r0, r1
	bl ConvertBattleFrontierTrainerSpeechToString
	ldr r1, =gStringVar4
_081A1174:
	adds r0, r5, 0
	bl StringCopy
	b _081A11E6
	.pool
_081A1184:
	ldr r0, =gSaveBlock2Ptr
	ldr r3, [r0]
	adds r1, r3, 0
	adds r1, 0xB1
	ldrb r1, [r1]
	lsls r4, r1, 24
	lsrs r1, r4, 30
	adds r6, r0, 0
	cmp r1, 0x2
	bhi _081A11C0
	adds r0, r3, 0
	adds r0, 0xB4
	adds r0, r1
	ldrb r2, [r0]
	adds r0, r3, 0
	adds r0, 0xB2
	ldrb r0, [r0]
	lsls r0, 29
	lsrs r0, 29
	asrs r0, r1
	movs r1, 0x1
	ands r0, r1
	lsls r0, 2
	asrs r2, r0
	movs r0, 0xF
	ands r2, r0
	b _081A11C2
	.pool
_081A11C0:
	movs r2, 0
_081A11C2:
	ldr r3, =gUnknown_08610970
	lsls r1, r2, 1
	ldr r0, [r6]
	adds r0, 0xB0
	ldrb r2, [r0]
	movs r0, 0x58
	muls r0, r2
	adds r1, r0
	adds r3, 0x34
	adds r1, r3
	ldrh r1, [r1]
	movs r0, 0xB
	muls r1, r0
	ldr r0, =gSpeciesNames
	adds r1, r0
	adds r0, r5, 0
	bl StringCopy
_081A11E6:
	add sp, 0x10
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A0FFC

	thumb_func_start sub_81A11F8
sub_81A11F8: @ 81A11F8
	ldr r0, =gSaveBlock2Ptr
	ldr r2, [r0]
	ldr r0, =gUnknown_020375E2
	ldrb r1, [r0]
	adds r2, 0xB1
	lsls r1, 6
	ldrb r3, [r2]
	movs r0, 0x3F
	ands r0, r3
	orrs r0, r1
	strb r0, [r2]
	bx lr
	.pool
	thumb_func_end sub_81A11F8

	thumb_func_start sub_81A1218
sub_81A1218: @ 81A1218
	push {lr}
	bl sub_81AAC28
	pop {r0}
	bx r0
	thumb_func_end sub_81A1218

	thumb_func_start sub_81A1224
sub_81A1224: @ 81A1224
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	ldr r1, =gSaveBlock2Ptr
	ldr r3, [r1]
	adds r0, r3, 0
	adds r0, 0xB1
	ldrb r0, [r0]
	lsls r0, 26
	lsrs r0, 28
	adds r7, r1, 0
	cmp r0, 0x2
	bhi _081A1242
	b _081A1362
_081A1242:
	movs r5, 0
	movs r2, 0
	adds r0, r3, 0
	adds r0, 0xB8
	ldrb r0, [r0]
	lsls r0, 30
	ldr r1, =gUnknown_020375E2
	mov r12, r1
	ldr r1, =gUnknown_020375F0
	mov r8, r1
	cmp r0, 0
	beq _081A127C
	adds r3, r7, 0
_081A125C:
	adds r0, r5, 0x1
	lsls r0, 24
	lsrs r5, r0, 24
	adds r0, r2, 0x1
	lsls r0, 24
	lsrs r2, r0, 24
	cmp r2, 0x8
	bhi _081A127C
	ldr r0, [r3]
	lsls r1, r2, 2
	adds r0, r1
	adds r0, 0xB8
	ldrb r0, [r0]
	lsls r0, 30
	cmp r0, 0
	bne _081A125C
_081A127C:
	movs r4, 0
	cmp r4, r5
	bcs _081A1322
	ldr r0, [r7]
	adds r0, 0xB1
	ldrb r0, [r0]
	lsls r0, 26
	lsrs r0, 28
	subs r0, 0x3
	cmp r4, r0
	bge _081A1322
	adds r6, r7, 0
	mov r9, r4
_081A1296:
	ldr r3, [r6]
	lsls r0, r4, 2
	adds r2, r3, r0
	adds r0, r2, 0
	adds r0, 0xB8
	ldrb r1, [r0]
	lsls r0, r1, 30
	lsrs r0, 30
	cmp r0, 0x1
	bne _081A1308
	lsrs r0, r1, 6
	cmp r0, 0
	beq _081A1308
	adds r0, r2, 0
	adds r0, 0xBA
	ldrh r0, [r0]
	mov r2, r12
	ldrh r2, [r2]
	cmp r0, r2
	bne _081A1308
	adds r0, r3, 0
	adds r0, 0xB1
	ldrb r0, [r0]
	lsls r0, 26
	lsrs r0, 28
	subs r0, 0x3
	lsls r0, 2
	adds r0, r3, r0
	adds r0, 0xB8
	ldrb r2, [r0]
	movs r1, 0x3F
	ands r1, r2
	strb r1, [r0]
	ldr r1, [r6]
	adds r0, r1, 0
	adds r0, 0xB1
	ldrb r0, [r0]
	lsls r0, 26
	lsrs r0, 28
	subs r0, 0x3
	lsls r0, 2
	adds r1, r0
	mov r2, r12
	ldrh r0, [r2]
	adds r1, 0xBA
	strh r0, [r1]
	mov r1, r9
	mov r0, r8
	strh r1, [r0]
	b _081A1362
	.pool
_081A1308:
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, r5
	bcs _081A1322
	ldr r0, [r6]
	adds r0, 0xB1
	ldrb r0, [r0]
	lsls r0, 26
	lsrs r0, 28
	subs r0, 0x3
	cmp r4, r0
	blt _081A1296
_081A1322:
	ldr r2, [r7]
	adds r0, r2, 0
	adds r0, 0xB1
	ldrb r0, [r0]
	lsls r0, 26
	lsrs r0, 28
	subs r0, 0x3
	lsls r0, 2
	adds r2, r0
	adds r2, 0xB8
	ldrb r1, [r2]
	movs r0, 0x3F
	ands r0, r1
	movs r1, 0x40
	orrs r0, r1
	strb r0, [r2]
	ldr r1, [r7]
	adds r0, r1, 0
	adds r0, 0xB1
	ldrb r0, [r0]
	lsls r0, 26
	lsrs r0, 28
	subs r0, 0x3
	lsls r0, 2
	adds r1, r0
	mov r2, r12
	ldrh r0, [r2]
	adds r1, 0xBA
	strh r0, [r1]
	movs r0, 0x1
	mov r1, r8
	strh r0, [r1]
_081A1362:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_81A1224

	thumb_func_start sub_81A1370
sub_81A1370: @ 81A1370
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	ldr r0, =gSaveBlock2Ptr
	ldr r1, [r0]
	movs r2, 0x8A
	lsls r2, 1
	adds r1, r2
	ldrb r1, [r1]
	adds r4, r0, 0
	cmp r1, 0xFF
	beq _081A1422
	movs r5, 0
_081A138E:
	ldr r1, [r4]
	adds r2, r5, 0x1
	lsls r0, r2, 4
	adds r0, r2
	lsls r0, 2
	adds r3, r1, r0
	movs r5, 0x8A
	lsls r5, 1
	adds r0, r3, r5
	ldrb r0, [r0]
	cmp r0, 0xFF
	bne _081A13B8
	adds r0, r3, 0
	adds r0, 0xDC
	adds r1, 0xDC
	movs r2, 0x44
	bl memcpy
	b _081A1422
	.pool
_081A13B8:
	adds r5, r2, 0
	cmp r5, 0x2
	ble _081A138E
	ldr r0, =0x0000ffff
	mov r10, r0
	movs r2, 0x1
	negs r2, r2
	mov r9, r2
	movs r5, 0x1
	ldr r7, =gSaveBlock2Ptr
	movs r0, 0x90
	lsls r0, 1
	mov r8, r0
	movs r6, 0x44
_081A13D4:
	ldr r0, [r7]
	add r0, r8
	adds r0, 0x34
	bl sub_80842DC
	adds r4, r0, 0
	ldr r0, [r7]
	adds r0, 0xA
	bl sub_80842DC
	cmp r4, r0
	bne _081A13FC
	ldr r0, [r7]
	adds r0, r6
	adds r0, 0xDE
	ldrb r0, [r0]
	cmp r0, r10
	bge _081A13FC
	mov r10, r0
	mov r9, r5
_081A13FC:
	movs r2, 0x44
	add r8, r2
	adds r6, 0x44
	adds r5, 0x1
	cmp r5, 0x3
	ble _081A13D4
	mov r5, r9
	cmp r5, 0
	ble _081A1422
	ldr r0, =gSaveBlock2Ptr
	ldr r1, [r0]
	lsls r0, r5, 4
	add r0, r9
	lsls r0, 2
	adds r0, r1, r0
	adds r0, 0xDC
	adds r1, 0xDC
	bl memcpy
_081A1422:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A1370

	thumb_func_start sub_81A1438
sub_81A1438: @ 81A1438
	push {r4,r5,lr}
	ldr r4, =gSaveBlock2Ptr
	ldr r2, [r4]
	adds r0, r2, 0
	adds r0, 0xB0
	ldrb r0, [r0]
	adds r2, 0xDC
	movs r1, 0x1F
	ands r1, r0
	ldrb r3, [r2]
	movs r0, 0x20
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2]
	ldr r2, [r4]
	adds r0, r2, 0
	adds r0, 0xB1
	ldrb r1, [r0]
	lsls r1, 30
	adds r2, 0xDC
	lsrs r1, 25
	ldrb r3, [r2]
	movs r0, 0x61
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2]
	movs r2, 0
	ldr r0, [r4]
	b _081A148C
	.pool
_081A147C:
	adds r0, r2, 0x1
	lsls r0, 24
	lsrs r2, r0, 24
	cmp r2, 0x8
	bhi _081A1496
	ldr r0, [r4]
	lsls r1, r2, 2
	adds r0, r1
_081A148C:
	adds r0, 0xB8
	ldrb r0, [r0]
	lsls r0, 30
	cmp r0, 0
	bne _081A147C
_081A1496:
	ldr r4, =gSaveBlock2Ptr
	ldr r0, [r4]
	adds r0, 0xDD
	strb r2, [r0]
	ldr r0, [r4]
	adds r1, r0, 0
	adds r1, 0xDE
	ldrb r0, [r1]
	cmp r0, 0xFE
	bhi _081A14AE
	adds r0, 0x1
	strb r0, [r1]
_081A14AE:
	ldr r0, [r4]
	adds r0, 0xDD
	ldrb r0, [r0]
	bl sub_81A0390
	movs r2, 0
	adds r3, r4, 0
	movs r4, 0x88
	lsls r4, 1
	adds r5, r3, 0
_081A14C2:
	ldr r0, [r3]
	adds r1, r0, r4
	adds r1, r2
	adds r0, 0xA
	adds r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r2, 0x1
	lsls r0, 24
	lsrs r2, r0, 24
	cmp r2, 0x3
	bls _081A14C2
	ldr r1, [r5]
	movs r2, 0x8A
	lsls r2, 1
	adds r0, r1, r2
	bl StringCopy
	ldr r1, [r5]
	ldr r0, =gGameLanguage
	ldrb r0, [r0]
	ldr r2, =0x0000011b
	adds r1, r2
	strb r0, [r1]
	ldr r0, [r5]
	adds r0, 0xDC
	bl sub_8165AE8
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A1438

	thumb_func_start sub_81A150C
sub_81A150C: @ 81A150C
	push {lr}
	ldr r2, =gUnknown_08610970
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	adds r0, 0xDC
	ldrb r0, [r0]
	lsls r0, 27
	lsrs r0, 27
	movs r1, 0x58
	muls r0, r1
	adds r0, r2
	adds r0, 0x32
	ldrb r2, [r0]
	movs r1, 0
	ldr r3, =gUnknown_085DCEDC
	ldrb r0, [r3]
	cmp r0, r2
	beq _081A1542
_081A1530:
	adds r0, r1, 0x1
	lsls r0, 24
	lsrs r1, r0, 24
	cmp r1, 0x1D
	bhi _081A1542
	adds r0, r1, r3
	ldrb r0, [r0]
	cmp r0, r2
	bne _081A1530
_081A1542:
	cmp r1, 0x1E
	beq _081A1568
	ldr r0, =gUnknown_085DCF0E
	adds r0, r1, r0
	ldrb r1, [r0]
	ldr r0, =0x00004010
	bl VarSet
	b _081A1594
	.pool
_081A1568:
	movs r1, 0
	ldr r3, =gUnknown_085DCEFA
	ldrb r0, [r3]
	cmp r0, r2
	beq _081A1584
_081A1572:
	adds r0, r1, 0x1
	lsls r0, 24
	lsrs r1, r0, 24
	cmp r1, 0x13
	bhi _081A1584
	adds r0, r1, r3
	ldrb r0, [r0]
	cmp r0, r2
	bne _081A1572
_081A1584:
	cmp r1, 0x14
	beq _081A1594
	ldr r0, =gUnknown_085DCF2C
	adds r0, r1, r0
	ldrb r1, [r0]
	ldr r0, =0x00004010
	bl VarSet
_081A1594:
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A150C

	thumb_func_start sub_81A15A4
sub_81A15A4: @ 81A15A4
	push {lr}
	ldr r2, =gUnknown_08610970
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	adds r0, 0xB0
	ldrb r1, [r0]
	movs r0, 0x58
	muls r0, r1
	adds r0, r2
	adds r0, 0x32
	ldrb r2, [r0]
	movs r1, 0
	ldr r3, =gUnknown_085DCEDC
	ldrb r0, [r3]
	cmp r0, r2
	beq _081A15D6
_081A15C4:
	adds r0, r1, 0x1
	lsls r0, 24
	lsrs r1, r0, 24
	cmp r1, 0x1D
	bhi _081A15D6
	adds r0, r1, r3
	ldrb r0, [r0]
	cmp r0, r2
	bne _081A15C4
_081A15D6:
	cmp r1, 0x1E
	beq _081A15FC
	ldr r0, =gUnknown_085DCF0E
	adds r0, r1, r0
	ldrb r1, [r0]
	ldr r0, =0x00004010
	bl VarSet
	b _081A1628
	.pool
_081A15FC:
	movs r1, 0
	ldr r3, =gUnknown_085DCEFA
	ldrb r0, [r3]
	cmp r0, r2
	beq _081A1618
_081A1606:
	adds r0, r1, 0x1
	lsls r0, 24
	lsrs r1, r0, 24
	cmp r1, 0x13
	bhi _081A1618
	adds r0, r1, r3
	ldrb r0, [r0]
	cmp r0, r2
	bne _081A1606
_081A1618:
	cmp r1, 0x14
	beq _081A1628
	ldr r0, =gUnknown_085DCF2C
	adds r0, r1, r0
	ldrb r1, [r0]
	ldr r0, =0x00004010
	bl VarSet
_081A1628:
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A15A4

	thumb_func_start sub_81A1638
sub_81A1638: @ 81A1638
	ldr r1, =gUnknown_020375E0
	movs r0, 0x1
	strh r0, [r1]
	bx lr
	.pool
	thumb_func_end sub_81A1638

	thumb_func_start sub_81A1644
sub_81A1644: @ 81A1644
	ldr r1, =gUnknown_020375E0
	movs r0, 0x1
	strh r0, [r1]
	bx lr
	.pool
	thumb_func_end sub_81A1644

	thumb_func_start sub_81A1650
sub_81A1650: @ 81A1650
	push {lr}
	movs r2, 0x58
	muls r2, r0
	ldr r0, =gUnknown_08610970
	adds r2, r0
	subs r0, r1, 0x1
	cmp r0, 0x6
	bhi _081A16AC
	lsls r0, 2
	ldr r1, =_081A1674
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_081A1674:
	.4byte _081A1690
	.4byte _081A1694
	.4byte _081A169A
	.4byte _081A16A0
	.4byte _081A16A6
	.4byte _081A16AC
	.4byte _081A16AC
_081A1690:
	adds r0, r2, 0
	b _081A16B0
_081A1694:
	adds r0, r2, 0
	adds r0, 0x8
	b _081A16B0
_081A169A:
	adds r0, r2, 0
	adds r0, 0x10
	b _081A16B0
_081A16A0:
	adds r0, r2, 0
	adds r0, 0x18
	b _081A16B0
_081A16A6:
	adds r0, r2, 0
	adds r0, 0x20
	b _081A16B0
_081A16AC:
	adds r0, r2, 0
	adds r0, 0x28
_081A16B0:
	pop {r1}
	bx r1
	thumb_func_end sub_81A1650

	thumb_func_start sub_81A16B4
sub_81A16B4: @ 81A16B4
	push {lr}
	lsls r0, 24
	lsrs r2, r0, 24
	ldr r0, =gMain
	ldrh r1, [r0, 0x2E]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	bne _081A16CE
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _081A16D4
_081A16CE:
	adds r0, r2, 0
	bl SwitchTaskToFollowupFunc
_081A16D4:
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A16B4

	thumb_func_start sub_81A16DC
sub_81A16DC: @ 81A16DC
	push {r4,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	ldr r0, =gMain
	ldrh r1, [r0, 0x2E]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	bne _081A16F6
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _081A1718
_081A16F6:
	ldr r2, =gUnknown_030062F4
	ldr r1, =gTasks
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	adds r0, r1
	ldrh r1, [r0, 0x8]
	movs r3, 0xA
	ldrsh r0, [r0, r3]
	lsls r0, 16
	orrs r1, r0
	str r1, [r2]
	bl _call_via_r1
	adds r0, r4, 0
	bl DestroyTask
_081A1718:
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A16DC

	thumb_func_start sub_81A172C
sub_81A172C: @ 81A172C
	push {r4,lr}
	adds r4, r0, 0
	ldr r0, =sub_81A16DC
	movs r1, 0x1
	bl CreateTask
	lsls r0, 24
	lsrs r0, 24
	ldr r2, =gTasks
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	adds r1, r2
	strh r4, [r1, 0x8]
	lsrs r4, 16
	strh r4, [r1, 0xA]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A172C

	thumb_func_start sub_81A175C
sub_81A175C: @ 81A175C
	push {r4,r5,lr}
	adds r5, r0, 0
	ldr r4, =sub_81A16B4
	adds r0, r4, 0
	movs r1, 0x1
	bl CreateTask
	lsls r0, 24
	lsrs r0, 24
	adds r1, r4, 0
	adds r2, r5, 0
	bl SetTaskFuncWithFollowupFunc
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A175C

	thumb_func_start sub_81A1780
sub_81A1780: @ 81A1780
	push {lr}
	ldr r1, =gUnknown_08611C18
	ldr r0, =gUnknown_020375E0
	ldrh r0, [r0]
	lsls r0, 2
	adds r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A1780

	thumb_func_start sub_81A17A0
sub_81A17A0: @ 81A17A0
	push {lr}
	movs r0, 0x80
	lsls r0, 7
	movs r1, 0xFF
	bl VarSet
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r1, =0x00000ca8
	adds r0, r1
	ldrb r0, [r0]
	cmp r0, 0x4
	bhi _081A1822
	lsls r0, 2
	ldr r1, =_081A17D0
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_081A17D0:
	.4byte _081A1822
	.4byte _081A17E4
	.4byte _081A1810
	.4byte _081A17EC
	.4byte _081A17E8
_081A17E4:
	movs r0, 0
	b _081A17EE
_081A17E8:
	movs r0, 0
	b _081A17EE
_081A17EC:
	movs r0, 0x1
_081A17EE:
	bl sub_813A878
	movs r0, 0x80
	lsls r0, 7
	ldr r1, =gSaveBlock2Ptr
	ldr r1, [r1]
	ldr r2, =0x00000ca8
	adds r1, r2
	ldrb r1, [r1]
	bl VarSet
	b _081A1822
	.pool
_081A1810:
	movs r0, 0x80
	lsls r0, 7
	ldr r1, =gSaveBlock2Ptr
	ldr r1, [r1]
	ldr r2, =0x00000ca8
	adds r1, r2
	ldrb r1, [r1]
	bl VarSet
_081A1822:
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A17A0

	thumb_func_start sub_81A1830
sub_81A1830: @ 81A1830
	push {r4-r6,lr}
	ldr r0, =0x000040cf
	bl VarGet
	lsls r0, 24
	lsrs r6, r0, 24
	adds r0, r6, 0
	bl sub_81A3B30
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, 0x2
	bne _081A184C
	movs r5, 0x1
_081A184C:
	ldr r0, =gUnknown_020375E2
	ldrh r0, [r0]
	cmp r0, 0x7
	bls _081A1856
	b _081A1956
_081A1856:
	lsls r0, 2
	ldr r1, =_081A186C
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_081A186C:
	.4byte _081A188C
	.4byte _081A18A8
	.4byte _081A18C8
	.4byte _081A18E4
	.4byte _081A1956
	.4byte _081A1900
	.4byte _081A1918
	.4byte _081A1938
_081A188C:
	ldr r1, =gUnknown_020375F0
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r2, =0x00000ca8
	adds r0, r2
	ldrb r0, [r0]
	strh r0, [r1]
	b _081A1956
	.pool
_081A18A8:
	ldr r1, =gUnknown_020375F0
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r2, =0x00000ca9
	adds r0, r2
	ldrb r0, [r0]
	lsls r0, 30
	lsrs r0, 30
	strh r0, [r1]
	b _081A1956
	.pool
_081A18C8:
	ldr r1, =gUnknown_020375F0
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r2, =0x00000cb2
	adds r0, r2
	ldrh r0, [r0]
	strh r0, [r1]
	b _081A1956
	.pool
_081A18E4:
	ldr r1, =gUnknown_020375F0
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r2, =0x00000ca9
	adds r0, r2
	ldrb r0, [r0]
	lsls r0, 29
	b _081A1926
	.pool
_081A1900:
	ldr r2, =gUnknown_020375F0
	ldr r1, =gUnknown_0202433A
	ldrb r0, [r1]
	strh r0, [r2]
	movs r0, 0
	strb r0, [r1]
	b _081A1956
	.pool
_081A1918:
	ldr r1, =gUnknown_020375F0
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r2, =0x00000ca9
	adds r0, r2
	ldrb r0, [r0]
	lsls r0, 28
_081A1926:
	lsrs r0, 31
	strh r0, [r1]
	b _081A1956
	.pool
_081A1938:
	ldr r4, =gUnknown_020375F0
	ldr r0, =gSaveBlock2Ptr
	ldr r2, [r0]
	movs r0, 0xD0
	lsls r0, 4
	adds r2, r0
	ldr r3, =gUnknown_08611BFC
	lsls r0, r5, 1
	lsls r1, r6, 2
	adds r0, r1
	adds r0, r3
	ldrh r1, [r2]
	ldrh r0, [r0]
	ands r0, r1
	strh r0, [r4]
_081A1956:
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A1830

	thumb_func_start sub_81A1968
sub_81A1968: @ 81A1968
	push {r4,r5,lr}
	ldr r0, =0x000040cf
	bl VarGet
	lsls r0, 24
	lsrs r5, r0, 24
	adds r0, r5, 0
	bl sub_81A3B30
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x2
	bne _081A1984
	movs r4, 0x1
_081A1984:
	ldr r0, =gUnknown_020375E2
	ldrh r0, [r0]
	cmp r0, 0x7
	bls _081A198E
	b _081A1AC4
_081A198E:
	lsls r0, 2
	ldr r1, =_081A19A4
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_081A19A4:
	.4byte _081A19C4
	.4byte _081A19E0
	.4byte _081A1A0C
	.4byte _081A1A28
	.4byte _081A1A50
	.4byte _081A1AC4
	.4byte _081A1A7C
	.4byte _081A1AA8
_081A19C4:
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r1, =gUnknown_020375E4
	ldrh r1, [r1]
	ldr r2, =0x00000ca8
	adds r0, r2
	strb r1, [r0]
	b _081A1AC4
	.pool
_081A19E0:
	ldr r0, =gSaveBlock2Ptr
	ldr r2, [r0]
	ldr r0, =gUnknown_020375E4
	ldrb r0, [r0]
	ldr r1, =0x00000ca9
	adds r2, r1
	movs r1, 0x3
	ands r1, r0
	ldrb r3, [r2]
	movs r0, 0x4
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2]
	b _081A1AC4
	.pool
_081A1A0C:
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r1, =gUnknown_020375E4
	ldrh r1, [r1]
	ldr r2, =0x00000cb2
	adds r0, r2
	strh r1, [r0]
	b _081A1AC4
	.pool
_081A1A28:
	ldr r0, =gSaveBlock2Ptr
	ldr r3, [r0]
	ldr r0, =gUnknown_020375E4
	ldrb r0, [r0]
	ldr r1, =0x00000ca9
	adds r3, r1
	movs r1, 0x1
	ands r1, r0
	lsls r1, 2
	ldrb r2, [r3]
	movs r0, 0x5
	negs r0, r0
	b _081A1A94
	.pool
_081A1A50:
	movs r2, 0
	ldr r5, =gSaveBlock2Ptr
	ldr r4, =0x00000caa
	ldr r3, =gUnknown_0203CEF8
_081A1A58:
	ldr r1, [r5]
	lsls r0, r2, 1
	adds r1, r4
	adds r1, r0
	adds r0, r2, r3
	ldrb r0, [r0]
	strh r0, [r1]
	adds r2, 0x1
	cmp r2, 0x3
	ble _081A1A58
	b _081A1AC4
	.pool
_081A1A7C:
	ldr r0, =gSaveBlock2Ptr
	ldr r3, [r0]
	ldr r0, =gUnknown_020375E4
	ldrb r0, [r0]
	ldr r2, =0x00000ca9
	adds r3, r2
	movs r1, 0x1
	ands r1, r0
	lsls r1, 3
	ldrb r2, [r3]
	movs r0, 0x9
	negs r0, r0
_081A1A94:
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	b _081A1AC4
	.pool
_081A1AA8:
	ldr r0, =gSaveBlock2Ptr
	ldr r2, [r0]
	movs r0, 0xD0
	lsls r0, 4
	adds r2, r0
	ldr r3, =gUnknown_08611BFC
	lsls r1, r4, 1
	lsls r0, r5, 2
	adds r1, r0
	adds r1, r3
	ldrh r0, [r2]
	ldrh r1, [r1]
	orrs r0, r1
	strh r0, [r2]
_081A1AC4:
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A1968

	thumb_func_start sub_81A1AD4
sub_81A1AD4: @ 81A1AD4
	push {r4-r7,lr}
	bl sub_81B8558
	movs r3, 0
	ldr r4, =gUnknown_020375E2
	ldrh r0, [r4]
	cmp r3, r0
	bge _081A1B00
	ldr r7, =gUnknown_0203CEF8
	ldr r6, =gSaveBlock2Ptr
	ldr r5, =0x00000caa
_081A1AEA:
	adds r2, r3, r7
	ldr r0, [r6]
	lsls r1, r3, 1
	adds r0, r5
	adds r0, r1
	ldrh r0, [r0]
	strb r0, [r2]
	adds r3, 0x1
	ldrh r0, [r4]
	cmp r3, r0
	blt _081A1AEA
_081A1B00:
	bl sub_80F94E8
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A1AD4

	thumb_func_start sub_81A1B1C
sub_81A1B1C: @ 81A1B1C
	push {lr}
	bl DoSoftReset
	pop {r0}
	bx r0
	thumb_func_end sub_81A1B1C

	thumb_func_start sub_81A1B28
sub_81A1B28: @ 81A1B28
	ldr r1, =gUnknown_0203BC88
	ldr r0, =gBattleFrontierTrainers
	str r0, [r1]
	bx lr
	.pool
	thumb_func_end sub_81A1B28

	thumb_func_start sub_81A1B38
sub_81A1B38: @ 81A1B38
	push {r4,r5,lr}
	movs r4, 0
	movs r5, 0x64
_081A1B3E:
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	lsls r1, r4, 1
	ldr r2, =0x00000caa
	adds r0, r2
	adds r1, r0, r1
	ldrh r0, [r1]
	subs r0, 0x1
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0x5
	bhi _081A1B76
	ldr r0, =gSaveBlock1Ptr
	ldr r0, [r0]
	ldrh r1, [r1]
	subs r1, 0x1
	muls r1, r5
	adds r0, r1
	movs r1, 0x8E
	lsls r1, 2
	adds r0, r1
	ldr r2, =gPlayerParty
	adds r1, r4, 0
	muls r1, r5
	adds r1, r2
	movs r2, 0x64
	bl memcpy
_081A1B76:
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x3
	bls _081A1B3E
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A1B38

	thumb_func_start sub_81A1B98
sub_81A1B98: @ 81A1B98
	push {lr}
	ldr r0, =gUnknown_020375E4
	ldrh r1, [r0]
	adds r2, r0, 0
	cmp r1, 0x3
	bls _081A1BA8
	movs r0, 0
	strh r0, [r2]
_081A1BA8:
	ldr r0, =gUnknown_020375E2
	ldrh r0, [r0]
	cmp r0, 0x7
	bhi _081A1C1E
	lsls r0, 2
	ldr r1, =_081A1BC8
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_081A1BC8:
	.4byte _081A1BE8
	.4byte _081A1BF0
	.4byte _081A1BF8
	.4byte _081A1C0E
	.4byte _081A1C06
	.4byte _081A1C00
	.4byte _081A1C14
	.4byte _081A1C1A
_081A1BE8:
	ldrb r0, [r2]
	bl sub_81A1EA8
	b _081A1C1E
_081A1BF0:
	ldrb r0, [r2]
	bl sub_81A2134
	b _081A1C1E
_081A1BF8:
	ldrb r0, [r2]
	bl sub_81A2460
	b _081A1C1E
_081A1C00:
	bl sub_81A2698
	b _081A1C1E
_081A1C06:
	ldrb r0, [r2]
	bl sub_81A2C94
	b _081A1C1E
_081A1C0E:
	bl sub_81A2968
	b _081A1C1E
_081A1C14:
	bl sub_81A2F38
	b _081A1C1E
_081A1C1A:
	bl sub_81A2FF8
_081A1C1E:
	pop {r0}
	bx r0
	thumb_func_end sub_81A1B98

	thumb_func_start sub_81A1C24
sub_81A1C24: @ 81A1C24
	push {lr}
	ldr r1, =gSaveBlock2Ptr
	ldr r1, [r1]
	ldr r2, =0x00000cdc
	adds r1, r2
	ldr r1, [r1]
	ands r1, r0
	cmp r1, 0
	bne _081A1C44
	movs r0, 0
	b _081A1C46
	.pool
_081A1C44:
	movs r0, 0x1
_081A1C46:
	pop {r1}
	bx r1
	thumb_func_end sub_81A1C24

	thumb_func_start sub_81A1C4C
sub_81A1C4C: @ 81A1C4C
	push {r4,r5,lr}
	sub sp, 0xC
	adds r4, r0, 0
	adds r5, r1, 0
	movs r0, 0x1
	adds r1, r4, 0
	movs r2, 0xE0
	bl GetStringCenterAlignXOffset
	adds r3, r0, 0
	lsls r0, r5, 3
	adds r5, r0, 0x1
	ldr r0, =gUnknown_0203AB74
	ldrb r0, [r0]
	lsls r3, 24
	lsrs r3, 24
	lsls r1, r5, 24
	lsrs r1, 24
	str r1, [sp]
	movs r1, 0xFF
	str r1, [sp, 0x4]
	movs r1, 0
	str r1, [sp, 0x8]
	movs r1, 0x1
	adds r2, r4, 0
	bl Print
	add sp, 0xC
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A1C4C

	thumb_func_start sub_81A1C90
sub_81A1C90: @ 81A1C90
	push {r4,lr}
	sub sp, 0x34
	adds r2, r0, 0
	ldr r3, =gUnknown_0203AB74
	movs r1, 0xAE
	mov r0, sp
	adds r0, 0x2F
_081A1C9E:
	strb r1, [r0]
	subs r0, 0x1
	add r4, sp, 0xC
	cmp r0, r4
	bge _081A1C9E
	add r1, sp, 0x30
	movs r0, 0xFF
	strb r0, [r1]
	lsls r0, r2, 3
	adds r2, r0, 0x1
	ldrb r0, [r3]
	lsls r1, r2, 24
	lsrs r1, 24
	str r1, [sp]
	movs r1, 0xFF
	str r1, [sp, 0x4]
	movs r1, 0
	str r1, [sp, 0x8]
	movs r1, 0x1
	adds r2, r4, 0
	movs r3, 0x4
	bl Print
	add sp, 0x34
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A1C90

	thumb_func_start sub_81A1CD8
sub_81A1CD8: @ 81A1CD8
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x10
	adds r5, r0, 0
	adds r4, r2, 0
	ldr r0, [sp, 0x30]
	lsls r1, 16
	lsrs r6, r1, 16
	lsls r4, 24
	lsrs r4, 24
	lsls r3, 24
	lsrs r3, 24
	str r3, [sp, 0xC]
	lsls r0, 24
	lsrs r0, 24
	adds r7, r0, 0
	ldr r0, =gUnknown_0203AB74
	mov r10, r0
	ldrb r0, [r0]
	str r7, [sp]
	movs r1, 0xFF
	mov r9, r1
	str r1, [sp, 0x4]
	movs r1, 0
	mov r8, r1
	str r1, [sp, 0x8]
	movs r1, 0x1
	adds r2, r5, 0
	adds r3, r4, 0
	bl Print
	ldr r0, =0x0000270f
	cmp r6, r0
	bls _081A1D24
	adds r6, r0, 0
_081A1D24:
	ldr r0, =gStringVar1
	adds r1, r6, 0
	movs r2, 0x1
	movs r3, 0x4
	bl ConvertIntToDecimalStringN
	ldr r4, =gStringVar4
	ldr r1, =gUnknown_085EE302
	adds r0, r4, 0
	bl StringExpandPlaceholders
	mov r1, r10
	ldrb r0, [r1]
	str r7, [sp]
	mov r1, r9
	str r1, [sp, 0x4]
	mov r1, r8
	str r1, [sp, 0x8]
	movs r1, 0x1
	adds r2, r4, 0
	ldr r3, [sp, 0xC]
	bl Print
	add sp, 0x10
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A1CD8

	thumb_func_start sub_81A1D78
sub_81A1D78: @ 81A1D78
	push {r4,r5,lr}
	sub sp, 0x4
	ldr r5, [sp, 0x10]
	lsls r0, 24
	lsls r1, 24
	lsls r2, 24
	lsrs r2, 24
	lsls r3, 24
	lsrs r3, 24
	lsls r5, 24
	lsrs r5, 24
	ldr r4, =gSaveBlock2Ptr
	ldr r4, [r4]
	lsrs r1, 23
	lsrs r0, 22
	adds r1, r0
	movs r0, 0xCF
	lsls r0, 4
	adds r4, r0
	adds r4, r1
	ldrh r1, [r4]
	ldr r0, =gUnknown_085EE319
	str r5, [sp]
	bl sub_81A1CD8
	add sp, 0x4
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A1D78

	thumb_func_start sub_81A1DBC
sub_81A1DBC: @ 81A1DBC
	push {lr}
	lsls r0, 24
	lsls r1, 24
	ldr r2, =gSaveBlock2Ptr
	ldr r2, [r2]
	lsrs r1, 23
	lsrs r0, 22
	adds r1, r0
	movs r0, 0xCE
	lsls r0, 4
	adds r2, r0
	adds r2, r1
	ldrh r0, [r2]
	ldr r1, =0x0000270f
	cmp r0, r1
	bls _081A1DDE
	adds r0, r1, 0
_081A1DDE:
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_81A1DBC

	thumb_func_start sub_81A1DEC
sub_81A1DEC: @ 81A1DEC
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, 0x4
	ldr r4, [sp, 0x20]
	lsls r0, 24
	lsrs r5, r0, 24
	lsls r1, 24
	lsrs r6, r1, 24
	lsls r2, 24
	lsrs r2, 24
	mov r8, r2
	lsls r3, 24
	lsrs r3, 24
	mov r9, r3
	lsls r4, 24
	lsrs r7, r4, 24
	adds r0, r5, 0
	adds r1, r6, 0
	bl sub_81A1DBC
	lsls r0, 16
	lsrs r4, r0, 16
	cmp r5, 0x1
	beq _081A1E38
	cmp r5, 0x1
	ble _081A1E2C
	cmp r5, 0x2
	beq _081A1E48
	cmp r5, 0x3
	beq _081A1E58
_081A1E2C:
	cmp r6, 0
	beq _081A1E34
	movs r0, 0x2
	b _081A1E66
_081A1E34:
	movs r0, 0x1
	b _081A1E66
_081A1E38:
	cmp r6, 0
	beq _081A1E42
	movs r0, 0x80
	lsls r0, 8
	b _081A1E66
_081A1E42:
	movs r0, 0x80
	lsls r0, 7
	b _081A1E66
_081A1E48:
	cmp r6, 0
	beq _081A1E52
	movs r0, 0x80
	lsls r0, 10
	b _081A1E66
_081A1E52:
	movs r0, 0x80
	lsls r0, 9
	b _081A1E66
_081A1E58:
	cmp r6, 0
	beq _081A1E62
	movs r0, 0x80
	lsls r0, 12
	b _081A1E66
_081A1E62:
	movs r0, 0x80
	lsls r0, 11
_081A1E66:
	bl sub_81A1C24
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _081A1E88
	ldr r0, =gUnknown_085EE311
	str r7, [sp]
	adds r1, r4, 0
	mov r2, r8
	mov r3, r9
	bl sub_81A1CD8
	b _081A1E96
	.pool
_081A1E88:
	ldr r0, =gUnknown_085EE320
	str r7, [sp]
	adds r1, r4, 0
	mov r2, r8
	mov r3, r9
	bl sub_81A1CD8
_081A1E96:
	add sp, 0x4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A1DEC

	thumb_func_start sub_81A1EA8
sub_81A1EA8: @ 81A1EA8
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, 0xC
	lsls r0, 24
	lsrs r7, r0, 24
	ldr r4, =gUnknown_0203AB74
	ldr r0, =gUnknown_08611C74
	bl AddWindow
	strb r0, [r4]
	ldrb r0, [r4]
	movs r1, 0
	bl sub_81973FC
	ldrb r0, [r4]
	movs r1, 0x11
	bl FillWindowPixelBuffer
	cmp r7, 0
	bne _081A1EF0
	ldr r0, =gStringVar4
	ldr r1, =gUnknown_085EE158
	bl StringExpandPlaceholders
	b _081A1F28
	.pool
_081A1EF0:
	cmp r7, 0x1
	bne _081A1F08
	ldr r0, =gStringVar4
	ldr r1, =gUnknown_085EE178
	bl StringExpandPlaceholders
	b _081A1F28
	.pool
_081A1F08:
	cmp r7, 0x2
	bne _081A1F20
	ldr r0, =gStringVar4
	ldr r1, =gUnknown_085EE198
	bl StringExpandPlaceholders
	b _081A1F28
	.pool
_081A1F20:
	ldr r0, =gStringVar4
	ldr r1, =gUnknown_085EE1B7
	bl StringExpandPlaceholders
_081A1F28:
	ldr r0, =gStringVar4
	movs r1, 0x2
	bl sub_81A1C4C
	ldr r6, =gUnknown_0203AB74
	ldrb r0, [r6]
	ldr r2, =gUnknown_085EE2F2
	movs r1, 0x31
	mov r8, r1
	str r1, [sp]
	movs r5, 0xFF
	str r5, [sp, 0x4]
	movs r4, 0
	str r4, [sp, 0x8]
	movs r1, 0x1
	movs r3, 0x10
	bl Print
	ldrb r0, [r6]
	ldr r2, =gUnknown_085EE2F9
	movs r1, 0x61
	mov r9, r1
	str r1, [sp]
	str r5, [sp, 0x4]
	str r4, [sp, 0x8]
	movs r1, 0x1
	movs r3, 0x10
	bl Print
	movs r0, 0xA
	bl sub_81A1C90
	mov r0, r8
	str r0, [sp]
	adds r0, r7, 0
	movs r1, 0
	movs r2, 0x48
	movs r3, 0x84
	bl sub_81A1DEC
	movs r0, 0x41
	str r0, [sp]
	adds r0, r7, 0
	movs r1, 0
	movs r2, 0x48
	movs r3, 0x84
	bl sub_81A1D78
	mov r1, r9
	str r1, [sp]
	adds r0, r7, 0
	movs r1, 0x1
	movs r2, 0x48
	movs r3, 0x84
	bl sub_81A1DEC
	movs r0, 0x71
	str r0, [sp]
	adds r0, r7, 0
	movs r1, 0x1
	movs r2, 0x48
	movs r3, 0x84
	bl sub_81A1D78
	ldrb r0, [r6]
	bl PutWindowTilemap
	ldrb r0, [r6]
	movs r1, 0x3
	bl CopyWindowToVram
	add sp, 0xC
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A1EA8

	thumb_func_start sub_81A1FD8
sub_81A1FD8: @ 81A1FD8
	push {lr}
	lsls r0, 24
	lsls r1, 24
	ldr r2, =gSaveBlock2Ptr
	ldr r2, [r2]
	lsrs r1, 23
	lsrs r0, 22
	adds r1, r0
	ldr r0, =0x00000d0c
	adds r2, r0
	adds r2, r1
	ldrh r0, [r2]
	ldr r1, =0x0000270f
	cmp r0, r1
	bls _081A1FF8
	adds r0, r1, 0
_081A1FF8:
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_81A1FD8

	thumb_func_start sub_81A2008
sub_81A2008: @ 81A2008
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0xC
	mov r12, r0
	adds r7, r1, 0
	adds r4, r2, 0
	ldr r6, [sp, 0x2C]
	ldr r5, [sp, 0x30]
	lsls r4, 16
	lsrs r4, 16
	lsls r3, 24
	lsrs r3, 24
	lsls r6, 24
	lsrs r6, 24
	lsls r5, 24
	lsrs r5, 24
	ldr r0, =gUnknown_0203AB74
	mov r10, r0
	ldrb r0, [r0]
	str r5, [sp]
	movs r1, 0xFF
	mov r9, r1
	str r1, [sp, 0x4]
	movs r1, 0
	mov r8, r1
	str r1, [sp, 0x8]
	movs r1, 0x1
	mov r2, r12
	bl Print
	ldr r0, =gStringVar1
	adds r1, r4, 0
	movs r2, 0x1
	movs r3, 0x4
	bl ConvertIntToDecimalStringN
	ldr r4, =gStringVar4
	adds r0, r4, 0
	adds r1, r7, 0
	bl StringExpandPlaceholders
	mov r1, r10
	ldrb r0, [r1]
	str r5, [sp]
	mov r1, r9
	str r1, [sp, 0x4]
	mov r1, r8
	str r1, [sp, 0x8]
	movs r1, 0x1
	adds r2, r4, 0
	adds r3, r6, 0
	bl Print
	add sp, 0xC
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A2008

	thumb_func_start sub_81A2094
sub_81A2094: @ 81A2094
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, 0x8
	ldr r4, [sp, 0x24]
	lsls r0, 24
	lsrs r5, r0, 24
	lsls r1, 24
	lsrs r6, r1, 24
	lsls r2, 24
	lsrs r2, 24
	mov r9, r2
	lsls r3, 24
	lsrs r7, r3, 24
	lsls r4, 24
	lsrs r4, 24
	adds r0, r5, 0
	adds r1, r6, 0
	bl sub_81A1FD8
	lsls r0, 16
	lsrs r0, 16
	mov r8, r0
	cmp r5, 0
	beq _081A20CC
	cmp r5, 0x1
	beq _081A20D8
_081A20CC:
	cmp r6, 0
	beq _081A20D4
	movs r0, 0x8
	b _081A20E6
_081A20D4:
	movs r0, 0x4
	b _081A20E6
_081A20D8:
	cmp r6, 0
	beq _081A20E2
	movs r0, 0x80
	lsls r0, 14
	b _081A20E6
_081A20E2:
	movs r0, 0x80
	lsls r0, 13
_081A20E6:
	bl sub_81A1C24
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _081A210C
	ldr r0, =gUnknown_085EE311
	ldr r1, =gUnknown_085EE338
	str r7, [sp]
	str r4, [sp, 0x4]
	mov r2, r8
	mov r3, r9
	bl sub_81A2008
	b _081A211C
	.pool
_081A210C:
	ldr r0, =gUnknown_085EE320
	ldr r1, =gUnknown_085EE338
	str r7, [sp]
	str r4, [sp, 0x4]
	mov r2, r8
	mov r3, r9
	bl sub_81A2008
_081A211C:
	add sp, 0x8
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A2094

	thumb_func_start sub_81A2134
sub_81A2134: @ 81A2134
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0xC
	lsls r0, 24
	lsrs r7, r0, 24
	ldr r4, =gUnknown_0203AB74
	ldr r0, =gUnknown_08611C74
	bl AddWindow
	strb r0, [r4]
	ldrb r0, [r4]
	movs r1, 0
	bl sub_81973FC
	ldrb r0, [r4]
	movs r1, 0x11
	bl FillWindowPixelBuffer
	cmp r7, 0
	bne _081A217C
	ldr r0, =gStringVar4
	ldr r1, =gUnknown_085EE1DB
	bl StringExpandPlaceholders
	b _081A2184
	.pool
_081A217C:
	ldr r0, =gStringVar4
	ldr r1, =gUnknown_085EE1FE
	bl StringExpandPlaceholders
_081A2184:
	ldr r0, =gStringVar4
	movs r1, 0
	bl sub_81A1C4C
	ldr r1, =gUnknown_0203AB74
	ldrb r0, [r1]
	ldr r2, =gUnknown_085EE2F2
	movs r6, 0x21
	str r6, [sp]
	movs r5, 0xFF
	str r5, [sp, 0x4]
	movs r4, 0
	str r4, [sp, 0x8]
	movs r1, 0x1
	movs r3, 0x8
	bl Print
	ldr r1, =gUnknown_0203AB74
	ldrb r0, [r1]
	ldr r2, =gUnknown_085EE2F9
	movs r1, 0x61
	str r1, [sp]
	str r5, [sp, 0x4]
	str r4, [sp, 0x8]
	movs r1, 0x1
	movs r3, 0x8
	bl Print
	movs r0, 0xA
	bl sub_81A1C90
	str r6, [sp]
	adds r0, r7, 0
	movs r1, 0
	movs r2, 0x40
	movs r3, 0x79
	bl sub_81A2094
	ldr r4, =gSaveBlock2Ptr
	ldr r0, [r4]
	lsls r5, r7, 2
	ldr r1, =0x00000d14
	adds r0, r1
	adds r0, r5
	ldrh r2, [r0]
	movs r0, 0x79
	mov r9, r0
	str r0, [sp]
	movs r0, 0x31
	str r0, [sp, 0x4]
	ldr r0, =gUnknown_085EE319
	ldr r1, =gUnknown_085EE338
	movs r3, 0x40
	bl sub_81A2008
	ldr r1, =gUnknown_085EE332
	mov r10, r1
	ldr r0, =gUnknown_085EE349
	mov r8, r0
	ldr r0, [r4]
	ldr r1, =0x00000d1c
	adds r0, r1
	adds r0, r5
	ldrh r2, [r0]
	movs r6, 0x70
	str r6, [sp]
	movs r0, 0x41
	str r0, [sp, 0x4]
	mov r0, r10
	mov r1, r8
	movs r3, 0x40
	bl sub_81A2008
	movs r0, 0x61
	str r0, [sp]
	adds r0, r7, 0
	movs r1, 0x1
	movs r2, 0x40
	movs r3, 0x79
	bl sub_81A2094
	ldr r0, [r4]
	ldr r1, =0x00000d16
	adds r0, r1
	adds r0, r5
	ldrh r2, [r0]
	mov r0, r9
	str r0, [sp]
	movs r0, 0x71
	str r0, [sp, 0x4]
	ldr r0, =gUnknown_085EE319
	ldr r1, =gUnknown_085EE338
	movs r3, 0x40
	bl sub_81A2008
	ldr r0, [r4]
	ldr r1, =0x00000d1e
	adds r0, r1
	adds r0, r5
	ldrh r2, [r0]
	str r6, [sp]
	movs r0, 0x81
	str r0, [sp, 0x4]
	mov r0, r10
	mov r1, r8
	movs r3, 0x40
	bl sub_81A2008
	ldr r1, =gUnknown_0203AB74
	ldrb r0, [r1]
	bl PutWindowTilemap
	ldr r1, =gUnknown_0203AB74
	ldrb r0, [r1]
	movs r1, 0x3
	bl CopyWindowToVram
	add sp, 0xC
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A2134

	thumb_func_start sub_81A22B8
sub_81A22B8: @ 81A22B8
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x10
	adds r5, r0, 0
	adds r4, r2, 0
	ldr r0, [sp, 0x30]
	lsls r1, 16
	lsrs r6, r1, 16
	lsls r4, 24
	lsrs r4, 24
	lsls r3, 24
	lsrs r3, 24
	str r3, [sp, 0xC]
	lsls r0, 24
	lsrs r0, 24
	adds r7, r0, 0
	ldr r0, =gUnknown_0203AB74
	mov r10, r0
	ldrb r0, [r0]
	str r7, [sp]
	movs r1, 0xFF
	mov r9, r1
	str r1, [sp, 0x4]
	movs r1, 0
	mov r8, r1
	str r1, [sp, 0x8]
	movs r1, 0x1
	adds r2, r5, 0
	adds r3, r4, 0
	bl Print
	ldr r0, =0x0000270f
	cmp r6, r0
	bls _081A2304
	adds r6, r0, 0
_081A2304:
	ldr r0, =gStringVar1
	adds r1, r6, 0
	movs r2, 0x1
	movs r3, 0x4
	bl ConvertIntToDecimalStringN
	ldr r4, =gStringVar4
	ldr r1, =gUnknown_085EE302
	adds r0, r4, 0
	bl StringExpandPlaceholders
	mov r1, r10
	ldrb r0, [r1]
	str r7, [sp]
	mov r1, r9
	str r1, [sp, 0x4]
	mov r1, r8
	str r1, [sp, 0x8]
	movs r1, 0x1
	adds r2, r4, 0
	ldr r3, [sp, 0xC]
	bl Print
	add sp, 0x10
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A22B8

	thumb_func_start sub_81A2358
sub_81A2358: @ 81A2358
	push {r4,r5,lr}
	sub sp, 0x4
	ldr r5, [sp, 0x10]
	lsls r0, 24
	lsls r1, 24
	lsls r2, 24
	lsrs r2, 24
	lsls r3, 24
	lsrs r3, 24
	lsls r5, 24
	lsrs r5, 24
	ldr r4, =gSaveBlock2Ptr
	ldr r4, [r4]
	lsrs r1, 23
	lsrs r0, 22
	adds r1, r0
	movs r0, 0xDD
	lsls r0, 4
	adds r4, r0
	adds r4, r1
	ldrh r1, [r4]
	ldr r0, =gUnknown_085EE319
	str r5, [sp]
	bl sub_81A22B8
	add sp, 0x4
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A2358

	thumb_func_start sub_81A239C
sub_81A239C: @ 81A239C
	push {lr}
	lsls r0, 24
	lsls r1, 24
	ldr r2, =gSaveBlock2Ptr
	ldr r2, [r2]
	lsrs r1, 23
	lsrs r0, 22
	adds r1, r0
	ldr r0, =0x00000dc8
	adds r2, r0
	adds r2, r1
	ldrh r0, [r2]
	ldr r1, =0x0000270f
	cmp r0, r1
	bls _081A23BC
	adds r0, r1, 0
_081A23BC:
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_81A239C

	thumb_func_start sub_81A23CC
sub_81A23CC: @ 81A23CC
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, 0x4
	ldr r4, [sp, 0x20]
	lsls r0, 24
	lsrs r5, r0, 24
	lsls r1, 24
	lsrs r6, r1, 24
	lsls r2, 24
	lsrs r2, 24
	mov r8, r2
	lsls r3, 24
	lsrs r3, 24
	mov r9, r3
	lsls r4, 24
	lsrs r7, r4, 24
	adds r0, r5, 0
	adds r1, r6, 0
	bl sub_81A239C
	lsls r0, 16
	lsrs r4, r0, 16
	cmp r5, 0
	beq _081A2404
	cmp r5, 0x1
	beq _081A2410
_081A2404:
	cmp r6, 0
	beq _081A240C
	movs r0, 0x20
	b _081A241E
_081A240C:
	movs r0, 0x10
	b _081A241E
_081A2410:
	cmp r6, 0
	beq _081A241A
	movs r0, 0x80
	lsls r0, 16
	b _081A241E
_081A241A:
	movs r0, 0x80
	lsls r0, 15
_081A241E:
	bl sub_81A1C24
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _081A2440
	ldr r0, =gUnknown_085EE311
	str r7, [sp]
	adds r1, r4, 0
	mov r2, r8
	mov r3, r9
	bl sub_81A22B8
	b _081A244E
	.pool
_081A2440:
	ldr r0, =gUnknown_085EE320
	str r7, [sp]
	adds r1, r4, 0
	mov r2, r8
	mov r3, r9
	bl sub_81A22B8
_081A244E:
	add sp, 0x4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A23CC

	thumb_func_start sub_81A2460
sub_81A2460: @ 81A2460
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, 0xC
	lsls r0, 24
	lsrs r7, r0, 24
	ldr r4, =gUnknown_0203AB74
	ldr r0, =gUnknown_08611C74
	bl AddWindow
	strb r0, [r4]
	ldrb r0, [r4]
	movs r1, 0
	bl sub_81973FC
	ldrb r0, [r4]
	movs r1, 0x11
	bl FillWindowPixelBuffer
	cmp r7, 0
	bne _081A24A8
	ldr r0, =gStringVar4
	ldr r1, =gUnknown_085EE221
	bl StringExpandPlaceholders
	b _081A24B0
	.pool
_081A24A8:
	ldr r0, =gStringVar4
	ldr r1, =gUnknown_085EE241
	bl StringExpandPlaceholders
_081A24B0:
	ldr r0, =gStringVar4
	movs r1, 0x2
	bl sub_81A1C4C
	ldr r6, =gUnknown_0203AB74
	ldrb r0, [r6]
	ldr r2, =gUnknown_085EE2F2
	movs r1, 0x31
	mov r8, r1
	str r1, [sp]
	movs r5, 0xFF
	str r5, [sp, 0x4]
	movs r4, 0
	str r4, [sp, 0x8]
	movs r1, 0x1
	movs r3, 0x10
	bl Print
	ldrb r0, [r6]
	ldr r2, =gUnknown_085EE2F9
	movs r1, 0x61
	mov r9, r1
	str r1, [sp]
	str r5, [sp, 0x4]
	str r4, [sp, 0x8]
	movs r1, 0x1
	movs r3, 0x10
	bl Print
	movs r0, 0xA
	bl sub_81A1C90
	mov r0, r8
	str r0, [sp]
	adds r0, r7, 0
	movs r1, 0
	movs r2, 0x48
	movs r3, 0x83
	bl sub_81A23CC
	movs r0, 0x41
	str r0, [sp]
	adds r0, r7, 0
	movs r1, 0
	movs r2, 0x48
	movs r3, 0x83
	bl sub_81A2358
	mov r1, r9
	str r1, [sp]
	adds r0, r7, 0
	movs r1, 0x1
	movs r2, 0x48
	movs r3, 0x83
	bl sub_81A23CC
	movs r0, 0x71
	str r0, [sp]
	adds r0, r7, 0
	movs r1, 0x1
	movs r2, 0x48
	movs r3, 0x83
	bl sub_81A2358
	ldrb r0, [r6]
	bl PutWindowTilemap
	ldrb r0, [r6]
	movs r1, 0x3
	bl CopyWindowToVram
	add sp, 0xC
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A2460

	thumb_func_start sub_81A2560
sub_81A2560: @ 81A2560
	push {lr}
	lsls r0, 24
	ldr r1, =gSaveBlock2Ptr
	ldr r1, [r1]
	lsrs r0, 23
	ldr r2, =0x00000e04
	adds r1, r2
	adds r1, r0
	ldrh r0, [r1]
	ldr r1, =0x0000270f
	cmp r0, r1
	bls _081A257A
	adds r0, r1, 0
_081A257A:
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_81A2560

	thumb_func_start sub_81A258C
sub_81A258C: @ 81A258C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0xC
	mov r12, r0
	adds r7, r1, 0
	adds r4, r2, 0
	ldr r6, [sp, 0x2C]
	ldr r5, [sp, 0x30]
	lsls r4, 16
	lsrs r4, 16
	lsls r3, 24
	lsrs r3, 24
	lsls r6, 24
	lsrs r6, 24
	lsls r5, 24
	lsrs r5, 24
	ldr r0, =gUnknown_0203AB74
	mov r10, r0
	ldrb r0, [r0]
	str r5, [sp]
	movs r1, 0xFF
	mov r9, r1
	str r1, [sp, 0x4]
	movs r1, 0
	mov r8, r1
	str r1, [sp, 0x8]
	movs r1, 0x1
	mov r2, r12
	bl Print
	ldr r0, =gStringVar1
	adds r1, r4, 0
	movs r2, 0x1
	movs r3, 0x4
	bl ConvertIntToDecimalStringN
	ldr r4, =gStringVar4
	adds r0, r4, 0
	adds r1, r7, 0
	bl StringExpandPlaceholders
	mov r1, r10
	ldrb r0, [r1]
	str r5, [sp]
	mov r1, r9
	str r1, [sp, 0x4]
	mov r1, r8
	str r1, [sp, 0x8]
	movs r1, 0x1
	adds r2, r4, 0
	adds r3, r6, 0
	bl Print
	add sp, 0xC
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A258C

	thumb_func_start sub_81A2618
sub_81A2618: @ 81A2618
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, 0x8
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	lsls r1, 24
	lsrs r1, 24
	mov r8, r1
	lsls r2, 24
	lsrs r5, r2, 24
	lsls r3, 24
	lsrs r6, r3, 24
	adds r0, r4, 0
	bl sub_81A2560
	lsls r0, 16
	lsrs r7, r0, 16
	cmp r4, 0
	beq _081A2648
	movs r0, 0x80
	lsls r0, 4
	b _081A264C
_081A2648:
	movs r0, 0x80
	lsls r0, 3
_081A264C:
	bl sub_81A1C24
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _081A2674
	ldr r0, =gUnknown_085EE311
	ldr r1, =gUnknown_085EE35B
	str r5, [sp]
	str r6, [sp, 0x4]
	adds r2, r7, 0
	mov r3, r8
	bl sub_81A2008
	b _081A2684
	.pool
_081A2674:
	ldr r0, =gUnknown_085EE320
	ldr r1, =gUnknown_085EE35B
	str r5, [sp]
	str r6, [sp, 0x4]
	adds r2, r7, 0
	mov r3, r8
	bl sub_81A2008
_081A2684:
	add sp, 0x8
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A2618

	thumb_func_start sub_81A2698
sub_81A2698: @ 81A2698
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0xC
	ldr r6, =gUnknown_0203AB74
	ldr r0, =gUnknown_08611C74
	bl AddWindow
	strb r0, [r6]
	ldrb r0, [r6]
	movs r1, 0
	bl sub_81973FC
	ldrb r0, [r6]
	movs r1, 0x11
	bl FillWindowPixelBuffer
	ldr r4, =gStringVar4
	ldr r1, =gUnknown_085EE261
	adds r0, r4, 0
	bl StringExpandPlaceholders
	adds r0, r4, 0
	movs r1, 0
	bl sub_81A1C4C
	ldrb r0, [r6]
	ldr r2, =gUnknown_085EE2F2
	movs r1, 0x21
	str r1, [sp]
	movs r5, 0xFF
	str r5, [sp, 0x4]
	movs r4, 0
	str r4, [sp, 0x8]
	movs r1, 0x1
	movs r3, 0x8
	bl Print
	ldrb r0, [r6]
	ldr r2, =gUnknown_085EE2F9
	movs r1, 0x61
	str r1, [sp]
	str r5, [sp, 0x4]
	str r4, [sp, 0x8]
	movs r1, 0x1
	movs r3, 0x8
	bl Print
	movs r0, 0xA
	bl sub_81A1C90
	movs r0, 0
	movs r1, 0x40
	movs r2, 0x72
	movs r3, 0x21
	bl sub_81A2618
	ldr r0, =gUnknown_085EE319
	mov r10, r0
	ldr r7, =gUnknown_085EE35B
	ldr r5, =gSaveBlock2Ptr
	ldr r0, [r5]
	ldr r1, =0x00000e08
	adds r0, r1
	ldrh r2, [r0]
	movs r4, 0x72
	str r4, [sp]
	movs r0, 0x31
	str r0, [sp, 0x4]
	mov r0, r10
	adds r1, r7, 0
	movs r3, 0x40
	bl sub_81A258C
	ldr r0, =gUnknown_085EE332
	mov r8, r0
	ldr r1, =gUnknown_085EE36D
	mov r9, r1
	ldr r0, [r5]
	ldr r1, =0x00000e0c
	adds r0, r1
	ldrh r2, [r0]
	str r4, [sp]
	movs r0, 0x41
	str r0, [sp, 0x4]
	mov r0, r8
	mov r1, r9
	movs r3, 0x40
	bl sub_81A258C
	movs r0, 0x1
	movs r1, 0x40
	movs r2, 0x72
	movs r3, 0x61
	bl sub_81A2618
	ldr r0, [r5]
	ldr r1, =0x00000e0a
	adds r0, r1
	ldrh r2, [r0]
	str r4, [sp]
	movs r0, 0x71
	str r0, [sp, 0x4]
	mov r0, r10
	adds r1, r7, 0
	movs r3, 0x40
	bl sub_81A258C
	ldr r0, [r5]
	ldr r1, =0x00000e0e
	adds r0, r1
	ldrh r2, [r0]
	str r4, [sp]
	movs r0, 0x81
	str r0, [sp, 0x4]
	mov r0, r8
	mov r1, r9
	movs r3, 0x40
	bl sub_81A258C
	ldrb r0, [r6]
	bl PutWindowTilemap
	ldrb r0, [r6]
	movs r1, 0x3
	bl CopyWindowToVram
	add sp, 0xC
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A2698

	thumb_func_start sub_81A27E8
sub_81A27E8: @ 81A27E8
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x10
	adds r5, r0, 0
	adds r4, r2, 0
	ldr r0, [sp, 0x30]
	lsls r1, 16
	lsrs r6, r1, 16
	lsls r4, 24
	lsrs r4, 24
	lsls r3, 24
	lsrs r3, 24
	str r3, [sp, 0xC]
	lsls r0, 24
	lsrs r0, 24
	adds r7, r0, 0
	ldr r0, =gUnknown_0203AB74
	mov r10, r0
	ldrb r0, [r0]
	str r7, [sp]
	movs r1, 0xFF
	mov r9, r1
	str r1, [sp, 0x4]
	movs r1, 0
	mov r8, r1
	str r1, [sp, 0x8]
	movs r1, 0x1
	adds r2, r5, 0
	adds r3, r4, 0
	bl Print
	ldr r0, =0x0000270f
	cmp r6, r0
	bls _081A2834
	adds r6, r0, 0
_081A2834:
	ldr r0, =gStringVar1
	adds r1, r6, 0
	movs r2, 0x1
	movs r3, 0x4
	bl ConvertIntToDecimalStringN
	ldr r4, =gStringVar4
	ldr r1, =gUnknown_085EE381
	adds r0, r4, 0
	bl StringExpandPlaceholders
	mov r1, r10
	ldrb r0, [r1]
	str r7, [sp]
	mov r1, r9
	str r1, [sp, 0x4]
	mov r1, r8
	str r1, [sp, 0x8]
	movs r1, 0x1
	adds r2, r4, 0
	ldr r3, [sp, 0xC]
	bl Print
	add sp, 0x10
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A27E8

	thumb_func_start sub_81A2888
sub_81A2888: @ 81A2888
	push {r4,r5,lr}
	sub sp, 0x4
	adds r4, r1, 0
	adds r5, r2, 0
	lsls r0, 24
	lsls r4, 24
	lsrs r4, 24
	lsls r5, 24
	lsrs r5, 24
	lsls r3, 24
	lsrs r3, 24
	ldr r1, =gSaveBlock2Ptr
	ldr r1, [r1]
	lsrs r0, 23
	ldr r2, =0x00000dde
	adds r1, r2
	adds r1, r0
	ldrh r1, [r1]
	ldr r0, =gUnknown_085EE319
	str r3, [sp]
	adds r2, r4, 0
	adds r3, r5, 0
	bl sub_81A27E8
	add sp, 0x4
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A2888

	thumb_func_start sub_81A28CC
sub_81A28CC: @ 81A28CC
	push {lr}
	lsls r0, 24
	ldr r1, =gSaveBlock2Ptr
	ldr r1, [r1]
	lsrs r0, 23
	ldr r2, =0x00000dda
	adds r1, r2
	adds r1, r0
	ldrh r0, [r1]
	ldr r1, =0x0000270f
	cmp r0, r1
	bls _081A28E6
	adds r0, r1, 0
_081A28E6:
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_81A28CC

	thumb_func_start sub_81A28F8
sub_81A28F8: @ 81A28F8
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, 0x4
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	lsls r1, 24
	lsrs r7, r1, 24
	lsls r2, 24
	lsrs r2, 24
	mov r8, r2
	lsls r3, 24
	lsrs r6, r3, 24
	adds r0, r4, 0
	bl sub_81A28CC
	lsls r0, 16
	lsrs r5, r0, 16
	cmp r4, 0
	beq _081A2926
	movs r0, 0x80
	b _081A2928
_081A2926:
	movs r0, 0x40
_081A2928:
	bl sub_81A1C24
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _081A2948
	ldr r0, =gUnknown_085EE311
	str r6, [sp]
	adds r1, r5, 0
	adds r2, r7, 0
	mov r3, r8
	bl sub_81A27E8
	b _081A2956
	.pool
_081A2948:
	ldr r0, =gUnknown_085EE320
	str r6, [sp]
	adds r1, r5, 0
	adds r2, r7, 0
	mov r3, r8
	bl sub_81A27E8
_081A2956:
	add sp, 0x4
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A28F8

	thumb_func_start sub_81A2968
sub_81A2968: @ 81A2968
	push {r4-r6,lr}
	sub sp, 0xC
	ldr r5, =gUnknown_0203AB74
	ldr r0, =gUnknown_08611C74
	bl AddWindow
	strb r0, [r5]
	ldrb r0, [r5]
	movs r1, 0
	bl sub_81973FC
	ldrb r0, [r5]
	movs r1, 0x11
	bl FillWindowPixelBuffer
	movs r0, 0xA
	bl sub_81A1C90
	ldr r4, =gStringVar4
	ldr r1, =gUnknown_085EE27C
	adds r0, r4, 0
	bl StringExpandPlaceholders
	adds r0, r4, 0
	movs r1, 0x2
	bl sub_81A1C4C
	ldrb r0, [r5]
	ldr r2, =gUnknown_085EE2F2
	movs r1, 0x31
	str r1, [sp]
	movs r6, 0xFF
	str r6, [sp, 0x4]
	movs r4, 0
	str r4, [sp, 0x8]
	movs r1, 0x1
	movs r3, 0x10
	bl Print
	ldrb r0, [r5]
	ldr r2, =gUnknown_085EE2F9
	movs r1, 0x61
	str r1, [sp]
	str r6, [sp, 0x4]
	str r4, [sp, 0x8]
	movs r1, 0x1
	movs r3, 0x10
	bl Print
	movs r0, 0
	movs r1, 0x48
	movs r2, 0x7E
	movs r3, 0x31
	bl sub_81A28F8
	movs r0, 0
	movs r1, 0x48
	movs r2, 0x7E
	movs r3, 0x41
	bl sub_81A2888
	movs r0, 0x1
	movs r1, 0x48
	movs r2, 0x7E
	movs r3, 0x61
	bl sub_81A28F8
	movs r0, 0x1
	movs r1, 0x48
	movs r2, 0x7E
	movs r3, 0x71
	bl sub_81A2888
	ldrb r0, [r5]
	bl PutWindowTilemap
	ldrb r0, [r5]
	movs r1, 0x3
	bl CopyWindowToVram
	add sp, 0xC
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A2968

	thumb_func_start sub_81A2A28
sub_81A2A28: @ 81A2A28
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x18
	mov r12, r0
	ldr r4, [sp, 0x38]
	ldr r5, [sp, 0x3C]
	ldr r0, [sp, 0x40]
	lsls r1, 16
	lsrs r7, r1, 16
	lsls r2, 16
	lsrs r2, 16
	str r2, [sp, 0xC]
	lsls r3, 24
	lsrs r3, 24
	lsls r4, 24
	lsrs r4, 24
	str r4, [sp, 0x10]
	lsls r5, 24
	lsrs r5, 24
	str r5, [sp, 0x14]
	lsls r0, 24
	lsrs r0, 24
	adds r6, r0, 0
	ldr r0, =gUnknown_0203AB74
	mov r10, r0
	ldrb r0, [r0]
	str r6, [sp]
	movs r1, 0xFF
	mov r9, r1
	str r1, [sp, 0x4]
	movs r1, 0
	mov r8, r1
	str r1, [sp, 0x8]
	movs r1, 0x1
	mov r2, r12
	bl Print
	ldr r0, =0x0000270f
	cmp r7, r0
	bls _081A2A80
	adds r7, r0, 0
_081A2A80:
	ldr r5, =gStringVar1
	adds r0, r5, 0
	adds r1, r7, 0
	movs r2, 0x1
	movs r3, 0x4
	bl ConvertIntToDecimalStringN
	ldr r4, =gStringVar4
	ldr r1, =gUnknown_085EE302
	adds r0, r4, 0
	bl StringExpandPlaceholders
	mov r1, r10
	ldrb r0, [r1]
	str r6, [sp]
	mov r1, r9
	str r1, [sp, 0x4]
	mov r1, r8
	str r1, [sp, 0x8]
	movs r1, 0x1
	adds r2, r4, 0
	ldr r3, [sp, 0x10]
	bl Print
	adds r0, r5, 0
	ldr r1, [sp, 0xC]
	movs r2, 0x1
	movs r3, 0x4
	bl ConvertIntToDecimalStringN
	ldr r1, =gUnknown_085EE392
	adds r0, r4, 0
	bl StringExpandPlaceholders
	mov r1, r10
	ldrb r0, [r1]
	str r6, [sp]
	mov r1, r9
	str r1, [sp, 0x4]
	mov r1, r8
	str r1, [sp, 0x8]
	movs r1, 0x1
	adds r2, r4, 0
	ldr r3, [sp, 0x14]
	bl Print
	add sp, 0x18
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A2A28

	thumb_func_start sub_81A2B04
sub_81A2B04: @ 81A2B04
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, 0xC
	adds r6, r2, 0
	ldr r4, [sp, 0x24]
	ldr r5, [sp, 0x28]
	lsls r0, 24
	lsls r1, 24
	lsls r6, 24
	lsrs r6, 24
	lsls r3, 24
	lsrs r3, 24
	lsls r4, 24
	lsrs r4, 24
	lsls r5, 24
	lsrs r5, 24
	ldr r2, =gSaveBlock2Ptr
	ldr r2, [r2]
	lsrs r1, 23
	lsrs r0, 22
	adds r1, r0
	ldr r7, =0x00000dea
	adds r0, r2, r7
	adds r0, r1
	ldrh r0, [r0]
	mov r8, r0
	ldr r0, =0x00000dfa
	adds r2, r0
	adds r2, r1
	ldrh r2, [r2]
	ldr r0, =gUnknown_085EE319
	str r3, [sp]
	str r4, [sp, 0x4]
	str r5, [sp, 0x8]
	mov r1, r8
	adds r3, r6, 0
	bl sub_81A2A28
	add sp, 0xC
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A2B04

	thumb_func_start sub_81A2B70
sub_81A2B70: @ 81A2B70
	push {lr}
	lsls r0, 24
	lsls r1, 24
	ldr r2, =gSaveBlock2Ptr
	ldr r2, [r2]
	lsrs r1, 23
	lsrs r0, 22
	adds r1, r0
	ldr r0, =0x00000de2
	adds r2, r0
	adds r2, r1
	ldrh r0, [r2]
	ldr r1, =0x0000270f
	cmp r0, r1
	bls _081A2B90
	adds r0, r1, 0
_081A2B90:
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_81A2B70

	thumb_func_start sub_81A2BA0
sub_81A2BA0: @ 81A2BA0
	push {lr}
	lsls r0, 24
	lsls r1, 24
	ldr r2, =gSaveBlock2Ptr
	ldr r2, [r2]
	lsrs r1, 23
	lsrs r0, 22
	adds r1, r0
	ldr r0, =0x00000df2
	adds r2, r0
	adds r2, r1
	ldrh r0, [r2]
	ldr r1, =0x0000270f
	cmp r0, r1
	bls _081A2BC0
	adds r0, r1, 0
_081A2BC0:
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_81A2BA0

	thumb_func_start sub_81A2BD0
sub_81A2BD0: @ 81A2BD0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x10
	ldr r4, [sp, 0x30]
	ldr r5, [sp, 0x34]
	lsls r0, 24
	lsrs r6, r0, 24
	lsls r1, 24
	lsrs r7, r1, 24
	lsls r2, 24
	lsrs r2, 24
	str r2, [sp, 0xC]
	lsls r3, 24
	lsrs r3, 24
	mov r8, r3
	lsls r4, 24
	lsrs r4, 24
	mov r9, r4
	lsls r5, 24
	lsrs r5, 24
	mov r10, r5
	adds r0, r6, 0
	adds r1, r7, 0
	bl sub_81A2B70
	lsls r0, 16
	lsrs r5, r0, 16
	adds r0, r6, 0
	adds r1, r7, 0
	bl sub_81A2BA0
	lsls r0, 16
	lsrs r4, r0, 16
	cmp r6, 0
	beq _081A2C20
	cmp r6, 0x1
	beq _081A2C30
_081A2C20:
	cmp r7, 0
	beq _081A2C2A
	movs r0, 0x80
	lsls r0, 2
	b _081A2C3E
_081A2C2A:
	movs r0, 0x80
	lsls r0, 1
	b _081A2C3E
_081A2C30:
	cmp r7, 0
	beq _081A2C3A
	movs r0, 0x80
	lsls r0, 18
	b _081A2C3E
_081A2C3A:
	movs r0, 0x80
	lsls r0, 17
_081A2C3E:
	bl sub_81A1C24
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _081A2C68
	ldr r0, =gUnknown_085EE311
	mov r1, r8
	str r1, [sp]
	mov r1, r9
	str r1, [sp, 0x4]
	mov r1, r10
	str r1, [sp, 0x8]
	adds r1, r5, 0
	adds r2, r4, 0
	ldr r3, [sp, 0xC]
	bl sub_81A2A28
	b _081A2C80
	.pool
_081A2C68:
	ldr r0, =gUnknown_085EE320
	mov r1, r8
	str r1, [sp]
	mov r1, r9
	str r1, [sp, 0x4]
	mov r1, r10
	str r1, [sp, 0x8]
	adds r1, r5, 0
	adds r2, r4, 0
	ldr r3, [sp, 0xC]
	bl sub_81A2A28
_081A2C80:
	add sp, 0x10
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A2BD0

	thumb_func_start sub_81A2C94
sub_81A2C94: @ 81A2C94
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, 0xC
	lsls r0, 24
	lsrs r7, r0, 24
	ldr r4, =gUnknown_0203AB74
	ldr r0, =gUnknown_08611C74
	bl AddWindow
	strb r0, [r4]
	ldrb r0, [r4]
	movs r1, 0
	bl sub_81973FC
	ldrb r0, [r4]
	movs r1, 0x11
	bl FillWindowPixelBuffer
	cmp r7, 0
	bne _081A2CD8
	ldr r0, =gStringVar4
	ldr r1, =gUnknown_085EE298
	bl StringExpandPlaceholders
	b _081A2CE0
	.pool
_081A2CD8:
	ldr r0, =gStringVar4
	ldr r1, =gUnknown_085EE2B8
	bl StringExpandPlaceholders
_081A2CE0:
	ldr r0, =gStringVar4
	movs r1, 0
	bl sub_81A1C4C
	ldr r0, =gUnknown_0203AB74
	mov r8, r0
	ldrb r0, [r0]
	ldr r2, =gUnknown_085EE2F2
	movs r6, 0x21
	str r6, [sp]
	movs r5, 0xFF
	str r5, [sp, 0x4]
	movs r4, 0
	str r4, [sp, 0x8]
	movs r1, 0x1
	movs r3, 0x8
	bl Print
	mov r1, r8
	ldrb r0, [r1]
	ldr r2, =gUnknown_085EE326
	str r6, [sp]
	str r5, [sp, 0x4]
	str r4, [sp, 0x8]
	movs r1, 0x1
	movs r3, 0x98
	bl Print
	mov r1, r8
	ldrb r0, [r1]
	ldr r2, =gUnknown_085EE2F9
	movs r1, 0x61
	str r1, [sp]
	str r5, [sp, 0x4]
	str r4, [sp, 0x8]
	movs r1, 0x1
	movs r3, 0x8
	bl Print
	movs r0, 0xA
	bl sub_81A1C90
	movs r4, 0x9E
	str r4, [sp]
	movs r0, 0x31
	str r0, [sp, 0x4]
	adds r0, r7, 0
	movs r1, 0
	movs r2, 0x8
	movs r3, 0x40
	bl sub_81A2BD0
	str r4, [sp]
	movs r0, 0x41
	str r0, [sp, 0x4]
	adds r0, r7, 0
	movs r1, 0
	movs r2, 0x8
	movs r3, 0x40
	bl sub_81A2B04
	str r4, [sp]
	movs r0, 0x71
	str r0, [sp, 0x4]
	adds r0, r7, 0
	movs r1, 0x1
	movs r2, 0x8
	movs r3, 0x40
	bl sub_81A2BD0
	str r4, [sp]
	movs r0, 0x81
	str r0, [sp, 0x4]
	adds r0, r7, 0
	movs r1, 0x1
	movs r2, 0x8
	movs r3, 0x40
	bl sub_81A2B04
	mov r1, r8
	ldrb r0, [r1]
	bl PutWindowTilemap
	mov r1, r8
	ldrb r0, [r1]
	movs r1, 0x3
	bl CopyWindowToVram
	add sp, 0xC
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A2C94

	thumb_func_start sub_81A2DB4
sub_81A2DB4: @ 81A2DB4
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x10
	adds r5, r0, 0
	adds r4, r2, 0
	ldr r0, [sp, 0x30]
	lsls r1, 16
	lsrs r6, r1, 16
	lsls r4, 24
	lsrs r4, 24
	lsls r3, 24
	lsrs r3, 24
	str r3, [sp, 0xC]
	lsls r0, 24
	lsrs r0, 24
	adds r7, r0, 0
	ldr r0, =gUnknown_0203AB74
	mov r10, r0
	ldrb r0, [r0]
	str r7, [sp]
	movs r1, 0xFF
	mov r9, r1
	str r1, [sp, 0x4]
	movs r1, 0
	mov r8, r1
	str r1, [sp, 0x8]
	movs r1, 0x1
	adds r2, r5, 0
	adds r3, r4, 0
	bl Print
	ldr r0, =0x0000270f
	cmp r6, r0
	bls _081A2E00
	adds r6, r0, 0
_081A2E00:
	ldr r0, =gStringVar1
	adds r1, r6, 0
	movs r2, 0x1
	movs r3, 0x4
	bl ConvertIntToDecimalStringN
	ldr r4, =gStringVar4
	ldr r1, =gUnknown_085EE39C
	adds r0, r4, 0
	bl StringExpandPlaceholders
	mov r1, r10
	ldrb r0, [r1]
	str r7, [sp]
	mov r1, r9
	str r1, [sp, 0x4]
	mov r1, r8
	str r1, [sp, 0x8]
	movs r1, 0x1
	adds r2, r4, 0
	ldr r3, [sp, 0xC]
	bl Print
	add sp, 0x10
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A2DB4

	thumb_func_start sub_81A2E54
sub_81A2E54: @ 81A2E54
	push {r4,r5,lr}
	sub sp, 0x4
	adds r4, r1, 0
	adds r5, r2, 0
	lsls r0, 24
	lsls r4, 24
	lsrs r4, 24
	lsls r5, 24
	lsrs r5, 24
	lsls r3, 24
	lsrs r3, 24
	ldr r1, =gSaveBlock2Ptr
	ldr r1, [r1]
	lsrs r0, 23
	ldr r2, =0x00000e1e
	adds r1, r2
	adds r1, r0
	ldrh r1, [r1]
	ldr r0, =gUnknown_085EE319
	str r3, [sp]
	adds r2, r4, 0
	adds r3, r5, 0
	bl sub_81A2DB4
	add sp, 0x4
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A2E54

	thumb_func_start sub_81A2E98
sub_81A2E98: @ 81A2E98
	push {lr}
	lsls r0, 24
	ldr r1, =gSaveBlock2Ptr
	ldr r1, [r1]
	lsrs r0, 23
	ldr r2, =0x00000e1a
	adds r1, r2
	adds r1, r0
	ldrh r0, [r1]
	ldr r1, =0x0000270f
	cmp r0, r1
	bls _081A2EB2
	adds r0, r1, 0
_081A2EB2:
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_81A2E98

	thumb_func_start sub_81A2EC4
sub_81A2EC4: @ 81A2EC4
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, 0x4
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	lsls r1, 24
	lsrs r7, r1, 24
	lsls r2, 24
	lsrs r2, 24
	mov r8, r2
	lsls r3, 24
	lsrs r6, r3, 24
	adds r0, r4, 0
	bl sub_81A2E98
	lsls r0, 16
	lsrs r5, r0, 16
	cmp r4, 0
	beq _081A2EF4
	movs r0, 0x80
	lsls r0, 6
	b _081A2EF8
_081A2EF4:
	movs r0, 0x80
	lsls r0, 5
_081A2EF8:
	bl sub_81A1C24
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _081A2F18
	ldr r0, =gUnknown_085EE311
	str r6, [sp]
	adds r1, r5, 0
	adds r2, r7, 0
	mov r3, r8
	bl sub_81A2DB4
	b _081A2F26
	.pool
_081A2F18:
	ldr r0, =gUnknown_085EE320
	str r6, [sp]
	adds r1, r5, 0
	adds r2, r7, 0
	mov r3, r8
	bl sub_81A2DB4
_081A2F26:
	add sp, 0x4
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A2EC4

	thumb_func_start sub_81A2F38
sub_81A2F38: @ 81A2F38
	push {r4-r6,lr}
	sub sp, 0xC
	ldr r5, =gUnknown_0203AB74
	ldr r0, =gUnknown_08611C74
	bl AddWindow
	strb r0, [r5]
	ldrb r0, [r5]
	movs r1, 0
	bl sub_81973FC
	ldrb r0, [r5]
	movs r1, 0x11
	bl FillWindowPixelBuffer
	ldr r4, =gStringVar4
	ldr r1, =gUnknown_085EE2D8
	adds r0, r4, 0
	bl StringExpandPlaceholders
	adds r0, r4, 0
	movs r1, 0x2
	bl sub_81A1C4C
	ldrb r0, [r5]
	ldr r2, =gUnknown_085EE2F2
	movs r1, 0x31
	str r1, [sp]
	movs r6, 0xFF
	str r6, [sp, 0x4]
	movs r4, 0
	str r4, [sp, 0x8]
	movs r1, 0x1
	movs r3, 0x8
	bl Print
	ldrb r0, [r5]
	ldr r2, =gUnknown_085EE2F9
	movs r1, 0x61
	str r1, [sp]
	str r6, [sp, 0x4]
	str r4, [sp, 0x8]
	movs r1, 0x1
	movs r3, 0x8
	bl Print
	movs r0, 0xA
	bl sub_81A1C90
	movs r0, 0
	movs r1, 0x40
	movs r2, 0x6F
	movs r3, 0x31
	bl sub_81A2EC4
	movs r0, 0
	movs r1, 0x40
	movs r2, 0x6F
	movs r3, 0x41
	bl sub_81A2E54
	movs r0, 0x1
	movs r1, 0x40
	movs r2, 0x6F
	movs r3, 0x61
	bl sub_81A2EC4
	movs r0, 0x1
	movs r1, 0x40
	movs r2, 0x6F
	movs r3, 0x71
	bl sub_81A2E54
	ldrb r0, [r5]
	bl PutWindowTilemap
	ldrb r0, [r5]
	movs r1, 0x3
	bl CopyWindowToVram
	add sp, 0xC
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A2F38

	thumb_func_start sub_81A2FF8
sub_81A2FF8: @ 81A2FF8
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, 0xC
	ldr r4, =gUnknown_0203AB74
	ldr r0, =gUnknown_08611C7C
	bl AddWindow
	strb r0, [r4]
	ldrb r0, [r4]
	movs r1, 0
	bl sub_81973FC
	ldrb r0, [r4]
	movs r1, 0x11
	bl FillWindowPixelBuffer
	ldr r0, =gStringVar4
	mov r9, r0
	ldr r1, =gUnknown_085EDF86
	bl StringExpandPlaceholders
	movs r0, 0x1
	mov r1, r9
	movs r2, 0xD0
	bl GetStringCenterAlignXOffset
	adds r3, r0, 0
	ldrb r0, [r4]
	lsls r3, 24
	lsrs r3, 24
	movs r1, 0x1
	str r1, [sp]
	movs r6, 0xFF
	str r6, [sp, 0x4]
	movs r5, 0
	str r5, [sp, 0x8]
	mov r2, r9
	bl Print
	ldr r7, =gUnknown_085EDFA0
	movs r0, 0x1
	adds r1, r7, 0
	movs r2, 0x26
	bl GetStringRightAlignXOffset
	adds r3, r0, 0
	adds r3, 0x32
	ldrb r0, [r4]
	lsls r3, 24
	lsrs r3, 24
	movs r1, 0x19
	mov r8, r1
	str r1, [sp]
	str r6, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r1, 0x1
	adds r2, r7, 0
	bl Print
	ldr r7, =gUnknown_085EDFA4
	movs r0, 0x1
	adds r1, r7, 0
	movs r2, 0x26
	bl GetStringRightAlignXOffset
	adds r3, r0, 0
	adds r3, 0x58
	ldrb r0, [r4]
	lsls r3, 24
	lsrs r3, 24
	mov r2, r8
	str r2, [sp]
	str r6, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r1, 0x1
	adds r2, r7, 0
	bl Print
	ldr r7, =gUnknown_085EDFA8
	movs r0, 0x1
	adds r1, r7, 0
	movs r2, 0x26
	bl GetStringRightAlignXOffset
	adds r3, r0, 0
	adds r3, 0x7E
	ldrb r0, [r4]
	lsls r3, 24
	lsrs r3, 24
	mov r1, r8
	str r1, [sp]
	str r6, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r1, 0x1
	adds r2, r7, 0
	bl Print
	ldr r7, =gUnknown_085EDFAC
	movs r0, 0x1
	adds r1, r7, 0
	movs r2, 0x26
	bl GetStringRightAlignXOffset
	adds r3, r0, 0
	adds r3, 0xA4
	ldrb r0, [r4]
	lsls r3, 24
	lsrs r3, 24
	mov r2, r8
	str r2, [sp]
	str r6, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r1, 0x1
	adds r2, r7, 0
	bl Print
	ldrb r0, [r4]
	ldr r2, =gUnknown_085EB0E8
	movs r1, 0x29
	str r1, [sp]
	str r6, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r1, 0x1
	movs r3, 0x6
	bl Print
	ldrb r0, [r4]
	ldr r2, =gUnknown_085EB0ED
	movs r1, 0x39
	str r1, [sp]
	str r6, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r1, 0x1
	movs r3, 0x6
	bl Print
	ldrb r0, [r4]
	ldr r2, =gUnknown_085EB0F4
	movs r1, 0x49
	str r1, [sp]
	str r6, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r1, 0x1
	movs r3, 0x6
	bl Print
	ldrb r0, [r4]
	ldr r2, =gUnknown_085EB0F9
	movs r1, 0x59
	str r1, [sp]
	str r6, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r1, 0x1
	movs r3, 0x6
	bl Print
	ldrb r0, [r4]
	ldr r2, =gUnknown_085EB0FF
	movs r1, 0x69
	str r1, [sp]
	str r6, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r1, 0x1
	movs r3, 0x6
	bl Print
	movs r1, 0
_081A314A:
	movs r5, 0
	adds r0, r1, 0x1
	mov r8, r0
	lsls r0, r1, 28
	movs r2, 0xA4
	lsls r2, 22
	adds r0, r2
	lsrs r7, r0, 24
	lsls r4, r1, 3
_081A315C:
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r1, =0x00000624
	adds r0, r1
	adds r0, r4
	ldrh r1, [r0]
	mov r0, r9
	movs r2, 0x1
	movs r3, 0x4
	bl ConvertIntToDecimalStringN
	ldr r6, =gUnknown_0203AB74
	ldrb r0, [r6]
	movs r1, 0x26
	adds r3, r5, 0
	muls r3, r1
	adds r3, 0x40
	lsls r3, 24
	lsrs r3, 24
	str r7, [sp]
	movs r1, 0xFF
	str r1, [sp, 0x4]
	movs r1, 0
	str r1, [sp, 0x8]
	movs r1, 0x1
	mov r2, r9
	bl Print
	adds r4, 0x2
	adds r5, 0x1
	cmp r5, 0x3
	ble _081A315C
	mov r1, r8
	cmp r1, 0x4
	ble _081A314A
	ldrb r0, [r6]
	bl PutWindowTilemap
	ldrb r0, [r6]
	movs r1, 0x3
	bl CopyWindowToVram
	add sp, 0xC
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A2FF8

	thumb_func_start sub_81A31FC
sub_81A31FC: @ 81A31FC
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x24
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r1, =0x00000ca9
	adds r0, r1
	ldrb r0, [r0]
	lsls r0, 30
	lsrs r7, r0, 30
	ldr r0, =0x000040cf
	bl VarGet
	lsls r0, 16
	lsrs r4, r0, 16
	ldr r0, =0x000040ce
	bl VarGet
	lsls r0, 16
	lsrs r0, 16
	mov r8, r0
	cmp r4, 0x6
	bls _081A3232
	b _081A35CE
_081A3232:
	lsls r0, r4, 2
	ldr r1, =_081A3250
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_081A3250:
	.4byte _081A326C
	.4byte _081A33A8
	.4byte _081A3414
	.4byte _081A347C
	.4byte _081A34CC
	.4byte _081A354C
	.4byte _081A3594
_081A326C:
	ldr r2, =gSaveBlock2Ptr
	mov r9, r2
	ldr r0, [r2]
	lsls r3, r7, 1
	mov r10, r3
	mov r2, r8
	lsls r1, r2, 2
	add r1, r10
	str r1, [sp, 0x20]
	movs r3, 0xCE
	lsls r3, 4
	adds r1, r0, r3
	ldr r2, [sp, 0x20]
	adds r1, r2
	adds r3, 0x10
	adds r0, r3
	adds r0, r2
	ldrh r1, [r1]
	ldrh r2, [r0]
	cmp r1, r2
	bhi _081A3298
	b _081A35CE
_081A3298:
	strh r1, [r0]
	mov r3, r8
	cmp r3, 0x3
	bne _081A32F2
	ldr r6, =gUnknown_02024474
	adds r6, 0x25
	ldrb r0, [r6]
	movs r4, 0x1
	eors r0, r4
	lsls r1, r0, 3
	subs r1, r0
	lsls r1, 2
	ldr r5, =gUnknown_020229F0
	adds r1, r5
	mov r0, sp
	bl StringCopy
	mov r0, sp
	bl StripExtCtrlCodes
	lsls r1, r7, 3
	ldr r0, =0x00000ee1
	adds r1, r0
	mov r2, r9
	ldr r0, [r2]
	adds r0, r1
	mov r1, sp
	bl StringCopy
	ldrb r0, [r6]
	eors r4, r0
	lsls r0, r4, 3
	subs r0, r4
	lsls r0, 2
	subs r5, 0x4
	adds r0, r5
	ldr r0, [r0]
	lsls r2, r7, 2
	ldr r1, =0x00000ef1
	adds r2, r1
	mov r3, r9
	ldr r1, [r3]
	adds r1, r2
	bl write_word_to_mem
_081A32F2:
	mov r7, r9
	ldr r0, [r7]
	movs r1, 0xCE
	lsls r1, 4
	adds r0, r1
	ldr r2, [sp, 0x20]
	adds r0, r2
	ldrh r0, [r0]
	cmp r0, 0x1
	bhi _081A3308
	b _081A35CE
_081A3308:
	bl sub_80EE818
	lsls r0, 24
	cmp r0, 0
	bne _081A3314
	b _081A35CE
_081A3314:
	mov r3, r8
	cmp r3, 0x1
	beq _081A335A
	cmp r3, 0x1
	bgt _081A3338
	cmp r3, 0
	beq _081A3344
	b _081A35CE
	.pool
_081A3338:
	mov r7, r8
	cmp r7, 0x2
	beq _081A3374
	cmp r7, 0x3
	beq _081A338E
	b _081A35CE
_081A3344:
	mov r1, r9
	ldr r0, [r1]
	movs r2, 0xCE
	lsls r2, 4
	adds r0, r2
	add r0, r10
	ldrh r0, [r0]
	movs r1, 0x1
	bl sub_80EE8C8
	b _081A35CE
_081A335A:
	mov r3, r9
	ldr r0, [r3]
	mov r1, r10
	adds r1, 0x4
	movs r7, 0xCE
	lsls r7, 4
	adds r0, r7
	adds r0, r1
	ldrh r0, [r0]
	movs r1, 0x2
	bl sub_80EE8C8
	b _081A35CE
_081A3374:
	mov r1, r9
	ldr r0, [r1]
	mov r1, r10
	adds r1, 0x8
	movs r2, 0xCE
	lsls r2, 4
	adds r0, r2
	adds r0, r1
	ldrh r0, [r0]
	movs r1, 0x3
	bl sub_80EE8C8
	b _081A35CE
_081A338E:
	mov r3, r9
	ldr r0, [r3]
	mov r1, r10
	adds r1, 0xC
	movs r7, 0xCE
	lsls r7, 4
	adds r0, r7
	adds r0, r1
	ldrh r0, [r0]
	movs r1, 0x4
	bl sub_80EE8C8
	b _081A35CE
_081A33A8:
	ldr r6, =gSaveBlock2Ptr
	ldr r0, [r6]
	lsls r7, 1
	mov r2, r8
	lsls r1, r2, 2
	adds r4, r7, r1
	ldr r5, =0x00000d0c
	adds r1, r0, r5
	adds r1, r4
	ldr r3, =0x00000d14
	adds r0, r3
	adds r0, r4
	ldrh r2, [r1]
	ldrh r3, [r0]
	cmp r2, r3
	bhi _081A33CA
	b _081A35CE
_081A33CA:
	strh r2, [r0]
	ldrh r0, [r1]
	cmp r0, 0x1
	bhi _081A33D4
	b _081A35CE
_081A33D4:
	bl sub_80EE818
	lsls r0, 24
	cmp r0, 0
	bne _081A33E0
	b _081A35CE
_081A33E0:
	mov r0, r8
	cmp r0, 0
	bne _081A3404
	ldr r0, [r6]
	adds r0, r5
	adds r0, r7
	ldrh r0, [r0]
	movs r1, 0x5
	bl sub_80EE8C8
	b _081A35CE
	.pool
_081A3404:
	ldr r0, [r6]
	adds r0, r5
	adds r0, r4
	ldrh r0, [r0]
	movs r1, 0x6
	bl sub_80EE8C8
	b _081A35CE
_081A3414:
	ldr r6, =gSaveBlock2Ptr
	ldr r0, [r6]
	lsls r7, 1
	mov r2, r8
	lsls r1, r2, 2
	adds r4, r7, r1
	ldr r5, =0x00000dc8
	adds r1, r0, r5
	adds r1, r4
	movs r3, 0xDD
	lsls r3, 4
	adds r0, r3
	adds r0, r4
	ldrh r2, [r1]
	ldrh r3, [r0]
	cmp r2, r3
	bhi _081A3438
	b _081A35CE
_081A3438:
	strh r2, [r0]
	ldrh r0, [r1]
	cmp r0, 0x1
	bhi _081A3442
	b _081A35CE
_081A3442:
	bl sub_80EE818
	lsls r0, 24
	cmp r0, 0
	bne _081A344E
	b _081A35CE
_081A344E:
	mov r0, r8
	cmp r0, 0
	bne _081A346C
	ldr r0, [r6]
	adds r0, r5
	adds r0, r7
	ldrh r0, [r0]
	movs r1, 0xB
	bl sub_80EE8C8
	b _081A35CE
	.pool
_081A346C:
	ldr r0, [r6]
	adds r0, r5
	adds r0, r4
	ldrh r0, [r0]
	movs r1, 0xC
	bl sub_80EE8C8
	b _081A35CE
_081A347C:
	ldr r6, =gSaveBlock2Ptr
	ldr r1, [r6]
	lsls r4, r7, 1
	ldr r5, =0x00000dda
	adds r0, r1, r5
	adds r0, r4
	ldr r2, =0x00000dde
	adds r1, r2
	adds r1, r4
	ldrh r2, [r0]
	ldrh r3, [r1]
	cmp r2, r3
	bhi _081A3498
	b _081A35CE
_081A3498:
	strh r2, [r1]
	ldrh r0, [r0]
	cmp r0, 0x1
	bhi _081A34A2
	b _081A35CE
_081A34A2:
	bl sub_80EE818
	lsls r0, 24
	cmp r0, 0
	bne _081A34AE
	b _081A35CE
_081A34AE:
	ldr r0, [r6]
	adds r0, r5
	adds r0, r4
	ldrh r0, [r0]
	movs r1, 0xA
	bl sub_80EE8C8
	b _081A35CE
	.pool
_081A34CC:
	ldr r6, =gSaveBlock2Ptr
	ldr r2, [r6]
	lsls r7, 1
	mov r9, r7
	mov r7, r8
	lsls r0, r7, 2
	mov r1, r9
	adds r4, r1, r0
	ldr r5, =0x00000de2
	adds r0, r2, r5
	adds r3, r0, r4
	ldr r7, =0x00000dea
	adds r0, r2, r7
	adds r0, r4
	ldrh r1, [r3]
	ldrh r7, [r0]
	cmp r1, r7
	bls _081A35CE
	strh r1, [r0]
	ldr r0, =0x00000dfa
	adds r1, r2, r0
	adds r1, r4
	ldr r7, =0x00000df2
	adds r0, r2, r7
	adds r0, r4
	ldrh r0, [r0]
	strh r0, [r1]
	ldrh r0, [r3]
	cmp r0, 0x1
	bls _081A35CE
	bl sub_80EE818
	lsls r0, 24
	cmp r0, 0
	beq _081A35CE
	mov r0, r8
	cmp r0, 0
	bne _081A353C
	ldr r0, [r6]
	adds r0, r5
	add r0, r9
	ldrh r0, [r0]
	movs r1, 0x7
	bl sub_80EE8C8
	b _081A35CE
	.pool
_081A353C:
	ldr r0, [r6]
	adds r0, r5
	adds r0, r4
	ldrh r0, [r0]
	movs r1, 0x8
	bl sub_80EE8C8
	b _081A35CE
_081A354C:
	ldr r6, =gSaveBlock2Ptr
	ldr r1, [r6]
	lsls r4, r7, 1
	ldr r5, =0x00000e04
	adds r0, r1, r5
	adds r0, r4
	ldr r2, =0x00000e08
	adds r1, r2
	adds r1, r4
	ldrh r2, [r0]
	ldrh r3, [r1]
	cmp r2, r3
	bls _081A35CE
	strh r2, [r1]
	ldrh r0, [r0]
	cmp r0, 0x1
	bls _081A35CE
	bl sub_80EE818
	lsls r0, 24
	cmp r0, 0
	beq _081A35CE
	ldr r0, [r6]
	adds r0, r5
	adds r0, r4
	ldrh r0, [r0]
	movs r1, 0x9
	bl sub_80EE8C8
	b _081A35CE
	.pool
_081A3594:
	ldr r6, =gSaveBlock2Ptr
	ldr r1, [r6]
	lsls r4, r7, 1
	ldr r5, =0x00000e1a
	adds r0, r1, r5
	adds r0, r4
	ldr r7, =0x00000e1e
	adds r1, r7
	adds r1, r4
	ldrh r2, [r0]
	ldrh r3, [r1]
	cmp r2, r3
	bls _081A35CE
	strh r2, [r1]
	ldrh r0, [r0]
	cmp r0, 0x1
	bls _081A35CE
	bl sub_80EE818
	lsls r0, 24
	cmp r0, 0
	beq _081A35CE
	ldr r0, [r6]
	adds r0, r5
	adds r0, r4
	ldrh r0, [r0]
	movs r1, 0xD
	bl sub_80EE8C8
_081A35CE:
	add sp, 0x24
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A31FC

	thumb_func_start sub_81A35EC
sub_81A35EC: @ 81A35EC
	push {r4,lr}
	ldr r0, =0x000040cf
	bl VarGet
	ldr r4, =gUnknown_020375F0
	bl sub_81A3610
	lsls r0, 24
	lsrs r0, 24
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A35EC

	thumb_func_start sub_81A3610
sub_81A3610: @ 81A3610
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	movs r0, 0
	mov r8, r0
	ldr r0, =0x000040cf
	bl VarGet
	lsls r0, 16
	lsrs r6, r0, 16
	ldr r0, =0x000040ce
	bl VarGet
	adds r4, r0, 0
	lsls r4, 16
	lsrs r4, 16
	bl sub_81A39C4
	lsls r0, 16
	ldr r1, =gUnknown_08611550
	mov r9, r1
	lsls r7, r6, 2
	adds r1, 0x3
	adds r1, r7, r1
	lsrs r0, 16
	ldrb r1, [r1]
	adds r5, r0, r1
	cmp r4, 0
	beq _081A365C
	movs r0, 0
	b _081A36C2
	.pool
_081A365C:
	lsls r0, r6, 24
	lsrs r0, 24
	bl sub_81A3B30
	lsls r0, 24
	lsrs r1, r0, 24
	cmp r1, 0
	blt _081A3680
	cmp r1, 0x1
	bgt _081A3680
	adds r0, r1, r7
	add r0, r9
	ldrb r0, [r0]
	cmp r5, r0
	bne _081A36BC
	adds r1, 0x1
	mov r8, r1
	b _081A36BC
_081A3680:
	ldr r1, =gUnknown_08611550
	lsls r2, r6, 2
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r5, r0
	bne _081A3694
	movs r0, 0x3
	b _081A36BA
	.pool
_081A3694:
	adds r0, r1, 0x1
	adds r0, r2, r0
	ldrb r0, [r0]
	cmp r5, r0
	bne _081A36A4
	movs r1, 0x4
	mov r8, r1
	b _081A36BC
_081A36A4:
	cmp r5, r0
	ble _081A36BC
	subs r0, r5, r0
	adds r1, 0x2
	adds r1, r2, r1
	ldrb r1, [r1]
	bl __modsi3
	cmp r0, 0
	bne _081A36BC
	movs r0, 0x4
_081A36BA:
	mov r8, r0
_081A36BC:
	mov r1, r8
	lsls r0, r1, 24
	lsrs r0, 24
_081A36C2:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end sub_81A3610

	thumb_func_start sub_81A36D0
sub_81A36D0: @ 81A36D0
	push {lr}
	lsls r0, 24
	lsrs r0, 24
	adds r2, r0, 0
	lsls r1, 16
	lsrs r3, r1, 16
	cmp r0, 0x1
	beq _081A3766
	cmp r0, 0x1
	bgt _081A36EA
	cmp r0, 0
	beq _081A36F2
	b _081A38F8
_081A36EA:
	cmp r2, 0x2
	bne _081A36F0
	b _081A3818
_081A36F0:
	b _081A38F8
_081A36F2:
	movs r0, 0xFA
	lsls r0, 1
	cmp r3, r0
	bne _081A370C
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r1, =0x00000bfc
	b _081A38C4
	.pool
_081A370C:
	ldr r0, =0x000003fe
	cmp r3, r0
	beq _081A3786
	ldr r0, =0x0000012b
	cmp r3, r0
	bhi _081A3738
	ldr r2, =gUnknown_0203BC88
	movs r0, 0x34
	adds r1, r3, 0
	muls r1, r0
	ldr r0, [r2]
	adds r0, r1
	adds r0, 0xC
	bl ConvertBattleFrontierTrainerSpeechToString
	b _081A38F8
	.pool
_081A3738:
	ldr r0, =0x0000018f
	cmp r3, r0
	bhi _081A3758
	ldr r1, =gSaveBlock2Ptr
	movs r0, 0xEC
	muls r0, r3
	ldr r1, [r1]
	adds r0, r1
	ldr r1, =0xfffef2b8
	b _081A38C4
	.pool
_081A3758:
	adds r0, r3, 0
	adds r0, 0x70
	lsls r0, 24
	lsrs r0, 24
	bl sub_819F99C
	b _081A38F8
_081A3766:
	movs r0, 0xFA
	lsls r0, 1
	cmp r3, r0
	bne _081A3780
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r1, =0x00000c08
	b _081A38C4
	.pool
_081A3780:
	ldr r0, =0x000003fe
	cmp r3, r0
	bne _081A3794
_081A3786:
	movs r0, 0
	bl sub_81A51A8
	b _081A38F8
	.pool
_081A3794:
	ldr r0, =0x0000012b
	cmp r3, r0
	bhi _081A37B8
	ldr r2, =gUnknown_0203BC88
	movs r0, 0x34
	adds r1, r3, 0
	muls r1, r0
	ldr r0, [r2]
	adds r0, r1
	adds r0, 0x18
	bl ConvertBattleFrontierTrainerSpeechToString
	b _081A38F8
	.pool
_081A37B8:
	ldr r0, =0x0000018f
	cmp r3, r0
	bhi _081A37EC
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 17
	ands r0, r1
	cmp r0, 0
	bne _081A387C
	ldr r1, =gSaveBlock2Ptr
	movs r0, 0xEC
	muls r0, r3
	ldr r1, [r1]
	adds r0, r1
	ldr r1, =0xfffef2c4
	b _081A38C4
	.pool
_081A37EC:
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 17
	ands r0, r1
	cmp r0, 0
	bne _081A387C
	ldr r1, =gSaveBlock2Ptr
	lsls r0, r3, 4
	adds r0, r3
	lsls r0, 2
	ldr r1, [r1]
	adds r0, r1
	ldr r1, =0xffff96c4
	b _081A38C4
	.pool
_081A3818:
	movs r0, 0xFA
	lsls r0, 1
	cmp r3, r0
	bne _081A3830
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r1, =0x00000c14
	b _081A38C4
	.pool
_081A3830:
	ldr r0, =0x000003fe
	cmp r3, r0
	bne _081A3844
	movs r0, 0x1
	bl sub_81A51A8
	b _081A38F8
	.pool
_081A3844:
	ldr r0, =0x0000012b
	cmp r3, r0
	bhi _081A3868
	ldr r2, =gUnknown_0203BC88
	movs r0, 0x34
	adds r1, r3, 0
	muls r1, r0
	ldr r0, [r2]
	adds r0, r1
	adds r0, 0x24
	bl ConvertBattleFrontierTrainerSpeechToString
	b _081A38F8
	.pool
_081A3868:
	ldr r0, =0x0000018f
	cmp r3, r0
	bhi _081A38A8
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 17
	ands r0, r1
	cmp r0, 0
	beq _081A3890
_081A387C:
	bl sub_81864E0
	bl ConvertBattleFrontierTrainerSpeechToString
	b _081A38F8
	.pool
_081A3890:
	ldr r1, =gSaveBlock2Ptr
	movs r0, 0xEC
	muls r0, r3
	ldr r1, [r1]
	adds r0, r1
	ldr r1, =0xfffef2d0
	b _081A38C4
	.pool
_081A38A8:
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 17
	ands r0, r1
	cmp r0, 0
	beq _081A38D4
	bl sub_81864A8
	lsls r0, 24
	lsrs r3, r0, 24
	movs r0, 0x58
	muls r0, r3
	ldr r1, =gUnknown_086109BA
_081A38C4:
	adds r0, r1
	bl ConvertBattleFrontierTrainerSpeechToString
	b _081A38F8
	.pool
_081A38D4:
	ldr r0, =gSaveBlock2Ptr
	ldr r1, [r0]
	ldr r0, =0xfffffe70
	adds r2, r3, r0
	lsls r0, r2, 4
	adds r0, r2
	lsls r0, 2
	adds r1, r0
	adds r1, 0xDC
	ldrb r0, [r1]
	lsls r0, 27
	lsrs r3, r0, 27
	movs r0, 0x58
	muls r0, r3
	ldr r1, =gUnknown_086109BA
	adds r0, r1
	bl ConvertBattleFrontierTrainerSpeechToString
_081A38F8:
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A36D0

	thumb_func_start sub_81A3908
sub_81A3908: @ 81A3908
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	ldr r0, =gSaveBlock2Ptr
	ldr r1, [r0]
	ldr r2, =0x00000cdc
	adds r1, r2
	movs r2, 0
	str r2, [r1]
	movs r4, 0
	mov r9, r0
	mov r8, r9
	movs r6, 0
_081A3926:
	movs r5, 0
	lsls r7, r4, 2
	mov r10, r7
	adds r0, r4, 0x1
	mov r12, r0
_081A3930:
	mov r1, r8
	ldr r2, [r1]
	lsls r3, r5, 1
	mov r7, r10
	adds r1, r3, r7
	movs r7, 0xCE
	lsls r7, 4
	adds r0, r2, r7
	adds r0, r1
	strh r6, [r0]
	cmp r4, 0x1
	bgt _081A3960
	adds r7, 0x2C
	adds r0, r2, r7
	adds r0, r1
	strh r6, [r0]
	adds r7, 0xBC
	adds r0, r2, r7
	adds r0, r1
	strh r6, [r0]
	adds r7, 0x1A
	adds r0, r2, r7
	adds r0, r1
	strh r6, [r0]
_081A3960:
	cmp r4, 0
	bne _081A3980
	mov r1, r8
	ldr r0, [r1]
	ldr r2, =0x00000dda
	adds r1, r0, r2
	adds r1, r3
	strh r4, [r1]
	ldr r7, =0x00000e04
	adds r1, r0, r7
	adds r1, r3
	strh r4, [r1]
	ldr r1, =0x00000e1a
	adds r0, r1
	adds r0, r3
	strh r4, [r0]
_081A3980:
	adds r5, 0x1
	cmp r5, 0x1
	ble _081A3930
	mov r4, r12
	cmp r4, 0x3
	ble _081A3926
	mov r2, r9
	ldr r0, [r2]
	ldr r7, =0x00000ca8
	adds r1, r0, r7
	ldrb r0, [r1]
	cmp r0, 0
	beq _081A399E
	movs r0, 0x1
	strb r0, [r1]
_081A399E:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A3908

	thumb_func_start sub_81A39C4
sub_81A39C4: @ 81A39C4
	push {r4,r5,lr}
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r1, =0x00000ca9
	adds r0, r1
	ldrb r0, [r0]
	lsls r0, 30
	lsrs r4, r0, 30
	ldr r0, =0x000040ce
	bl VarGet
	lsls r0, 16
	lsrs r5, r0, 16
	ldr r0, =0x000040cf
	bl VarGet
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0x6
	bhi _081A3AC4
	lsls r0, 2
	ldr r1, =_081A3A0C
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_081A3A0C:
	.4byte _081A3A28
	.4byte _081A3A3C
	.4byte _081A3A54
	.4byte _081A3A6C
	.4byte _081A3A80
	.4byte _081A3A98
	.4byte _081A3AAC
_081A3A28:
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	lsls r1, r4, 1
	lsls r2, r5, 2
	adds r1, r2
	movs r2, 0xCE
	lsls r2, 4
	b _081A3AB4
	.pool
_081A3A3C:
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	lsls r1, r4, 1
	lsls r2, r5, 2
	adds r1, r2
	ldr r2, =0x00000d0c
	b _081A3AB4
	.pool
_081A3A54:
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	lsls r1, r4, 1
	lsls r2, r5, 2
	adds r1, r2
	ldr r2, =0x00000dc8
	b _081A3AB4
	.pool
_081A3A6C:
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	lsls r1, r4, 1
	ldr r2, =0x00000dda
	b _081A3AB4
	.pool
_081A3A80:
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	lsls r1, r4, 1
	lsls r2, r5, 2
	adds r1, r2
	ldr r2, =0x00000de2
	b _081A3AB4
	.pool
_081A3A98:
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	lsls r1, r4, 1
	ldr r2, =0x00000e04
	b _081A3AB4
	.pool
_081A3AAC:
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	lsls r1, r4, 1
	ldr r2, =0x00000e1a
_081A3AB4:
	adds r0, r2
	adds r0, r1
	ldrh r0, [r0]
	b _081A3AC6
	.pool
_081A3AC4:
	movs r0, 0
_081A3AC6:
	pop {r4,r5}
	pop {r1}
	bx r1
	thumb_func_end sub_81A39C4

	thumb_func_start sub_81A3ACC
sub_81A3ACC: @ 81A3ACC
	push {r4,r5,lr}
	movs r2, 0
	ldr r5, =gSaveBlock2Ptr
	ldr r4, =0x00000cb4
	ldr r0, =0x0000ffff
	adds r3, r0, 0
_081A3AD8:
	ldr r0, [r5]
	lsls r1, r2, 1
	adds r0, r4
	adds r0, r1
	ldrh r1, [r0]
	orrs r1, r3
	strh r1, [r0]
	adds r2, 0x1
	cmp r2, 0x13
	ble _081A3AD8
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A3ACC

	thumb_func_start sub_81A3B00
sub_81A3B00: @ 81A3B00
	push {lr}
	ldr r0, =gUnknown_02038BCA
	ldrh r1, [r0]
	ldr r0, =0x000003fe
	cmp r1, r0
	bne _081A3B20
	ldr r1, =gUnknown_020375F0
	movs r0, 0x1
	b _081A3B24
	.pool
_081A3B20:
	ldr r1, =gUnknown_020375F0
	movs r0, 0
_081A3B24:
	strh r0, [r1]
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A3B00

	thumb_func_start sub_81A3B30
sub_81A3B30: @ 81A3B30
	push {r4,r5,lr}
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 23
	ldr r1, =0x000008c4
	adds r0, r4, r1
	bl FlagGet
	adds r5, r0, 0
	ldr r0, =0x000008c5
	adds r4, r0
	adds r0, r4, 0
	bl FlagGet
	adds r5, r0
	lsls r5, 24
	lsrs r5, 24
	adds r0, r5, 0
	pop {r4,r5}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_81A3B30

	thumb_func_start sub_81A3B64
sub_81A3B64: @ 81A3B64
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	movs r5, 0
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r1, =0x00000ca9
	adds r0, r1
	ldrb r0, [r0]
	lsls r0, 30
	lsrs r4, r0, 30
	ldr r0, =0x000040cf
	bl VarGet
	lsls r0, 16
	lsrs r7, r0, 16
	ldr r0, =0x000040ce
	bl VarGet
	lsls r0, 16
	lsrs r6, r0, 16
	cmp r7, 0x6
	bhi _081A3C78
	lsls r0, r7, 2
	ldr r1, =_081A3BB4
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_081A3BB4:
	.4byte _081A3BD0
	.4byte _081A3BE4
	.4byte _081A3C00
	.4byte _081A3C18
	.4byte _081A3C2C
	.4byte _081A3C44
	.4byte _081A3C60
_081A3BD0:
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	lsls r1, r4, 1
	lsls r2, r6, 2
	adds r1, r2
	movs r2, 0xCE
	lsls r2, 4
	b _081A3C68
	.pool
_081A3BE4:
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	lsls r1, r4, 1
	lsls r2, r6, 2
	adds r1, r2
	ldr r2, =0x00000d0c
	adds r0, r2
	adds r0, r1
	ldrh r5, [r0]
	b _081A3C78
	.pool
_081A3C00:
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	lsls r1, r4, 1
	lsls r2, r6, 2
	adds r1, r2
	ldr r2, =0x00000dc8
	b _081A3C68
	.pool
_081A3C18:
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	lsls r1, r4, 1
	ldr r2, =0x00000dda
	b _081A3C68
	.pool
_081A3C2C:
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	lsls r1, r4, 1
	lsls r2, r6, 2
	adds r1, r2
	ldr r2, =0x00000de2
	b _081A3C68
	.pool
_081A3C44:
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	lsls r1, r4, 1
	ldr r2, =0x00000e04
	adds r0, r2
	adds r0, r1
	ldrh r0, [r0]
	movs r1, 0xE
	b _081A3C70
	.pool
_081A3C60:
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	lsls r1, r4, 1
	ldr r2, =0x00000e1a
_081A3C68:
	adds r0, r2
	adds r0, r1
	ldrh r0, [r0]
	movs r1, 0x7
_081A3C70:
	bl __udivsi3
	lsls r0, 16
	lsrs r5, r0, 16
_081A3C78:
	cmp r5, 0
	beq _081A3C7E
	subs r5, 0x1
_081A3C7E:
	cmp r5, 0x1D
	bls _081A3C84
	movs r5, 0x1D
_081A3C84:
	ldr r2, =gUnknown_086118B4
	lsls r1, r7, 2
	adds r1, r6, r1
	lsls r0, r5, 3
	subs r0, r5
	lsls r0, 2
	adds r1, r0
	adds r7, r1, r2
	ldrb r5, [r7]
	ldr r0, =gUnknown_02038BCA
	mov r9, r0
	ldrh r0, [r0]
	ldr r1, =0x000003fe
	mov r8, r1
	cmp r0, r8
	bne _081A3CA6
	adds r5, 0xA
_081A3CA6:
	ldr r6, =gSaveBlock2Ptr
	ldr r1, [r6]
	ldr r4, =0x00000eb8
	adds r1, r4
	ldrh r0, [r1]
	adds r0, r5
	strh r0, [r1]
	ldr r0, =gStringVar1
	adds r1, r5, 0
	movs r2, 0
	movs r3, 0x2
	bl ConvertIntToDecimalStringN
	ldr r0, [r6]
	adds r2, r0, r4
	ldrh r0, [r2]
	ldr r1, =0x0000270f
	cmp r0, r1
	bls _081A3CCE
	strh r1, [r2]
_081A3CCE:
	ldr r0, [r6]
	ldr r4, =0x00000eba
	adds r0, r4
	ldrh r5, [r0]
	ldrb r0, [r7]
	adds r5, r0
	bl sub_80EED60
	mov r2, r9
	ldrh r0, [r2]
	cmp r0, r8
	bne _081A3CEE
	adds r5, 0xA
	movs r0, 0xA
	bl sub_80EED60
_081A3CEE:
	ldr r0, =0x0000ffff
	cmp r5, r0
	ble _081A3CF6
	adds r5, r0, 0
_081A3CF6:
	ldr r0, [r6]
	adds r0, r4
	strh r5, [r0]
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A3B64

	thumb_func_start sub_81A3D30
sub_81A3D30: @ 81A3D30
	push {r4,lr}
	ldr r0, =0x000040cf
	bl VarGet
	ldr r4, =gUnknown_020375F0
	lsls r0, 24
	lsrs r0, 24
	bl sub_81A3B30
	lsls r0, 24
	lsrs r0, 24
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A3D30

	thumb_func_start sub_81A3D58
sub_81A3D58: @ 81A3D58
	push {r4,lr}
	ldr r0, =0x000040cf
	bl VarGet
	lsls r0, 16
	lsrs r4, r0, 16
	lsls r0, r4, 24
	lsrs r0, 24
	bl sub_81A3B30
	lsls r0, 24
	cmp r0, 0
	bne _081A3D88
	lsls r0, r4, 17
	ldr r1, =0x8C4 << 16
	adds r0, r1
	lsrs r0, 16
	bl FlagSet
	b _081A3D94
	.pool
_081A3D88:
	lsls r0, r4, 17
	ldr r1, =0x8C5 << 16
	adds r0, r1
	lsrs r0, 16
	bl FlagSet
_081A3D94:
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A3D58

	thumb_func_start sub_81A3DA0
sub_81A3DA0: @ 81A3DA0
	push {lr}
	ldr r0, =gBattleTypeFlags
	ldr r1, =gUnknown_020375E2
	ldrh r1, [r1]
	ldr r2, [r0]
	ands r2, r1
	cmp r2, 0
	beq _081A3DC4
	ldr r1, =gUnknown_020375F0
	movs r0, 0x1
	strh r0, [r1]
	b _081A3DC8
	.pool
_081A3DC4:
	ldr r0, =gUnknown_020375F0
	strh r2, [r0]
_081A3DC8:
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A3DA0

	thumb_func_start sub_81A3DD0
sub_81A3DD0: @ 81A3DD0
	push {r4-r6,lr}
	adds r5, r2, 0
	lsls r0, 16
	lsrs r6, r0, 16
	lsls r1, 24
	lsrs r4, r1, 24
	adds r0, r6, 0
	bl SpeciesToNationalPokedexNum
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x1
	bl pokedex_flag_operation
	lsls r0, 24
	cmp r0, 0
	beq _081A3ED6
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	subs r0, r4, 0x1
	cmp r0, 0xA
	bhi _081A3EA0
	lsls r0, 2
	ldr r1, =_081A3E0C
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_081A3E0C:
	.4byte _081A3E38
	.4byte _081A3E68
	.4byte _081A3E38
	.4byte _081A3EA0
	.4byte _081A3E38
	.4byte _081A3EA0
	.4byte _081A3E38
	.4byte _081A3EA0
	.4byte _081A3E38
	.4byte _081A3EA0
	.4byte _081A3E38
_081A3E38:
	cmp r5, r4
	bne _081A3E50
	ldr r0, =gStringVar1
	ldr r1, =gUnknown_085CCB79
	bl StringAppend
	b _081A3EC8
	.pool
_081A3E50:
	cmp r5, r4
	ble _081A3EC8
	ldr r0, =gStringVar1
	ldr r1, =gUnknown_085CCB7F
	bl StringAppend
	b _081A3EC8
	.pool
_081A3E68:
	cmp r4, r5
	bne _081A3E80
	ldr r0, =gStringVar1
	ldr r1, =gUnknown_085CCB79
	bl StringAppend
	b _081A3E88
	.pool
_081A3E80:
	ldr r0, =gStringVar1
	ldr r1, =gUnknown_085CCB7F
	bl StringAppend
_081A3E88:
	ldr r0, =gStringVar1
	ldr r1, =gUnknown_085CCB86
	bl StringAppend
	b _081A3EC8
	.pool
_081A3EA0:
	cmp r4, r5
	bne _081A3EB8
	ldr r0, =gStringVar1
	ldr r1, =gUnknown_085CCB79
	bl StringAppend
	b _081A3EC0
	.pool
_081A3EB8:
	ldr r0, =gStringVar1
	ldr r1, =gUnknown_085CCB7F
	bl StringAppend
_081A3EC0:
	ldr r0, =gStringVar1
	ldr r1, =gUnknown_085CCB84
	bl StringAppend
_081A3EC8:
	ldr r0, =gStringVar1
	movs r1, 0xB
	muls r1, r6
	ldr r2, =gSpeciesNames
	adds r1, r2
	bl StringAppend
_081A3ED6:
	adds r0, r4, 0
	pop {r4-r6}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_81A3DD0

	thumb_func_start sub_81A3EF0
sub_81A3EF0: @ 81A3EF0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	ldr r2, [sp, 0x20]
	ldr r4, [sp, 0x24]
	mov r9, r4
	ldr r4, [sp, 0x28]
	mov r10, r4
	ldr r7, [sp, 0x2C]
	lsls r0, 16
	lsrs r4, r0, 16
	lsls r1, 16
	lsrs r6, r1, 16
	lsls r3, 24
	lsrs r3, 24
	mov r12, r3
	lsls r2, 24
	lsrs r2, 24
	mov r8, r2
	movs r2, 0
	movs r0, 0xCE
	lsls r0, 1
	cmp r4, r0
	beq _081A3FBE
	cmp r4, 0
	beq _081A3FBE
	ldr r0, =gUnknown_08611C9A
	ldrh r1, [r0]
	ldr r5, =0x0000ffff
	adds r3, r0, 0
	cmp r1, r5
	beq _081A3F54
	cmp r1, r4
	beq _081A3F48
	adds r1, r3, 0
_081A3F3A:
	adds r1, 0x2
	adds r2, 0x1
	ldrh r0, [r1]
	cmp r0, r5
	beq _081A3F54
	cmp r0, r4
	bne _081A3F3A
_081A3F48:
	lsls r0, r2, 1
	adds r0, r3
	ldrh r1, [r0]
	ldr r0, =0x0000ffff
	cmp r1, r0
	bne _081A3FBE
_081A3F54:
	mov r0, r12
	cmp r0, 0
	bne _081A3F60
	mov r1, r8
	cmp r1, 0x32
	bhi _081A3FBE
_081A3F60:
	movs r2, 0
	ldrb r3, [r7]
	cmp r2, r3
	bge _081A3F80
	mov r1, r9
	ldrh r0, [r1]
	cmp r0, r4
	beq _081A3F80
	adds r5, r3, 0
_081A3F72:
	adds r1, 0x2
	adds r2, 0x1
	cmp r2, r5
	bge _081A3F80
	ldrh r0, [r1]
	cmp r0, r4
	bne _081A3F72
_081A3F80:
	cmp r2, r3
	bne _081A3FBE
	cmp r6, 0
	beq _081A3FAA
	movs r2, 0
	cmp r2, r3
	bge _081A3FA6
	mov r1, r10
	ldrh r0, [r1]
	cmp r0, r6
	beq _081A3FA6
	adds r5, r3, 0
_081A3F98:
	adds r1, 0x2
	adds r2, 0x1
	cmp r2, r5
	bge _081A3FA6
	ldrh r0, [r1]
	cmp r0, r6
	bne _081A3F98
_081A3FA6:
	cmp r2, r3
	bne _081A3FBE
_081A3FAA:
	lsls r0, r3, 1
	add r0, r9
	strh r4, [r0]
	ldrb r0, [r7]
	lsls r0, 1
	add r0, r10
	strh r6, [r0]
	ldrb r0, [r7]
	adds r0, 0x1
	strb r0, [r7]
_081A3FBE:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A3EF0

	thumb_func_start sub_81A3FD4
sub_81A3FD4: @ 81A3FD4
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x34
	movs r0, 0
	str r0, [sp, 0x2C]
	add r4, sp, 0x28
	strb r0, [r4]
	ldr r0, =0x000040ce
	bl VarGet
	lsls r0, 16
	lsrs r0, 16
	mov r10, r4
	cmp r0, 0x1
	beq _081A4016
	cmp r0, 0x1
	bgt _081A4008
	cmp r0, 0
	beq _081A4010
	b _081A402A
	.pool
_081A4008:
	cmp r0, 0x3
	bgt _081A402A
	movs r0, 0x2
	b _081A4028
_081A4010:
	movs r1, 0x3
	str r1, [sp, 0x2C]
	b _081A402A
_081A4016:
	ldr r0, =0x000040cf
	bl VarGet
	lsls r0, 16
	movs r1, 0x3
	str r1, [sp, 0x2C]
	cmp r0, 0
	bne _081A402A
	movs r0, 0x4
_081A4028:
	str r0, [sp, 0x2C]
_081A402A:
	movs r1, 0
	mov r9, r1
	b _081A4040
	.pool
_081A4034:
	mov r1, r10
	ldrb r0, [r1]
	ldr r1, [sp, 0x2C]
	cmp r0, r1
	blt _081A4040
	b _081A41E0
_081A4040:
	mov r5, r9
	movs r0, 0
	mov r1, r10
	strb r0, [r1]
	mov r0, r9
	adds r0, 0x1
	str r0, [sp, 0x30]
_081A404E:
	movs r0, 0x64
	adds r4, r5, 0
	muls r4, r0
	ldr r0, =gPlayerParty
	adds r4, r0
	adds r0, r4, 0
	movs r1, 0x41
	bl GetMonData
	lsls r0, 16
	lsrs r0, 16
	mov r8, r0
	adds r0, r4, 0
	movs r1, 0xC
	bl GetMonData
	lsls r0, 16
	lsrs r7, r0, 16
	adds r0, r4, 0
	movs r1, 0x38
	bl GetMonData
	lsls r0, 24
	lsrs r6, r0, 24
	adds r0, r4, 0
	movs r1, 0x39
	bl GetMonData
	lsls r0, 16
	lsrs r4, r0, 16
	ldr r0, =0x000040cf
	bl VarGet
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0x6
	bne _081A40C8
	cmp r7, 0
	bne _081A40E4
	ldr r0, =gUnknown_020375F0
	ldrb r3, [r0]
	str r6, [sp]
	add r1, sp, 0x10
	str r1, [sp, 0x4]
	add r0, sp, 0x1C
	str r0, [sp, 0x8]
	mov r0, r10
	str r0, [sp, 0xC]
	mov r0, r8
	movs r1, 0
	adds r2, r4, 0
	bl sub_81A3EF0
	b _081A40E4
	.pool
_081A40C8:
	ldr r0, =gUnknown_020375F0
	ldrb r3, [r0]
	str r6, [sp]
	add r1, sp, 0x10
	str r1, [sp, 0x4]
	add r0, sp, 0x1C
	str r0, [sp, 0x8]
	mov r0, r10
	str r0, [sp, 0xC]
	mov r0, r8
	adds r1, r7, 0
	adds r2, r4, 0
	bl sub_81A3EF0
_081A40E4:
	adds r5, 0x1
	cmp r5, 0x5
	ble _081A40EC
	movs r5, 0
_081A40EC:
	cmp r5, r9
	bne _081A404E
	ldr r1, [sp, 0x30]
	mov r9, r1
	cmp r1, 0x5
	ble _081A4034
	mov r1, r10
	ldrb r0, [r1]
	ldr r1, [sp, 0x2C]
	cmp r0, r1
	bge _081A41E0
	movs r6, 0
	ldr r0, =gUnknown_08611C9A
	ldrh r2, [r0]
	ldr r1, =0x0000ffff
	mov r8, r0
	cmp r2, r1
	beq _081A4134
	mov r4, r8
_081A4112:
	adds r0, r2, 0
	bl SpeciesToNationalPokedexNum
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x1
	bl pokedex_flag_operation
	lsls r0, 24
	cmp r0, 0
	beq _081A412A
	adds r6, 0x1
_081A412A:
	adds r4, 0x2
	ldrh r2, [r4]
	ldr r0, =0x0000ffff
	cmp r2, r0
	bne _081A4112
_081A4134:
	ldr r1, =gStringVar1
	movs r0, 0xFF
	strb r0, [r1]
	ldr r1, =gUnknown_020375E0
	movs r0, 0x1
	strh r0, [r1]
	movs r0, 0
	mov r1, r10
	strb r0, [r1]
	mov r1, r8
	ldrh r0, [r1]
	ldr r1, =0x0000ffff
	cmp r0, r1
	beq _081A416A
	mov r5, r10
	adds r7, r1, 0
	mov r4, r8
_081A4156:
	ldrh r0, [r4]
	ldrb r1, [r5]
	adds r2, r6, 0
	bl sub_81A3DD0
	strb r0, [r5]
	adds r4, 0x2
	ldrh r0, [r4]
	cmp r0, r7
	bne _081A4156
_081A416A:
	mov r0, r10
	ldrb r4, [r0]
	cmp r4, 0
	bne _081A41A4
	ldr r4, =gStringVar1
	ldr r1, =gUnknown_085CCB82
	adds r0, r4, 0
	bl StringAppend
	ldr r1, =gUnknown_085CCB88
	adds r0, r4, 0
	bl StringAppend
	b _081A4202
	.pool
_081A41A4:
	movs r0, 0x1
	ands r0, r4
	cmp r0, 0
	beq _081A41C0
	ldr r0, =gStringVar1
	ldr r1, =gUnknown_085CCB84
	bl StringAppend
	b _081A41C8
	.pool
_081A41C0:
	ldr r0, =gStringVar1
	ldr r1, =gUnknown_085CCB82
	bl StringAppend
_081A41C8:
	ldr r0, =gStringVar1
	ldr r1, =gUnknown_085CCB8C
	bl StringAppend
	b _081A4202
	.pool
_081A41E0:
	ldr r1, =gUnknown_020375E0
	movs r0, 0
	strh r0, [r1]
	ldr r0, =gSaveBlock2Ptr
	ldr r2, [r0]
	ldr r0, =gUnknown_020375F0
	ldrb r0, [r0]
	ldr r1, =0x00000ca9
	adds r2, r1
	movs r1, 0x3
	ands r1, r0
	ldrb r3, [r2]
	movs r0, 0x4
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2]
_081A4202:
	add sp, 0x34
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A3FD4

	thumb_func_start sub_81A4224
sub_81A4224: @ 81A4224
	push {lr}
	bl sub_81652B4
	pop {r0}
	bx r0
	thumb_func_end sub_81A4224

	thumb_func_start sub_81A4230
sub_81A4230: @ 81A4230
	push {r4-r7,lr}
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r1, =0x00000ca9
	adds r0, r1
	ldrb r0, [r0]
	lsls r0, 30
	lsrs r4, r0, 30
	ldr r0, =0x000040ce
	bl VarGet
	lsls r0, 16
	lsrs r5, r0, 16
	ldr r0, =0x000040cf
	bl VarGet
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0x6
	bls _081A425A
	b _081A4394
_081A425A:
	lsls r0, 2
	ldr r1, =_081A4278
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_081A4278:
	.4byte _081A4294
	.4byte _081A42DC
	.4byte _081A431C
	.4byte _081A4338
	.4byte _081A434C
	.4byte _081A4368
	.4byte _081A437C
_081A4294:
	ldr r7, =gSaveBlock2Ptr
	ldr r0, [r7]
	lsls r4, 1
	lsls r1, r5, 2
	adds r1, r4, r1
	movs r6, 0xCE
	lsls r6, 4
	adds r3, r0, r6
	adds r2, r3, r1
	ldrh r1, [r2]
	ldr r0, =0x0000270e
	cmp r1, r0
	bhi _081A4394
	adds r0, r1, 0x1
	strh r0, [r2]
	cmp r5, 0
	bne _081A4394
	adds r0, r3, r4
	ldrh r1, [r0]
	movs r0, 0x20
	bl sav12_xor_set
	ldr r1, [r7]
	adds r0, r1, r6
	adds r0, r4
	ldrh r0, [r0]
	ldr r2, =0x00000d02
	adds r1, r2
	b _081A4392
	.pool
_081A42DC:
	ldr r6, =gSaveBlock2Ptr
	ldr r0, [r6]
	lsls r2, r4, 1
	lsls r1, r5, 2
	adds r1, r2, r1
	ldr r3, =0x00000d0c
	adds r0, r3
	adds r3, r0, r1
	ldrh r0, [r3]
	ldr r2, =0x0000270e
	cmp r0, r2
	bhi _081A42F8
	adds r0, 0x1
	strh r0, [r3]
_081A42F8:
	ldr r0, [r6]
	ldr r3, =0x00000d1c
	adds r0, r3
	adds r1, r0, r1
	ldrh r0, [r1]
	cmp r0, r2
	bhi _081A4394
	adds r0, 0x1
	b _081A4392
	.pool
_081A431C:
	ldr r0, =gSaveBlock2Ptr
	ldr r2, [r0]
	lsls r0, r4, 1
	lsls r1, r5, 2
	adds r0, r1
	ldr r1, =0x00000dc8
	adds r2, r1
	adds r1, r2, r0
	b _081A4388
	.pool
_081A4338:
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	lsls r1, r4, 1
	ldr r2, =0x00000dda
	adds r0, r2
	b _081A4386
	.pool
_081A434C:
	ldr r0, =gSaveBlock2Ptr
	ldr r2, [r0]
	lsls r0, r4, 1
	lsls r1, r5, 2
	adds r0, r1
	ldr r3, =0x00000de2
	adds r2, r3
	adds r1, r2, r0
	b _081A4388
	.pool
_081A4368:
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	lsls r1, r4, 1
	ldr r2, =0x00000e04
	adds r0, r2
	b _081A4386
	.pool
_081A437C:
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	lsls r1, r4, 1
	ldr r3, =0x00000e1a
	adds r0, r3
_081A4386:
	adds r1, r0, r1
_081A4388:
	ldrh r3, [r1]
	ldr r0, =0x0000270e
	cmp r3, r0
	bhi _081A4394
	adds r0, r3, 0x1
_081A4392:
	strh r0, [r1]
_081A4394:
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A4230

	thumb_func_start sub_81A43A8
sub_81A43A8: @ 81A43A8
	push {r4-r6,lr}
	sub sp, 0x4
	movs r4, 0
	ldr r6, =gSaveBlock1Ptr
	movs r5, 0x64
_081A43B2:
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	lsls r1, r4, 1
	ldr r2, =0x00000caa
	adds r0, r2
	adds r1, r0, r1
	ldrh r0, [r1]
	cmp r0, 0
	beq _081A43EE
	adds r1, r0, 0
	muls r1, r5
	movs r0, 0xEA
	lsls r0, 1
	adds r1, r0
	ldr r0, [r6]
	adds r0, r1
	movs r1, 0xC
	movs r2, 0
	bl GetMonData
	mov r1, sp
	strh r0, [r1]
	adds r0, r4, 0
	muls r0, r5
	ldr r1, =gPlayerParty
	adds r0, r1
	movs r1, 0xC
	mov r2, sp
	bl pokemon_setattr
_081A43EE:
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x3
	bls _081A43B2
	add sp, 0x4
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A43A8

	thumb_func_start sub_81A4410
sub_81A4410: @ 81A4410
	push {r4,lr}
	ldr r4, =gUnknown_020375F0
	bl sub_8185338
	strh r0, [r4]
	ldr r0, =gSaveBlock2Ptr
	ldr r1, [r0]
	ldr r0, =0x00000ca9
	adds r1, r0
	ldrb r0, [r1]
	movs r2, 0x8
	orrs r0, r2
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A4410

	thumb_func_start sub_81A443C
sub_81A443C: @ 81A443C
	push {lr}
	ldr r0, =gUnknown_020375E2
	ldrh r0, [r0]
	cmp r0, 0
	beq _081A4450
	cmp r0, 0x1
	beq _081A4464
	b _081A446E
	.pool
_081A4450:
	ldr r0, =gStringVar1
	ldr r1, =gUnknown_02038BCA
	ldrh r1, [r1]
	bl sub_8162E20
	b _081A446E
	.pool
_081A4464:
	ldr r0, =gStringVar2
	ldr r1, =gUnknown_02038BCA
	ldrh r1, [r1]
	bl sub_8162E20
_081A446E:
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A443C

	thumb_func_start sub_81A447C
sub_81A447C: @ 81A447C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x8
	movs r0, 0
	str r0, [sp]
_081A448C:
	ldr r1, =gSaveBlock2Ptr
	ldr r0, [r1]
	ldr r2, [sp]
	lsls r1, r2, 1
	ldr r4, =0x00000caa
	adds r0, r4
	adds r0, r1
	ldrh r0, [r0]
	subs r0, 0x1
	lsls r0, 16
	lsrs r0, 16
	mov r9, r1
	adds r2, 0x1
	str r2, [sp, 0x4]
	cmp r0, 0x5
	bhi _081A454E
	movs r6, 0
	ldr r0, [sp]
	movs r2, 0x64
	adds r1, r0, 0
	muls r1, r2
	ldr r0, =gPlayerParty
	adds r7, r1, r0
_081A44BA:
	movs r5, 0
	movs r4, 0xD
	adds r4, r6
	mov r8, r4
	adds r0, r6, 0x1
	mov r10, r0
_081A44C6:
	ldr r1, =gSaveBlock2Ptr
	ldr r0, [r1]
	ldr r2, =0x00000caa
	adds r0, r2
	add r0, r9
	ldrh r0, [r0]
	movs r4, 0x64
	adds r1, r0, 0
	muls r1, r4
	movs r0, 0xEA
	lsls r0, 1
	adds r1, r0
	ldr r2, =gSaveBlock1Ptr
	ldr r0, [r2]
	adds r0, r1
	adds r1, r5, 0
	adds r1, 0xD
	movs r2, 0
	bl GetMonData
	adds r4, r0, 0
	adds r0, r7, 0
	mov r1, r8
	movs r2, 0
	bl GetMonData
	cmp r4, r0
	beq _081A4508
	adds r0, r5, 0x1
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, 0x3
	bls _081A44C6
_081A4508:
	cmp r5, 0x4
	bne _081A4516
	adds r0, r7, 0
	movs r1, 0xA6
	adds r2, r6, 0
	bl sub_80691F4
_081A4516:
	mov r4, r10
	lsls r0, r4, 24
	lsrs r6, r0, 24
	cmp r6, 0x3
	bls _081A44BA
	ldr r0, =gSaveBlock1Ptr
	ldr r0, [r0]
	ldr r2, =gSaveBlock2Ptr
	ldr r1, [r2]
	ldr r4, =0x00000caa
	adds r1, r4
	add r1, r9
	ldrh r1, [r1]
	subs r1, 0x1
	movs r3, 0x64
	muls r1, r3
	adds r0, r1
	movs r1, 0x8E
	lsls r1, 2
	adds r0, r1
	ldr r2, =gPlayerParty
	ldr r4, [sp]
	adds r1, r4, 0
	muls r1, r3
	adds r1, r2
	movs r2, 0x64
	bl memcpy
_081A454E:
	ldr r1, [sp, 0x4]
	lsls r0, r1, 24
	lsrs r0, 24
	str r0, [sp]
	cmp r0, 0x3
	bls _081A448C
	add sp, 0x8
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A447C

	thumb_func_start sub_81A457C
sub_81A457C: @ 81A457C
	push {lr}
	ldr r0, =0x000040cf
	bl VarGet
	lsls r0, 24
	lsrs r0, 24
	bl sub_81A5030
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A457C

	thumb_func_start sub_81A4594
sub_81A4594: @ 81A4594
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x2C
	mov r8, r1
	adds r6, r3, 0
	ldr r1, =gUnknown_0203AB74
	ldrb r5, [r1]
	lsls r4, r0, 1
	adds r4, r0
	ldr r1, =gUnknown_085EE424
	adds r4, r1
	mov r1, r8
	lsls r3, r1, 27
	lsrs r3, 24
	lsls r1, r0, 2
	adds r1, r0
	adds r2, r1
	lsls r2, 3
	adds r2, 0x1
	lsls r2, 24
	lsrs r7, r2, 24
	str r7, [sp]
	movs r0, 0xFF
	mov r10, r0
	str r0, [sp, 0x4]
	movs r1, 0
	mov r9, r1
	str r1, [sp, 0x8]
	adds r0, r5, 0
	movs r1, 0x1
	adds r2, r4, 0
	bl Print
	movs r0, 0xFF
	strb r0, [r6, 0xD]
	ldrh r0, [r6, 0x4]
	cmp r0, 0
	beq _081A465C
	adds r1, r6, 0x6
	ldrb r2, [r6, 0xE]
	add r0, sp, 0xC
	bl sub_81DB5E8
	ldr r1, =gUnknown_0203AB74
	ldrb r0, [r1]
	mov r3, r8
	adds r3, 0x2
	lsls r3, 27
	lsrs r3, 24
	str r7, [sp]
	mov r1, r10
	str r1, [sp, 0x4]
	mov r1, r9
	str r1, [sp, 0x8]
	movs r1, 0x1
	add r2, sp, 0xC
	bl Print
	ldrh r1, [r6, 0x4]
	ldr r0, =0x0000270f
	cmp r1, r0
	bls _081A4618
	adds r1, r0, 0
_081A4618:
	ldr r0, =gStringVar2
	movs r2, 0x1
	movs r3, 0x4
	bl ConvertIntToDecimalStringN
	ldr r5, =gStringVar4
	ldr r1, =gUnknown_08611D08
	ldr r0, [sp, 0x4C]
	lsls r0, 2
	adds r0, r1
	ldr r4, [r0]
	adds r0, r5, 0
	adds r1, r4, 0
	bl StringExpandPlaceholders
	movs r0, 0x1
	adds r1, r4, 0
	movs r2, 0xC8
	bl GetStringRightAlignXOffset
	adds r3, r0, 0
	lsls r3, 24
	lsrs r3, 24
	ldr r1, =gUnknown_0203AB74
	ldrb r0, [r1]
	str r7, [sp]
	mov r1, r10
	str r1, [sp, 0x4]
	mov r1, r9
	str r1, [sp, 0x8]
	movs r1, 0x1
	adds r2, r5, 0
	bl Print
_081A465C:
	add sp, 0x2C
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A4594

	thumb_func_start sub_81A4684
sub_81A4684: @ 81A4684
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x2C
	adds r6, r0, 0
	adds r7, r1, 0
	mov r10, r2
	adds r5, r3, 0
	ldr r1, =gUnknown_0203AB74
	ldrb r0, [r1]
	lsls r2, r6, 1
	adds r2, r6
	ldr r1, =gUnknown_085EE424
	adds r2, r1
	lsls r3, r7, 27
	lsrs r3, 24
	mov r12, r3
	lsls r1, r6, 2
	adds r1, r6
	mov r3, r10
	adds r4, r3, r1
	lsls r1, r4, 3
	adds r1, 0x1
	lsls r1, 24
	lsrs r1, 24
	str r1, [sp]
	movs r1, 0xFF
	mov r9, r1
	str r1, [sp, 0x4]
	movs r3, 0
	mov r8, r3
	str r3, [sp, 0x8]
	movs r1, 0x1
	mov r3, r12
	bl Print
	ldrh r0, [r5, 0x8]
	cmp r0, 0
	beq _081A47BC
	movs r0, 0xFF
	strb r0, [r5, 0x11]
	movs r0, 0x1
	negs r0, r0
	strb r0, [r5, 0x19]
	adds r1, r5, 0
	adds r1, 0xA
	ldrb r2, [r5, 0x1A]
	add r0, sp, 0xC
	bl sub_81DB5E8
	ldr r1, =gUnknown_0203AB74
	ldrb r0, [r1]
	adds r3, r7, 0x2
	lsls r3, 27
	lsrs r3, 24
	subs r1, r4, 0x1
	lsls r1, 3
	adds r1, 0x1
	lsls r1, 24
	lsrs r1, 24
	str r1, [sp]
	mov r2, r9
	str r2, [sp, 0x4]
	mov r1, r8
	str r1, [sp, 0x8]
	movs r1, 0x1
	add r2, sp, 0xC
	bl Print
	adds r4, r5, 0
	adds r4, 0x12
	adds r0, r4, 0
	bl sub_8009228
	cmp r0, 0
	beq _081A4734
	add r0, sp, 0xC
	adds r1, r4, 0
	movs r2, 0x1
	bl sub_81DB5E8
	b _081A473C
	.pool
_081A4734:
	add r0, sp, 0xC
	adds r1, r4, 0
	bl StringCopy
_081A473C:
	ldr r2, =gUnknown_0203AB74
	mov r9, r2
	ldrb r0, [r2]
	adds r3, r7, 0x4
	lsls r3, 27
	lsrs r3, 24
	lsls r1, r6, 2
	adds r1, r6
	mov r2, r10
	adds r6, r2, r1
	adds r1, r6, 0x1
	lsls r1, 3
	adds r1, 0x1
	lsls r1, 24
	lsrs r1, 24
	str r1, [sp]
	movs r1, 0xFF
	mov r8, r1
	str r1, [sp, 0x4]
	movs r7, 0
	str r7, [sp, 0x8]
	movs r1, 0x1
	add r2, sp, 0xC
	bl Print
	ldrh r1, [r5, 0x8]
	ldr r0, =0x0000270f
	cmp r1, r0
	bls _081A4778
	adds r1, r0, 0
_081A4778:
	ldr r0, =gStringVar2
	movs r2, 0x1
	movs r3, 0x4
	bl ConvertIntToDecimalStringN
	ldr r5, =gStringVar4
	ldr r0, =gUnknown_08611D08
	ldr r4, [r0, 0x24]
	adds r0, r5, 0
	adds r1, r4, 0
	bl StringExpandPlaceholders
	movs r0, 0x1
	adds r1, r4, 0
	movs r2, 0xC8
	bl GetStringRightAlignXOffset
	adds r3, r0, 0
	lsls r3, 24
	lsrs r3, 24
	mov r2, r9
	ldrb r0, [r2]
	lsls r1, r6, 3
	adds r1, 0x1
	lsls r1, 24
	lsrs r1, 24
	str r1, [sp]
	mov r1, r8
	str r1, [sp, 0x4]
	str r7, [sp, 0x8]
	movs r1, 0x1
	adds r2, r5, 0
	bl Print
_081A47BC:
	add sp, 0x2C
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A4684

	thumb_func_start sub_81A47E0
sub_81A47E0: @ 81A47E0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x44
	mov r9, r0
	mov r10, r1
	str r2, [sp, 0x40]
	movs r0, 0xAC
	lsls r0, 1
	bl AllocZeroed
	mov r8, r0
	bl sub_80E8260
	add r0, sp, 0x30
	mov r12, r0
	ldr r0, =gSaveBlock2Ptr
	ldr r2, [r0]
	ldr r3, [sp, 0x40]
	lsls r1, r3, 1
	adds r1, r3
	lsls r1, 4
	mov r4, r10
	lsls r0, r4, 1
	add r0, r10
	lsls r0, 5
	adds r1, r0
	adds r4, r1, r2
	mov r3, sp
	movs r2, 0x2
_081A4820:
	adds r0, r3, 0
	movs r5, 0x87
	lsls r5, 2
	adds r1, r4, r5
	ldm r1!, {r5-r7}
	stm r0!, {r5-r7}
	ldr r1, [r1]
	str r1, [r0]
	adds r4, 0x10
	adds r3, 0x10
	subs r2, 0x1
	cmp r2, 0
	bge _081A4820
	ldr r6, [sp, 0x40]
	lsls r0, r6, 4
	mov r7, r10
	lsls r1, r7, 5
	adds r0, r1
	mov r1, r12
	add r0, r8
	ldm r0!, {r2-r4}
	stm r1!, {r2-r4}
	ldr r0, [r0]
	str r0, [r1]
	movs r2, 0
_081A4852:
	movs r1, 0
	movs r4, 0
	movs r3, 0
	lsls r5, r2, 4
	adds r6, r2, 0x1
	mov r2, sp
_081A485E:
	ldrh r0, [r2, 0x4]
	cmp r0, r1
	ble _081A4868
	adds r4, r3, 0
	adds r1, r0, 0
_081A4868:
	adds r2, 0x10
	adds r3, 0x1
	cmp r3, 0x3
	ble _081A485E
	mov r0, sp
	ldrh r0, [r0, 0x34]
	cmp r0, r1
	blt _081A487A
	movs r4, 0x3
_081A487A:
	lsls r0, r4, 4
	mov r7, sp
	adds r2, r7, r0
	mov r0, r9
	adds r1, r5, r0
	adds r0, r2, 0
	ldm r0!, {r3-r5}
	stm r1!, {r3-r5}
	ldr r0, [r0]
	str r0, [r1]
	movs r0, 0
	strh r0, [r2, 0x4]
	adds r2, r6, 0
	cmp r2, 0x2
	ble _081A4852
	mov r0, r8
	bl Free
	add sp, 0x44
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A47E0

	thumb_func_start sub_81A48B4
sub_81A48B4: @ 81A48B4
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x74
	mov r9, r0
	mov r10, r1
	movs r0, 0xAC
	lsls r0, 1
	bl AllocZeroed
	mov r8, r0
	bl sub_80E8260
	mov r0, sp
	adds r0, 0x54
	str r0, [sp, 0x70]
	add r1, sp, 0x5C
	mov r12, r1
	ldr r0, =gSaveBlock2Ptr
	ldr r1, [r0]
	movs r0, 0x54
	mov r2, r10
	muls r2, r0
	adds r0, r2, 0
	adds r3, r0, r1
	mov r2, sp
	movs r4, 0x2
_081A48EE:
	adds r0, r2, 0
	ldr r5, =0x0000057c
	adds r1, r3, r5
	ldm r1!, {r5-r7}
	stm r0!, {r5-r7}
	ldm r1!, {r5-r7}
	stm r0!, {r5-r7}
	ldr r1, [r1]
	str r1, [r0]
	adds r3, 0x1C
	adds r2, 0x1C
	subs r4, 0x1
	cmp r4, 0
	bge _081A48EE
	mov r6, r10
	lsls r0, r6, 3
	subs r0, r6
	lsls r0, 2
	add r0, r8
	ldr r1, [sp, 0x70]
	movs r7, 0x90
	lsls r7, 1
	adds r0, r7
	ldm r0!, {r2-r4}
	stm r1!, {r2-r4}
	ldm r0!, {r5-r7}
	stm r1!, {r5-r7}
	ldr r0, [r0]
	str r0, [r1]
	movs r4, 0
_081A492A:
	movs r1, 0
	movs r5, 0
	movs r3, 0
	lsls r6, r4, 3
	adds r7, r4, 0x1
	mov r2, sp
_081A4936:
	ldrh r0, [r2, 0x8]
	cmp r0, r1
	ble _081A4940
	adds r5, r3, 0
	adds r1, r0, 0
_081A4940:
	adds r2, 0x1C
	adds r3, 0x1
	cmp r3, 0x2
	ble _081A4936
	mov r2, r12
	ldrh r0, [r2]
	cmp r0, r1
	blt _081A4952
	movs r5, 0x3
_081A4952:
	subs r1, r6, r4
	lsls r1, 2
	lsls r0, r5, 3
	subs r0, r5
	lsls r0, 2
	mov r3, sp
	adds r2, r3, r0
	add r1, r9
	adds r0, r2, 0
	ldm r0!, {r4-r6}
	stm r1!, {r4-r6}
	ldm r0!, {r3-r5}
	stm r1!, {r3-r5}
	ldr r0, [r0]
	str r0, [r1]
	movs r0, 0
	strh r0, [r2, 0x8]
	adds r4, r7, 0
	cmp r4, 0x2
	ble _081A492A
	mov r0, r8
	bl Free
	add sp, 0x74
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A48B4

	thumb_func_start sub_81A4998
sub_81A4998: @ 81A4998
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x94
	adds r7, r0, 0
	str r1, [sp, 0x90]
	ldr r0, =gStringVar1
	ldr r4, =gUnknown_08611CB0
	lsls r5, r7, 3
	adds r1, r5, r4
	ldr r1, [r1]
	bl StringCopy
	ldr r6, =gStringVar4
	adds r4, 0x4
	adds r5, r4
	ldr r1, [r5]
	adds r0, r6, 0
	bl StringExpandPlaceholders
	ldr r0, =gUnknown_0203AB74
	mov r8, r0
	ldrb r0, [r0]
	movs r1, 0x1
	mov r10, r1
	str r1, [sp]
	movs r2, 0xFF
	mov r9, r2
	str r2, [sp, 0x4]
	movs r5, 0
	str r5, [sp, 0x8]
	adds r2, r6, 0
	movs r3, 0
	bl Print
	ldr r1, =gUnknown_08611D00
	ldr r2, [sp, 0x90]
	lsls r0, r2, 2
	adds r0, r1
	ldr r4, [r0]
	movs r0, 0x1
	adds r1, r4, 0
	movs r2, 0xD0
	bl GetStringRightAlignXOffset
	adds r3, r0, 0
	mov r1, r8
	ldrb r0, [r1]
	lsls r3, 24
	lsrs r3, 24
	mov r2, r10
	str r2, [sp]
	mov r1, r9
	str r1, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r1, 0x1
	adds r2, r4, 0
	bl Print
	cmp r7, 0x9
	bne _081A4A6C
	ldr r2, =gSaveBlock2Ptr
	ldr r0, [r2]
	ldr r1, =0x00000ee8
	adds r0, r1
	movs r1, 0xFF
	strb r1, [r0]
	ldr r0, [r2]
	movs r2, 0xEF
	lsls r2, 4
	adds r0, r2
	movs r1, 0x1
	negs r1, r1
	strb r1, [r0]
	add r4, sp, 0x3C
	adds r0, r4, 0
	ldr r1, [sp, 0x90]
	bl sub_81A48B4
_081A4A3A:
	adds r0, r5, 0
	movs r1, 0x1
	movs r2, 0x4
	adds r3, r4, 0
	bl sub_81A4684
	adds r4, 0x1C
	adds r5, 0x1
	cmp r5, 0x2
	ble _081A4A3A
	b _081A4A90
	.pool
_081A4A6C:
	add r0, sp, 0xC
	adds r1, r7, 0
	ldr r2, [sp, 0x90]
	bl sub_81A47E0
	movs r5, 0
	add r4, sp, 0xC
_081A4A7A:
	str r7, [sp]
	adds r0, r5, 0
	movs r1, 0x1
	movs r2, 0x4
	adds r3, r4, 0
	bl sub_81A4594
	adds r4, 0x10
	adds r5, 0x1
	cmp r5, 0x2
	ble _081A4A7A
_081A4A90:
	add sp, 0x94
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_81A4998

	thumb_func_start sub_81A4AA0
sub_81A4AA0: @ 81A4AA0
	push {r4,lr}
	ldr r4, =gUnknown_0203AB74
	ldr r0, =gUnknown_08611C84
	bl AddWindow
	strb r0, [r4]
	ldrb r0, [r4]
	movs r1, 0
	bl sub_81973FC
	ldrb r0, [r4]
	movs r1, 0x11
	bl FillWindowPixelBuffer
	ldr r0, =gUnknown_020375E2
	ldrh r0, [r0]
	movs r1, 0
	bl sub_81A4998
	ldrb r0, [r4]
	bl PutWindowTilemap
	ldrb r0, [r4]
	movs r1, 0x3
	bl CopyWindowToVram
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A4AA0

	thumb_func_start sub_81A4AE8
sub_81A4AE8: @ 81A4AE8
	push {r4,lr}
	ldr r4, =gUnknown_0203AB74
	ldrb r0, [r4]
	movs r1, 0x11
	bl FillWindowPixelBuffer
	ldr r0, =gUnknown_020375E2
	ldrh r0, [r0]
	movs r1, 0x1
	bl sub_81A4998
	ldrb r0, [r4]
	movs r1, 0x2
	bl CopyWindowToVram
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A4AE8

	thumb_func_start sub_81A4B14
sub_81A4B14: @ 81A4B14
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x8
	movs r1, 0
	ldr r3, =gSaveBlock2Ptr
_081A4B24:
	movs r6, 0
	lsls r0, r1, 1
	adds r2, r1, 0x1
	mov r10, r2
	adds r0, r1
	lsls r0, 5
	mov r8, r0
	movs r7, 0
	movs r0, 0x87
	lsls r0, 2
	add r0, r8
	mov r9, r0
_081A4B3C:
	movs r5, 0
	adds r2, r7, 0
	mov r1, r8
	adds r4, r7, r1
_081A4B44:
	ldr r0, [r3]
	add r0, r9
	adds r0, r2
	lsls r1, r5, 4
	adds r0, r1
	movs r1, 0
	str r2, [sp]
	str r3, [sp, 0x4]
	bl sub_80842F4
	ldr r3, [sp, 0x4]
	ldr r0, [r3]
	adds r0, r4
	ldr r1, =0x00000222
	adds r0, r1
	movs r1, 0xFF
	strb r1, [r0]
	ldr r0, [r3]
	adds r0, r4
	movs r1, 0x88
	lsls r1, 2
	adds r0, r1
	movs r1, 0
	strh r1, [r0]
	adds r4, 0x10
	adds r5, 0x1
	ldr r2, [sp]
	cmp r5, 0x2
	ble _081A4B44
	adds r7, 0x30
	adds r6, 0x1
	cmp r6, 0x1
	ble _081A4B3C
	mov r1, r10
	cmp r1, 0x8
	ble _081A4B24
	movs r6, 0
	ldr r7, =gSaveBlock2Ptr
	movs r2, 0x54
	mov r10, r2
	movs r3, 0xFF
	mov r9, r3
_081A4B98:
	adds r0, r6, 0x1
	mov r8, r0
	mov r1, r10
	muls r1, r6
	movs r0, 0x54
	adds r4, r6, 0
	muls r4, r0
	movs r2, 0
	ldr r3, =0x0000057c
	adds r6, r1, r3
	movs r5, 0x2
_081A4BAE:
	ldr r0, [r7]
	adds r0, r6
	adds r0, r2
	movs r1, 0
	str r2, [sp]
	bl sub_80842F4
	ldr r0, [r7]
	adds r0, r6
	ldr r2, [sp]
	adds r0, r2
	adds r0, 0x4
	movs r1, 0
	bl sub_80842F4
	ldr r1, [r7]
	adds r1, r4
	ldr r0, =0x00000586
	adds r1, r0
	ldrb r0, [r1]
	mov r3, r9
	orrs r0, r3
	strb r0, [r1]
	ldr r1, [r7]
	adds r1, r4
	ldr r0, =0x0000058e
	adds r1, r0
	ldrb r0, [r1]
	orrs r0, r3
	strb r0, [r1]
	ldr r0, [r7]
	adds r0, r4
	ldr r1, =0x00000584
	adds r0, r1
	movs r1, 0
	strh r1, [r0]
	adds r4, 0x1C
	ldr r2, [sp]
	adds r2, 0x1C
	subs r5, 0x1
	cmp r5, 0
	bge _081A4BAE
	mov r6, r8
	cmp r6, 0x1
	ble _081A4B98
	add sp, 0x8
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A4B14

	thumb_func_start sub_81A4C30
sub_81A4C30: @ 81A4C30
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	movs r0, 0x96
	lsls r0, 2
	bl AllocZeroed
	adds r7, r0, 0
	adds r4, r7, 0
	movs r5, 0
	movs r0, 0xFA
	lsls r0, 1
	adds r6, r7, r0
	ldr r0, =gPlayerParty
	mov r8, r0
_081A4C4E:
	mov r0, r8
	adds r1, r5, r0
	adds r0, r4, 0
	movs r2, 0x64
	bl memcpy
	adds r4, 0x64
	adds r5, 0x64
	cmp r4, r6
	ble _081A4C4E
	ldr r4, =gUnknown_020244E9
	ldrb r5, [r4]
	bl copy_player_party_from_sav1
	bl sub_8076D5C
	movs r0, 0x1
	bl save_game_when_memory_present
	bl sav2_gender2_inplace_and_xFE
	strb r5, [r4]
	adds r4, r7, 0
	ldr r5, =gPlayerParty
	movs r0, 0xFA
	lsls r0, 1
	adds r6, r7, r0
_081A4C84:
	adds r0, r5, 0
	adds r1, r4, 0
	movs r2, 0x64
	bl memcpy
	adds r4, 0x64
	adds r5, 0x64
	cmp r4, r6
	ble _081A4C84
	adds r0, r7, 0
	bl Free
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A4C30

	thumb_func_start sub_81A4CB0
sub_81A4CB0: @ 81A4CB0
	push {lr}
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 17
	ands r0, r1
	cmp r0, 0
	beq _081A4CD0
	bl sub_8185EA0
	lsls r0, 24
	lsrs r0, 24
	b _081A4CDA
	.pool
_081A4CD0:
	ldr r0, =0x000040cf
	bl VarGet
	lsls r0, 16
	lsrs r0, 16
_081A4CDA:
	ldr r2, =gTrainers
	ldr r1, =gUnknown_08611D30
	lsls r0, 1
	adds r0, r1
	ldrh r1, [r0]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 3
	adds r0, r2
	ldrb r0, [r0, 0x3]
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_81A4CB0

	thumb_func_start sub_81A4D00
sub_81A4D00: @ 81A4D00
	push {lr}
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 17
	ands r0, r1
	cmp r0, 0
	beq _081A4D20
	bl sub_8185EA0
	lsls r0, 24
	lsrs r0, 24
	b _081A4D2A
	.pool
_081A4D20:
	ldr r0, =0x000040cf
	bl VarGet
	lsls r0, 16
	lsrs r0, 16
_081A4D2A:
	ldr r2, =gTrainers
	ldr r1, =gUnknown_08611D30
	lsls r0, 1
	adds r0, r1
	ldrh r1, [r0]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 3
	adds r0, r2
	ldrb r0, [r0, 0x1]
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_81A4D00

	thumb_func_start sub_81A4D50
sub_81A4D50: @ 81A4D50
	push {r4,lr}
	adds r4, r0, 0
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 17
	ands r0, r1
	cmp r0, 0
	beq _081A4D70
	bl sub_8185EA0
	lsls r0, 24
	lsrs r0, 24
	b _081A4D7A
	.pool
_081A4D70:
	ldr r0, =0x000040cf
	bl VarGet
	lsls r0, 16
	lsrs r0, 16
_081A4D7A:
	movs r3, 0
	lsls r0, 1
	ldr r2, =gTrainers
	ldr r1, =gUnknown_08611D30
	adds r0, r1
	ldrh r1, [r0]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 3
	adds r2, 0x4
	adds r2, r0, r2
_081A4D90:
	adds r1, r4, r3
	ldrb r0, [r2]
	strb r0, [r1]
	adds r2, 0x1
	adds r3, 0x1
	cmp r3, 0x6
	ble _081A4D90
	adds r1, r4, r3
	movs r0, 0xFF
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A4D50

	thumb_func_start sub_81A4DB8
sub_81A4DB8: @ 81A4DB8
	push {lr}
	ldr r0, =0x000040cf
	bl VarGet
	lsls r0, 16
	ldr r1, =gUnknown_08611C8C
	lsrs r0, 15
	adds r1, 0x1
	adds r0, r1
	ldrb r0, [r0]
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_81A4DB8

	thumb_func_start sub_81A4DD8
sub_81A4DD8: @ 81A4DD8
	push {lr}
	ldr r0, =0x000040cf
	bl VarGet
	lsls r0, 16
	ldr r2, =0x00004010
	ldr r1, =gUnknown_08611C8C
	lsrs r0, 15
	adds r0, r1
	ldrb r1, [r0]
	adds r0, r2, 0
	bl VarSet
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A4DD8

	thumb_func_start sub_81A4E04
sub_81A4E04: @ 81A4E04
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x44
	ldr r0, =0x000040cf
	bl VarGet
	lsls r0, 16
	lsrs r0, 16
	str r0, [sp, 0x20]
	bl sub_81A513C
	str r0, [sp, 0x24]
	ldr r0, [sp, 0x20]
	cmp r0, 0x1
	bne _081A4E44
	ldr r0, =0x000003fe
	bl sub_81953A0
	lsls r0, 16
	lsrs r0, 16
	bl sub_818FC78
	adds r4, r0, 0
	b _081A4E46
	.pool
_081A4E44:
	movs r4, 0x7
_081A4E46:
	bl zero_enemy_party_data
	movs r1, 0
	str r1, [sp, 0x18]
	bl sub_8165C40
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp, 0x1C]
	movs r2, 0
	str r2, [sp, 0x14]
_081A4E5C:
	movs r0, 0x1
	ands r0, r4
	asrs r4, 1
	str r4, [sp, 0x30]
	ldr r3, [sp, 0x14]
	adds r3, 0x1
	str r3, [sp, 0x28]
	cmp r0, 0
	bne _081A4E70
	b _081A4FC4
_081A4E70:
	ldr r4, [sp, 0x14]
	lsls r4, 2
	mov r9, r4
	ldr r0, [sp, 0x24]
	lsls r0, 4
	str r0, [sp, 0x38]
	ldr r1, [sp, 0x20]
	lsls r1, 4
	str r1, [sp, 0x34]
	ldr r2, [sp, 0x1C]
	lsls r2, 24
	str r2, [sp, 0x3C]
	ldr r3, [sp, 0x18]
	adds r3, 0x1
	str r3, [sp, 0x2C]
	ldr r0, [sp, 0x14]
	add r0, r9
	lsls r0, 2
	mov r8, r0
_081A4E96:
	bl Random
	adds r4, r0, 0
	bl Random
	lsls r4, 16
	lsrs r7, r4, 16
	lsls r0, 16
	orrs r7, r0
	ldr r0, =0x0000ef2a
	adds r1, r7, 0
	bl sub_806EBD0
	lsls r0, 24
	cmp r0, 0
	bne _081A4E96
	ldr r4, [sp, 0x38]
	ldr r1, [sp, 0x24]
	subs r0, r4, r1
	lsls r5, r0, 2
	mov r2, r8
	adds r4, r2, r5
	ldr r3, [sp, 0x34]
	ldr r1, [sp, 0x20]
	subs r0, r3, r1
	lsls r6, r0, 3
	adds r4, r6
	ldr r2, =gUnknown_0861156C
	adds r4, r2
	adds r0, r7, 0
	bl GetNatureFromPersonality
	ldrb r1, [r4, 0x5]
	lsls r0, 24
	lsrs r0, 24
	cmp r1, r0
	bne _081A4E96
	ldr r4, [sp, 0x18]
	movs r0, 0x64
	adds r3, r4, 0
	muls r3, r0
	mov r8, r3
	ldr r1, =gEnemyParty
	add r1, r8
	mov r10, r1
	ldr r4, [sp, 0x14]
	add r4, r9
	lsls r4, 2
	adds r0, r4, r5
	adds r0, r6
	ldr r2, =gUnknown_0861156C
	adds r0, r2
	ldrh r1, [r0]
	ldr r3, [sp, 0x3C]
	lsrs r2, r3, 24
	ldrb r3, [r0, 0x4]
	movs r0, 0x1
	str r0, [sp]
	str r7, [sp, 0x4]
	str r0, [sp, 0x8]
	ldr r0, =0x0000ef2a
	str r0, [sp, 0xC]
	mov r0, r10
	bl create_pokemon_set_level
	ldr r0, =gUnknown_0861156C
	adds r5, r0
	adds r5, r6, r5
	adds r4, r5, r4
	adds r4, 0x2
	mov r0, r10
	movs r1, 0xC
	adds r2, r4, 0
	bl pokemon_setattr
	movs r7, 0
	mov r6, r8
	ldr r3, =gEnemyParty
_081A4F32:
	adds r1, r7, 0
	adds r1, 0x1A
	ldr r0, [sp, 0x14]
	add r0, r9
	lsls r4, r0, 2
	adds r2, r5, r4
	adds r0, r7, 0x6
	adds r2, r0
	adds r0, r6, r3
	str r3, [sp, 0x40]
	bl pokemon_setattr
	adds r7, 0x1
	ldr r3, [sp, 0x40]
	cmp r7, 0x5
	ble _081A4F32
	movs r1, 0xFF
	add r0, sp, 0x10
	strb r1, [r0]
	movs r7, 0
	ldr r1, [sp, 0x18]
	movs r2, 0x64
	adds r6, r1, 0
	muls r6, r2
	ldr r3, =gUnknown_08611578
	mov r8, r3
	ldr r3, =gEnemyParty
	adds r5, r4, 0
_081A4F6A:
	ldr r4, [sp, 0x38]
	ldr r0, [sp, 0x24]
	subs r1, r4, r0
	lsls r1, 2
	adds r1, r5, r1
	ldr r2, [sp, 0x34]
	ldr r4, [sp, 0x20]
	subs r0, r2, r4
	lsls r0, 3
	adds r1, r0
	add r1, r8
	ldrh r4, [r1]
	lsls r2, r7, 24
	lsrs r2, 24
	adds r0, r6, r3
	adds r1, r4, 0
	str r3, [sp, 0x40]
	bl sub_80691F4
	ldr r3, [sp, 0x40]
	cmp r4, 0xDA
	bne _081A4F9C
	movs r1, 0
	add r0, sp, 0x10
	strb r1, [r0]
_081A4F9C:
	adds r5, 0x2
	adds r7, 0x1
	cmp r7, 0x3
	ble _081A4F6A
	ldr r0, [sp, 0x18]
	movs r1, 0x64
	adds r4, r0, 0
	muls r4, r1
	ldr r0, =gEnemyParty
	adds r4, r0
	adds r0, r4, 0
	movs r1, 0x20
	add r2, sp, 0x10
	bl pokemon_setattr
	adds r0, r4, 0
	bl pokemon_calc_effective_stats
	ldr r2, [sp, 0x2C]
	str r2, [sp, 0x18]
_081A4FC4:
	ldr r4, [sp, 0x30]
	ldr r3, [sp, 0x28]
	str r3, [sp, 0x14]
	cmp r3, 0x2
	bgt _081A4FD0
	b _081A4E5C
_081A4FD0:
	add sp, 0x44
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A4E04

	thumb_func_start sub_81A4FF0
sub_81A4FF0: @ 81A4FF0
	push {r4,r5,lr}
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	ldr r0, =0x000040cf
	bl VarGet
	adds r5, r0, 0
	lsls r5, 16
	lsrs r5, 16
	bl sub_81A513C
	ldr r3, =gUnknown_0861156C
	lsls r2, r4, 2
	adds r2, r4
	lsls r1, r0, 4
	subs r1, r0
	adds r1, r2
	lsls r1, 2
	lsls r0, r5, 4
	subs r0, r5
	lsls r0, 3
	adds r1, r0
	adds r1, r3
	ldrh r0, [r1]
	pop {r4,r5}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_81A4FF0

	thumb_func_start sub_81A5030
sub_81A5030: @ 81A5030
	push {lr}
	lsls r0, 24
	ldr r2, =gUnknown_02038BCA
	ldr r3, =0x000003fe
	adds r1, r3, 0
	strh r1, [r2]
	ldr r2, =0x00004010
	ldr r1, =gUnknown_08611C8C
	lsrs r0, 23
	adds r0, r1
	ldrb r1, [r0]
	adds r0, r2, 0
	bl VarSet
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A5030

	thumb_func_start sub_81A5060
sub_81A5060: @ 81A5060
	push {r4-r6,lr}
	adds r6, r0, 0
	adds r4, r1, 0
	lsls r6, 24
	lsrs r6, 24
	lsls r4, 24
	lsrs r4, 24
	ldr r0, =0x000040cf
	bl VarGet
	adds r5, r0, 0
	lsls r5, 16
	lsrs r5, 16
	bl sub_81A513C
	ldr r2, =gUnknown_0861156C
	lsls r4, 1
	lsls r1, r6, 2
	adds r1, r6
	lsls r1, 2
	adds r4, r1
	lsls r1, r0, 4
	subs r1, r0
	lsls r1, 2
	adds r4, r1
	lsls r0, r5, 4
	subs r0, r5
	lsls r0, 3
	adds r4, r0
	adds r2, 0xC
	adds r4, r2
	ldrh r0, [r4]
	pop {r4-r6}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_81A5060

	thumb_func_start sub_81A50B0
sub_81A50B0: @ 81A50B0
	push {r4,r5,lr}
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	ldr r0, =0x000040cf
	bl VarGet
	adds r5, r0, 0
	lsls r5, 16
	lsrs r5, 16
	bl sub_81A513C
	ldr r3, =gUnknown_0861156C
	lsls r2, r4, 2
	adds r2, r4
	lsls r1, r0, 4
	subs r1, r0
	adds r1, r2
	lsls r1, 2
	lsls r0, r5, 4
	subs r0, r5
	lsls r0, 3
	adds r1, r0
	adds r1, r3
	ldrb r0, [r1, 0x5]
	pop {r4,r5}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_81A50B0

	thumb_func_start sub_81A50F0
sub_81A50F0: @ 81A50F0
	push {r4-r6,lr}
	adds r6, r0, 0
	adds r4, r1, 0
	lsls r6, 24
	lsrs r6, 24
	lsls r4, 24
	lsrs r4, 24
	ldr r0, =0x000040cf
	bl VarGet
	adds r5, r0, 0
	lsls r5, 16
	lsrs r5, 16
	bl sub_81A513C
	ldr r2, =gUnknown_0861156C
	lsls r1, r6, 2
	adds r1, r6
	lsls r1, 2
	adds r4, r1
	lsls r1, r0, 4
	subs r1, r0
	lsls r1, 2
	adds r4, r1
	lsls r0, r5, 4
	subs r0, r5
	lsls r0, 3
	adds r4, r0
	adds r2, 0x6
	adds r4, r2
	ldrb r0, [r4]
	pop {r4-r6}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_81A50F0

	thumb_func_start sub_81A513C
sub_81A513C: @ 81A513C
	push {r4,r5,lr}
	ldr r0, =0x000040cf
	bl VarGet
	lsls r0, 16
	lsrs r5, r0, 16
	lsls r0, r5, 24
	lsrs r0, 24
	bl sub_81A3B30
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x2
	bne _081A51A0
	bl sub_81A39C4
	lsls r0, 16
	ldr r3, =gUnknown_08611550
	lsls r2, r5, 2
	adds r1, r3, 0x3
	adds r1, r2, r1
	lsrs r0, 16
	ldrb r1, [r1]
	adds r1, r0, r1
	adds r0, r2, r3
	ldrb r0, [r0]
	cmp r1, r0
	bne _081A5180
	movs r4, 0
	b _081A51A0
	.pool
_081A5180:
	adds r0, r3, 0x1
	adds r0, r2, r0
	ldrb r0, [r0]
	cmp r1, r0
	beq _081A519E
	cmp r1, r0
	ble _081A51A0
	subs r0, r1, r0
	adds r1, r3, 0x2
	adds r1, r2, r1
	ldrb r1, [r1]
	bl __modsi3
	cmp r0, 0
	bne _081A51A0
_081A519E:
	movs r4, 0x1
_081A51A0:
	adds r0, r4, 0
	pop {r4,r5}
	pop {r1}
	bx r1
	thumb_func_end sub_81A513C

	thumb_func_start sub_81A51A8
sub_81A51A8: @ 81A51A8
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r5, r0, 24
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 17
	ands r0, r1
	cmp r0, 0
	beq _081A51D4
	bl sub_8185EA0
	lsls r0, 24
	lsrs r4, r0, 24
	bl sub_8185EAC
	lsls r0, 24
	lsrs r1, r0, 24
	b _081A51E4
	.pool
_081A51D4:
	ldr r0, =0x000040cf
	bl VarGet
	lsls r0, 16
	lsrs r4, r0, 16
	bl sub_81A513C
	adds r1, r0, 0
_081A51E4:
	cmp r5, 0
	beq _081A51F4
	cmp r5, 0x1
	beq _081A5214
	b _081A5228
	.pool
_081A51F4:
	ldr r0, =gStringVar4
	ldr r2, =gUnknown_08611DB0
	lsls r1, 2
	adds r1, r2
	ldr r2, [r1]
	lsls r1, r4, 2
	adds r1, r2
	ldr r1, [r1]
	bl StringCopy
	b _081A5228
	.pool
_081A5214:
	ldr r0, =gStringVar4
	ldr r2, =gUnknown_08611DB8
	lsls r1, 2
	adds r1, r2
	ldr r2, [r1]
	lsls r1, r4, 2
	adds r1, r2
	ldr r1, [r1]
	bl StringCopy
_081A5228:
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A51A8

	thumb_func_start sub_81A5238
sub_81A5238: @ 81A5238
	push {lr}
	ldr r1, =gUnknown_08611F84
	ldr r0, =gUnknown_020375E0
	ldrh r0, [r0]
	lsls r0, 2
	adds r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A5238

	thumb_func_start sub_81A5258
sub_81A5258: @ 81A5258
	push {r4-r6,lr}
	sub sp, 0x4
	adds r5, r0, 0
	movs r6, 0
	ldrb r0, [r5]
	cmp r0, 0xA
	bls _081A5268
	b _081A5544
_081A5268:
	lsls r0, 2
	ldr r1, =_081A5278
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_081A5278:
	.4byte _081A52A4
	.4byte _081A52F4
	.4byte _081A531C
	.4byte _081A53B4
	.4byte _081A540C
	.4byte _081A542C
	.4byte _081A544C
	.4byte _081A5490
	.4byte _081A553E
	.4byte _081A54D4
	.4byte _081A5520
_081A52A4:
	ldr r0, =0x7fffff1c
	movs r1, 0
	str r1, [sp]
	movs r1, 0x4
	movs r2, 0
	movs r3, 0x8
	bl BeginNormalPaletteFade
	ldr r1, =0x00003f3e
	movs r0, 0x48
	bl SetGpuReg
	ldr r0, =gUnknown_08611F74
	bl LoadCompressedObjectPic
	ldr r0, =gUnknown_08D855E8
	movs r1, 0xF8
	lsls r1, 1
	movs r2, 0x20
	bl LoadCompressedPalette
	ldr r1, =gUnknown_02022E24
	movs r0, 0xFF
	strh r0, [r1]
	ldr r1, =gUnknown_02022E26
	movs r0, 0x70
	strh r0, [r1]
	b _081A553E
	.pool
_081A52F4:
	ldr r0, =gPaletteFade
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0
	beq _081A5306
	b _081A5544
_081A5306:
	str r0, [sp]
	movs r0, 0x5
	movs r1, 0
	movs r2, 0x18
	movs r3, 0xD
	bl sub_8056A3C
	b _081A553E
	.pool
_081A531C:
	bl IsDma3ManagerBusyWithBgCopy
	lsls r0, 24
	cmp r0, 0
	beq _081A5328
	b _081A5544
_081A5328:
	ldr r1, =gUnknown_02022F58
	movs r2, 0xA1
	strb r2, [r1]
	movs r0, 0xFF
	strb r0, [r1, 0x1]
	ldr r1, =gUnknown_02022F68
	strb r2, [r1]
	movs r0, 0x1
	negs r0, r0
	strb r0, [r1, 0x1]
	ldr r0, =gUnknown_085CCDB2
	bl get_battle_strings_
	ldr r4, =gUnknown_02022E2C
	adds r0, r4, 0
	movs r1, 0xF
	bl battle_show_message_maybe
	ldr r0, =gUnknown_085CCDB5
	movs r1, 0x10
	bl battle_show_message_maybe
	ldr r0, =gUnknown_085CCDB8
	bl get_battle_strings_
	adds r0, r4, 0
	movs r1, 0x11
	bl battle_show_message_maybe
	ldr r0, =gUnknown_085CCDBB
	movs r1, 0x12
	bl battle_show_message_maybe
	ldr r0, =gUnknown_085CCDC0
	movs r1, 0x13
	bl battle_show_message_maybe
	ldr r0, =gUnknown_085CCDC6
	movs r1, 0x14
	bl battle_show_message_maybe
	ldr r0, =gUnknown_085CCDCB
	bl get_battle_strings_
	adds r0, r4, 0
	movs r1, 0x15
	bl battle_show_message_maybe
	b _081A553E
	.pool
_081A53B4:
	bl IsDma3ManagerBusyWithBgCopy
	lsls r0, 24
	cmp r0, 0
	beq _081A53C0
	b _081A5544
_081A53C0:
	ldr r1, =0x00003f3f
	movs r0, 0x48
	bl SetGpuReg
	movs r6, 0x80
	lsls r6, 15
	movs r4, 0x7
_081A53CE:
	asrs r1, r6, 16
	ldr r0, =gUnknown_08611F5C
	movs r2, 0x54
	movs r3, 0
	bl AddObjectToFront
	adds r1, r0, 0
	lsls r1, 24
	lsrs r1, 24
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	ldr r1, =gUnknown_02020630
	adds r0, r1
	movs r1, 0x3
	bl StartObjectImageAnim
	movs r0, 0x80
	lsls r0, 13
	adds r6, r0
	subs r4, 0x1
	cmp r4, 0
	bge _081A53CE
	b _081A553C
	.pool
_081A540C:
	ldr r0, =0x00000109
	bl audio_play
	movs r0, 0x50
	movs r1, 0x28
	movs r2, 0
	movs r3, 0
	bl sub_81A5558
	movs r0, 0xA0
	movs r1, 0x28
	movs r2, 0
	b _081A5464
	.pool
_081A542C:
	ldr r0, =0x00000109
	bl audio_play
	movs r0, 0x50
	movs r1, 0x38
	movs r2, 0x1
	movs r3, 0
	bl sub_81A5558
	movs r0, 0xA0
	movs r1, 0x38
	movs r2, 0x1
	b _081A5464
	.pool
_081A544C:
	ldr r0, =0x00000109
	bl audio_play
	movs r0, 0x50
	movs r1, 0x48
	movs r2, 0x2
	movs r3, 0
	bl sub_81A5558
	movs r0, 0xA0
	movs r1, 0x48
	movs r2, 0x2
_081A5464:
	movs r3, 0x1
	bl sub_81A5558
	ldr r0, =gUnknown_085CCDCB
	bl get_battle_strings_
	ldr r0, =gUnknown_02022E2C
	movs r1, 0x15
	bl battle_show_message_maybe
	ldrb r0, [r5]
	adds r0, 0x1
	strb r0, [r5]
	movs r6, 0x1
	b _081A5544
	.pool
_081A5490:
	movs r0, 0x85
	lsls r0, 1
	bl audio_play
	ldr r0, =gUnknown_02022F58
	ldr r1, =gUnknown_02022F68
	ldrb r2, [r0]
	ldrb r0, [r1]
	cmp r2, r0
	bls _081A54BC
	movs r6, 0x2
	ldr r1, =gUnknown_02024474
	movs r0, 0
	strb r0, [r1, 0x17]
	b _081A553E
	.pool
_081A54BC:
	cmp r2, r0
	bcs _081A54D0
	movs r6, 0x3
	ldr r1, =gUnknown_02024474
	movs r0, 0x1
	strb r0, [r1, 0x17]
	b _081A553E
	.pool
_081A54D0:
	movs r6, 0x4
	b _081A553E
_081A54D4:
	ldr r1, =0x00003f3e
	movs r0, 0x48
	bl SetGpuReg
	movs r0, 0x1
	str r0, [sp]
	movs r0, 0x5
	movs r1, 0
	movs r2, 0x18
	movs r3, 0xD
	bl sub_8056A3C
	movs r0, 0
	bl CopyBgTilemapBufferToVram
	ldr r0, =gMPlay_BGM
	ldr r1, =0x0000ffff
	movs r2, 0x80
	lsls r2, 1
	bl m4aMPlayVolumeControl
	ldr r0, =0x7fffff1c
	movs r1, 0
	str r1, [sp]
	movs r1, 0x4
	movs r2, 0x8
	movs r3, 0
	bl BeginNormalPaletteFade
	b _081A553E
	.pool
_081A5520:
	ldr r0, =gPaletteFade
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	bne _081A5544
	ldr r1, =0x00003f3f
	movs r0, 0x48
	bl SetGpuReg
	movs r0, 0xFA
	lsls r0, 2
	bl FreeObjectTilesByTag
_081A553C:
	movs r6, 0x1
_081A553E:
	ldrb r0, [r5]
	adds r0, 0x1
	strb r0, [r5]
_081A5544:
	adds r0, r6, 0
	add sp, 0x4
	pop {r4-r6}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_81A5258

	thumb_func_start sub_81A5558
sub_81A5558: @ 81A5558
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x4
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp]
	lsls r1, 24
	lsrs r1, 24
	mov r10, r1
	lsls r2, 24
	lsrs r2, 24
	mov r9, r2
	lsls r3, 24
	lsrs r7, r3, 24
	movs r6, 0
	movs r1, 0
	ldr r0, =gUnknown_0202449C
	ldr r0, [r0]
	movs r3, 0xA6
	lsls r3, 2
	adds r4, r0, r3
	ldr r5, =0x0000029a
	adds r3, r0, r5
	adds r5, 0x2
	adds r5, r0
	mov r8, r5
	cmp r2, 0x1
	beq _081A55C4
	cmp r2, 0x1
	bgt _081A55A8
	cmp r2, 0
	beq _081A55B0
	b _081A5612
	.pool
_081A55A8:
	mov r0, r9
	cmp r0, 0x2
	beq _081A55D8
	b _081A5612
_081A55B0:
	adds r0, r4, r7
	movs r6, 0
	ldrsb r6, [r0, r6]
	movs r1, 0x1
	adds r0, r7, 0
	eors r0, r1
	adds r0, r4, r0
	movs r1, 0
	ldrsb r1, [r0, r1]
	b _081A5612
_081A55C4:
	adds r0, r3, r7
	movs r6, 0
	ldrsb r6, [r0, r6]
	movs r1, 0x1
	adds r0, r7, 0
	eors r0, r1
	adds r0, r3, r0
	movs r1, 0
	ldrsb r1, [r0, r1]
	b _081A5612
_081A55D8:
	ldr r3, =gBattleMons
	mov r9, r3
	movs r5, 0x58
	adds r0, r7, 0
	muls r0, r5
	add r0, r9
	ldrh r0, [r0, 0x28]
	movs r4, 0x64
	muls r0, r4
	lsls r1, r7, 1
	add r1, r8
	ldrh r1, [r1]
	bl __divsi3
	adds r6, r0, 0
	movs r0, 0x1
	adds r1, r7, 0
	eors r1, r0
	adds r0, r1, 0
	muls r0, r5
	add r0, r9
	ldrh r0, [r0, 0x28]
	muls r0, r4
	lsls r1, 1
	add r1, r8
	ldrh r1, [r1]
	bl __divsi3
	adds r1, r0, 0
_081A5612:
	cmp r6, r1
	ble _081A5638
	movs r4, 0x2
	cmp r7, 0
	beq _081A5628
	ldr r1, =gUnknown_02022F68
	b _081A562A
	.pool
_081A5628:
	ldr r1, =gUnknown_02022F58
_081A562A:
	ldrb r0, [r1]
	adds r0, 0x2
	strb r0, [r1]
	b _081A565E
	.pool
_081A5638:
	cmp r6, r1
	bne _081A565C
	movs r4, 0x1
	cmp r7, 0
	beq _081A564C
	ldr r1, =gUnknown_02022F68
	b _081A564E
	.pool
_081A564C:
	ldr r1, =gUnknown_02022F58
_081A564E:
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	b _081A565E
	.pool
_081A565C:
	movs r4, 0
_081A565E:
	ldr r0, =gUnknown_08611F5C
	ldr r1, [sp]
	mov r2, r10
	movs r3, 0
	bl AddObjectToFront
	lsls r0, 24
	lsrs r6, r0, 24
	lsls r0, r6, 4
	adds r0, r6
	lsls r0, 2
	ldr r1, =gUnknown_02020630
	adds r0, r1
	adds r1, r4, 0
	bl StartObjectImageAnim
	add sp, 0x4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A5558

	thumb_func_start sub_81A5698
sub_81A5698: @ 81A5698
	push {lr}
	adds r1, r0, 0
	ldr r0, =gUnknown_02024332
	ldrb r0, [r0]
	cmp r0, 0x8
	bls _081A56AA
	adds r0, r1, 0
	bl RemoveObjectAndFreeTiles
_081A56AA:
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A5698

	thumb_func_start sub_81A56B4
sub_81A56B4: @ 81A56B4
	ldr r0, =gUnknown_0202449C
	ldr r2, [r0]
	movs r0, 0xA6
	lsls r0, 2
	adds r1, r2, r0
	adds r0, 0x2
	adds r3, r2, r0
	adds r0, 0x2
	adds r2, r0
	movs r0, 0
	strb r0, [r1]
	strb r0, [r1, 0x1]
	strb r0, [r3]
	strb r0, [r3, 0x1]
	ldr r0, =gBattleMons
	ldrh r1, [r0, 0x28]
	strh r1, [r2]
	adds r0, 0x80
	ldrh r0, [r0]
	strh r0, [r2, 0x2]
	bx lr
	.pool
	thumb_func_end sub_81A56B4

	thumb_func_start sub_81A56E8
sub_81A56E8: @ 81A56E8
	lsls r0, 24
	lsrs r0, 24
	ldr r1, =gUnknown_0202449C
	ldr r1, [r1]
	movs r2, 0xA6
	lsls r2, 2
	adds r1, r2
	adds r1, r0
	ldr r2, =gBattleArenaMoveMindRatings
	ldr r0, =gUnknown_020241EA
	ldrh r0, [r0]
	adds r0, r2
	ldrb r0, [r0]
	ldrb r2, [r1]
	adds r0, r2
	strb r0, [r1]
	bx lr
	.pool
	thumb_func_end sub_81A56E8

	thumb_func_start sub_81A5718
sub_81A5718: @ 81A5718
	push {r4-r6,lr}
	lsls r0, 24
	lsrs r3, r0, 24
	adds r6, r3, 0
	ldr r0, =gUnknown_0202449C
	ldr r2, [r0]
	ldr r0, =0x0000029a
	adds r5, r2, r0
	ldr r0, =gUnknown_02024280
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 18
	ands r0, r1
	cmp r0, 0
	beq _081A57DA
	ldr r0, =0x000002a2
	adds r4, r2, r0
	ldrb r2, [r4]
	ldr r0, =gBitTable
	lsls r1, r3, 2
	adds r1, r0
	ldr r1, [r1]
	adds r0, r2, 0
	ands r0, r1
	cmp r0, 0
	beq _081A576C
	bics r2, r1
	strb r2, [r4]
	adds r1, r5, r3
	ldrb r0, [r1]
	subs r0, 0x2
	b _081A57D8
	.pool
_081A576C:
	ldr r0, =gBattleMoveFlags
	ldrb r1, [r0]
	movs r0, 0x29
	ands r0, r1
	cmp r0, 0
	beq _081A5798
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _081A5788
	ldr r0, =gUnknown_02024332
	ldrb r0, [r0, 0x6]
	cmp r0, 0x1
	beq _081A57DA
_081A5788:
	adds r1, r5, r3
	ldrb r0, [r1]
	subs r0, 0x2
	b _081A57D8
	.pool
_081A5798:
	movs r0, 0x6
	ands r0, r1
	cmp r0, 0x6
	bne _081A57A4
	adds r1, r5, r3
	b _081A57D4
_081A57A4:
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _081A57B4
	adds r1, r5, r3
	ldrb r0, [r1]
	adds r0, 0x2
	b _081A57D8
_081A57B4:
	movs r0, 0x4
	ands r0, r1
	cmp r0, 0
	beq _081A57C4
	adds r1, r5, r3
	ldrb r0, [r1]
	subs r0, 0x1
	b _081A57D8
_081A57C4:
	ldr r0, =gUnknown_0202433C
	lsls r1, r6, 4
	adds r1, r0
	ldrb r0, [r1]
	lsls r0, 31
	cmp r0, 0
	bne _081A57DA
	adds r1, r5, r6
_081A57D4:
	ldrb r0, [r1]
	adds r0, 0x1
_081A57D8:
	strb r0, [r1]
_081A57DA:
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A5718

	thumb_func_start sub_81A57E4
sub_81A57E4: @ 81A57E4
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	lsls r1, 16
	lsrs r1, 16
	adds r2, r1, 0
	ldr r0, =gUnknown_0202449C
	ldr r0, [r0]
	ldr r5, =0x0000029a
	adds r3, r0, r5
	movs r0, 0x99
	lsls r0, 1
	cmp r1, r0
	bgt _081A582A
	subs r0, 0x1
	cmp r1, r0
	bge _081A585C
	cmp r1, 0xC5
	bgt _081A581C
	cmp r1, 0xC3
	bge _081A585C
	cmp r1, 0x77
	beq _081A585C
	b _081A5864
	.pool
_081A581C:
	cmp r1, 0xC7
	blt _081A5864
	cmp r1, 0xCC
	ble _081A585C
	cmp r1, 0xCE
	beq _081A585C
	b _081A5864
_081A582A:
	ldr r0, =0x00000147
	cmp r1, r0
	beq _081A585C
	cmp r1, r0
	bgt _081A5848
	subs r0, 0x12
	cmp r1, r0
	beq _081A585C
	adds r0, 0x2
	cmp r1, r0
	beq _081A585C
	b _081A5864
	.pool
_081A5848:
	movs r0, 0xAD
	lsls r0, 1
	cmp r2, r0
	blt _081A5864
	adds r0, 0x1
	cmp r2, r0
	ble _081A585C
	adds r0, 0x3
	cmp r2, r0
	bne _081A5864
_081A585C:
	adds r1, r3, r4
	ldrb r0, [r1]
	subs r0, 0x3
	strb r0, [r1]
_081A5864:
	pop {r4,r5}
	pop {r0}
	bx r0
	thumb_func_end sub_81A57E4

	thumb_func_start sub_81A586C
sub_81A586C: @ 81A586C
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r0, 24
	ldr r1, =gUnknown_0202449C
	ldr r3, [r1]
	movs r1, 0xA7
	lsls r1, 2
	adds r3, r1
	lsls r2, r0, 1
	adds r2, r3
	ldr r5, =gBattleMons
	movs r4, 0x58
	adds r1, r0, 0
	muls r1, r4
	adds r1, r5
	ldrh r1, [r1, 0x28]
	strh r1, [r2]
	movs r1, 0x1
	eors r0, r1
	lsls r1, r0, 1
	adds r1, r3
	muls r0, r4
	adds r0, r5
	ldrh r2, [r0, 0x28]
	ldrh r0, [r1]
	cmp r0, r2
	bls _081A58A4
	strh r2, [r1]
_081A58A4:
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A586C

	thumb_func_start sub_81A58B4
sub_81A58B4: @ 81A58B4
	push {r4-r6,lr}
	ldr r4, =gSaveBlock2Ptr
	ldr r1, [r4]
	ldr r3, =0x00000ca9
	adds r0, r1, r3
	ldrb r0, [r0]
	lsls r0, 30
	lsrs r5, r0, 30
	ldr r0, =0x00000ca8
	adds r1, r0
	movs r2, 0
	strb r2, [r1]
	ldr r1, [r4]
	ldr r6, =0x00000cb2
	adds r0, r1, r6
	strh r2, [r0]
	adds r1, r3
	ldrb r2, [r1]
	movs r0, 0x5
	negs r0, r0
	ands r0, r2
	strb r0, [r1]
	ldr r1, [r4]
	adds r1, r3
	ldrb r2, [r1]
	movs r0, 0x9
	negs r0, r0
	ands r0, r2
	strb r0, [r1]
	cmp r5, 0
	beq _081A5914
	ldr r0, [r4]
	ldr r1, =0x00000cdc
	adds r0, r1
	ldr r2, [r0]
	movs r0, 0x80
	b _081A591E
	.pool
_081A5914:
	ldr r0, [r4]
	ldr r3, =0x00000cdc
	adds r0, r3
	ldr r2, [r0]
	movs r0, 0x40
_081A591E:
	ands r2, r0
	cmp r2, 0
	bne _081A5930
	ldr r0, [r4]
	lsls r1, r5, 1
	ldr r6, =0x00000dda
	adds r0, r6
	adds r0, r1
	strh r2, [r0]
_081A5930:
	ldr r0, =gSaveBlock1Ptr
	ldr r0, [r0]
	movs r1, 0x4
	ldrsb r1, [r0, r1]
	movs r2, 0x5
	ldrsb r2, [r0, r2]
	movs r3, 0x1
	negs r3, r3
	movs r0, 0
	bl saved_warp2_set
	ldr r1, =gUnknown_02038BCA
	movs r0, 0
	strh r0, [r1]
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A58B4

	thumb_func_start sub_81A5964
sub_81A5964: @ 81A5964
	push {r4,lr}
	ldr r0, =gSaveBlock2Ptr
	ldr r3, [r0]
	ldr r1, =0x00000ca9
	adds r0, r3, r1
	ldrb r0, [r0]
	lsls r0, 30
	lsrs r1, r0, 30
	ldr r0, =gUnknown_020375E2
	ldrh r0, [r0]
	cmp r0, 0x1
	beq _081A59B0
	cmp r0, 0x1
	bgt _081A5994
	cmp r0, 0
	beq _081A599A
	b _081A59EE
	.pool
_081A5994:
	cmp r0, 0x2
	beq _081A59C8
	b _081A59EE
_081A599A:
	ldr r0, =gUnknown_020375F0
	ldr r2, =0x00000dd8
	adds r1, r3, r2
	ldrh r1, [r1]
	strh r1, [r0]
	b _081A59EE
	.pool
_081A59B0:
	ldr r2, =gUnknown_020375F0
	lsls r1, 1
	ldr r4, =0x00000dda
	adds r0, r3, r4
	adds r0, r1
	ldrh r0, [r0]
	b _081A59EC
	.pool
_081A59C8:
	cmp r1, 0
	beq _081A59E0
	ldr r2, =gUnknown_020375F0
	ldr r1, =0x00000cdc
	adds r0, r3, r1
	ldr r0, [r0]
	movs r1, 0x80
	b _081A59EA
	.pool
_081A59E0:
	ldr r2, =gUnknown_020375F0
	ldr r4, =0x00000cdc
	adds r0, r3, r4
	ldr r0, [r0]
	movs r1, 0x40
_081A59EA:
	ands r0, r1
_081A59EC:
	strh r0, [r2]
_081A59EE:
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A5964

	thumb_func_start sub_81A59FC
sub_81A59FC: @ 81A59FC
	push {lr}
	ldr r0, =gSaveBlock2Ptr
	ldr r2, [r0]
	ldr r1, =0x00000ca9
	adds r0, r2, r1
	ldrb r0, [r0]
	lsls r0, 30
	lsrs r1, r0, 30
	ldr r0, =gUnknown_020375E2
	ldrh r0, [r0]
	cmp r0, 0x1
	beq _081A5A48
	cmp r0, 0x1
	bgt _081A5A2C
	cmp r0, 0
	beq _081A5A32
	b _081A5ABA
	.pool
_081A5A2C:
	cmp r0, 0x2
	beq _081A5A60
	b _081A5ABA
_081A5A32:
	ldr r0, =gUnknown_020375E4
	ldrh r1, [r0]
	ldr r3, =0x00000dd8
	adds r0, r2, r3
	strh r1, [r0]
	b _081A5ABA
	.pool
_081A5A48:
	lsls r1, 1
	ldr r3, =0x00000dda
	adds r0, r2, r3
	adds r0, r1
	ldr r1, =gUnknown_020375E4
	ldrh r1, [r1]
	strh r1, [r0]
	b _081A5ABA
	.pool
_081A5A60:
	cmp r1, 0
	beq _081A5A90
	ldr r0, =gUnknown_020375E4
	ldrh r0, [r0]
	cmp r0, 0
	beq _081A5A80
	ldr r1, =0x00000cdc
	adds r0, r2, r1
	ldr r1, [r0]
	movs r2, 0x80
	orrs r1, r2
	b _081A5AB8
	.pool
_081A5A80:
	ldr r3, =0x00000cdc
	adds r0, r2, r3
	ldr r1, [r0]
	movs r2, 0x81
	negs r2, r2
	b _081A5AB6
	.pool
_081A5A90:
	ldr r0, =gUnknown_020375E4
	ldrh r0, [r0]
	cmp r0, 0
	beq _081A5AAC
	ldr r1, =0x00000cdc
	adds r0, r2, r1
	ldr r1, [r0]
	movs r2, 0x40
	orrs r1, r2
	b _081A5AB8
	.pool
_081A5AAC:
	ldr r3, =0x00000cdc
	adds r0, r2, r3
	ldr r1, [r0]
	movs r2, 0x41
	negs r2, r2
_081A5AB6:
	ands r1, r2
_081A5AB8:
	str r1, [r0]
_081A5ABA:
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A59FC

	thumb_func_start sub_81A5AC4
sub_81A5AC4: @ 81A5AC4
	push {r4,lr}
	ldr r4, =gSaveBlock2Ptr
	ldr r0, [r4]
	ldr r1, =gUnknown_020375E2
	ldrh r1, [r1]
	ldr r2, =0x00000ca8
	adds r0, r2
	strb r1, [r0]
	movs r0, 0x80
	lsls r0, 7
	movs r1, 0
	bl VarSet
	ldr r1, [r4]
	ldr r0, =0x00000ca9
	adds r1, r0
	ldrb r0, [r1]
	movs r2, 0x4
	orrs r0, r2
	strb r0, [r1]
	bl sub_81A4C30
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A5AC4

	thumb_func_start sub_81A5B08
sub_81A5B08: @ 81A5B08
	push {r4,r5,lr}
	ldr r4, =gSaveBlock2Ptr
	ldr r1, [r4]
	ldr r2, =0x00000ca9
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r0, 30
	lsrs r0, 29
	ldr r2, =0x00000dda
	adds r1, r2
	adds r1, r0
	ldrh r0, [r1]
	cmp r0, 0x29
	bls _081A5B58
	bl Random
	ldr r4, [r4]
	ldr r5, =gUnknown_08611FAC
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x9
	bl __umodsi3
	lsls r0, 16
	lsrs r0, 15
	adds r0, r5
	ldrh r0, [r0]
	ldr r1, =0x00000dd8
	adds r4, r1
	b _081A5B76
	.pool
_081A5B58:
	bl Random
	ldr r4, [r4]
	ldr r5, =gUnknown_08611FA0
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x6
	bl __umodsi3
	lsls r0, 16
	lsrs r0, 15
	adds r0, r5
	ldrh r0, [r0]
	ldr r2, =0x00000dd8
	adds r4, r2
_081A5B76:
	strh r0, [r4]
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A5B08

	thumb_func_start sub_81A5B88
sub_81A5B88: @ 81A5B88
	push {r4,r5,lr}
	ldr r4, =gSaveBlock2Ptr
	ldr r0, [r4]
	ldr r1, =0x00000dd8
	adds r0, r1
	ldrh r0, [r0]
	movs r1, 0x1
	bl bag_add_item
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, 0x1
	bne _081A5BD0
	ldr r0, [r4]
	ldr r1, =0x00000dd8
	adds r0, r1
	ldrh r0, [r0]
	ldr r1, =gStringVar1
	bl itemid_get_name
	ldr r0, [r4]
	ldr r1, =0x00000dd8
	adds r0, r1
	movs r1, 0
	strh r1, [r0]
	ldr r0, =gUnknown_020375F0
	strh r5, [r0]
	b _081A5BD6
	.pool
_081A5BD0:
	ldr r1, =gUnknown_020375F0
	movs r0, 0
	strh r0, [r1]
_081A5BD6:
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A5B88

	thumb_func_start sub_81A5BE0
sub_81A5BE0: @ 81A5BE0
	push {lr}
	ldr r0, =gStringVar1
	ldr r1, =gUnknown_02038BCA
	ldrh r1, [r1]
	bl sub_8162E20
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A5BE0

	thumb_func_start sub_81A5BF8
sub_81A5BF8: @ 81A5BF8
	push {r4-r6,lr}
	mov r6, r8
	push {r6}
	sub sp, 0xC
	movs r0, 0x1B
	mov r8, r0
	movs r5, 0x7
	movs r4, 0x1
	str r4, [sp]
	movs r6, 0x6
	str r6, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r0, 0
	movs r1, 0
	movs r2, 0xFE
	movs r3, 0xE
	bl FillBgTilemapBufferRect
	str r4, [sp]
	str r6, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r0, 0
	movs r1, 0
	movs r2, 0x20
	movs r3, 0xE
	bl FillBgTilemapBufferRect
	str r4, [sp]
	str r4, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r0, 0
	movs r1, 0x31
	movs r2, 0
	movs r3, 0xE
	bl FillBgTilemapBufferRect
	str r4, [sp]
	str r4, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r0, 0
	movs r1, 0x33
	movs r2, 0x1
	movs r3, 0xE
	bl FillBgTilemapBufferRect
	mov r0, r8
	str r0, [sp]
	str r4, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r0, 0
	movs r1, 0x34
	movs r2, 0x2
	movs r3, 0xE
	bl FillBgTilemapBufferRect
	movs r0, 0x1C
	mov r8, r0
	str r4, [sp]
	str r4, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r0, 0
	movs r1, 0x35
	movs r2, 0x1C
	movs r3, 0xE
	bl FillBgTilemapBufferRect
	str r4, [sp]
	str r4, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r0, 0
	movs r1, 0x36
	movs r2, 0x1D
	movs r3, 0xE
	bl FillBgTilemapBufferRect
	str r4, [sp]
	movs r6, 0x5
	str r6, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r0, 0
	movs r1, 0x37
	movs r2, 0
	movs r3, 0xF
	bl FillBgTilemapBufferRect
	mov r0, r8
	str r0, [sp]
	str r6, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r0, 0
	movs r1, 0x39
	movs r2, 0x1
	movs r3, 0xF
	bl FillBgTilemapBufferRect
	str r4, [sp]
	str r6, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r0, 0
	movs r1, 0x3A
	movs r2, 0x1D
	movs r3, 0xF
	bl FillBgTilemapBufferRect
	ldr r1, =0x00000831
	str r4, [sp]
	str r4, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r0, 0
	movs r2, 0
	movs r3, 0x13
	bl FillBgTilemapBufferRect
	ldr r1, =0x00000833
	str r4, [sp]
	str r4, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r0, 0
	movs r2, 0x1
	movs r3, 0x13
	bl FillBgTilemapBufferRect
	ldr r1, =0x00000834
	movs r0, 0x1A
	str r0, [sp]
	str r4, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r0, 0
	movs r2, 0x2
	movs r3, 0x13
	bl FillBgTilemapBufferRect
	ldr r1, =0x00000835
	str r4, [sp]
	str r4, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r0, 0
	movs r2, 0x1C
	movs r3, 0x13
	bl FillBgTilemapBufferRect
	ldr r1, =0x00000836
	str r4, [sp]
	str r4, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r0, 0
	movs r2, 0x1D
	movs r3, 0x13
	bl FillBgTilemapBufferRect
	add sp, 0xC
	pop {r3}
	mov r8, r3
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A5BF8

	thumb_func_start sub_81A5D44
sub_81A5D44: @ 81A5D44
	push {r4-r6,lr}
	mov r6, r8
	push {r6}
	sub sp, 0xC
	movs r5, 0
	movs r4, 0x1
	str r4, [sp]
	str r4, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r0, 0
	movs r1, 0x3
	movs r2, 0
	movs r3, 0xE
	bl FillBgTilemapBufferRect
	movs r6, 0x4
	str r4, [sp]
	str r4, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r0, 0
	movs r1, 0x4
	movs r2, 0x1
	movs r3, 0xE
	bl FillBgTilemapBufferRect
	movs r0, 0x1B
	mov r8, r0
	str r0, [sp]
	str r4, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r0, 0
	movs r1, 0x5
	movs r2, 0x2
	movs r3, 0xE
	bl FillBgTilemapBufferRect
	str r4, [sp]
	str r4, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r0, 0
	movs r1, 0x6
	movs r2, 0x1C
	movs r3, 0xE
	bl FillBgTilemapBufferRect
	str r4, [sp]
	str r4, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r0, 0
	movs r1, 0x7
	movs r2, 0x1D
	movs r3, 0xE
	bl FillBgTilemapBufferRect
	str r4, [sp]
	str r6, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r0, 0
	movs r1, 0x8
	movs r2, 0
	movs r3, 0xF
	bl FillBgTilemapBufferRect
	str r4, [sp]
	str r6, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r0, 0
	movs r1, 0x9
	movs r2, 0x1
	movs r3, 0xF
	bl FillBgTilemapBufferRect
	mov r0, r8
	str r0, [sp]
	str r6, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r0, 0
	movs r1, 0xA
	movs r2, 0x2
	movs r3, 0xF
	bl FillBgTilemapBufferRect
	str r4, [sp]
	str r6, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r0, 0
	movs r1, 0xB
	movs r2, 0x1C
	movs r3, 0xF
	bl FillBgTilemapBufferRect
	str r4, [sp]
	str r6, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r0, 0
	movs r1, 0xC
	movs r2, 0x1D
	movs r3, 0xF
	bl FillBgTilemapBufferRect
	str r4, [sp]
	str r4, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r0, 0
	movs r1, 0xD
	movs r2, 0
	movs r3, 0x13
	bl FillBgTilemapBufferRect
	str r4, [sp]
	str r4, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r0, 0
	movs r1, 0xE
	movs r2, 0x1
	movs r3, 0x13
	bl FillBgTilemapBufferRect
	mov r0, r8
	str r0, [sp]
	str r4, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r0, 0
	movs r1, 0xF
	movs r2, 0x2
	movs r3, 0x13
	bl FillBgTilemapBufferRect
	str r4, [sp]
	str r4, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r0, 0
	movs r1, 0x10
	movs r2, 0x1C
	movs r3, 0x13
	bl FillBgTilemapBufferRect
	str r4, [sp]
	str r4, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r0, 0
	movs r1, 0x11
	movs r2, 0x1D
	movs r3, 0x13
	bl FillBgTilemapBufferRect
	add sp, 0xC
	pop {r3}
	mov r8, r3
	pop {r4-r6}
	pop {r0}
	bx r0
	thumb_func_end sub_81A5D44

	thumb_func_start sub_81A5E74
sub_81A5E74: @ 81A5E74
	push {lr}
	ldr r1, =gUnknown_08612120
	ldr r0, =gUnknown_020375E0
	ldrh r0, [r0]
	lsls r0, 2
	adds r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A5E74

	thumb_func_start sub_81A5E94
sub_81A5E94: @ 81A5E94
	push {r4-r7,lr}
	ldr r5, =gSaveBlock2Ptr
	ldr r0, [r5]
	ldr r4, =0x00000ca9
	adds r0, r4
	ldrb r0, [r0]
	lsls r0, 30
	lsrs r7, r0, 30
	ldr r0, =0x000040ce
	bl VarGet
	lsls r0, 16
	lsrs r6, r0, 16
	ldr r0, [r5]
	ldr r1, =0x00000ca8
	adds r0, r1
	movs r2, 0
	strb r2, [r0]
	ldr r1, [r5]
	ldr r3, =0x00000cb2
	adds r0, r1, r3
	strh r2, [r0]
	adds r1, r4
	ldrb r2, [r1]
	movs r0, 0x5
	negs r0, r0
	ands r0, r2
	strb r0, [r1]
	ldr r1, [r5]
	adds r1, r4
	ldrb r2, [r1]
	movs r0, 0x9
	negs r0, r0
	ands r0, r2
	strb r0, [r1]
	ldr r4, [r5]
	ldr r0, =0x00000cdc
	adds r3, r4, r0
	ldr r2, =gUnknown_08612164
	lsls r0, r7, 2
	lsls r1, r6, 3
	adds r0, r1
	adds r0, r2
	ldr r3, [r3]
	ldr r0, [r0]
	ands r3, r0
	cmp r3, 0
	bne _081A5F0A
	lsls r1, r7, 1
	lsls r0, r6, 2
	adds r1, r0
	ldr r2, =0x00000de2
	adds r0, r4, r2
	adds r0, r1
	strh r3, [r0]
	adds r2, 0x10
	adds r0, r4, r2
	adds r0, r1
	strh r3, [r0]
_081A5F0A:
	ldr r1, =gUnknown_03001288
	movs r0, 0
	strb r0, [r1]
	movs r2, 0
	ldr r6, =gSaveBlock1Ptr
	movs r4, 0xE7
	lsls r4, 4
	ldr r0, =0x0000ffff
	adds r3, r0, 0
_081A5F1C:
	ldr r1, [r5]
	lsls r0, r2, 1
	adds r0, r2
	lsls r0, 2
	adds r1, r0
	adds r1, r4
	ldrh r0, [r1]
	orrs r0, r3
	strh r0, [r1]
	adds r0, r2, 0x1
	lsls r0, 24
	lsrs r2, r0, 24
	cmp r2, 0x5
	bls _081A5F1C
	movs r2, 0
	ldr r4, =gUnknown_03006298
	ldr r1, =0x0000ffff
	adds r3, r1, 0
_081A5F40:
	lsls r0, r2, 1
	adds r0, r4
	ldrh r1, [r0]
	orrs r1, r3
	strh r1, [r0]
	adds r0, r2, 0x1
	lsls r0, 24
	lsrs r2, r0, 24
	cmp r2, 0x2
	bls _081A5F40
	ldr r0, [r6]
	movs r1, 0x4
	ldrsb r1, [r0, r1]
	movs r2, 0x5
	ldrsb r2, [r0, r2]
	movs r3, 0x1
	negs r3, r3
	movs r0, 0
	bl saved_warp2_set
	ldr r1, =gUnknown_02038BCA
	movs r0, 0
	strh r0, [r1]
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A5E94

	thumb_func_start sub_81A5FA8
sub_81A5FA8: @ 81A5FA8
	push {r4-r7,lr}
	ldr r7, =gSaveBlock2Ptr
	ldr r0, [r7]
	ldr r1, =0x00000ca9
	adds r0, r1
	ldrb r0, [r0]
	lsls r0, 30
	lsrs r6, r0, 30
	ldr r0, =0x000040ce
	bl VarGet
	lsls r0, 16
	lsrs r5, r0, 16
	ldr r0, =gUnknown_020375E2
	ldrh r0, [r0]
	cmp r0, 0x2
	beq _081A6000
	cmp r0, 0x2
	bgt _081A5FE4
	cmp r0, 0x1
	beq _081A5FEA
	b _081A6044
	.pool
_081A5FE4:
	cmp r0, 0x3
	beq _081A6030
	b _081A6044
_081A5FEA:
	ldr r3, =gUnknown_020375F0
	ldr r0, [r7]
	lsls r1, r6, 1
	lsls r2, r5, 2
	adds r1, r2
	ldr r2, =0x00000de2
	b _081A603C
	.pool
_081A6000:
	ldr r4, =gUnknown_020375F0
	ldr r2, [r7]
	ldr r0, =0x00000cdc
	adds r2, r0
	ldr r3, =gUnknown_08612164
	lsls r0, r6, 2
	lsls r1, r5, 3
	adds r0, r1
	adds r0, r3
	ldr r1, [r2]
	ldr r0, [r0]
	ands r1, r0
	negs r0, r1
	orrs r0, r1
	lsrs r0, 31
	strh r0, [r4]
	b _081A6044
	.pool
_081A6030:
	ldr r3, =gUnknown_020375F0
	ldr r0, [r7]
	lsls r1, r6, 1
	lsls r2, r5, 2
	adds r1, r2
	ldr r2, =0x00000df2
_081A603C:
	adds r0, r2
	adds r0, r1
	ldrh r0, [r0]
	strh r0, [r3]
_081A6044:
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A5FA8

	thumb_func_start sub_81A6054
sub_81A6054: @ 81A6054
	push {r4-r6,lr}
	ldr r6, =gSaveBlock2Ptr
	ldr r0, [r6]
	ldr r1, =0x00000ca9
	adds r0, r1
	ldrb r0, [r0]
	lsls r0, 30
	lsrs r5, r0, 30
	ldr r0, =0x000040ce
	bl VarGet
	lsls r0, 16
	lsrs r4, r0, 16
	ldr r0, =gUnknown_020375E2
	ldrh r0, [r0]
	cmp r0, 0x2
	beq _081A60B4
	cmp r0, 0x2
	bgt _081A6090
	cmp r0, 0x1
	beq _081A6096
	b _081A6128
	.pool
_081A6090:
	cmp r0, 0x3
	beq _081A6108
	b _081A6128
_081A6096:
	ldr r2, [r6]
	lsls r0, r5, 1
	lsls r1, r4, 2
	adds r0, r1
	ldr r1, =0x00000de2
	adds r2, r1
	adds r2, r0
	ldr r0, =gUnknown_020375E4
	ldrh r0, [r0]
	strh r0, [r2]
	b _081A6128
	.pool
_081A60B4:
	ldr r0, =gUnknown_020375E4
	ldrh r0, [r0]
	cmp r0, 0
	beq _081A60E4
	ldr r2, [r6]
	ldr r0, =0x00000cdc
	adds r2, r0
	ldr r3, =gUnknown_08612164
	lsls r1, r5, 2
	lsls r0, r4, 3
	adds r1, r0
	adds r1, r3
	ldr r0, [r2]
	ldr r1, [r1]
	orrs r0, r1
	str r0, [r2]
	b _081A6128
	.pool
_081A60E4:
	ldr r2, [r6]
	ldr r1, =0x00000cdc
	adds r2, r1
	ldr r3, =gUnknown_08612174
	lsls r1, r5, 2
	lsls r0, r4, 3
	adds r1, r0
	adds r1, r3
	ldr r0, [r2]
	ldr r1, [r1]
	ands r0, r1
	str r0, [r2]
	b _081A6128
	.pool
_081A6108:
	ldr r3, =gUnknown_03001288
	ldrb r0, [r3]
	cmp r0, 0x1
	bne _081A6128
	ldr r2, [r6]
	lsls r0, r5, 1
	lsls r1, r4, 2
	adds r0, r1
	ldr r1, =0x00000df2
	adds r2, r1
	adds r2, r0
	ldr r0, =gUnknown_020375E4
	ldrh r0, [r0]
	movs r1, 0
	strh r0, [r2]
	strb r1, [r3]
_081A6128:
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A6054

	thumb_func_start sub_81A613C
sub_81A613C: @ 81A613C
	push {r4,lr}
	ldr r4, =gSaveBlock2Ptr
	ldr r0, [r4]
	ldr r1, =gUnknown_020375E2
	ldrh r1, [r1]
	ldr r2, =0x00000ca8
	adds r0, r2
	strb r1, [r0]
	movs r0, 0x80
	lsls r0, 7
	movs r1, 0
	bl VarSet
	ldr r1, [r4]
	ldr r0, =0x00000ca9
	adds r1, r0
	ldrb r0, [r1]
	movs r2, 0x4
	orrs r0, r2
	strb r0, [r1]
	bl sub_81A4C30
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A613C

	thumb_func_start nullsub_75
nullsub_75: @ 81A6180
	bx lr
	thumb_func_end nullsub_75

	thumb_func_start nullsub_123
nullsub_123: @ 81A6184
	bx lr
	thumb_func_end nullsub_123

	thumb_func_start sub_81A6188
sub_81A6188: @ 81A6188
	push {lr}
	bl zero_player_party_data
	bl sub_819A4F8
	pop {r0}
	bx r0
	thumb_func_end sub_81A6188

	thumb_func_start sub_81A6198
sub_81A6198: @ 81A6198
	push {lr}
	bl sub_819DC00
	pop {r0}
	bx r0
	thumb_func_end sub_81A6198

	thumb_func_start sub_81A61A4
sub_81A61A4: @ 81A61A4
	ldr r1, =gUnknown_03001288
	movs r0, 0x1
	strb r0, [r1]
	bx lr
	.pool
	thumb_func_end sub_81A61A4

	thumb_func_start sub_81A61B0
sub_81A61B0: @ 81A61B0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x28
	ldr r4, =gSaveBlock2Ptr
	ldr r0, [r4]
	ldr r1, =0x00000ca9
	adds r0, r1
	ldrb r0, [r0]
	lsls r0, 30
	lsrs r0, 30
	str r0, [sp, 0x10]
	ldr r0, =0x000040ce
	bl VarGet
	lsls r0, 16
	ldr r1, [r4]
	ldr r3, [sp, 0x10]
	lsls r2, r3, 1
	lsrs r0, 14
	adds r2, r0
	ldr r6, =0x00000de2
	adds r1, r6
	adds r1, r2
	ldrh r0, [r1]
	movs r1, 0x7
	bl __udivsi3
	ldr r2, =gUnknown_0203BC88
	ldr r1, =gBattleFrontierTrainers
	str r1, [r2]
	ldr r5, =0x00000cb2
	lsls r0, 24
	str r0, [sp, 0x20]
	mov r8, r0
_081A61FA:
	ldr r0, [r4]
	adds r0, r5
	ldrb r1, [r0]
	mov r2, r8
	lsrs r0, r2, 24
	bl sub_8162548
	lsls r0, 16
	lsrs r3, r0, 16
	movs r7, 0
	ldr r1, [r4]
	adds r0, r1, r5
	ldr r6, [sp, 0x10]
	lsls r6, 24
	str r6, [sp, 0x1C]
	ldrh r0, [r0]
	cmp r7, r0
	bge _081A6244
	ldr r2, =0x00000cb4
	adds r0, r1, r2
	ldrh r0, [r0]
	ldr r6, =gSaveBlock2Ptr
	cmp r0, r3
	beq _081A6244
	ldr r1, [r6]
	ldr r6, =0x00000cb2
	adds r0, r1, r6
	ldrh r2, [r0]
	ldr r0, =0x00000cb4
	adds r1, r0
_081A6236:
	adds r1, 0x2
	adds r7, 0x1
	cmp r7, r2
	bge _081A6244
	ldrh r0, [r1]
	cmp r0, r3
	bne _081A6236
_081A6244:
	ldr r0, [r4]
	ldr r1, =0x00000cb2
	adds r0, r1
	ldr r6, =gSaveBlock2Ptr
	ldrh r0, [r0]
	cmp r7, r0
	bne _081A61FA
	ldr r0, =gUnknown_02038BCA
	strh r3, [r0]
	ldr r2, [r6]
	adds r1, r2, r1
	ldrh r0, [r1]
	cmp r0, 0x5
	bhi _081A626C
	adds r1, r0, 0
	lsls r1, 1
	ldr r4, =0x00000cb4
	adds r0, r2, r4
	adds r0, r1
	strh r3, [r0]
_081A626C:
	movs r7, 0
	mov r10, sp
	movs r6, 0
	lsls r6, 1
	str r6, [sp, 0x14]
	add r6, sp
	str r6, [sp, 0x18]
_081A627A:
	ldr r1, [sp, 0x1C]
	lsrs r0, r1, 24
	ldr r2, [sp, 0x20]
	lsrs r1, r2, 24
	movs r2, 0
	bl sub_81A6EF0
	lsls r0, 16
	lsrs r0, 16
	mov r9, r0
	ldr r4, =gUnknown_0203BC8C
	ldr r2, [r4]
	lsls r1, r0, 4
	adds r0, r1, r2
	ldrh r0, [r0]
	cmp r0, 0xC9
	beq _081A636E
	movs r3, 0
	ldr r6, =gSaveBlock2Ptr
	mov r8, r1
	adds r5, r0, 0
	ldr r1, [r6]
_081A62A6:
	movs r4, 0xE7
	lsls r4, 4
	adds r0, r1, r4
	ldrh r0, [r0]
	lsls r0, 4
	adds r0, r2
	ldrh r0, [r0]
	cmp r5, r0
	beq _081A62C0
	adds r1, 0xC
	adds r3, 0x1
	cmp r3, 0x5
	ble _081A62A6
_081A62C0:
	cmp r3, 0x6
	bne _081A636E
	ldr r6, [sp, 0x10]
	cmp r6, 0
	bne _081A62D0
	ldr r0, =0x00000351
	cmp r9, r0
	bhi _081A636E
_081A62D0:
	movs r2, 0
	adds r4, r2, r7
	cmp r2, r4
	bge _081A6302
	ldr r1, [sp, 0x18]
	ldrh r0, [r1]
	cmp r0, r5
	beq _081A6302
	adds r6, r4, 0
	ldr r3, =gUnknown_0203BC8C
	mov r12, r3
	mov r5, r8
	ldr r3, [sp, 0x14]
	add r3, sp
_081A62EC:
	adds r3, 0x2
	adds r2, 0x1
	cmp r2, r6
	bge _081A6302
	mov r1, r12
	ldr r0, [r1]
	adds r0, r5, r0
	ldrh r1, [r3]
	ldrh r0, [r0]
	cmp r1, r0
	bne _081A62EC
_081A6302:
	cmp r2, r4
	bne _081A636E
	movs r2, 0
	cmp r2, r4
	bge _081A633E
	ldr r3, =gBattleFrontierHeldItems
	mov r12, r3
	add r0, sp, 0x8
	ldr r6, [sp, 0x14]
	adds r3, r0, r6
	mov r0, r8
	str r0, [sp, 0x24]
	adds r5, r4, 0
_081A631C:
	ldrh r1, [r3]
	cmp r1, 0
	beq _081A6336
	ldr r6, =gUnknown_0203BC8C
	ldr r0, [r6]
	ldr r6, [sp, 0x24]
	adds r0, r6, r0
	ldrb r0, [r0, 0xA]
	lsls r0, 1
	add r0, r12
	ldrh r0, [r0]
	cmp r1, r0
	beq _081A633E
_081A6336:
	adds r3, 0x2
	adds r2, 0x1
	cmp r2, r5
	blt _081A631C
_081A633E:
	cmp r2, r4
	bne _081A636E
	lsls r4, r7, 1
	ldr r0, =gUnknown_0203BC8C
	ldr r1, [r0]
	add r1, r8
	ldrh r0, [r1]
	mov r2, r10
	strh r0, [r2]
	add r2, sp, 0x8
	adds r2, r4
	ldr r3, =gBattleFrontierHeldItems
	ldrb r0, [r1, 0xA]
	lsls r0, 1
	adds r0, r3
	ldrh r0, [r0]
	strh r0, [r2]
	ldr r0, =gUnknown_03006298
	adds r4, r0
	mov r3, r9
	strh r3, [r4]
	movs r4, 0x2
	add r10, r4
	adds r7, 0x1
_081A636E:
	cmp r7, 0x3
	bne _081A627A
	add sp, 0x28
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A61B0

	thumb_func_start sub_81A63B8
sub_81A63B8: @ 81A63B8
	push {lr}
	ldr r0, =gUnknown_02038BCA
	ldrh r0, [r0]
	movs r1, 0
	bl sub_8162614
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A63B8

	thumb_func_start sub_81A63CC
sub_81A63CC: @ 81A63CC
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r1, =0x00000ca9
	adds r0, r1
	ldrb r1, [r0]
	movs r0, 0x3
	ands r0, r1
	cmp r0, 0x2
	beq _081A63FC
	ldr r1, =gUnknown_0203BC8C
	ldr r0, =gBattleFrontierMons
	b _081A6400
	.pool
_081A63FC:
	ldr r1, =gUnknown_0203BC8C
	ldr r0, =gSlateportBattleTentMons
_081A6400:
	str r0, [r1]
	movs r7, 0
	ldr r2, =gSaveBlock2Ptr
	mov r8, r2
_081A6408:
	mov r0, r8
	ldr r1, [r0]
	adds r0, r7, 0x3
	lsls r4, r0, 1
	adds r4, r0
	lsls r4, 2
	adds r1, r4
	ldr r0, =gUnknown_03006298
	lsls r6, r7, 1
	adds r6, r0
	ldrh r0, [r6]
	movs r2, 0xE7
	lsls r2, 4
	adds r1, r2
	strh r0, [r1]
	movs r0, 0x64
	adds r5, r7, 0
	muls r5, r0
	ldr r0, =gEnemyParty
	adds r5, r0
	adds r0, r5, 0
	movs r1, 0x28
	movs r2, 0
	bl pokemon_getattr_encrypted
	mov r2, r8
	ldr r1, [r2]
	adds r1, r4
	ldr r2, =0x00000e78
	adds r1, r2
	strb r0, [r1]
	adds r0, r5, 0
	movs r1, 0
	movs r2, 0
	bl GetMonData
	mov r2, r8
	ldr r1, [r2]
	ldr r2, =0x00000e74
	adds r1, r2
	adds r1, r4
	str r0, [r1]
	adds r0, r5, 0
	movs r1, 0x2E
	movs r2, 0
	bl pokemon_getattr_encrypted
	mov r2, r8
	ldr r1, [r2]
	adds r1, r4
	ldr r2, =0x00000e79
	adds r1, r2
	strb r0, [r1]
	ldrh r1, [r6]
	ldr r0, =gUnknown_0203BC8C
	ldr r0, [r0]
	lsls r1, 4
	adds r1, r0
	ldrb r2, [r1, 0xA]
	lsls r2, 1
	ldr r0, =gBattleFrontierHeldItems
	adds r2, r0
	adds r0, r5, 0
	movs r1, 0xC
	bl pokemon_setattr
	adds r0, r7, 0x1
	lsls r0, 24
	lsrs r7, r0, 24
	cmp r7, 0x2
	bls _081A6408
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A63CC

	thumb_func_start sub_81A64C4
sub_81A64C4: @ 81A64C4
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x24
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r1, =0x00000ca9
	adds r2, r0, r1
	ldrb r1, [r2]
	movs r3, 0x3
	adds r0, r3, 0
	ands r0, r1
	cmp r0, 0x2
	bne _081A6500
	ldr r1, =gUnknown_0203BC8C
	ldr r0, =gSlateportBattleTentMons
	str r0, [r1]
	movs r2, 0x1E
	str r2, [sp, 0x14]
	b _081A6518
	.pool
_081A6500:
	ldr r1, =gUnknown_0203BC8C
	ldr r0, =gBattleFrontierMons
	str r0, [r1]
	ldrb r1, [r2]
	adds r0, r3, 0
	ands r0, r1
	movs r4, 0x32
	str r4, [sp, 0x14]
	cmp r0, 0
	beq _081A6518
	movs r5, 0x64
	str r5, [sp, 0x14]
_081A6518:
	ldr r0, =gUnknown_020375E2
	ldrh r0, [r0]
	cmp r0, 0x1
	bls _081A6522
	b _081A666C
_081A6522:
	bl zero_player_party_data
	movs r0, 0
	mov r8, r0
	mov r1, sp
	adds r1, 0x12
	str r1, [sp, 0x1C]
	ldr r2, =gUnknown_0203BC8C
	mov r9, r2
_081A6534:
	ldr r4, =gSaveBlock2Ptr
	ldr r2, [r4]
	mov r5, r8
	lsls r5, 1
	mov r10, r5
	mov r3, r10
	add r3, r8
	lsls r3, 2
	adds r1, r2, r3
	movs r4, 0xE7
	lsls r4, 4
	adds r0, r1, r4
	ldrh r7, [r0]
	ldr r5, =0x00000e78
	adds r1, r5
	ldrb r6, [r1]
	movs r1, 0x64
	mov r0, r8
	muls r0, r1
	ldr r1, =gPlayerParty
	adds r0, r1
	mov r4, r9
	ldr r1, [r4]
	lsls r4, r7, 4
	adds r1, r4, r1
	ldrh r1, [r1]
	movs r5, 0x1
	str r5, [sp]
	ldr r5, =0x00000e74
	adds r2, r5
	adds r2, r3
	ldr r2, [r2]
	str r2, [sp, 0x4]
	movs r2, 0
	str r2, [sp, 0x8]
	str r2, [sp, 0xC]
	ldr r2, [sp, 0x14]
	adds r3, r6, 0
	bl create_pokemon_set_level
	movs r1, 0
	mov r2, r9
	ldr r0, [r2]
	adds r4, r0
	ldrb r4, [r4, 0xB]
	mov r5, r8
	adds r5, 0x1
	str r5, [sp, 0x18]
	movs r5, 0x5
_081A6596:
	adds r0, r4, 0
	movs r2, 0x1
	ands r0, r2
	cmp r0, 0
	beq _081A65A2
	adds r1, 0x1
_081A65A2:
	lsrs r4, 1
	subs r5, 0x1
	cmp r5, 0
	bge _081A6596
	movs r0, 0xFF
	lsls r0, 1
	bl __divsi3
	add r1, sp, 0x10
	strh r0, [r1]
	movs r4, 0x1
	movs r5, 0
	lsls r7, 4
	movs r0, 0x64
	mov r6, r8
	muls r6, r0
	ldr r3, =gPlayerParty
_081A65C4:
	mov r1, r9
	ldr r0, [r1]
	adds r0, r7, r0
	ldrb r0, [r0, 0xB]
	ands r0, r4
	cmp r0, 0
	beq _081A65E2
	adds r1, r5, 0
	adds r1, 0x1A
	adds r0, r6, r3
	add r2, sp, 0x10
	str r3, [sp, 0x20]
	bl pokemon_setattr
	ldr r3, [sp, 0x20]
_081A65E2:
	lsls r0, r4, 25
	lsrs r4, r0, 24
	adds r5, 0x1
	cmp r5, 0x5
	ble _081A65C4
	movs r2, 0x64
	mov r4, r8
	muls r4, r2
	ldr r5, =gPlayerParty
	adds r0, r4, r5
	bl pokemon_calc_effective_stats
	movs r0, 0
	ldr r1, [sp, 0x1C]
	strb r0, [r1]
	movs r6, 0
_081A6602:
	mov r2, r9
	ldr r0, [r2]
	adds r0, r7, r0
	lsls r1, r6, 1
	adds r0, 0x2
	adds r0, r1
	ldrh r1, [r0]
	lsls r2, r6, 24
	lsrs r2, 24
	adds r0, r4, r5
	bl sub_81A7024
	adds r6, 0x1
	cmp r6, 0x3
	ble _081A6602
	movs r5, 0x64
	mov r4, r8
	muls r4, r5
	ldr r0, =gPlayerParty
	adds r4, r0
	adds r0, r4, 0
	movs r1, 0x20
	ldr r2, [sp, 0x1C]
	bl pokemon_setattr
	mov r1, r9
	ldr r0, [r1]
	adds r0, r7, r0
	ldrb r2, [r0, 0xA]
	lsls r2, 1
	ldr r0, =gBattleFrontierHeldItems
	adds r2, r0
	adds r0, r4, 0
	movs r1, 0xC
	bl pokemon_setattr
	mov r2, r10
	add r2, r8
	lsls r2, 2
	ldr r5, =gSaveBlock2Ptr
	ldr r0, [r5]
	adds r2, r0
	ldr r0, =0x00000e79
	adds r2, r0
	adds r0, r4, 0
	movs r1, 0x2E
	bl pokemon_setattr
	ldr r1, [sp, 0x18]
	mov r8, r1
	cmp r1, 0x2
	bgt _081A666C
	b _081A6534
_081A666C:
	ldr r0, =gUnknown_020375E2
	ldrh r0, [r0]
	cmp r0, 0
	beq _081A667A
	cmp r0, 0x2
	beq _081A667A
	b _081A67AE
_081A667A:
	movs r2, 0
	mov r8, r2
	ldr r4, =gUnknown_0203BC8C
	mov r9, r4
_081A6682:
	ldr r5, =gSaveBlock2Ptr
	ldr r3, [r5]
	mov r0, r8
	adds r0, 0x3
	lsls r2, r0, 1
	adds r2, r0
	lsls r2, 2
	adds r1, r3, r2
	movs r4, 0xE7
	lsls r4, 4
	adds r0, r1, r4
	ldrh r7, [r0]
	ldr r5, =0x00000e78
	adds r1, r5
	ldrb r6, [r1]
	movs r1, 0x64
	mov r0, r8
	muls r0, r1
	ldr r1, =gEnemyParty
	adds r0, r1
	mov r4, r9
	ldr r1, [r4]
	lsls r4, r7, 4
	adds r1, r4, r1
	ldrh r1, [r1]
	movs r5, 0x1
	str r5, [sp]
	ldr r5, =0x00000e74
	adds r3, r5
	adds r3, r2
	ldr r2, [r3]
	str r2, [sp, 0x4]
	movs r2, 0
	str r2, [sp, 0x8]
	str r2, [sp, 0xC]
	ldr r2, [sp, 0x14]
	adds r3, r6, 0
	bl create_pokemon_set_level
	movs r1, 0
	mov r2, r9
	ldr r0, [r2]
	adds r4, r0
	ldrb r4, [r4, 0xB]
	mov r5, r8
	lsls r5, 1
	mov r10, r5
	mov r0, r8
	adds r0, 0x1
	str r0, [sp, 0x18]
	movs r5, 0x5
_081A66E8:
	adds r0, r4, 0
	movs r2, 0x1
	ands r0, r2
	cmp r0, 0
	beq _081A66F4
	adds r1, 0x1
_081A66F4:
	lsrs r4, 1
	subs r5, 0x1
	cmp r5, 0
	bge _081A66E8
	add r4, sp, 0x10
	movs r0, 0xFF
	lsls r0, 1
	bl __divsi3
	strh r0, [r4]
	movs r4, 0x1
	movs r5, 0
	lsls r7, 4
	movs r0, 0x64
	mov r6, r8
	muls r6, r0
	ldr r3, =gEnemyParty
_081A6716:
	mov r1, r9
	ldr r0, [r1]
	adds r0, r7, r0
	ldrb r0, [r0, 0xB]
	ands r0, r4
	cmp r0, 0
	beq _081A6734
	adds r1, r5, 0
	adds r1, 0x1A
	adds r0, r6, r3
	add r2, sp, 0x10
	str r3, [sp, 0x20]
	bl pokemon_setattr
	ldr r3, [sp, 0x20]
_081A6734:
	lsls r0, r4, 25
	lsrs r4, r0, 24
	adds r5, 0x1
	cmp r5, 0x5
	ble _081A6716
	movs r2, 0x64
	mov r4, r8
	muls r4, r2
	ldr r5, =gEnemyParty
	adds r0, r4, r5
	bl pokemon_calc_effective_stats
	movs r6, 0
_081A674E:
	mov r1, r9
	ldr r0, [r1]
	adds r0, r7, r0
	lsls r1, r6, 1
	adds r0, 0x2
	adds r0, r1
	ldrh r1, [r0]
	lsls r2, r6, 24
	lsrs r2, 24
	adds r0, r4, r5
	bl sub_81A7024
	adds r6, 0x1
	cmp r6, 0x3
	ble _081A674E
	movs r2, 0x64
	mov r4, r8
	muls r4, r2
	ldr r0, =gEnemyParty
	adds r4, r0
	mov r5, r9
	ldr r0, [r5]
	adds r0, r7, r0
	ldrb r2, [r0, 0xA]
	lsls r2, 1
	ldr r0, =gBattleFrontierHeldItems
	adds r2, r0
	adds r0, r4, 0
	movs r1, 0xC
	bl pokemon_setattr
	mov r2, r10
	add r2, r8
	lsls r2, 2
	ldr r1, =gSaveBlock2Ptr
	ldr r0, [r1]
	adds r2, r0
	ldr r5, =0x00000e9d
	adds r2, r5
	adds r0, r4, 0
	movs r1, 0x2E
	bl pokemon_setattr
	ldr r0, [sp, 0x18]
	mov r8, r0
	cmp r0, 0x2
	bgt _081A67AE
	b _081A6682
_081A67AE:
	add sp, 0x24
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A64C4

	thumb_func_start sub_81A67EC
sub_81A67EC: @ 81A67EC
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x4C
	ldr r1, =gUnknown_0203BC88
	ldr r0, =gBattleFrontierTrainers
	str r0, [r1]
	mov r0, sp
	adds r0, 0xC
	str r0, [sp, 0x38]
	mov r1, sp
	adds r1, 0x18
	str r1, [sp, 0x3C]
	ldr r2, =gSaveBlock2Ptr
	mov r9, r2
	movs r2, 0
	adds r3, r1, 0
	adds r1, r0, 0
	mov r0, sp
	movs r4, 0x5
	mov r8, r4
_081A681A:
	strh r2, [r0]
	strh r2, [r1]
	strh r2, [r3]
	adds r3, 0x2
	adds r1, 0x2
	adds r0, 0x2
	movs r5, 0x1
	negs r5, r5
	add r8, r5
	mov r4, r8
	cmp r4, 0
	bge _081A681A
	mov r5, r9
	ldr r0, [r5]
	ldr r7, =0x00000ca9
	adds r0, r7
	ldrb r4, [r0]
	lsls r4, 30
	lsrs r4, 30
	ldr r6, =0x000040ce
	adds r0, r6, 0
	bl VarGet
	lsls r0, 24
	ldr r1, [r5]
	lsls r4, 1
	lsrs r0, 22
	adds r4, r0
	ldr r5, =0x00000de2
	adds r1, r5
	adds r1, r4
	ldrh r0, [r1]
	movs r1, 0x7
	bl __udivsi3
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp, 0x24]
	adds r0, r6, 0
	bl VarGet
	lsls r0, 16
	lsrs r0, 16
	movs r2, 0
	cmp r0, 0x1
	bne _081A6878
	movs r2, 0x1
_081A6878:
	ldr r1, =gUnknown_0203BC8C
	ldr r0, =gBattleFrontierMons
	str r0, [r1]
	mov r1, r9
	ldr r0, [r1]
	adds r0, r7
	ldrb r1, [r0]
	movs r0, 0x3
	ands r0, r1
	cmp r0, 0
	beq _081A68B4
	movs r4, 0x1
	str r4, [sp, 0x28]
	b _081A68B8
	.pool
_081A68B4:
	movs r5, 0
	str r5, [sp, 0x28]
_081A68B8:
	adds r0, r2, 0
	ldr r1, [sp, 0x28]
	bl sub_81A6F70
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp, 0x2C]
	movs r0, 0
	mov r10, r0
	mov r8, r0
	ldr r1, [sp, 0x3C]
	str r1, [sp, 0x40]
	mov r2, sp
	str r2, [sp, 0x44]
	lsls r4, r0, 1
	str r4, [sp, 0x30]
	ldr r5, [sp, 0x38]
	adds r5, r4
	str r5, [sp, 0x34]
_081A68DE:
	ldr r0, [sp, 0x2C]
	cmp r8, r0
	bge _081A68EC
	ldr r0, [sp, 0x28]
	ldr r1, [sp, 0x24]
	movs r2, 0x1
	b _081A68F2
_081A68EC:
	ldr r0, [sp, 0x28]
	ldr r1, [sp, 0x24]
	movs r2, 0
_081A68F2:
	bl sub_81A6EF0
	lsls r0, 16
	lsrs r7, r0, 16
	ldr r0, =gUnknown_0203BC8C
	ldr r1, [r0]
	lsls r2, r7, 4
	adds r4, r2, r1
	ldrh r1, [r4]
	mov r9, r2
	cmp r1, 0xC9
	beq _081A69E2
	movs r3, 0
	mov r2, r8
	adds r6, r3, r2
	cmp r3, r6
	bge _081A6950
	ldr r5, [sp, 0x34]
	ldrh r0, [r5]
	cmp r0, r7
	beq _081A6950
	mov r12, r4
	adds r2, r1, 0
	lsls r4, r3, 1
	ldr r1, [sp, 0x30]
	add r1, sp
	str r6, [sp, 0x48]
_081A6928:
	ldrh r0, [r1]
	cmp r0, r2
	bne _081A693A
	mov r0, r10
	cmp r0, 0
	bne _081A6950
	mov r5, r12
	ldrh r5, [r5]
	mov r10, r5
_081A693A:
	adds r4, 0x2
	adds r1, 0x2
	adds r3, 0x1
	ldr r0, [sp, 0x48]
	cmp r3, r0
	bge _081A6950
	ldr r5, [sp, 0x38]
	adds r0, r5, r4
	ldrh r0, [r0]
	cmp r0, r7
	bne _081A6928
_081A6950:
	cmp r3, r6
	bne _081A69E2
	movs r3, 0
	cmp r3, r6
	bge _081A699C
	ldr r0, =gBattleFrontierHeldItems
	mov r12, r0
	ldr r1, [sp, 0x30]
	ldr r2, [sp, 0x3C]
	adds r5, r1, r2
_081A6964:
	ldrh r4, [r5]
	cmp r4, 0
	beq _081A6994
	ldr r1, =gUnknown_0203BC8C
	ldr r0, [r1]
	mov r2, r9
	adds r1, r2, r0
	ldrb r0, [r1, 0xA]
	lsls r0, 1
	add r0, r12
	ldrh r0, [r0]
	cmp r4, r0
	bne _081A6994
	ldrh r0, [r1]
	cmp r0, r10
	bne _081A699C
	movs r4, 0
	mov r10, r4
	b _081A699C
	.pool
_081A6994:
	adds r5, 0x2
	adds r3, 0x1
	cmp r3, r6
	blt _081A6964
_081A699C:
	cmp r3, r6
	bne _081A69E2
	ldr r0, =gSaveBlock2Ptr
	ldr r1, [r0]
	mov r5, r8
	lsls r3, r5, 1
	adds r0, r3, r5
	lsls r0, 2
	adds r1, r0
	movs r0, 0xE7
	lsls r0, 4
	adds r1, r0
	strh r7, [r1]
	ldr r2, =gUnknown_0203BC8C
	ldr r1, [r2]
	add r1, r9
	ldrh r0, [r1]
	ldr r4, [sp, 0x44]
	strh r0, [r4]
	ldr r2, =gBattleFrontierHeldItems
	ldrb r0, [r1, 0xA]
	lsls r0, 1
	adds r0, r2
	ldrh r0, [r0]
	ldr r5, [sp, 0x40]
	strh r0, [r5]
	ldr r0, [sp, 0x38]
	adds r3, r0, r3
	strh r7, [r3]
	adds r5, 0x2
	str r5, [sp, 0x40]
	adds r4, 0x2
	str r4, [sp, 0x44]
	movs r1, 0x1
	add r8, r1
_081A69E2:
	mov r2, r8
	cmp r2, 0x6
	beq _081A69EA
	b _081A68DE
_081A69EA:
	add sp, 0x4C
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A67EC

	thumb_func_start sub_81A6A08
sub_81A6A08: @ 81A6A08
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, 0x18
	ldr r1, =gUnknown_0203BC8C
	ldr r0, =gBattleFrontierMons
	str r0, [r1]
	movs r4, 0
	add r5, sp, 0x14
	ldr r7, =gUnknown_020375F0
	movs r1, 0
_081A6A1E:
	mov r2, sp
	adds r0, r2, r4
	strb r1, [r0]
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x11
	bls _081A6A1E
	movs r4, 0
	ldr r0, =gUnknown_03006298
	mov r8, r0
	ldr r0, =gUnknown_0203BC8C
	ldr r6, [r0]
	ldr r1, =gBaseStats
	mov r12, r1
_081A6A3C:
	lsls r0, r4, 1
	add r0, r8
	ldrh r0, [r0]
	lsls r0, 4
	adds r0, r6
	ldrh r1, [r0]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	mov r2, r12
	adds r3, r0, r2
	ldrb r2, [r3, 0x6]
	mov r0, sp
	adds r1, r0, r2
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	ldrb r1, [r3, 0x7]
	cmp r2, r1
	beq _081A6A70
	ldrb r0, [r3, 0x7]
	mov r2, sp
	adds r1, r2, r0
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
_081A6A70:
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x2
	bls _081A6A3C
	movs r0, 0
	strb r0, [r5]
	strb r0, [r5, 0x1]
	movs r4, 0x1
	adds r3, r5, 0
_081A6A84:
	ldrb r0, [r3]
	add r0, sp
	mov r2, sp
	adds r1, r2, r4
	.pool