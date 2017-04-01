;*****************************************************************
;* - Description:  Device definition file for RC Calibration
;* - File:         t441_family_pinout.inc
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

.equ	ISP_CAL_PORT_REG	= PORTA
.equ	ISP_CAL_DDR_REG		= DDRA
.equ	ISP_CAL_PIN_REG		= PINA

.equ	ISP_CAL_MISO		= 5
.equ	ISP_CAL_MOSI		= 6