IFCH:	PC, NONE, SBUS, ADR, incPC, RDFch, if_NoOprnd_ExBrDiv_STEP, ExBrDiv_BR
		NONE, NONE, NONE, NONE, NONE, NONE, if_2OP_SOF_DOF, DOF
DF_im:	PC, NONE, SBUS, ADR, incPC, RD, if_2OP_Ex2op_Ex1op, Ex1OP
DF_D:	NONE, Regs, DBUS, MDR, NONE, NONE, if_2OP_Ex2op_Ex1op, Ex1OP
DF_I:	NONE, Regs, DBUS, ADR, NONE, RD, if_2OP_Ex2op_Ex1op, Ex1OP
DFX:	PC, NONE, SBUS, ADR, NONE, RD, if_none_STEP, NONE
		Regs, MDR, SUM, ADR, incPC, RD, if_2OP_Ex2op_Ex1op, Ex1OP
		NONE, NONE, NONE, NONE, NONE, NONE, if_none_uadr, NONE
WB:	NONE, NONE, NONE, NONE, NONE, WR, if_INTR_INT_uadr, IFCH
SF_im:	PC, NONE, SBUS, ADR, NONE, RD, if_none_STEP, NONE
		MDR, NONE, SBUS, Temp, incPC, NONE, if_none_DOF, DOF
SF_D:	Regs, NONE, SBUS, Temp, NONE, NONE, if_none_DOF, DOF
		NONE, NONE, NONE, NONE, NONE, NONE, if_none_uadr, NONE
SF_I:	Regs, NONE, SBUS, ADR, NONE, RD, if_none_STEP, NONE
		MDR, NONE, SBUS, Temp, NONE, NONE, if_none_DOF, DOF
SF_X:	PC, NONE, SBUS, ADR, NONE, RD, if_none_STEP, NONE
		Regs, MDR, SUM, ADR, NONE, RD, if_none_STEP, NONE
		MDR, NONE, SBUS, Temp, incPC, NONE, if_none_DOF, DOF
MOV:	Temp, NONE, SBUS, MDR, NONE, NONE, if_RegD_STEP_WB, WB
		NONE, MDR, DBUS, Regs, NONE, NONE, if_INTR_INT_uadr, IFCH
ADD:	Temp, MDR, SUM, MDR, EnFlg, NONE, if_RegD_STEP_WB, WB
		NONE, MDR, DBUS, Regs, NONE, NONE, if_INTR_INT_uadr, IFCH
CMP:	MDR, nTemp, SUB, NONE, EnFlg, NONE, if_INTR_INT_uadr, IFCH
		NONE, NONE, NONE, NONE, NONE, NONE, if_none_STEP, NONE
AND:	Temp, MDR, AND, MDR, EnFlg, NONE, if_RegD_STEP_WB, WB
		NONE, MDR, DBUS, Regs, NONE, NONE, if_INTR_INT_uadr, IFCH
OR:	Temp, MDR, OR, MDR, EnFlg, NONE, if_RegD_STEP_WB, WB
		NONE, MDR, DBUS, Regs, NONE, NONE, if_INTR_INT_uadr, IFCH
XOR:	Temp, MDR, XOR, MDR, EnFlg, NONE, if_RegD_STEP_WB, WB
		NONE, MDR, DBUS, Regs, NONE, NONE, if_INTR_INT_uadr, IFCH
SUB:	MDR, nTemp, SUB, MDR, EnFlg, NONE, if_RegD_STEP_WB, WB
		NONE, MDR, DBUS, Regs, NONE, NONE, if_INTR_INT_uadr, IFCH
NEG:	NONE, MDR, nDBUS, MDR, EnFlg, NONE, if_RegD_STEP_WB, WB
		NONE, MDR, DBUS, Regs, NONE, NONE, if_INTR_INT_uadr, IFCH
CLR:	NONE, ZERO, DBUS, MDR, NONE, NONE, if_RegD_STEP_WB, WB
		NONE, MDR, DBUS, Regs, NONE, NONE, if_INTR_INT_uadr, IFCH
INC:	ONE, MDR, SUM, MDR, EnFlg, NONE, if_RegD_STEP_WB, WB
		NONE, MDR, DBUS, Regs, NONE, NONE, if_INTR_INT_uadr, IFCH
DEC:	MDR, mnsONE, SUB, MDR, EnFlg, NONE, if_RegD_STEP_WB, WB
		NONE, MDR, DBUS, Regs, NONE, NONE, if_INTR_INT_uadr, IFCH
ASL:	NONE, MDR, ASL, MDR, EnFlg, NONE, if_RegD_STEP_WB, WB
		NONE, MDR, DBUS, Regs, NONE, NONE, if_INTR_INT_uadr, IFCH
ASR:	NONE, MDR, ASR, MDR, NONE, NONE, if_RegD_STEP_WB, WB
		NONE, MDR, DBUS, Regs, NONE, NONE, if_INTR_INT_uadr, IFCH
CALL:	NONE, MDR, DBUS, Temp, NONE, NONE, if_none_STEP, NONE
		NONE, PC, DBUS, MDR, decSP, NONE, if_none_STEP, NONE
		NONE, SP, DBUS, ADR, NONE, WR, if_none_STEP, NONE
		NONE, MDR, SBUS, PC, NONE, NONE, if_INTR_INT_uadr, IFCH
LSR:	NONE, MDR, LSR, MDR, EnFlg, NONE, if_RegD_STEP_WB, WB
		NONE, MDR, DBUS, Regs, NONE, NONE, if_INTR_INT_uadr, IFCH
ROL:	NONE, MDR, ROL, MDR, EnFlg, NONE, if_RegD_STEP_WB, WB
		NONE, MDR, DBUS, Regs, NONE, NONE, if_INTR_INT_uadr, IFCH
ROR:	NONE, MDR, ROR, MDR, EnFlg, NONE, if_RegD_STEP_WB, WB
		NONE, MDR, DBUS, Regs, NONE, NONE, if_INTR_INT_uadr, IFCH
RLC:	NONE, MDR, RLC, MDR, EnFlg, NONE, if_RegD_STEP_WB, WB
		NONE, MDR, DBUS, Regs, NONE, NONE, if_INTR_INT_uadr, IFCH
RRC:	NONE, MDR, RRC, MDR, EnFlg, NONE, if_RegD_STEP_WB, WB
		NONE, MDR, DBUS, Regs, NONE, NONE, if_INTR_INT_uadr, IFCH
JMP:	NONE, MDR, DBUS, PC, NONE, NONE, if_INTR_INT_uadr, IFCH
		NONE, NONE, NONE, NONE, NONE, NONE, if_none_STEP, NONE
PUSH:	NONE, Regs, DBUS, MDR, decSP, NONE, if_none_STEP, NONE
		NONE, SP, DBUS, ADR, NONE, WR, if_INTR_INT_uadr, IFCH
POP:	NONE, SP, DBUS, ADR, NONE, RD, if_none_STEP, NONE
		NONE, MDR, DBUS, Regs, incSP, NONE, if_INTR_INT_uadr, IFCH
BR:	PC, IR_off, SUM, PC, NONE, NONE, if_INTR_INT_uadr, IFCH
		NONE, NONE, NONE, NONE, NONE, NONE, if_none_STEP, NONE
BNE:	NONE, NONE, NONE, NONE, NONE, NONE, if_NZ_BR_STEP, NONE
		NONE, NONE, NONE, NONE, NONE, NONE, if_INTR_INT_uadr, IFCH
BEQ:	NONE, NONE, NONE, NONE, NONE, NONE, if_Z_BR_STEP, NONE
		NONE, NONE, NONE, NONE, NONE, NONE, if_INTR_INT_uadr, IFCH
BPL:	NONE, NONE, NONE, NONE, NONE, NONE, if_NS_BR_STEP, NONE
		NONE, NONE, NONE, NONE, NONE, NONE, if_INTR_INT_uadr, IFCH
BMI:	NONE, NONE, NONE, NONE, NONE, NONE, if_S_BR_STEP, NONE
		NONE, NONE, NONE, NONE, NONE, NONE, if_INTR_INT_uadr, IFCH
BCS:	NONE, NONE, NONE, NONE, NONE, NONE, if_C_BR_STEP, NONE
		NONE, NONE, NONE, NONE, NONE, NONE, if_INTR_INT_uadr, IFCH
BCC:	NONE, NONE, NONE, NONE, NONE, NONE, if_NC_BR_STEP, NONE
		NONE, NONE, NONE, NONE, NONE, NONE, if_INTR_INT_uadr, IFCH
BVS:	NONE, NONE, NONE, NONE, NONE, NONE, if_V_BR_STEP, NONE
		NONE, NONE, NONE, NONE, NONE, NONE, if_INTR_INT_uadr, Ex2OP
BVC:	NONE, NONE, NONE, NONE, NONE, NONE, if_NV_BR_STEP, NONE
		NONE, NONE, NONE, NONE, NONE, NONE, if_INTR_INT_uadr, IFCH
CCL:	NONE, NONE, NONE, NONE, C_0, NONE, if_INTR_INT_uadr, IFCH
		NONE, NONE, NONE, NONE, NONE, NONE, if_none_STEP, NONE
CLV:	NONE, NONE, NONE, NONE, V_0, NONE, if_INTR_INT_uadr, IFCH
		NONE, NONE, NONE, NONE, NONE, NONE, if_none_STEP, NONE
CLZ:	NONE, NONE, NONE, NONE, Z_0, NONE, if_INTR_INT_uadr, IFCH
		NONE, NONE, NONE, NONE, NONE, NONE, if_none_STEP, NONE
CLS:	NONE, NONE, NONE, NONE, S_0, NONE, if_INTR_INT_uadr, IFCH
		NONE, NONE, NONE, NONE, NONE, NONE, if_none_STEP, NONE
CCF:	NONE, NONE, NONE, NONE, Flg_0, NONE, if_INTR_INT_uadr, IFCH
		NONE, NONE, NONE, NONE, NONE, NONE, if_none_STEP, IFCH
SEC:	NONE, NONE, NONE, NONE, C_1, NONE, if_INTR_INT_uadr, IFCH
		NONE, NONE, NONE, NONE, NONE, NONE, if_none_STEP, NONE
SEV:	NONE, NONE, NONE, NONE, V_1, NONE, if_INTR_INT_uadr, IFCH
		NONE, NONE, NONE, NONE, NONE, NONE, if_none_STEP, NONE
SEZ:	NONE, NONE, NONE, NONE, Z_1, NONE, if_INTR_INT_uadr, IFCH
		NONE, NONE, NONE, NONE, NONE, NONE, if_none_STEP, NONE
SES:	NONE, NONE, NONE, NONE, S_1, NONE, if_INTR_INT_uadr, IFCH
		NONE, NONE, NONE, NONE, NONE, NONE, if_none_STEP, NONE
SCF:	NONE, NONE, NONE, NONE, Flg_1, NONE, if_INTR_INT_uadr, IFCH
		NONE, NONE, NONE, NONE, NONE, NONE, if_none_STEP, NONE
NOP:	NONE, NONE, NONE, NONE, NONE, NONE, if_INTR_INT_uadr, IFCH
		NONE, NONE, NONE, NONE, NONE, NONE, if_none_STEP, NONE
RET:	SP, NONE, SBUS, ADR, NONE, RD, if_none_STEP, NONE
		NONE, MDR, DBUS, PC, incSP, NONE, if_INTR_INT_uadr, IFCH
HALT:	NONE, NONE, NONE, NONE, NONE, NONE, if_none_uadr, NONE
		NONE, NONE, NONE, NONE, NONE, NONE, if_none_STEP, NONE
WAIT:	NONE, NONE, NONE, NONE, NONE, NONE, if_INTR_INT_uadr, Wait
		NONE, NONE, NONE, NONE, NONE, NONE, if_none_DOF, IFCH
PUSHpc:	PC, NONE, SBUS, MDR, decSP, NONE, if_none_STEP, NONE
		NONE, SP, DBUS, ADR, NONE, WR, if_INTR_INT_uadr, IFCH
POPpc:	SP, NONE, SBUS, ADR, NONE, RD, if_none_STEP, NONE
		NONE, MDR, DBUS, PC, incSP, NONE, if_INTR_INT_uadr, IFCH
PUSHf:	Flag, NONE, SBUS, MDR, decSP, NONE, if_none_STEP, NONE
		NONE, SP, SBUS, ADR, NONE, WR, if_INTR_INT_uadr, IFCH
POPf:	SP, NONE, SBUS, ADR, NONE, RD, if_none_STEP, NONE
		NONE, MDR, DBUS, Regs, incSP, NONE, if_INTR_INT_uadr, IFCH
IRET:	SP, NONE, SBUS, ADR, NONE, RD, if_none_STEP, NONE
		NONE, MDR, DBUS, PC, incSP, NONE, if_none_STEP, NONE
		SP, NONE, SBUS, ADR, NONE, RD, if_none_STEP, NONE
		NONE, MDR, DBUS, Flag, incSP, NONE, if_INTR_INT_uadr, IFCH
INT:	Flag, NONE, SBUS, MDR, decSP, NONE, if_none_STEP, NONE
		NONE, SP, DBUS, ADR, NONE, WR, if_none_STEP, NONE
		PC, NONE, SBUS, MDR, decSP, NONE, if_none_STEP, NONE
		NONE, SP, DBUS, ADR, NONE, WR, if_none_STEP, NONE
		IVR, NONE, SBUS, ADR, NONE, RD, if_none_STEP, NONE
		NONE, MDR, DBUS, PC, INTA, NONE, if_none_uadr, IFCH
