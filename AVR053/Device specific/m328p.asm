;*****************************************************************
;* - Description:  Device definition file for RC Calibration
;* - File:         m328p.asm
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

.include "m328Pdef.inc"
.include "Common\memoryMap.inc"

.EQU OSC_VER = 5

.include "Device specific\m8_family_pinout.inc"

.equ	TCCR0	= TCCR0B
.equ	TIFR	= TIFR0

.equ	EEMWE	= EEMPE
.equ	EEWE	= EEPE
