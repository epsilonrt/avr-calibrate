;*****************************************************************
;* - Description:  Device definition file for RC Calibration
;* - File:         t841.asm
;* - AppNote:      AVR053 - Production calibration of the
;*                          RC oscillator
;*
;* - Author:       Atmel Corporation: http://www.atmel.com
;*                 Support email: avr@atmel.com
;*
;* $Name$
;* $Revision$
;* $RCSfile$
;* $Date$
;*****************************************************************

.include "tn441def.inc"
.include "Common\memoryMap.inc"
.include "Device specific\t441_family_pinout.inc"

.EQU OSC_VER = 5

.equ	TCCR0	= TCCR0B
.equ	TIFR	= TIFR0
.equ    EEMWE   = EEMPE
.equ    EEWE    = EEPE
