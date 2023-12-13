;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.2 #0 (MSVC)
;--------------------------------------------------------
; NY8A port
;--------------------------------------------------------
	.file	"main.c"
	list	p=NY8A054E,c=on
	#include "ny8a054e.inc"
	.debuginfo language C89
;--------------------------------------------------------
; external declarations
;--------------------------------------------------------
	extern	__moduchar
	extern	__divuchar
	extern	_clear_ram
	extern	_multi_16b
	extern	_T0MD
	extern	_PCON1
	extern	_CMPCR
	extern	_BODCON
	extern	_PS0CV
	extern	_APHCON
	extern	_IOSTB
	extern	_IOSTA
	extern	_PWM5RH
	extern	_PWM5DUTY
	extern	_P5CR1
	extern	_PWM4DUTY
	extern	_P4CR1
	extern	_PS3CV
	extern	_PWM3DUTY
	extern	_T3CR2
	extern	_T3CR1
	extern	_TMR3
	extern	_OSCCR
	extern	_PWM2DUTY
	extern	_P2CR1
	extern	_TBHD
	extern	_TBHP
	extern	_IRCR
	extern	_BZ1CR
	extern	_PS1CV
	extern	_PWM1DUTY
	extern	_T1CR2
	extern	_T1CR1
	extern	_TMR1
	extern	_TM34RH
	extern	_TMRH
	extern	_PCHBUF
	extern	_STATUS
	extern	_PCL
	extern	_TMR0
	extern	_INTE2bits
	extern	_RFCbits
	extern	_INTEDGbits
	extern	_AWUCONbits
	extern	_INTFbits
	extern	_INTEbits
	extern	_BPHCONbits
	extern	_ABPLCONbits
	extern	_BWUCONbits
	extern	_PCONbits
	extern	_PORTBbits
	extern	_PORTAbits
	extern	__gptrget1
	extern	__nyc_ny8_startup
;--------------------------------------------------------
; global declarations
;--------------------------------------------------------
	extern	_main
	extern	_app_display_all
	extern	_get_cap
	extern	_is_chg_or_dischg
	extern	_get_p_ext_int_status
	extern	_init_ip53xs
	extern	_ip55xs_read4Bytes
	extern	_ip55xs_write4Bytes
	extern	_ip53xs_readByte
	extern	_ip53xs_writeByte
	extern	_i2c_readByte
	extern	_i2c_writeByte
	extern	_i2c_send_nack
	extern	_i2c_send_ack
	extern	_i2c_chk_ack
	extern	_i2c_stop
	extern	_i2c_start
	extern	_gpioKeyScan
	extern	__dly_us
	extern	_disable_breathing_mode
	extern	_enable_breathing_mode
	extern	_isr
	extern	_RESPIRATION_LAMP_TABLE
	extern	_DispTable
	extern	_INTE2
	extern	_RFC
	extern	_INTEDG
	extern	_AWUCON
	extern	_INTF
	extern	_INTE
	extern	_BPHCON
	extern	_ABPLCON
	extern	_BWUCON
	extern	_PCON
	extern	_PORTB
	extern	_PORTA
	extern	_gSysTick
	extern	_timer_slice_10ms
	extern	_displayDigit
	extern	_displayDecade
	extern	_displayHundred
	extern	_displayData
	extern	_forceDispTimer
	extern	_IP_DATA
	extern	_respiration_lamp_timer
	extern	_gpioKeyWaitTimer
	extern	_skipGetCapTimer
	extern	_timer_slice_16ms
	extern	_bat_level_buf
	extern	_delaySleepTimer
	extern	_displayTimer
	extern	_underVoltageDispTimer
	extern	_indicator_light_mode
	extern	_always_light_timer_shadow
	extern	_always_light_timer
	extern	_moto_work_mode
	extern	_vFlag_1
	extern	_vFlag_0
	extern	_io_led_scan

	extern PSAVE
	extern SSAVE
	extern WSAVE
	extern STK12
	extern STK11
	extern STK10
	extern STK09
	extern STK08
	extern STK07
	extern STK06
	extern STK05
	extern STK04
	extern STK03
	extern STK02
	extern STK01
	extern STK00

.segment "share_bank"
PSAVE:
	.res 1
.segment "share_bank"
SSAVE:
	.res 1
.segment "share_bank"
WSAVE:
	.res 1
.segment "share_bank"
STK12:
	.res 1
.segment "share_bank"
STK11:
	.res 1
.segment "share_bank"
STK10:
	.res 1
.segment "share_bank"
STK09:
	.res 1
.segment "share_bank"
STK08:
	.res 1
.segment "share_bank"
STK07:
	.res 1
.segment "share_bank"
STK06:
	.res 1
.segment "share_bank"
STK05:
	.res 1
.segment "share_bank"
STK04:
	.res 1
.segment "share_bank"
STK03:
	.res 1
.segment "share_bank"
STK02:
	.res 1
.segment "share_bank"
STK01:
	.res 1
.segment "share_bank"
STK00:
	.res 1

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
.segment "uninit"
_vFlag_0:
	.res 1
	.debuginfo complex-type (symbol "_vFlag_0" 1 global "main.c" 36 (basetype 1 unsigned))

.segment "uninit"
_vFlag_1:
	.res 1
	.debuginfo complex-type (symbol "_vFlag_1" 1 global "main.c" 46 (basetype 1 unsigned))

.segment "uninit"
_moto_work_mode:
	.res 1
	.debuginfo complex-type (symbol "_moto_work_mode" 1 global "main.c" 57 (basetype 1 unsigned))

.segment "uninit"
_always_light_timer:
	.res 1
	.debuginfo complex-type (symbol "_always_light_timer" 1 global "main.c" 59 (basetype 1 unsigned))

.segment "uninit"
_always_light_timer_shadow:
	.res 1
	.debuginfo complex-type (symbol "_always_light_timer_shadow" 1 global "main.c" 60 (basetype 1 unsigned))

.segment "uninit"
_indicator_light_mode:
	.res 1
	.debuginfo complex-type (symbol "_indicator_light_mode" 1 global "main.c" 61 (basetype 1 unsigned))

.segment "uninit"
_underVoltageDispTimer:
	.res 1
	.debuginfo complex-type (symbol "_underVoltageDispTimer" 1 global "main.c" 62 (basetype 1 unsigned))

.segment "uninit"
_displayTimer:
	.res 1
	.debuginfo complex-type (symbol "_displayTimer" 1 global "main.c" 63 (basetype 1 unsigned))

.segment "uninit"
_delaySleepTimer:
	.res 1
	.debuginfo complex-type (symbol "_delaySleepTimer" 1 global "main.c" 64 (basetype 1 unsigned))

.segment "uninit"
_bat_level_buf:
	.res 1
	.debuginfo complex-type (symbol "_bat_level_buf" 1 global "main.c" 66 (basetype 1 unsigned))

.segment "uninit"
_timer_slice_16ms:
	.res 1
	.debuginfo complex-type (symbol "_timer_slice_16ms" 1 global "main.c" 67 (basetype 1 unsigned))

.segment "uninit"
_skipGetCapTimer:
	.res 1
	.debuginfo complex-type (symbol "_skipGetCapTimer" 1 global "main.c" 68 (basetype 1 unsigned))

.segment "uninit"
_gpioKeyWaitTimer:
	.res 1
	.debuginfo complex-type (symbol "_gpioKeyWaitTimer" 1 global "main.c" 69 (basetype 1 unsigned))

.segment "uninit"
_respiration_lamp_timer:
	.res 1
	.debuginfo complex-type (symbol "_respiration_lamp_timer" 1 global "main.c" 73 (basetype 1 unsigned))

.segment "uninit"
_IP_DATA:
	.res 4
	.debuginfo complex-type (symbol "_IP_DATA" 4 global "main.c" 76 (array 4 (basetype 1 unsigned)))

.segment "uninit"
_forceDispTimer:
	.res 1
	.debuginfo complex-type (symbol "_forceDispTimer" 1 global "main.c" 77 (basetype 1 unsigned))

.segment "uninit"
_displayData:
	.res 1
	.debuginfo complex-type (symbol "_displayData" 1 global "main.c" 79 (basetype 1 unsigned))

.segment "uninit"
_displayHundred:
	.res 1
	.debuginfo complex-type (symbol "_displayHundred" 1 global "main.c" 80 (basetype 1 unsigned))

.segment "uninit"
_displayDecade:
	.res 1
	.debuginfo complex-type (symbol "_displayDecade" 1 global "main.c" 81 (basetype 1 unsigned))

.segment "uninit"
_displayDigit:
	.res 1
	.debuginfo complex-type (symbol "_displayDigit" 1 global "main.c" 82 (basetype 1 unsigned))

.segment "uninit"
_timer_slice_10ms:
	.res 1
	.debuginfo complex-type (symbol "_timer_slice_10ms" 1 global "main.c" 83 (basetype 1 unsigned))

.segment "uninit"
_gSysTick:
	.res 1
	.debuginfo complex-type (symbol "_gSysTick" 1 global "main.c" 85 (basetype 1 unsigned))

;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
.segment "uninit"
r0x1032:
	.res	1
.segment "uninit"
r0x1033:
	.res	1
.segment "uninit"
r0x101A:
	.res	1
.segment "uninit"
r0x1031:
	.res	1
.segment "uninit"
r0x101B:
	.res	1
.segment "uninit"
r0x101C:
	.res	1
.segment "uninit"
r0x101D:
	.res	1
.segment "uninit"
r0x101E:
	.res	1
.segment "uninit"
r0x101F:
	.res	1
.segment "uninit"
r0x1020:
	.res	1
.segment "uninit"
r0x1021:
	.res	1
.segment "uninit"
r0x1022:
	.res	1
.segment "uninit"
r0x1024:
	.res	1
.segment "uninit"
r0x1023:
	.res	1
.segment "uninit"
r0x1027:
	.res	1
.segment "uninit"
r0x1026:
	.res	1
.segment "uninit"
r0x1025:
	.res	1
.segment "uninit"
r0x102E:
	.res	1
.segment "uninit"
r0x102A:
	.res	1
.segment "uninit"
r0x1028:
	.res	1
.segment "uninit"
r0x102D:
	.res	1
.segment "uninit"
_isr_timerCnt_65536_5:
	.res	1
	.debuginfo complex-type (symbol "_isr_timerCnt_65536_5" 1 global "" 0 (basetype 1 unsigned))
.segment "uninit"
_isr_respiration_lamp_series_65536_5:
	.res	1
	.debuginfo complex-type (symbol "_isr_respiration_lamp_series_65536_5" 1 global "" 0 (basetype 1 unsigned))
.segment "uninit"
_isr_led_lamp_65536_5:
	.res	1
	.debuginfo complex-type (symbol "_isr_led_lamp_65536_5" 1 global "" 0 (basetype 1 unsigned))
.segment "uninit"
___sdcc_saved_fsr:
	.res	1
	.debuginfo complex-type (symbol "___sdcc_saved_fsr" 1 global "" 0 (basetype 1 unsigned))
.segment "uninit"
___sdcc_saved_stk00:
	.res	1
	.debuginfo complex-type (symbol "___sdcc_saved_stk00" 1 global "" 0 (basetype 1 unsigned))
.segment "uninit"
___sdcc_saved_stk01:
	.res	1
	.debuginfo complex-type (symbol "___sdcc_saved_stk01" 1 global "" 0 (basetype 1 unsigned))
.segment "uninit"
_gpioKeyScan_counter_65536_51:
	.res	1
	.debuginfo complex-type (symbol "_gpioKeyScan_counter_65536_51" 1 global "" 0 (basetype 1 unsigned))
.segment "uninit"
_get_p_ext_int_status_counter_65536_113:
	.res	1
	.debuginfo complex-type (symbol "_get_p_ext_int_status_counter_65536_113" 1 global "" 0 (basetype 1 unsigned))
.segment "uninit"
_is_chg_or_dischg_counter_65536_123:
	.res	1
	.debuginfo complex-type (symbol "_is_chg_or_dischg_counter_65536_123" 1 global "" 0 (basetype 1 unsigned))
;--------------------------------------------------------
; initialized data
;--------------------------------------------------------

.segment "idata"
_io_led_scan_indexScan_65536_29:
	.debuginfo complex-type (symbol "_io_led_scan_indexScan_65536_29" 1 local "main.c" 313 (basetype 1 unsigned))

	dw	0x00	; 0


.segment "code"
_DispTable:
	retia 0x3f	; 63
	retia 0x06	; 6
	retia 0x5b	; 91
	retia 0x4f	; 79	'O'
	retia 0x66	; 102	'f'
	retia 0x6d	; 109	'm'
	retia 0x7d	; 125
	retia 0x07	; 7
	retia 0x7f	; 127
	retia 0x6f	; 111	'o'
	retia 0x79	; 121	'y'
	retia 0x50	; 80	'P'
	retia 0x76	; 118	'v'
	retia 0x00	; 0

.segment "code"
_RESPIRATION_LAMP_TABLE:
	retia 0x01	; 1
	retia 0x01	; 1
	retia 0x01	; 1
	retia 0x01	; 1
	retia 0x01	; 1
	retia 0x02	; 2
	retia 0x02	; 2
	retia 0x02	; 2
	retia 0x02	; 2
	retia 0x02	; 2
	retia 0x02	; 2
	retia 0x02	; 2
	retia 0x02	; 2
	retia 0x03	; 3
	retia 0x03	; 3
	retia 0x03	; 3
	retia 0x03	; 3
	retia 0x03	; 3
	retia 0x04	; 4
	retia 0x04	; 4
	retia 0x04	; 4
	retia 0x05	; 5
	retia 0x05	; 5
	retia 0x05	; 5
	retia 0x06	; 6
	retia 0x06	; 6
	retia 0x06	; 6
	retia 0x07	; 7
	retia 0x07	; 7
	retia 0x08	; 8
	retia 0x09	; 9
	retia 0x09	; 9
	retia 0x0a	; 10
	retia 0x0b	; 11
	retia 0x0b	; 11
	retia 0x0c	; 12
	retia 0x0d	; 13
	retia 0x0e	; 14
	retia 0x0f	; 15
	retia 0x10	; 16
	retia 0x11	; 17
	retia 0x12	; 18
	retia 0x14	; 20
	retia 0x15	; 21
	retia 0x17	; 23
	retia 0x18	; 24
	retia 0x1a	; 26
	retia 0x1c	; 28
	retia 0x1e	; 30
	retia 0x20	; 32
	retia 0x22	; 34
	retia 0x25	; 37
	retia 0x27	; 39
	retia 0x2a	; 42
	retia 0x2d	; 45
	retia 0x30	; 48	'0'
	retia 0x34	; 52	'4'
	retia 0x38	; 56	'8'
	retia 0x3c	; 60
	retia 0x40	; 64
	retia 0x44	; 68	'D'
	retia 0x49	; 73	'I'
	retia 0x4f	; 79	'O'
	retia 0x54	; 84	'T'
	retia 0x5a	; 90	'Z'
	retia 0x61	; 97	'a'
	retia 0x68	; 104	'h'
	retia 0x6f	; 111	'o'
	retia 0x77	; 119	'w'
	retia 0x80	; 128
	retia 0x89	; 137
	retia 0x93	; 147
	retia 0x9d	; 157
	retia 0xa8	; 168
	retia 0xb4	; 180
	retia 0xc1	; 193
	retia 0xcf	; 207
	retia 0xde	; 222
	retia 0xee	; 238
	retia 0xff	; 255
	retia 0xff	; 255
;--------------------------------------------------------
; initialized absolute data
;--------------------------------------------------------
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;	udata_ovr
;--------------------------------------------------------
; reset vector 
;--------------------------------------------------------
ORG	0x0000
	LGOTO	__nyc_ny8_startup
;--------------------------------------------------------
; interrupt and initialization code
;--------------------------------------------------------
ORG 0x0008
	MGOTO	__sdcc_interrupt

.segment "code"
__sdcc_interrupt:
;***
;  pBlock Stats: dbName = I
;***
;functions called:
;   _io_led_scan
;   __gptrget1
;   _io_led_scan
;   __gptrget1
;4 compiler assigned registers:
;   STK00
;   STK01
;   r0x1032
;   r0x1033
;; Starting pCode block
_isr:
; 0 exit points
	.line	191, "main.c"; 	void isr(void) __interrupt(0) // 64us  8MHz 2T
	MOVAR	WSAVE
	SWAPR	STATUS,W
	CLRR	STATUS
	MOVAR	SSAVE
	MOVR	PCHBUF,W
	CLRR	PCHBUF
	MOVAR	PSAVE
	MOVR	FSR,W
	BANKSEL	___sdcc_saved_fsr
	MOVAR	___sdcc_saved_fsr
	MOVR	STK00,W
	BANKSEL	___sdcc_saved_stk00
	MOVAR	___sdcc_saved_stk00
	MOVR	STK01,W
	BANKSEL	___sdcc_saved_stk01
	MOVAR	___sdcc_saved_stk01
	.line	197, "main.c"; 	if (TM0IF)
	BTRSS	_INTFbits,0
	MGOTO	_02032_DS_
	.line	204, "main.c"; 	timerCnt++;
	BANKSEL	_isr_timerCnt_65536_5
	INCR	_isr_timerCnt_65536_5,F
	.line	214, "main.c"; 	if (!(timerCnt & 0x01))
	BTRSC	_isr_timerCnt_65536_5,0
	MGOTO	_02008_DS_
	.line	217, "main.c"; 	io_led_scan();
	MCALL	_io_led_scan
	.line	218, "main.c"; 	if (!(timerCnt))
	BANKSEL	_isr_timerCnt_65536_5
	MOVR	_isr_timerCnt_65536_5,W
	BTRSS	STATUS,2
	MGOTO	_00014_DS_
	.line	221, "main.c"; 	bFlag_slice_16ms = 1;
	BANKSEL	_vFlag_0
	BSR	_vFlag_0,1
_00014_DS_:
	.line	223, "main.c"; 	bFlag_gSysTick_Change = 1;
	BANKSEL	_vFlag_0
	BSR	_vFlag_0,0
_02008_DS_:
	.line	226, "main.c"; 	if (bFlag_is_breathing_mode) // 100us
	BANKSEL	_vFlag_1
	BTRSS	_vFlag_1,0
	MGOTO	_02032_DS_
	.line	228, "main.c"; 	respiration_lamp_timer++;
	BANKSEL	_respiration_lamp_timer
	MOVR	_respiration_lamp_timer,W
	BANKSEL	r0x1032
	MOVAR	r0x1032
	INCR	r0x1032,W
	BANKSEL	_respiration_lamp_timer
	MOVAR	_respiration_lamp_timer
	.line	230, "main.c"; 	if (!(respiration_lamp_timer))
	MOVR	_respiration_lamp_timer,W
	BTRSS	STATUS,2
	MGOTO	_02019_DS_
	.line	232, "main.c"; 	if (bFlag_inc_or_dec)
	BANKSEL	_vFlag_1
	BTRSS	_vFlag_1,1
	MGOTO	_02016_DS_
	.line	234, "main.c"; 	if (!(--respiration_lamp_series))
	BANKSEL	_isr_respiration_lamp_series_65536_5
	DECRSZ	_isr_respiration_lamp_series_65536_5,F
	MGOTO	_02017_DS_
	.line	236, "main.c"; 	bFlag_inc_or_dec = 0;
	BANKSEL	_vFlag_1
	BCR	_vFlag_1,1
	.line	238, "main.c"; 	if (++indicator_light_mode > 2)
	BANKSEL	_indicator_light_mode
	INCR	_indicator_light_mode,W
	BANKSEL	r0x1032
	MOVAR	r0x1032
	BANKSEL	_indicator_light_mode
	MOVAR	_indicator_light_mode
;;swapping arguments (AOP_TYPEs 1/2)
;;unsigned compare: left >= lit(0x3=3), size=1
	MOVIA	0x03
	BANKSEL	r0x1032
	SUBAR	r0x1032,W
	BTRSS	STATUS,0
	MGOTO	_02017_DS_
	.line	240, "main.c"; 	indicator_light_mode = 0;
	BANKSEL	_indicator_light_mode
	CLRR	_indicator_light_mode
	MGOTO	_02017_DS_
_02016_DS_:
	.line	246, "main.c"; 	if (++respiration_lamp_series >= CONST_RESPIRATION_LAMP_SERIES)
	BANKSEL	_isr_respiration_lamp_series_65536_5
	INCR	_isr_respiration_lamp_series_65536_5,F
;;unsigned compare: left < lit(0x50=80), size=1
	MOVIA	0x50
	SUBAR	_isr_respiration_lamp_series_65536_5,W
	BTRSS	STATUS,0
	MGOTO	_02017_DS_
	.line	248, "main.c"; 	respiration_lamp_series = CONST_RESPIRATION_LAMP_SERIES;
	MOVIA	0x50
	MOVAR	_isr_respiration_lamp_series_65536_5
	.line	249, "main.c"; 	bFlag_inc_or_dec = 1;
	BANKSEL	_vFlag_1
	BSR	_vFlag_1,1
_02017_DS_:
	.line	253, "main.c"; 	led_lamp = RESPIRATION_LAMP_TABLE[respiration_lamp_series];
	BANKSEL	_isr_respiration_lamp_series_65536_5
	MOVR	_isr_respiration_lamp_series_65536_5,W
	ADDIA	(_RESPIRATION_LAMP_TABLE + 0)
	BANKSEL	r0x1032
	MOVAR	r0x1032
	MOVIA	((_RESPIRATION_LAMP_TABLE + 0) >> 8) & 0xff
	ADCIA	0x00
	BANKSEL	r0x1033
	MOVAR	r0x1033
	BANKSEL	r0x1032
	MOVR	r0x1032,W
	MOVAR	STK01
	BANKSEL	r0x1033
	MOVR	r0x1033,W
	MOVAR	STK00
	MOVIA	0x80
	MCALL	__gptrget1
	BANKSEL	_isr_led_lamp_65536_5
	MOVAR	_isr_led_lamp_65536_5
_02019_DS_:
	.line	256, "main.c"; 	if (respiration_lamp_timer >= led_lamp)
	BANKSEL	_isr_led_lamp_65536_5
	MOVR	_isr_led_lamp_65536_5,W
	BANKSEL	_respiration_lamp_timer
	SUBAR	_respiration_lamp_timer,W
	BTRSS	STATUS,0
	MGOTO	_02027_DS_
	.line	258, "main.c"; 	P_LED_R_OFF;
	BCR	_PORTBbits,4
	.line	259, "main.c"; 	P_LED_G_OFF;
	BCR	_PORTBbits,3
	.line	260, "main.c"; 	P_LED_B_OFF; // white led
	BCR	_PORTBbits,2
	MGOTO	_02032_DS_
_02027_DS_:
	.line	264, "main.c"; 	if (0x01 == indicator_light_mode)
	BANKSEL	_indicator_light_mode
	MOVR	_indicator_light_mode,W
	XORIA	0x01
	BTRSS	STATUS,2
	MGOTO	_02024_DS_
	.line	266, "main.c"; 	P_LED_B_ON; // white
	BSR	_PORTBbits,2
	MGOTO	_02032_DS_
_02024_DS_:
	.line	268, "main.c"; 	else if (0x02 == indicator_light_mode)
	BANKSEL	_indicator_light_mode
	MOVR	_indicator_light_mode,W
	XORIA	0x02
	BTRSS	STATUS,2
	MGOTO	_02021_DS_
	.line	270, "main.c"; 	P_LED_G_ON; // green
	BSR	_PORTBbits,3
	MGOTO	_02032_DS_
_02021_DS_:
	.line	274, "main.c"; 	P_LED_R_ON; // orange
	BSR	_PORTBbits,4
_02032_DS_:
	.line	279, "main.c"; 	INTF = 0;
	CLRR	_INTF
	.line	284, "main.c"; 	}
	BANKSEL	___sdcc_saved_stk01
	MOVR	___sdcc_saved_stk01,W
	MOVAR	STK01
	BANKSEL	___sdcc_saved_stk00
	MOVR	___sdcc_saved_stk00,W
	MOVAR	STK00
	BANKSEL	___sdcc_saved_fsr
	MOVR	___sdcc_saved_fsr,W
	MOVAR	FSR
	MOVR	PSAVE,W
	MOVAR	PCHBUF
	CLRR	STATUS
	SWAPR	SSAVE,W
	MOVAR	STATUS
	SWAPR	WSAVE,F
	SWAPR	WSAVE,W
END_OF_INTERRUPT:
	RETIE	

;--------------------------------------------------------
; code
;--------------------------------------------------------
; code_main	code
;***
;  pBlock Stats: dbName = M
;***
;has an exit
;functions called:
;   _gpioKeyScan
;   _get_p_ext_int_status
;   _is_chg_or_dischg
;   _get_cap
;   _app_display_all
;   _gpioKeyScan
;   _get_p_ext_int_status
;   _is_chg_or_dischg
;   _get_cap
;   _app_display_all
;1 compiler assigned register :
;   r0x102D
;; Starting pCode block
.segment "code"; module=main, function=_main
	.debuginfo subprogram _main
_main:
; 2 exit points
	.line	1473, "main.c"; 	DISI();
	DISI
	.line	1475, "main.c"; 	BPHCON = (unsigned char)~C_PB0_PHB; // Enable PB1 Pull-High resistor
	MOVIA	0xfe
	MOVAR	_BPHCON
	.line	1478, "main.c"; 	IOSTA = 0xFF;
	MOVIA	0xff
	IOST	_IOSTA
	.line	1479, "main.c"; 	IOSTB = 0xFF;
	IOST	_IOSTB
	.line	1481, "main.c"; 	PORTA = 0x00; // PORTB data buffer=0x00
	CLRR	_PORTA
	.line	1482, "main.c"; 	PORTB = 0x00;
	CLRR	_PORTB
	.line	1488, "main.c"; 	OSCCR = C_FLOSC_Sel; // OSCCR[0]=0 , FOSC is Low-frequency oscillation (FLOSC)
	CLRA	
	.debuginfo linetag 1
	SFUN	_OSCCR
	NOP	
	.line	1491, "main.c"; 	OSCCR = C_FHOSC_Sel; // OSCCR[0]=1 , FOSC is high-frequency oscillation (FHOSC)
	MOVIA	0x01
	.debuginfo linetag 1
	SFUN	_OSCCR
	NOP	
	.line	1506, "main.c"; 	PCON1 = 0x00; // Disable Timer0
	CLRA	
	IOST	_PCON1
	.line	1509, "main.c"; 	T0MD = 0x0F; // 8M,2T  Prescaler0 to wdt,
	MOVIA	0x0f
	T0MD	
	.line	1518, "main.c"; 	INTE = 0x01; // Timer0 overflow interrupt enable bit
	MOVIA	0x01
	MOVAR	_INTE
	.line	1521, "main.c"; 	PCON = 0xC8; //  C_WDT_En | C_LVR_En;                // Enable WDT ,  Enable LVR
	MOVIA	0xc8
	MOVAR	_PCON
	.line	1523, "main.c"; 	PCON1 = 0x01; //  C_TMR0_En;                          // Enable Timer0
	MOVIA	0x01
	IOST	_PCON1
	.line	1524, "main.c"; 	ENI();
	ENI
	.line	1526, "main.c"; 	delaySleepTimer = CONST_DELAY_SLEEP_TIME;
	MOVIA	0x14
	BANKSEL	_delaySleepTimer
	MOVAR	_delaySleepTimer
	.line	1527, "main.c"; 	bFlag_power_on = 1;
	BANKSEL	_vFlag_1
	BSR	_vFlag_1,4
	.line	1532, "main.c"; 	forceDispTimer = 6;
	MOVIA	0x06
	BANKSEL	_forceDispTimer
	MOVAR	_forceDispTimer
	.line	1533, "main.c"; 	P_LED_R_OUTPUT;
	IOSTR	_IOSTB
	BANKSEL	r0x102D
	MOVAR	r0x102D
	BCR	r0x102D,4
	MOVR	r0x102D,W
	IOST	_IOSTB
	.line	1534, "main.c"; 	P_LED_R_OFF;
	BCR	_PORTBbits,4
	.line	1535, "main.c"; 	P_LED_G_OUTPUT;
	IOSTR	_IOSTB
	MOVAR	r0x102D
	BCR	r0x102D,3
	MOVR	r0x102D,W
	IOST	_IOSTB
	.line	1536, "main.c"; 	P_LED_G_OFF;
	BCR	_PORTBbits,3
	.line	1537, "main.c"; 	P_LED_B_OUTPUT;
	IOSTR	_IOSTB
	MOVAR	r0x102D
	BCR	r0x102D,2
	MOVR	r0x102D,W
	IOST	_IOSTB
	.line	1538, "main.c"; 	P_LED_B_OFF;
	BCR	_PORTBbits,2
	.line	1540, "main.c"; 	displayTimer = CONST_TIMER_DISP;
	MOVIA	0x14
	BANKSEL	_displayTimer
	MOVAR	_displayTimer
_02456_DS_:
	.line	1547, "main.c"; 	CLRWDT();
	clrwdt
	.line	1548, "main.c"; 	if (bFlag_gSysTick_Change)
	BANKSEL	_vFlag_0
	BTRSS	_vFlag_0,0
	MGOTO	_02456_DS_
	.line	1550, "main.c"; 	bFlag_gSysTick_Change = 0;
	BCR	_vFlag_0,0
	.line	1551, "main.c"; 	if (bFlag_slice_16ms)
	BTRSS	_vFlag_0,1
	MGOTO	_02456_DS_
	.line	1554, "main.c"; 	bFlag_slice_16ms = 0;
	BCR	_vFlag_0,1
	.line	1555, "main.c"; 	timer_slice_16ms++;
	BANKSEL	_timer_slice_16ms
	MOVR	_timer_slice_16ms,W
	BANKSEL	r0x102D
	MOVAR	r0x102D
	INCR	r0x102D,W
	BANKSEL	_timer_slice_16ms
	MOVAR	_timer_slice_16ms
	.line	1556, "main.c"; 	if (0 == bFlag_charger_on)
	BANKSEL	_vFlag_1
	BTRSC	_vFlag_1,5
	MGOTO	_02427_DS_
	.line	1558, "main.c"; 	gpioKeyScan(); //! 充电不需要按键功能
	MCALL	_gpioKeyScan
	MGOTO	_02428_DS_
_02427_DS_:
	.line	1562, "main.c"; 	P_KEY_IPS_INPUT;
	IOSTR	_IOSTB
	BANKSEL	r0x102D
	MOVAR	r0x102D
	BSR	r0x102D,1
	MOVR	r0x102D,W
	IOST	_IOSTB
_02428_DS_:
	.line	1564, "main.c"; 	get_p_ext_int_status();
	MCALL	_get_p_ext_int_status
	.line	1565, "main.c"; 	if ((bFlag_p_ext_int_is_high) && (P_I2C_INT)) // if (bFlag_p_ext_int_is_high)
	BANKSEL	_vFlag_1
	BTRSS	_vFlag_1,3
	MGOTO	_02430_DS_
	BTRSC	_PORTAbits,2
	.line	1567, "main.c"; 	is_chg_or_dischg();
	MCALL	_is_chg_or_dischg
_02430_DS_:
	.line	1570, "main.c"; 	if (!(timer_slice_16ms & 0x1F))
	BANKSEL	_timer_slice_16ms
	MOVR	_timer_slice_16ms,W
	ANDIA	0x1f
	BTRSS	STATUS,2
	MGOTO	_02439_DS_
	.line	1572, "main.c"; 	bFlag_blink ^= 1;
	MOVIA	0x80
	BANKSEL	_vFlag_0
	XORAR	_vFlag_0,F
	.line	1577, "main.c"; 	if ((bFlag_p_ext_int_is_high) && (P_I2C_INT))
	BANKSEL	_vFlag_1
	BTRSS	_vFlag_1,3
	MGOTO	_02436_DS_
	BTRSS	_PORTAbits,2
	MGOTO	_02436_DS_
	.line	1579, "main.c"; 	if (0 == skipGetCapTimer)
	BANKSEL	_skipGetCapTimer
	MOVR	_skipGetCapTimer,W
	BTRSS	STATUS,2
	MGOTO	_02433_DS_
	.line	1581, "main.c"; 	get_cap();
	MCALL	_get_cap
	MGOTO	_02436_DS_
_02433_DS_:
	.line	1585, "main.c"; 	skipGetCapTimer--;
	BANKSEL	_skipGetCapTimer
	MOVR	_skipGetCapTimer,W
	BANKSEL	r0x102D
	MOVAR	r0x102D
	DECR	r0x102D,W
	BANKSEL	_skipGetCapTimer
	MOVAR	_skipGetCapTimer
_02436_DS_:
	.line	1588, "main.c"; 	app_display_all();
	MCALL	_app_display_all
_02439_DS_:
	.line	1590, "main.c"; 	if (!(timer_slice_16ms & 0x3F))
	BANKSEL	_timer_slice_16ms
	MOVR	_timer_slice_16ms,W
	ANDIA	0x3f
	BTRSS	STATUS,2
	MGOTO	_02456_DS_
	.line	1595, "main.c"; 	if ((0 == bFlag_charger_on) && (!P_I2C_INT))
	BANKSEL	_vFlag_1
	BTRSC	_vFlag_1,5
	MGOTO	_02456_DS_
	BTRSC	_PORTAbits,2
	MGOTO	_02456_DS_
	.line	1600, "main.c"; 	if (!delaySleepTimer)
	BANKSEL	_delaySleepTimer
	MOVR	_delaySleepTimer,W
	BTRSS	STATUS,2
	MGOTO	_02444_DS_
	.line	1607, "main.c"; 	CLRWDT();
	clrwdt
	.line	1608, "main.c"; 	INTE = 0x00;  // Timer0 overflow interrupt enable bit
	CLRR	_INTE
	.line	1609, "main.c"; 	PCON = 0x58;  // PCON = 0xC8;
	MOVIA	0x58
	MOVAR	_PCON
	.line	1610, "main.c"; 	PCON1 = 0x00; // Disable Timer0
	CLRA	
	IOST	_PCON1
	.line	1611, "main.c"; 	INTF = 0;
	CLRR	_INTF
	.line	1612, "main.c"; 	DISI();
	DISI
	.line	1620, "main.c"; 	PORTA = 0x00;
	CLRR	_PORTA
	.line	1621, "main.c"; 	PORTB = 0x00;
	CLRR	_PORTB
	.line	1622, "main.c"; 	IOSTA = 0x00;
	CLRA	
	IOST	_IOSTA
	.line	1623, "main.c"; 	IOSTB = 0x00;
	IOST	_IOSTB
	.line	1624, "main.c"; 	P_KEY_INPUT;
	IOSTR	_IOSTB
	BANKSEL	r0x102D
	MOVAR	r0x102D
	BSR	r0x102D,0
	MOVR	r0x102D,W
	IOST	_IOSTB
	.line	1625, "main.c"; 	P_KEY_IPS_INPUT;
	IOSTR	_IOSTB
	MOVAR	r0x102D
	BSR	r0x102D,1
	MOVR	r0x102D,W
	IOST	_IOSTB
	.line	1626, "main.c"; 	P_I2C_INT_INPUT;
	IOSTR	_IOSTA
	MOVAR	r0x102D
	BSR	r0x102D,2
	MOVR	r0x102D,W
	IOST	_IOSTA
	.line	1627, "main.c"; 	P_I2C_SCL_INPUT;
	IOSTR	_IOSTA
	MOVAR	r0x102D
	BSR	r0x102D,4
	MOVR	r0x102D,W
	IOST	_IOSTA
	.line	1628, "main.c"; 	P_I2C_SDA_INPUT;
	IOSTR	_IOSTA
	MOVAR	r0x102D
	BSR	r0x102D,3
	MOVR	r0x102D,W
	IOST	_IOSTA
	.line	1651, "main.c"; 	AWUCON = (C_PA2_Wakeup); // OK
	MOVIA	0x04
	MOVAR	_AWUCON
	.line	1652, "main.c"; 	BWUCON = C_PB0_Wakeup;   // OK
	MOVIA	0x01
	MOVAR	_BWUCON
	.line	1654, "main.c"; 	INTE = C_INT_PABKey; // Enable PortB input change interrupt
	MOVIA	0x02
	MOVAR	_INTE
	.line	1655, "main.c"; 	INTF = 0;
	CLRR	_INTF
	.line	1661, "main.c"; 	if (!P_KEY)
	BTRSS	_PORTBbits,0
	MGOTO	_02442_DS_
	.line	1665, "main.c"; 	NOP();
	nop
	.line	1666, "main.c"; 	NOP();
	nop
	.line	1667, "main.c"; 	UPDATE_REG(PORTB);
	MOVR	_PORTB,F
	.line	1668, "main.c"; 	UPDATE_REG(PORTA);
	MOVR	_PORTA,F
	.line	1669, "main.c"; 	NOP();
	nop
	.line	1670, "main.c"; 	NOP();
	nop
	.line	1671, "main.c"; 	SLEEP();
	sleep
	.line	1672, "main.c"; 	NOP();
	nop
	.line	1673, "main.c"; 	NOP();
	nop
_02442_DS_:
	.line	1675, "main.c"; 	INTFbits.PABIF = 0;
	MOVIA	0xfd
	MOVAR	(_INTFbits + 0)
	.line	1679, "main.c"; 	delaySleepTimer = CONST_DELAY_SLEEP_TIME;
	MOVIA	0x14
	BANKSEL	_delaySleepTimer
	MOVAR	_delaySleepTimer
	.line	1680, "main.c"; 	skipGetCapTimer = 3;
	MOVIA	0x03
	BANKSEL	_skipGetCapTimer
	MOVAR	_skipGetCapTimer
	.line	1686, "main.c"; 	PCON = 0xC8;
	MOVIA	0xc8
	MOVAR	_PCON
	.line	1699, "main.c"; 	PCON1 |= C_TMR0_En;            // Enable Timer0
	IOSTR	_PCON1
	BANKSEL	r0x102D
	MOVAR	r0x102D
	BSR	r0x102D,0
	MOVR	r0x102D,W
	IOST	_PCON1
	.line	1700, "main.c"; 	INTE = (0x01 /*| C_INT_LVD*/); // Timer0 overflow interrupt enable bit
	MOVIA	0x01
	MOVAR	_INTE
	.line	1701, "main.c"; 	ENI();
	ENI
	MGOTO	_02456_DS_
_02444_DS_:
	.line	1705, "main.c"; 	delaySleepTimer--;
	BANKSEL	_delaySleepTimer
	MOVR	_delaySleepTimer,W
	BANKSEL	r0x102D
	MOVAR	r0x102D
	DECR	r0x102D,W
	BANKSEL	_delaySleepTimer
	MOVAR	_delaySleepTimer
	MGOTO	_02456_DS_
	.line	1714, "main.c"; 	}
	RETURN	
; exit point of _main

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   __gptrget1
;   __gptrget1
;   __divuchar
;   __moduchar
;   __gptrget1
;   __gptrget1
;   _disable_breathing_mode
;   __gptrget1
;   __gptrget1
;   __divuchar
;   __moduchar
;   __gptrget1
;   __gptrget1
;   __divuchar
;   __moduchar
;   __gptrget1
;   __gptrget1
;   __gptrget1
;   __gptrget1
;   __gptrget1
;   __gptrget1
;   __divuchar
;   __moduchar
;   __gptrget1
;   __gptrget1
;   _disable_breathing_mode
;   __gptrget1
;   __gptrget1
;   __divuchar
;   __moduchar
;   __gptrget1
;   __gptrget1
;   __divuchar
;   __moduchar
;   __gptrget1
;   __gptrget1
;   __gptrget1
;   __gptrget1
;6 compiler assigned registers:
;   r0x101A
;   STK01
;   STK00
;   r0x101B
;   r0x101C
;   r0x101D
;; Starting pCode block
.segment "code"; module=main, function=_app_display_all
	.debuginfo subprogram _app_display_all
;local variable name mapping:
	.debuginfo complex-type (local-sym "_i" 1 "main.c" 1260 (basetype 1 unsigned) split "r0x101A")
	.debuginfo complex-type (local-sym "_j" 1 "main.c" 1260 (basetype 1 unsigned) split "r0x101B")
_app_display_all:
; 2 exit points
	.line	1263, "main.c"; 	if (forceDispTimer)
	BANKSEL	_forceDispTimer
	MOVR	_forceDispTimer,W
	BTRSC	STATUS,2
	MGOTO	_02419_DS_
	.line	1265, "main.c"; 	forceDispTimer--;
	MOVR	_forceDispTimer,W
	BANKSEL	r0x101A
	MOVAR	r0x101A
	DECR	r0x101A,W
	BANKSEL	_forceDispTimer
	MOVAR	_forceDispTimer
	.line	1266, "main.c"; 	displayHundred = DispTable[1];
	MOVIA	(_DispTable + 1)
	MOVAR	STK01
	MOVIA	((_DispTable + 1) >> 8) & 0xff
	MOVAR	STK00
	MOVIA	0x80
	MCALL	__gptrget1
	BANKSEL	_displayHundred
	MOVAR	_displayHundred
	.line	1268, "main.c"; 	displayHundred |= (SEG_E | SEG_D);
	MOVIA	0x18
	IORAR	_displayHundred,F
	.line	1269, "main.c"; 	displayDecade = DispTable[8];
	MOVIA	(_DispTable + 8)
	MOVAR	STK01
	MOVIA	((_DispTable + 8) >> 8) & 0xff
	MOVAR	STK00
	MOVIA	0x80
	MCALL	__gptrget1
	BANKSEL	_displayDigit
	MOVAR	_displayDigit
	BANKSEL	r0x101A
	MOVAR	r0x101A
	BANKSEL	_displayDecade
	MOVAR	_displayDecade
;;102	MOVR	r0x101A,W
	.line	1272, "main.c"; 	if (!forceDispTimer)
	BANKSEL	_forceDispTimer
	MOVR	_forceDispTimer,W
	BTRSS	STATUS,2
	MGOTO	_02421_DS_
	.line	1274, "main.c"; 	displayHundred = DISP_ALL_OFF;
	BANKSEL	_displayHundred
	CLRR	_displayHundred
	.line	1275, "main.c"; 	displayDecade = DISP_ALL_OFF;
	BANKSEL	_displayDecade
	CLRR	_displayDecade
	.line	1276, "main.c"; 	displayDigit = DISP_ALL_OFF;
	BANKSEL	_displayDigit
	CLRR	_displayDigit
	MGOTO	_02421_DS_
_02419_DS_:
	.line	1281, "main.c"; 	else if (bFlag_charger_on) // bFlag_charger_nbFlag_vin_plug_in
	BANKSEL	_vFlag_1
	BTRSS	_vFlag_1,5
	MGOTO	_02416_DS_
	.line	1283, "main.c"; 	underVoltageDispTimer = 0;
	BANKSEL	_underVoltageDispTimer
	CLRR	_underVoltageDispTimer
	.line	1285, "main.c"; 	displayTimer = CONST_TIMER_DISP; // 拨出显示5秒
	MOVIA	0x14
	BANKSEL	_displayTimer
	MOVAR	_displayTimer
;;unsigned compare: left < lit(0x64=100), size=1
	.line	1287, "main.c"; 	if (displayData < 100) // 充电
	MOVIA	0x64
	BANKSEL	_displayData
	SUBAR	_displayData,W
	BTRSC	STATUS,0
	MGOTO	_02384_DS_
	.line	1289, "main.c"; 	displayHundred = SEG_E; //% DISP_ALL_OFF;
	MOVIA	0x10
	BANKSEL	_displayHundred
	MOVAR	_displayHundred
	.line	1290, "main.c"; 	if (bFlag_qc_ok)
	BANKSEL	_vFlag_0
	BTRSS	_vFlag_0,4
	MGOTO	_00001_DS_
	.line	1292, "main.c"; 	displayHundred |= SEG_D;
	BANKSEL	_displayHundred
	BSR	_displayHundred,3
_00001_DS_:
	.line	1295, "main.c"; 	if (bFlag_blink)
	BANKSEL	_vFlag_0
	BTRSS	_vFlag_0,7
	MGOTO	_02379_DS_
	.line	1297, "main.c"; 	i = displayData / 10;
	MOVIA	0x0a
	MOVAR	STK00
	BANKSEL	_displayData
	MOVR	_displayData,W
	MCALL	__divuchar
	BANKSEL	r0x101A
	MOVAR	r0x101A
	.line	1298, "main.c"; 	j = displayData % 10;
	MOVIA	0x0a
	MOVAR	STK00
	BANKSEL	_displayData
	MOVR	_displayData,W
	MCALL	__moduchar
	BANKSEL	r0x101B
	MOVAR	r0x101B
	.line	1303, "main.c"; 	displayDecade = DispTable[i];
	MOVIA	(_DispTable + 0)
	BANKSEL	r0x101A
	ADDAR	r0x101A,F
	MOVIA	((_DispTable + 0) >> 8) & 0xff
	ADCIA	0x00
	BANKSEL	r0x101C
	MOVAR	r0x101C
	BANKSEL	r0x101A
	MOVR	r0x101A,W
	MOVAR	STK01
	BANKSEL	r0x101C
	MOVR	r0x101C,W
	MOVAR	STK00
	MOVIA	0x80
	MCALL	__gptrget1
	BANKSEL	_displayDecade
	MOVAR	_displayDecade
	.line	1306, "main.c"; 	displayDigit = DispTable[j];
	MOVIA	(_DispTable + 0)
	BANKSEL	r0x101B
	ADDAR	r0x101B,F
	MOVIA	((_DispTable + 0) >> 8) & 0xff
	ADCIA	0x00
	BANKSEL	r0x101A
	MOVAR	r0x101A
	BANKSEL	r0x101B
	MOVR	r0x101B,W
	MOVAR	STK01
	BANKSEL	r0x101A
	MOVR	r0x101A,W
	MOVAR	STK00
	MOVIA	0x80
	MCALL	__gptrget1
	BANKSEL	_displayDigit
	MOVAR	_displayDigit
	MGOTO	_02421_DS_
_02379_DS_:
	.line	1310, "main.c"; 	displayDigit = DISP_ALL_OFF; // 个位闪烁 充电
	BANKSEL	_displayDigit
	CLRR	_displayDigit
	MGOTO	_02421_DS_
_02384_DS_:
	.line	1315, "main.c"; 	disable_breathing_mode();
	MCALL	_disable_breathing_mode
	.line	1316, "main.c"; 	P_LED_G_ON;
	BSR	_PORTBbits,3
	.line	1317, "main.c"; 	displayHundred = DispTable[1];
	MOVIA	(_DispTable + 1)
	MOVAR	STK01
	MOVIA	((_DispTable + 1) >> 8) & 0xff
	MOVAR	STK00
	MOVIA	0x80
	MCALL	__gptrget1
	BANKSEL	_displayHundred
	MOVAR	_displayHundred
	.line	1318, "main.c"; 	displayHundred |= SEG_E; //%
	BSR	_displayHundred,4
	.line	1319, "main.c"; 	if (bFlag_qc_ok)
	BANKSEL	_vFlag_0
	BTRSS	_vFlag_0,4
	MGOTO	_00002_DS_
	.line	1321, "main.c"; 	displayHundred |= SEG_D;
	BANKSEL	_displayHundred
	BSR	_displayHundred,3
_00002_DS_:
	.line	1323, "main.c"; 	displayDecade = DispTable[0];
	MOVIA	(_DispTable + 0)
	MOVAR	STK01
	MOVIA	((_DispTable + 0) >> 8) & 0xff
	MOVAR	STK00
	MOVIA	0x80
	MCALL	__gptrget1
	BANKSEL	_displayDigit
	MOVAR	_displayDigit
	BANKSEL	r0x101A
	MOVAR	r0x101A
	BANKSEL	_displayDecade
	MOVAR	_displayDecade
;;101	MOVR	r0x101A,W
	.line	1324, "main.c"; 	displayDigit = DispTable[0];
	MGOTO	_02421_DS_
_02416_DS_:
	.line	1331, "main.c"; 	if (underVoltageDispTimer) // 欠压关机显示
	BANKSEL	_underVoltageDispTimer
	MOVR	_underVoltageDispTimer,W
	BTRSC	STATUS,2
	MGOTO	_02413_DS_
	.line	1333, "main.c"; 	underVoltageDispTimer--;
	MOVR	_underVoltageDispTimer,W
	BANKSEL	r0x101A
	MOVAR	r0x101A
	DECR	r0x101A,W
	BANKSEL	_underVoltageDispTimer
	MOVAR	_underVoltageDispTimer
	.line	1334, "main.c"; 	displayTimer = 0;
	BANKSEL	_displayTimer
	CLRR	_displayTimer
	.line	1335, "main.c"; 	displayHundred = SEG_E; //% DISP_ALL_OFF;
	MOVIA	0x10
	BANKSEL	_displayHundred
	MOVAR	_displayHundred
	.line	1336, "main.c"; 	if (bFlag_qc_ok)
	BANKSEL	_vFlag_0
	BTRSS	_vFlag_0,4
	MGOTO	_00003_DS_
	.line	1338, "main.c"; 	displayHundred |= SEG_D;
	BANKSEL	_displayHundred
	BSR	_displayHundred,3
_00003_DS_:
	.line	1347, "main.c"; 	if (underVoltageDispTimer % 2)
	BANKSEL	_underVoltageDispTimer
	BTRSS	_underVoltageDispTimer,0
	MGOTO	_02391_DS_
	.line	1349, "main.c"; 	i = displayData / 10;
	MOVIA	0x0a
	MOVAR	STK00
	BANKSEL	_displayData
	MOVR	_displayData,W
	MCALL	__divuchar
	BANKSEL	r0x101A
	MOVAR	r0x101A
	.line	1350, "main.c"; 	j = displayData % 10;
	MOVIA	0x0a
	MOVAR	STK00
	BANKSEL	_displayData
	MOVR	_displayData,W
	MCALL	__moduchar
	BANKSEL	r0x101B
	MOVAR	r0x101B
	.line	1354, "main.c"; 	displayDecade = DispTable[i];
	MOVIA	(_DispTable + 0)
	BANKSEL	r0x101A
	ADDAR	r0x101A,F
	MOVIA	((_DispTable + 0) >> 8) & 0xff
	ADCIA	0x00
	BANKSEL	r0x101C
	MOVAR	r0x101C
	BANKSEL	r0x101A
	MOVR	r0x101A,W
	MOVAR	STK01
	BANKSEL	r0x101C
	MOVR	r0x101C,W
	MOVAR	STK00
	MOVIA	0x80
	MCALL	__gptrget1
	BANKSEL	_displayDecade
	MOVAR	_displayDecade
	.line	1361, "main.c"; 	displayDigit = DispTable[j];
	MOVIA	(_DispTable + 0)
	BANKSEL	r0x101B
	ADDAR	r0x101B,F
	MOVIA	((_DispTable + 0) >> 8) & 0xff
	ADCIA	0x00
	BANKSEL	r0x101D
	MOVAR	r0x101D
	BANKSEL	r0x101B
	MOVR	r0x101B,W
	MOVAR	STK01
	BANKSEL	r0x101D
	MOVR	r0x101D,W
	MOVAR	STK00
	MOVIA	0x80
	MCALL	__gptrget1
	BANKSEL	_displayDigit
	MOVAR	_displayDigit
	MGOTO	_02392_DS_
;;unsigned compare: left < lit(0x5=5), size=1
_02391_DS_:
	.line	1365, "main.c"; 	if (displayData < 5)
	MOVIA	0x05
	BANKSEL	_displayData
	SUBAR	_displayData,W
	BTRSC	STATUS,0
	MGOTO	_02392_DS_
	.line	1367, "main.c"; 	displayDecade = DISP_ALL_OFF;
	BANKSEL	_displayDecade
	CLRR	_displayDecade
	.line	1368, "main.c"; 	displayDigit = DISP_ALL_OFF;
	BANKSEL	_displayDigit
	CLRR	_displayDigit
_02392_DS_:
	.line	1372, "main.c"; 	if (0 == underVoltageDispTimer)
	BANKSEL	_underVoltageDispTimer
	MOVR	_underVoltageDispTimer,W
	BTRSS	STATUS,2
	MGOTO	_02421_DS_
	.line	1374, "main.c"; 	if (displayData)
	BANKSEL	_displayData
	MOVR	_displayData,W
	BTRSC	STATUS,2
	MGOTO	_02421_DS_
	.line	1376, "main.c"; 	displayData--;
	MOVR	_displayData,W
	BANKSEL	r0x101A
	MOVAR	r0x101A
	DECR	r0x101A,W
	BANKSEL	_displayData
	MOVAR	_displayData
	.line	1377, "main.c"; 	underVoltageDispTimer = (CONST_TIMER_DISP_UV - 1);
	MOVIA	0x0a
	BANKSEL	_underVoltageDispTimer
	MOVAR	_underVoltageDispTimer
	MGOTO	_02421_DS_
_02413_DS_:
	.line	1381, "main.c"; 	else if (displayTimer)
	BANKSEL	_displayTimer
	MOVR	_displayTimer,W
	BTRSC	STATUS,2
	MGOTO	_02410_DS_
	.line	1385, "main.c"; 	displayTimer--;
	MOVR	_displayTimer,W
	BANKSEL	r0x101A
	MOVAR	r0x101A
	DECR	r0x101A,W
	BANKSEL	_displayTimer
	MOVAR	_displayTimer
;;unsigned compare: left < lit(0x64=100), size=1
	.line	1390, "main.c"; 	if (displayData < 100)
	MOVIA	0x64
	BANKSEL	_displayData
	SUBAR	_displayData,W
	BTRSC	STATUS,0
	MGOTO	_02407_DS_
	.line	1392, "main.c"; 	displayHundred = SEG_E; //% DISP_ALL_OFF;
	MOVIA	0x10
	BANKSEL	_displayHundred
	MOVAR	_displayHundred
	.line	1393, "main.c"; 	if (bFlag_qc_ok)
	BANKSEL	_vFlag_0
	BTRSS	_vFlag_0,4
	MGOTO	_00004_DS_
	.line	1395, "main.c"; 	displayHundred |= SEG_D;
	BANKSEL	_displayHundred
	BSR	_displayHundred,3
_00004_DS_:
	.line	1398, "main.c"; 	if (bFlag_blink)
	BANKSEL	_vFlag_0
	BTRSS	_vFlag_0,7
	MGOTO	_02402_DS_
	.line	1400, "main.c"; 	i = displayData / 10;
	MOVIA	0x0a
	MOVAR	STK00
	BANKSEL	_displayData
	MOVR	_displayData,W
	MCALL	__divuchar
	BANKSEL	r0x101A
	MOVAR	r0x101A
	.line	1401, "main.c"; 	j = displayData % 10;
	MOVIA	0x0a
	MOVAR	STK00
	BANKSEL	_displayData
	MOVR	_displayData,W
	MCALL	__moduchar
	BANKSEL	r0x101B
	MOVAR	r0x101B
	.line	1405, "main.c"; 	displayDecade = DispTable[i];
	MOVIA	(_DispTable + 0)
	BANKSEL	r0x101A
	ADDAR	r0x101A,F
	MOVIA	((_DispTable + 0) >> 8) & 0xff
	ADCIA	0x00
	BANKSEL	r0x101C
	MOVAR	r0x101C
	BANKSEL	r0x101A
	MOVR	r0x101A,W
	MOVAR	STK01
	BANKSEL	r0x101C
	MOVR	r0x101C,W
	MOVAR	STK00
	MOVIA	0x80
	MCALL	__gptrget1
	BANKSEL	_displayDecade
	MOVAR	_displayDecade
	.line	1412, "main.c"; 	displayDigit = DispTable[j];
	MOVIA	(_DispTable + 0)
	BANKSEL	r0x101B
	ADDAR	r0x101B,F
	MOVIA	((_DispTable + 0) >> 8) & 0xff
	ADCIA	0x00
	BANKSEL	r0x101A
	MOVAR	r0x101A
	BANKSEL	r0x101B
	MOVR	r0x101B,W
	MOVAR	STK01
	BANKSEL	r0x101A
	MOVR	r0x101A,W
	MOVAR	STK00
	MOVIA	0x80
	MCALL	__gptrget1
	BANKSEL	_displayDigit
	MOVAR	_displayDigit
	MGOTO	_02421_DS_
;;unsigned compare: left < lit(0x5=5), size=1
_02402_DS_:
	.line	1417, "main.c"; 	if (displayData < 5)
	MOVIA	0x05
	BANKSEL	_displayData
	SUBAR	_displayData,W
	BTRSC	STATUS,0
	MGOTO	_02421_DS_
	.line	1419, "main.c"; 	displayDecade = DISP_ALL_OFF;
	BANKSEL	_displayDecade
	CLRR	_displayDecade
	.line	1420, "main.c"; 	displayDigit = DISP_ALL_OFF;
	BANKSEL	_displayDigit
	CLRR	_displayDigit
	MGOTO	_02421_DS_
_02407_DS_:
	.line	1426, "main.c"; 	displayHundred = DispTable[1];
	MOVIA	(_DispTable + 1)
	MOVAR	STK01
	MOVIA	((_DispTable + 1) >> 8) & 0xff
	MOVAR	STK00
	MOVIA	0x80
	MCALL	__gptrget1
	BANKSEL	_displayHundred
	MOVAR	_displayHundred
	.line	1427, "main.c"; 	displayHundred |= SEG_E; //%
	BSR	_displayHundred,4
	.line	1428, "main.c"; 	if (bFlag_qc_ok)
	BANKSEL	_vFlag_0
	BTRSS	_vFlag_0,4
	MGOTO	_00005_DS_
	.line	1430, "main.c"; 	displayHundred |= SEG_D;
	BANKSEL	_displayHundred
	BSR	_displayHundred,3
_00005_DS_:
	.line	1432, "main.c"; 	displayDecade = DispTable[0];
	MOVIA	(_DispTable + 0)
	MOVAR	STK01
	MOVIA	((_DispTable + 0) >> 8) & 0xff
	MOVAR	STK00
	MOVIA	0x80
	MCALL	__gptrget1
	BANKSEL	r0x101A
	MOVAR	r0x101A
	BANKSEL	_displayDecade
	MOVAR	_displayDecade
	.line	1433, "main.c"; 	displayDigit = DispTable[0];
	BANKSEL	r0x101A
	MOVR	r0x101A,W
	BANKSEL	_displayDigit
	MOVAR	_displayDigit
	MGOTO	_02421_DS_
_02410_DS_:
	.line	1438, "main.c"; 	displayHundred = DISP_ALL_OFF;
	BANKSEL	_displayHundred
	CLRR	_displayHundred
	.line	1439, "main.c"; 	displayDecade = DISP_ALL_OFF;
	BANKSEL	_displayDecade
	CLRR	_displayDecade
	.line	1440, "main.c"; 	displayDigit = DISP_ALL_OFF;
	BANKSEL	_displayDigit
	CLRR	_displayDigit
_02421_DS_:
	.line	1443, "main.c"; 	}
	RETURN	
; exit point of _app_display_all

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   _ip55xs_read4Bytes
;   _ip55xs_read4Bytes
;1 compiler assigned register :
;   STK00
;; Starting pCode block
.segment "code"; module=main, function=_get_cap
	.debuginfo subprogram _get_cap
_get_cap:
; 2 exit points
	.line	1251, "main.c"; 	ip55xs_read4Bytes(0x10C0);
	MOVIA	0xc0
	MOVAR	STK00
	MOVIA	0x10
	MCALL	_ip55xs_read4Bytes
	.line	1252, "main.c"; 	displayData = IP_DATA[0];
	BANKSEL	_IP_DATA
	MOVR	_IP_DATA,W
	BANKSEL	_displayData
	MOVAR	_displayData
	.line	1256, "main.c"; 	}
	RETURN	
; exit point of _get_cap

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   _ip55xs_read4Bytes
;   _disable_breathing_mode
;   _enable_breathing_mode
;   _ip55xs_read4Bytes
;   _disable_breathing_mode
;   _enable_breathing_mode
;2 compiler assigned registers:
;   STK00
;   r0x1028
;; Starting pCode block
.segment "code"; module=main, function=_is_chg_or_dischg
	.debuginfo subprogram _is_chg_or_dischg
;local variable name mapping:
	.debuginfo complex-type (local-sym "_counter" 1 "main.c" 1167 (basetype 1 unsigned) link "_is_chg_or_dischg_counter_65536_123")
_is_chg_or_dischg:
; 2 exit points
	.line	1169, "main.c"; 	ip55xs_read4Bytes(0X1090);
	MOVIA	0x90
	MOVAR	STK00
	MOVIA	0x10
	MCALL	_ip55xs_read4Bytes
	.line	1177, "main.c"; 	bFlag_qc_ok = 0;
	BANKSEL	_vFlag_0
	BCR	_vFlag_0,4
	.line	1179, "main.c"; 	if (bFlag_charger_on) //! 在充电状态下
	BANKSEL	_vFlag_1
	BTRSS	_vFlag_1,5
	MGOTO	_02363_DS_
	.line	1181, "main.c"; 	delaySleepTimer = CONST_DSL_SHORT; //! 防止充电状态MCU关5356
	MOVIA	0x03
	BANKSEL	_delaySleepTimer
	MOVAR	_delaySleepTimer
	.line	1183, "main.c"; 	reg_ip53xs = (IP_DATA[2] & BIT3);               // bit19
	BANKSEL	_IP_DATA
	MOVR	(_IP_DATA + 2),W
	BANKSEL	r0x1028
	MOVAR	r0x1028
	BTRSS	r0x1028,3
	MGOTO	_02348_DS_
	.line	1184, "main.c"; 	if ((reg_ip53xs) && (0 == (IP_DATA[1] & BIT3))) // ! 同充同放 要显示充电的ui
	BANKSEL	_IP_DATA
	MOVR	(_IP_DATA + 1),W
	BANKSEL	r0x1028
	MOVAR	r0x1028
	BTRSC	r0x1028,3
	MGOTO	_02348_DS_
	.line	1188, "main.c"; 	bFlag_chg_or_dischg = 0;
	BANKSEL	_vFlag_1
	BCR	_vFlag_1,6
	.line	1189, "main.c"; 	if (++counter > 5) // CNST_FILTER_COM
	BANKSEL	_is_chg_or_dischg_counter_65536_123
	INCR	_is_chg_or_dischg_counter_65536_123,F
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0x6=6), size=1
	MOVIA	0x06
	SUBAR	_is_chg_or_dischg_counter_65536_123,W
	BTRSS	STATUS,0
	MGOTO	_02365_DS_
	.line	1191, "main.c"; 	counter = 0;
	CLRR	_is_chg_or_dischg_counter_65536_123
	.line	1192, "main.c"; 	bFlag_charger_on = 0; //! 放电
	BANKSEL	_vFlag_1
	BCR	_vFlag_1,5
	.line	1193, "main.c"; 	disable_breathing_mode();
	MCALL	_disable_breathing_mode
	MGOTO	_02365_DS_
_02348_DS_:
	.line	1198, "main.c"; 	counter = 0;
	BANKSEL	_is_chg_or_dischg_counter_65536_123
	CLRR	_is_chg_or_dischg_counter_65536_123
	.line	1200, "main.c"; 	if (IP_DATA[1] & BIT7)
	BANKSEL	_IP_DATA
	MOVR	(_IP_DATA + 1),W
	BANKSEL	r0x1028
	MOVAR	r0x1028
	BTRSS	r0x1028,7
	MGOTO	_00006_DS_
	.line	1202, "main.c"; 	bFlag_qc_ok = 1;
	BANKSEL	_vFlag_0
	BSR	_vFlag_0,4
_00006_DS_:
	.line	1204, "main.c"; 	bFlag_chg_or_dischg = 1;
	BANKSEL	_vFlag_1
	BSR	_vFlag_1,6
	MGOTO	_02365_DS_
_02363_DS_:
	.line	1212, "main.c"; 	reg_ip53xs = (IP_DATA[1] & BIT3); // bit11
	BANKSEL	_IP_DATA
	MOVR	(_IP_DATA + 1),W
	BANKSEL	r0x1028
	MOVAR	r0x1028
	BTRSS	r0x1028,3
	MGOTO	_02360_DS_
	.line	1215, "main.c"; 	bFlag_chg_or_dischg = 1;
	BANKSEL	_vFlag_1
	BSR	_vFlag_1,6
	.line	1216, "main.c"; 	if (++counter > CNST_FILTER_COM) // 2次
	BANKSEL	_is_chg_or_dischg_counter_65536_123
	INCR	_is_chg_or_dischg_counter_65536_123,F
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0x3=3), size=1
	MOVIA	0x03
	SUBAR	_is_chg_or_dischg_counter_65536_123,W
	BTRSS	STATUS,0
	MGOTO	_02365_DS_
	.line	1218, "main.c"; 	counter = 0;
	CLRR	_is_chg_or_dischg_counter_65536_123
	.line	1219, "main.c"; 	bFlag_charger_on = 1; //! 充电
	BANKSEL	_vFlag_1
	BSR	_vFlag_1,5
;;unsigned compare: left < lit(0x64=100), size=1
	.line	1220, "main.c"; 	if (displayData < 100)
	MOVIA	0x64
	BANKSEL	_displayData
	SUBAR	_displayData,W
	BTRSS	STATUS,0
	.line	1222, "main.c"; 	enable_breathing_mode();
	MCALL	_enable_breathing_mode
	.line	1224, "main.c"; 	forceDispTimer = 6;
	MOVIA	0x06
	BANKSEL	_forceDispTimer
	MOVAR	_forceDispTimer
	MGOTO	_02365_DS_
_02360_DS_:
	.line	1229, "main.c"; 	counter = 0;
	BANKSEL	_is_chg_or_dischg_counter_65536_123
	CLRR	_is_chg_or_dischg_counter_65536_123
	.line	1230, "main.c"; 	bFlag_chg_or_dischg = 0;
	BANKSEL	_vFlag_1
	BCR	_vFlag_1,6
	.line	1231, "main.c"; 	if (IP_DATA[3] & BIT3)
	BANKSEL	_IP_DATA
	MOVR	(_IP_DATA + 3),W
	BANKSEL	r0x1028
	MOVAR	r0x1028
	BTRSS	r0x1028,3
	MGOTO	_00007_DS_
	.line	1233, "main.c"; 	bFlag_qc_ok = 1;
	BANKSEL	_vFlag_0
	BSR	_vFlag_0,4
_00007_DS_:
	.line	1236, "main.c"; 	if ((IP_DATA[2] & BIT3)) // bit19
	BANKSEL	_IP_DATA
	MOVR	(_IP_DATA + 2),W
	BANKSEL	r0x1028
	MOVAR	r0x1028
	BTRSS	r0x1028,3
	MGOTO	_02365_DS_
	.line	1238, "main.c"; 	displayTimer = CONST_TIMER_DISP_XSEC;
	MOVIA	0x0a
	BANKSEL	_displayTimer
	MOVAR	_displayTimer
_02365_DS_:
	.line	1247, "main.c"; 	}
	RETURN	
; exit point of _is_chg_or_dischg

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   _ip55xs_read4Bytes
;   _ip55xs_write4Bytes
;   _ip55xs_read4Bytes
;   _ip55xs_write4Bytes
;7 compiler assigned registers:
;   STK00
;   r0x102A
;   r0x102B
;   r0x102C
;   STK03
;   STK02
;   STK01
;; Starting pCode block
.segment "code"; module=main, function=_get_p_ext_int_status
	.debuginfo subprogram _get_p_ext_int_status
;local variable name mapping:
	.debuginfo complex-type (local-sym "_counter" 1 "main.c" 1102 (basetype 1 unsigned) link "_get_p_ext_int_status_counter_65536_113")
_get_p_ext_int_status:
; 2 exit points
	.line	1104, "main.c"; 	if (bFlag_p_ext_int_is_high)
	BANKSEL	_vFlag_1
	BTRSS	_vFlag_1,3
	MGOTO	_02336_DS_
	.line	1106, "main.c"; 	if (!P_I2C_INT)
	BTRSC	_PORTAbits,2
	MGOTO	_02328_DS_
	.line	1108, "main.c"; 	if (++counter > 3)
	BANKSEL	_get_p_ext_int_status_counter_65536_113
	INCR	_get_p_ext_int_status_counter_65536_113,F
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0x4=4), size=1
	MOVIA	0x04
	SUBAR	_get_p_ext_int_status_counter_65536_113,W
	BTRSS	STATUS,0
	MGOTO	_02338_DS_
	.line	1110, "main.c"; 	counter = 0;
	CLRR	_get_p_ext_int_status_counter_65536_113
	.line	1111, "main.c"; 	bFlag_p_ext_int_is_high = 0;
	BANKSEL	_vFlag_1
	BCR	_vFlag_1,3
	.line	1112, "main.c"; 	bFlag_charger_on = 0; //! 放电
	BCR	_vFlag_1,5
	.line	1113, "main.c"; 	delaySleepTimer = 1;
	MOVIA	0x01
	BANKSEL	_delaySleepTimer
	MOVAR	_delaySleepTimer
	MGOTO	_02338_DS_
_02328_DS_:
	.line	1118, "main.c"; 	counter = 0;
	BANKSEL	_get_p_ext_int_status_counter_65536_113
	CLRR	_get_p_ext_int_status_counter_65536_113
	MGOTO	_02338_DS_
_02336_DS_:
	.line	1123, "main.c"; 	if (P_I2C_INT)
	BTRSS	_PORTAbits,2
	MGOTO	_02333_DS_
	.line	1125, "main.c"; 	if (++counter > CONST_P_VIN_FILTER)
	BANKSEL	_get_p_ext_int_status_counter_65536_113
	INCR	_get_p_ext_int_status_counter_65536_113,F
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0x10=16), size=1
	MOVIA	0x10
	SUBAR	_get_p_ext_int_status_counter_65536_113,W
	BTRSS	STATUS,0
	MGOTO	_02338_DS_
	.line	1127, "main.c"; 	counter = 0;
	CLRR	_get_p_ext_int_status_counter_65536_113
	.line	1128, "main.c"; 	bFlag_p_ext_int_is_high = 1;
	BANKSEL	_vFlag_1
	BSR	_vFlag_1,3
	.line	1131, "main.c"; 	ip55xs_read4Bytes(0X00C0);
	MOVIA	0xc0
	MOVAR	STK00
	MOVIA	0x00
	MCALL	_ip55xs_read4Bytes
	.line	1133, "main.c"; 	IP_DATA[3] &= ~(BIT2); // bit24,bit26
	BANKSEL	_IP_DATA
	MOVR	(_IP_DATA + 3),W
	BANKSEL	r0x102A
	MOVAR	r0x102A
	BCR	r0x102A,2
	MOVR	r0x102A,W
	BANKSEL	_IP_DATA
	MOVAR	(_IP_DATA + 3)
	.line	1134, "main.c"; 	IP_DATA[3] &= ~(BIT0);
	MOVR	(_IP_DATA + 3),W
	BANKSEL	r0x102A
	MOVAR	r0x102A
	BCR	r0x102A,0
	MOVR	r0x102A,W
	BANKSEL	_IP_DATA
	MOVAR	(_IP_DATA + 3)
	.line	1135, "main.c"; 	ip55xs_write4Bytes(0X00C0, IP_DATA);
	MOVIA	(_IP_DATA + 0)
	BANKSEL	r0x102A
	MOVAR	r0x102A
	MOVAR	STK03
	MOVIA	0x00
	MOVAR	STK02
	MOVAR	STK01
	MOVIA	0xc0
	MOVAR	STK00
	MOVIA	0x00
	MCALL	_ip55xs_write4Bytes
	.line	1136, "main.c"; 	delaySleepTimer = CNST_TIMER_DLY_SLP;
	MOVIA	0x14
	BANKSEL	_delaySleepTimer
	MOVAR	_delaySleepTimer
	MGOTO	_02338_DS_
_02333_DS_:
	.line	1142, "main.c"; 	counter = 0;
	BANKSEL	_get_p_ext_int_status_counter_65536_113
	CLRR	_get_p_ext_int_status_counter_65536_113
_02338_DS_:
	.line	1145, "main.c"; 	}
	RETURN	
; exit point of _get_p_ext_int_status

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   _ip55xs_read4Bytes
;   _ip55xs_write4Bytes
;   _ip55xs_read4Bytes
;   _ip55xs_write4Bytes
;7 compiler assigned registers:
;   STK00
;   r0x102E
;   r0x102F
;   r0x1030
;   STK03
;   STK02
;   STK01
;; Starting pCode block
.segment "code"; module=main, function=_init_ip53xs
	.debuginfo subprogram _init_ip53xs
_init_ip53xs:
; 2 exit points
	.line	1092, "main.c"; 	ip55xs_read4Bytes(0X00C0);
	MOVIA	0xc0
	MOVAR	STK00
	MOVIA	0x00
	MCALL	_ip55xs_read4Bytes
	.line	1094, "main.c"; 	IP_DATA[3] &= ~(BIT2); // bit24,bit26
	BANKSEL	_IP_DATA
	MOVR	(_IP_DATA + 3),W
	BANKSEL	r0x102E
	MOVAR	r0x102E
	BCR	r0x102E,2
	MOVR	r0x102E,W
	BANKSEL	_IP_DATA
	MOVAR	(_IP_DATA + 3)
	.line	1095, "main.c"; 	IP_DATA[3] &= ~(BIT0);
	MOVR	(_IP_DATA + 3),W
	BANKSEL	r0x102E
	MOVAR	r0x102E
	BCR	r0x102E,0
	MOVR	r0x102E,W
	BANKSEL	_IP_DATA
	MOVAR	(_IP_DATA + 3)
	.line	1096, "main.c"; 	ip55xs_write4Bytes(0X00C0, IP_DATA);
	MOVIA	(_IP_DATA + 0)
	BANKSEL	r0x102E
	MOVAR	r0x102E
	MOVAR	STK03
	MOVIA	0x00
	MOVAR	STK02
	MOVAR	STK01
	MOVIA	0xc0
	MOVAR	STK00
	MOVIA	0x00
	MCALL	_ip55xs_write4Bytes
	.line	1097, "main.c"; 	}
	RETURN	
; exit point of _init_ip53xs

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   _ip53xs_writeByte
;   _ip53xs_writeByte
;   _ip53xs_writeByte
;   _ip53xs_writeByte
;   _ip53xs_readByte
;   _ip53xs_readByte
;   _ip53xs_readByte
;   _ip53xs_readByte
;   _ip53xs_readByte
;   _ip53xs_writeByte
;   _ip53xs_writeByte
;   _ip53xs_writeByte
;   _ip53xs_writeByte
;   _ip53xs_writeByte
;   _ip53xs_writeByte
;   _ip53xs_writeByte
;   _ip53xs_writeByte
;   _ip53xs_readByte
;   _ip53xs_readByte
;   _ip53xs_readByte
;   _ip53xs_readByte
;   _ip53xs_readByte
;   _ip53xs_writeByte
;   _ip53xs_writeByte
;   _ip53xs_writeByte
;   _ip53xs_writeByte
;7 compiler assigned registers:
;   r0x1023
;   STK00
;   r0x1024
;   r0x1025
;   STK01
;   r0x1026
;   r0x1027
;; Starting pCode block
.segment "code"; module=main, function=_ip55xs_read4Bytes
	.debuginfo subprogram _ip55xs_read4Bytes
;local variable name mapping:
	.debuginfo complex-type (local-sym "_regAddr" 2 "main.c" 1045 (basetype 2 unsigned) split "r0x1024" "r0x1023")
	.debuginfo complex-type (local-sym "_timer_out" 1 "main.c" 1050 (basetype 1 unsigned) split "r0x1023")
	.debuginfo complex-type (local-sym "_reg_ip55xs" 1 "main.c" 1049 (basetype 1 unsigned) split "r0x1026")
_ip55xs_read4Bytes:
; 2 exit points
	.line	1045, "main.c"; 	BOOL ip55xs_read4Bytes(/*unsigned char deviceAddr,*/ unsigned int regAddr) //(unsigned char regAddr)
	BANKSEL	r0x1023
	MOVAR	r0x1023
	MOVR	STK00,W
	BANKSEL	r0x1024
	MOVAR	r0x1024
	.line	1051, "main.c"; 	ip53xs_writeByte(0xEA, 0x10, (unsigned char)regAddr);        // ADDR_L
	BANKSEL	r0x1025
	MOVAR	r0x1025
	MOVAR	STK01
	MOVIA	0x10
	MOVAR	STK00
	MOVIA	0xea
	MCALL	_ip53xs_writeByte
	.line	1052, "main.c"; 	ip53xs_writeByte(0xEA, 0x11, (unsigned char)(regAddr >> 8)); // ADDR_H
	BANKSEL	r0x1023
	MOVR	r0x1023,W
	BANKSEL	r0x1026
	MOVAR	r0x1026
	BANKSEL	r0x1024
	MOVAR	r0x1024
	MOVAR	STK01
	MOVIA	0x11
	MOVAR	STK00
	MOVIA	0xea
	MCALL	_ip53xs_writeByte
	.line	1053, "main.c"; 	ip53xs_writeByte(0xEA, 0x12, (unsigned char)0x11);
	MOVIA	0x11
	MOVAR	STK01
	MOVIA	0x12
	MOVAR	STK00
	MOVIA	0xea
	MCALL	_ip53xs_writeByte
	.line	1054, "main.c"; 	ip53xs_writeByte(0xEA, 0x13, (unsigned char)0x11);
	MOVIA	0x11
	MOVAR	STK01
	MOVIA	0x13
	MOVAR	STK00
	MOVIA	0xea
	MCALL	_ip53xs_writeByte
	.line	1058, "main.c"; 	do
	MOVIA	0x64
	BANKSEL	r0x1023
	MOVAR	r0x1023
_02313_DS_:
	.line	1060, "main.c"; 	reg_ip55xs = ip53xs_readByte(0xEA, 0x00);
	MOVIA	0x00
	MOVAR	STK00
	MOVIA	0xea
	MCALL	_ip53xs_readByte
	BANKSEL	r0x1026
	MOVAR	r0x1026
	.line	1061, "main.c"; 	if (0 == timer_out)
	BANKSEL	r0x1023
	MOVR	r0x1023,W
	BTRSS	STATUS,2
	MGOTO	_02311_DS_
	.line	1063, "main.c"; 	return FALSE;
	MOVIA	0x00
	MGOTO	_02316_DS_
_02311_DS_:
	.line	1068, "main.c"; 	timer_out--;
	BANKSEL	r0x1023
	DECR	r0x1023,F
	.line	1070, "main.c"; 	} while (0xAA != reg_ip55xs);
	BANKSEL	r0x1026
	MOVR	r0x1026,W
	XORIA	0xaa
	BTRSS	STATUS,2
	MGOTO	_02313_DS_
	.line	1071, "main.c"; 	IP_DATA[0] = ip53xs_readByte(0xEA, 0x0C);
	MOVIA	0x0c
	MOVAR	STK00
	MOVIA	0xea
	MCALL	_ip53xs_readByte
	BANKSEL	r0x1023
	MOVAR	r0x1023
	BANKSEL	_IP_DATA
	MOVAR	(_IP_DATA + 0)
	.line	1072, "main.c"; 	IP_DATA[1] = ip53xs_readByte(0xEA, 0x0D);
	MOVIA	0x0d
	MOVAR	STK00
	MOVIA	0xea
	MCALL	_ip53xs_readByte
	BANKSEL	r0x1023
	MOVAR	r0x1023
	BANKSEL	_IP_DATA
	MOVAR	(_IP_DATA + 1)
	.line	1073, "main.c"; 	IP_DATA[2] = ip53xs_readByte(0xEA, 0x0E);
	MOVIA	0x0e
	MOVAR	STK00
	MOVIA	0xea
	MCALL	_ip53xs_readByte
	BANKSEL	r0x1023
	MOVAR	r0x1023
	BANKSEL	_IP_DATA
	MOVAR	(_IP_DATA + 2)
	.line	1074, "main.c"; 	IP_DATA[3] = ip53xs_readByte(0xEA, 0x0F);
	MOVIA	0x0f
	MOVAR	STK00
	MOVIA	0xea
	MCALL	_ip53xs_readByte
	BANKSEL	r0x1023
	MOVAR	r0x1023
	BANKSEL	_IP_DATA
	MOVAR	(_IP_DATA + 3)
	.line	1075, "main.c"; 	ip53xs_writeByte(0xEA, 0x10, (unsigned char)regAddr);        // ADDR_L
	BANKSEL	r0x1025
	MOVR	r0x1025,W
	MOVAR	STK01
	MOVIA	0x10
	MOVAR	STK00
	MOVIA	0xea
	MCALL	_ip53xs_writeByte
	.line	1076, "main.c"; 	ip53xs_writeByte(0xEA, 0x11, (unsigned char)(regAddr >> 8)); // ADDR_H
	BANKSEL	r0x1024
	MOVR	r0x1024,W
	MOVAR	STK01
	MOVIA	0x11
	MOVAR	STK00
	MOVIA	0xea
	MCALL	_ip53xs_writeByte
	.line	1077, "main.c"; 	ip53xs_writeByte(0xEA, 0x12, (unsigned char)0x22);
	MOVIA	0x22
	MOVAR	STK01
	MOVIA	0x12
	MOVAR	STK00
	MOVIA	0xea
	MCALL	_ip53xs_writeByte
	.line	1078, "main.c"; 	ip53xs_writeByte(0xEA, 0x13, (unsigned char)0x22);
	MOVIA	0x22
	MOVAR	STK01
	MOVIA	0x13
	MOVAR	STK00
	MOVIA	0xea
	MCALL	_ip53xs_writeByte
	.line	1079, "main.c"; 	return TRUE;
	MOVIA	0x01
_02316_DS_:
	.line	1080, "main.c"; 	}
	RETURN	
; exit point of _ip55xs_read4Bytes

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   _ip53xs_writeByte
;   _ip53xs_writeByte
;   _ip53xs_writeByte
;   _ip53xs_writeByte
;   _ip53xs_readByte
;   __gptrget1
;   _ip53xs_writeByte
;   __gptrget1
;   _ip53xs_writeByte
;   _ip53xs_writeByte
;   _ip53xs_writeByte
;   _ip53xs_readByte
;   __gptrget1
;   _ip53xs_writeByte
;   __gptrget1
;   _ip53xs_writeByte
;   _ip53xs_writeByte
;   _ip53xs_writeByte
;   _ip53xs_readByte
;   _ip53xs_writeByte
;   _ip53xs_writeByte
;   _ip53xs_writeByte
;   _ip53xs_writeByte
;   _ip53xs_readByte
;   __gptrget1
;   _ip53xs_writeByte
;   __gptrget1
;   _ip53xs_writeByte
;   _ip53xs_writeByte
;   _ip53xs_writeByte
;   _ip53xs_readByte
;   __gptrget1
;   _ip53xs_writeByte
;   __gptrget1
;   _ip53xs_writeByte
;   _ip53xs_writeByte
;   _ip53xs_writeByte
;   _ip53xs_readByte
;11 compiler assigned registers:
;   r0x1023
;   STK00
;   r0x1024
;   STK01
;   r0x1025
;   STK02
;   r0x1026
;   STK03
;   r0x1027
;   r0x1028
;   r0x1029
;; Starting pCode block
.segment "code"; module=main, function=_ip55xs_write4Bytes
	.debuginfo subprogram _ip55xs_write4Bytes
;local variable name mapping:
	.debuginfo complex-type (local-sym "_regAddr" 2 "main.c" 976 (basetype 2 unsigned) split "r0x1024" "r0x1023")
	.debuginfo complex-type (local-sym "_reg_ip55xs" 1 "main.c" 978 (basetype 1 unsigned) split "r0x1024")
	.debuginfo complex-type (local-sym "_timer_out" 1 "main.c" 979 (basetype 1 unsigned) split "r0x1023")
	.debuginfo complex-type (local-sym "_pdata" 3 "main.c" 976 (pointer gptr 3 (basetype 1 unsigned)) split "r0x1027" "r0x1026" "r0x1025")
_ip55xs_write4Bytes:
; 2 exit points
	.line	976, "main.c"; 	BOOL ip55xs_write4Bytes(unsigned int regAddr, unsigned char *pdata)
	BANKSEL	r0x1023
	MOVAR	r0x1023
	MOVR	STK00,W
	BANKSEL	r0x1024
	MOVAR	r0x1024
	MOVR	STK01,W
	BANKSEL	r0x1025
	MOVAR	r0x1025
	MOVR	STK02,W
	BANKSEL	r0x1026
	MOVAR	r0x1026
	MOVR	STK03,W
	BANKSEL	r0x1027
	MOVAR	r0x1027
	.line	981, "main.c"; 	ip53xs_writeByte(0xEA, 0x10, (unsigned char)regAddr);        // ADDR_L
	BANKSEL	r0x1024
	MOVR	r0x1024,W
;;100	MOVAR	r0x1028
	MOVAR	STK01
	MOVIA	0x10
	MOVAR	STK00
	MOVIA	0xea
	MCALL	_ip53xs_writeByte
	.line	982, "main.c"; 	ip53xs_writeByte(0xEA, 0x11, (unsigned char)(regAddr >> 8)); // ADDR_H
	BANKSEL	r0x1023
	MOVR	r0x1023,W
;;99	MOVAR	r0x1028
	BANKSEL	r0x1024
	MOVAR	r0x1024
	MOVAR	STK01
	MOVIA	0x11
	MOVAR	STK00
	MOVIA	0xea
	MCALL	_ip53xs_writeByte
	.line	983, "main.c"; 	ip53xs_writeByte(0xEA, 0x12, (unsigned char)0x55);
	MOVIA	0x55
	MOVAR	STK01
	MOVIA	0x12
	MOVAR	STK00
	MOVIA	0xea
	MCALL	_ip53xs_writeByte
	.line	984, "main.c"; 	ip53xs_writeByte(0xEA, 0x13, (unsigned char)0x55);
	MOVIA	0x55
	MOVAR	STK01
	MOVIA	0x13
	MOVAR	STK00
	MOVIA	0xea
	MCALL	_ip53xs_writeByte
	.line	986, "main.c"; 	reg_ip55xs = ip53xs_readByte(0xEA, 0x00);
	MOVIA	0x00
	MOVAR	STK00
	MOVIA	0xea
	MCALL	_ip53xs_readByte
	BANKSEL	r0x1024
	MOVAR	r0x1024
	.line	988, "main.c"; 	do
	MOVIA	0x64
	BANKSEL	r0x1023
	MOVAR	r0x1023
_02290_DS_:
	.line	990, "main.c"; 	if (timer_out)
	BANKSEL	r0x1023
	MOVR	r0x1023,W
	BTRSC	STATUS,2
	MGOTO	_02288_DS_
	.line	992, "main.c"; 	timer_out--;
	DECR	r0x1023,F
	MGOTO	_02291_DS_
_02288_DS_:
	.line	996, "main.c"; 	return FALSE;
	MOVIA	0x00
	MGOTO	_02305_DS_
_02291_DS_:
	.line	998, "main.c"; 	} while (0xAA != reg_ip55xs);
	BANKSEL	r0x1024
	MOVR	r0x1024,W
	XORIA	0xaa
	BTRSS	STATUS,2
	MGOTO	_02290_DS_
	.line	999, "main.c"; 	ip53xs_writeByte(0xEA, 0x10, *pdata); // DATA0
	BANKSEL	r0x1027
	MOVR	r0x1027,W
	MOVAR	STK01
	BANKSEL	r0x1026
	MOVR	r0x1026,W
	MOVAR	STK00
	BANKSEL	r0x1025
	MOVR	r0x1025,W
	MCALL	__gptrget1
	BANKSEL	r0x1024
	MOVAR	r0x1024
	MOVAR	STK01
	MOVIA	0x10
	MOVAR	STK00
	MOVIA	0xea
	MCALL	_ip53xs_writeByte
	.line	1000, "main.c"; 	pdata++;
	BANKSEL	r0x1027
	INCR	r0x1027,F
	BTRSS	STATUS,2
	MGOTO	_00008_DS_
	BANKSEL	r0x1026
	INCR	r0x1026,F
_00008_DS_:
	BTRSS	STATUS,2
	MGOTO	_00009_DS_
	BANKSEL	r0x1025
	INCR	r0x1025,F
_00009_DS_:
	.line	1001, "main.c"; 	ip53xs_writeByte(0xEA, 0x11, *pdata); // DATA1
	BANKSEL	r0x1027
	MOVR	r0x1027,W
	MOVAR	STK01
	BANKSEL	r0x1026
	MOVR	r0x1026,W
	MOVAR	STK00
	BANKSEL	r0x1025
	MOVR	r0x1025,W
	MCALL	__gptrget1
	BANKSEL	r0x1024
	MOVAR	r0x1024
	MOVAR	STK01
	MOVIA	0x11
	MOVAR	STK00
	MOVIA	0xea
	MCALL	_ip53xs_writeByte
	.line	1003, "main.c"; 	ip53xs_writeByte(0xEA, 0x12, 0x66);
	MOVIA	0x66
	MOVAR	STK01
	MOVIA	0x12
	MOVAR	STK00
	MOVIA	0xea
	MCALL	_ip53xs_writeByte
	.line	1005, "main.c"; 	ip53xs_writeByte(0xEA, 0x13, 0x66);
	MOVIA	0x66
	MOVAR	STK01
	MOVIA	0x13
	MOVAR	STK00
	MOVIA	0xea
	MCALL	_ip53xs_writeByte
	.line	1007, "main.c"; 	reg_ip55xs = ip53xs_readByte(0xEA, 0x00);
	MOVIA	0x00
	MOVAR	STK00
	MOVIA	0xea
	MCALL	_ip53xs_readByte
	BANKSEL	r0x1024
	MOVAR	r0x1024
	.line	1009, "main.c"; 	do
	MOVIA	0x64
	BANKSEL	r0x1023
	MOVAR	r0x1023
_02296_DS_:
	.line	1011, "main.c"; 	if (timer_out)
	BANKSEL	r0x1023
	MOVR	r0x1023,W
	BTRSC	STATUS,2
	MGOTO	_02294_DS_
	.line	1013, "main.c"; 	timer_out--;
	DECR	r0x1023,F
	MGOTO	_02297_DS_
_02294_DS_:
	.line	1017, "main.c"; 	return FALSE;
	MOVIA	0x00
	MGOTO	_02305_DS_
_02297_DS_:
	.line	1019, "main.c"; 	} while (0x55 != reg_ip55xs);
	BANKSEL	r0x1024
	MOVR	r0x1024,W
	XORIA	0x55
	BTRSS	STATUS,2
	MGOTO	_02296_DS_
	.line	1021, "main.c"; 	pdata++;
	BANKSEL	r0x1027
	INCR	r0x1027,F
	BTRSS	STATUS,2
	MGOTO	_00010_DS_
	BANKSEL	r0x1026
	INCR	r0x1026,F
_00010_DS_:
	BTRSS	STATUS,2
	MGOTO	_00011_DS_
	BANKSEL	r0x1025
	INCR	r0x1025,F
_00011_DS_:
	.line	1022, "main.c"; 	ip53xs_writeByte(0xEA, 0x10, *pdata); // DATA2
	BANKSEL	r0x1027
	MOVR	r0x1027,W
	MOVAR	STK01
	BANKSEL	r0x1026
	MOVR	r0x1026,W
	MOVAR	STK00
	BANKSEL	r0x1025
	MOVR	r0x1025,W
	MCALL	__gptrget1
	BANKSEL	r0x1024
	MOVAR	r0x1024
	MOVAR	STK01
	MOVIA	0x10
	MOVAR	STK00
	MOVIA	0xea
	MCALL	_ip53xs_writeByte
	.line	1023, "main.c"; 	pdata++;
	BANKSEL	r0x1027
	INCR	r0x1027,F
	BTRSS	STATUS,2
	MGOTO	_00012_DS_
	BANKSEL	r0x1026
	INCR	r0x1026,F
_00012_DS_:
	BTRSS	STATUS,2
	MGOTO	_00013_DS_
	BANKSEL	r0x1025
	INCR	r0x1025,F
_00013_DS_:
	.line	1024, "main.c"; 	ip53xs_writeByte(0xEA, 0x11, *pdata); // DATA3
	BANKSEL	r0x1027
	MOVR	r0x1027,W
	MOVAR	STK01
	BANKSEL	r0x1026
	MOVR	r0x1026,W
	MOVAR	STK00
	BANKSEL	r0x1025
	MOVR	r0x1025,W
	MCALL	__gptrget1
	BANKSEL	r0x1024
	MOVAR	r0x1024
	MOVAR	STK01
	MOVIA	0x11
	MOVAR	STK00
	MOVIA	0xea
	MCALL	_ip53xs_writeByte
	.line	1025, "main.c"; 	ip53xs_writeByte(0xEA, 0x12, 0x77);
	MOVIA	0x77
	MOVAR	STK01
	MOVIA	0x12
	MOVAR	STK00
	MOVIA	0xea
	MCALL	_ip53xs_writeByte
	.line	1027, "main.c"; 	ip53xs_writeByte(0xEA, 0x13, 0x77);
	MOVIA	0x77
	MOVAR	STK01
	MOVIA	0x13
	MOVAR	STK00
	MOVIA	0xea
	MCALL	_ip53xs_writeByte
	.line	1029, "main.c"; 	reg_ip55xs = ip53xs_readByte(0xEA, 0x00);
	MOVIA	0x00
	MOVAR	STK00
	MOVIA	0xea
	MCALL	_ip53xs_readByte
	BANKSEL	r0x1024
	MOVAR	r0x1024
	.line	1031, "main.c"; 	do
	MOVIA	0x64
	BANKSEL	r0x1023
	MOVAR	r0x1023
_02302_DS_:
	.line	1033, "main.c"; 	if (timer_out)
	BANKSEL	r0x1023
	MOVR	r0x1023,W
	BTRSC	STATUS,2
	MGOTO	_02300_DS_
	.line	1035, "main.c"; 	timer_out--;
	DECR	r0x1023,F
	MGOTO	_02303_DS_
_02300_DS_:
	.line	1039, "main.c"; 	return FALSE;
	MOVIA	0x00
	MGOTO	_02305_DS_
_02303_DS_:
	.line	1041, "main.c"; 	} while (0xFF != reg_ip55xs);
	BANKSEL	r0x1024
	MOVR	r0x1024,W
	XORIA	0xff
	BTRSS	STATUS,2
	MGOTO	_02302_DS_
	.line	1042, "main.c"; 	return TRUE;
	MOVIA	0x01
_02305_DS_:
	.line	1043, "main.c"; 	}
	RETURN	
; exit point of _ip55xs_write4Bytes

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   _i2c_start
;   _i2c_writeByte
;   _i2c_stop
;   _i2c_writeByte
;   _i2c_stop
;   _i2c_start
;   _i2c_writeByte
;   _i2c_stop
;   _i2c_readByte
;   _i2c_send_nack
;   _i2c_stop
;   _i2c_start
;   _i2c_writeByte
;   _i2c_stop
;   _i2c_writeByte
;   _i2c_stop
;   _i2c_start
;   _i2c_writeByte
;   _i2c_stop
;   _i2c_readByte
;   _i2c_send_nack
;   _i2c_stop
;5 compiler assigned registers:
;   r0x101F
;   STK00
;   r0x1020
;   r0x1021
;   r0x1022
;; Starting pCode block
.segment "code"; module=main, function=_ip53xs_readByte
	.debuginfo subprogram _ip53xs_readByte
;local variable name mapping:
	.debuginfo complex-type (local-sym "_deviceAddr" 1 "main.c" 941 (basetype 1 unsigned) split "r0x101F")
	.debuginfo complex-type (local-sym "_regAddr" 1 "main.c" 941 (basetype 1 unsigned) split "r0x1020")
	.debuginfo complex-type (local-sym "_readByte" 1 "main.c" 943 (basetype 1 unsigned) split "r0x1021")
_ip53xs_readByte:
; 2 exit points
	.line	941, "main.c"; 	unsigned char ip53xs_readByte(unsigned char deviceAddr, unsigned char regAddr) //(unsigned char regAddr)
	BANKSEL	r0x101F
	MOVAR	r0x101F
	MOVR	STK00,W
	BANKSEL	r0x1020
	MOVAR	r0x1020
	.line	943, "main.c"; 	unsigned char readByte = 0;
	BANKSEL	r0x1021
	CLRR	r0x1021
	.line	944, "main.c"; 	if (P_I2C_INT)
	BTRSS	_PORTAbits,2
	MGOTO	_02281_DS_
	.line	946, "main.c"; 	i2c_start();
	MCALL	_i2c_start
	.line	948, "main.c"; 	if (i2c_writeByte(deviceAddr | IIC_WRITE))
	BANKSEL	r0x101F
	MOVR	r0x101F,W
	MCALL	_i2c_writeByte
	BANKSEL	r0x1022
	MOVAR	r0x1022
	MOVR	r0x1022,W
	BTRSC	STATUS,2
	MGOTO	_02275_DS_
	.line	950, "main.c"; 	i2c_stop();
	MCALL	_i2c_stop
	.line	951, "main.c"; 	return FALSE;
	MOVIA	0x00
	MGOTO	_02282_DS_
_02275_DS_:
	.line	954, "main.c"; 	if (i2c_writeByte(regAddr))
	BANKSEL	r0x1020
	MOVR	r0x1020,W
	MCALL	_i2c_writeByte
	BANKSEL	r0x1020
	MOVAR	r0x1020
	MOVR	r0x1020,W
	BTRSC	STATUS,2
	MGOTO	_02277_DS_
	.line	956, "main.c"; 	i2c_stop();
	MCALL	_i2c_stop
	.line	957, "main.c"; 	return FALSE;
	MOVIA	0x00
	MGOTO	_02282_DS_
_02277_DS_:
	.line	960, "main.c"; 	i2c_start();
	MCALL	_i2c_start
	.line	962, "main.c"; 	if (i2c_writeByte(deviceAddr | IIC_READ))
	BANKSEL	r0x101F
	BSR	r0x101F,0
	MOVR	r0x101F,W
	MCALL	_i2c_writeByte
	BANKSEL	r0x101F
	MOVAR	r0x101F
	MOVR	r0x101F,W
	BTRSC	STATUS,2
	MGOTO	_02279_DS_
	.line	964, "main.c"; 	i2c_stop();
	MCALL	_i2c_stop
	.line	965, "main.c"; 	return FALSE;
	MOVIA	0x00
	MGOTO	_02282_DS_
_02279_DS_:
	.line	968, "main.c"; 	readByte = i2c_readByte();
	MCALL	_i2c_readByte
	BANKSEL	r0x1021
	MOVAR	r0x1021
	.line	969, "main.c"; 	i2c_send_nack();
	MCALL	_i2c_send_nack
	.line	970, "main.c"; 	i2c_stop();
	MCALL	_i2c_stop
_02281_DS_:
	.line	973, "main.c"; 	return readByte;
	BANKSEL	r0x1021
	MOVR	r0x1021,W
_02282_DS_:
	.line	974, "main.c"; 	}
	RETURN	
; exit point of _ip53xs_readByte

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   _i2c_start
;   _i2c_writeByte
;   _i2c_stop
;   _i2c_writeByte
;   _i2c_stop
;   _i2c_writeByte
;   _i2c_stop
;   _i2c_stop
;   _i2c_start
;   _i2c_writeByte
;   _i2c_stop
;   _i2c_writeByte
;   _i2c_stop
;   _i2c_writeByte
;   _i2c_stop
;   _i2c_stop
;5 compiler assigned registers:
;   r0x101F
;   STK00
;   r0x1020
;   STK01
;   r0x1021
;; Starting pCode block
.segment "code"; module=main, function=_ip53xs_writeByte
	.debuginfo subprogram _ip53xs_writeByte
;local variable name mapping:
	.debuginfo complex-type (local-sym "_deviceAddr" 1 "main.c" 911 (basetype 1 unsigned) split "r0x101F")
	.debuginfo complex-type (local-sym "_regAddr" 1 "main.c" 911 (basetype 1 unsigned) split "r0x1020")
	.debuginfo complex-type (local-sym "_sendByte" 1 "main.c" 911 (basetype 1 unsigned) split "r0x1021")
_ip53xs_writeByte:
; 2 exit points
	.line	911, "main.c"; 	BOOL ip53xs_writeByte(unsigned char deviceAddr, unsigned char regAddr, unsigned char sendByte)
	BANKSEL	r0x101F
	MOVAR	r0x101F
	MOVR	STK00,W
	BANKSEL	r0x1020
	MOVAR	r0x1020
	MOVR	STK01,W
	BANKSEL	r0x1021
	MOVAR	r0x1021
	.line	913, "main.c"; 	if (P_I2C_INT)
	BTRSS	_PORTAbits,2
	MGOTO	_02268_DS_
	.line	915, "main.c"; 	i2c_start();
	MCALL	_i2c_start
	.line	917, "main.c"; 	if (i2c_writeByte(deviceAddr | IIC_WRITE))
	BANKSEL	r0x101F
	MOVR	r0x101F,W
	MCALL	_i2c_writeByte
	BANKSEL	r0x101F
	MOVAR	r0x101F
	MOVR	r0x101F,W
	BTRSC	STATUS,2
	MGOTO	_02262_DS_
	.line	919, "main.c"; 	i2c_stop();
	MCALL	_i2c_stop
	.line	920, "main.c"; 	return FALSE;
	MOVIA	0x00
	MGOTO	_02269_DS_
_02262_DS_:
	.line	923, "main.c"; 	if (i2c_writeByte(regAddr))
	BANKSEL	r0x1020
	MOVR	r0x1020,W
	MCALL	_i2c_writeByte
	BANKSEL	r0x101F
	MOVAR	r0x101F
	MOVR	r0x101F,W
	BTRSC	STATUS,2
	MGOTO	_02264_DS_
	.line	925, "main.c"; 	i2c_stop();
	MCALL	_i2c_stop
	.line	926, "main.c"; 	return FALSE;
	MOVIA	0x00
	MGOTO	_02269_DS_
_02264_DS_:
	.line	929, "main.c"; 	if (i2c_writeByte(sendByte))
	BANKSEL	r0x1021
	MOVR	r0x1021,W
	MCALL	_i2c_writeByte
	BANKSEL	r0x101F
	MOVAR	r0x101F
	MOVR	r0x101F,W
	BTRSC	STATUS,2
	MGOTO	_02266_DS_
	.line	931, "main.c"; 	i2c_stop();
	MCALL	_i2c_stop
	.line	932, "main.c"; 	return FALSE;
	MOVIA	0x00
	MGOTO	_02269_DS_
_02266_DS_:
	.line	935, "main.c"; 	i2c_stop();
	MCALL	_i2c_stop
_02268_DS_:
	.line	938, "main.c"; 	return TRUE;
	MOVIA	0x01
_02269_DS_:
	.line	939, "main.c"; 	}
	RETURN	
; exit point of _ip53xs_writeByte

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   __dly_us
;   __dly_us
;   __dly_us
;   __dly_us
;3 compiler assigned registers:
;   r0x101B
;   r0x101C
;   r0x101D
;; Starting pCode block
.segment "code"; module=main, function=_i2c_readByte
	.debuginfo subprogram _i2c_readByte
;local variable name mapping:
	.debuginfo complex-type (local-sym "_readByte" 1 "main.c" 885 (basetype 1 unsigned) split "r0x101B")
	.debuginfo complex-type (local-sym "_i" 1 "main.c" 884 (basetype 1 unsigned) split "r0x101C")
_i2c_readByte:
; 2 exit points
	.line	885, "main.c"; 	unsigned char readByte = 0;
	BANKSEL	r0x101B
	CLRR	r0x101B
	.line	887, "main.c"; 	P_I2C_SCL_CLR;   // 拉低I2C_SCL
	BCR	_PORTAbits,4
	.line	888, "main.c"; 	P_I2C_SDA_INPUT; // 设置I2C_SDA为输入
	IOSTR	_IOSTA
	BANKSEL	r0x101C
	MOVAR	r0x101C
	BSR	r0x101C,3
	MOVR	r0x101C,W
	IOST	_IOSTA
	.line	890, "main.c"; 	while (i--)
	MOVIA	0x08
	MOVAR	r0x101C
_02254_DS_:
	BANKSEL	r0x101C
	MOVR	r0x101C,W
	BANKSEL	r0x101D
	MOVAR	r0x101D
	BANKSEL	r0x101C
	DECR	r0x101C,F
	BANKSEL	r0x101D
	MOVR	r0x101D,W
	BTRSC	STATUS,2
	MGOTO	_02256_DS_
	.line	893, "main.c"; 	P_I2C_SCL_SET; // 拉高I2C_SCL
	BSR	_PORTAbits,4
	.line	894, "main.c"; 	_dly_us(0);
	MOVIA	0x00
	MCALL	__dly_us
	.line	895, "main.c"; 	readByte <<= 1;
	BCR	STATUS,0
	BANKSEL	r0x101B
	RLR	r0x101B,F
	.line	897, "main.c"; 	if (P_I2C_SDA)
	BTRSC	_PORTAbits,3
	.line	899, "main.c"; 	readByte |= 0x01;
	BSR	r0x101B,0
	.line	902, "main.c"; 	P_I2C_SCL_CLR; // 拉低I2C_SCL
	BCR	_PORTAbits,4
	.line	903, "main.c"; 	_dly_us(0);
	MOVIA	0x00
	MCALL	__dly_us
	MGOTO	_02254_DS_
_02256_DS_:
	.line	907, "main.c"; 	P_I2C_SDA_OUTPUT; // 设置I2C_SDA为输出
	IOSTR	_IOSTA
	BANKSEL	r0x101C
	MOVAR	r0x101C
	BCR	r0x101C,3
	MOVR	r0x101C,W
	IOST	_IOSTA
	.line	908, "main.c"; 	return readByte;  // 返回数据
	BANKSEL	r0x101B
	MOVR	r0x101B,W
	.line	909, "main.c"; 	}
	RETURN	
; exit point of _i2c_readByte

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   __dly_us
;   __dly_us
;   _i2c_chk_ack
;   __dly_us
;   __dly_us
;   _i2c_chk_ack
;3 compiler assigned registers:
;   r0x101C
;   r0x101D
;   r0x101E
;; Starting pCode block
.segment "code"; module=main, function=_i2c_writeByte
	.debuginfo subprogram _i2c_writeByte
;local variable name mapping:
	.debuginfo complex-type (local-sym "_sendByte" 1 "main.c" 857 (basetype 1 unsigned) split "r0x101C")
	.debuginfo complex-type (local-sym "_i" 1 "main.c" 859 (basetype 1 unsigned) split "r0x101D")
_i2c_writeByte:
; 2 exit points
	.line	857, "main.c"; 	unsigned char i2c_writeByte(unsigned char sendByte)
	BANKSEL	r0x101C
	MOVAR	r0x101C
	.line	861, "main.c"; 	while (i--) // I2C_SDA脚从高位至低位发送数据
	MOVIA	0x08
	BANKSEL	r0x101D
	MOVAR	r0x101D
_02245_DS_:
	BANKSEL	r0x101D
	MOVR	r0x101D,W
	BANKSEL	r0x101E
	MOVAR	r0x101E
	BANKSEL	r0x101D
	DECR	r0x101D,F
	BANKSEL	r0x101E
	MOVR	r0x101E,W
	BTRSC	STATUS,2
	MGOTO	_02247_DS_
	.line	863, "main.c"; 	P_I2C_SCL_CLR; // 拉低I2C_SCL,以允许I2C_SDA脚w位数据发生变化
	BCR	_PORTAbits,4
	.line	864, "main.c"; 	_dly_us(0);
	MOVIA	0x00
	MCALL	__dly_us
	.line	865, "main.c"; 	if (sendByte & 0x80) /* MSB output first */
	BANKSEL	r0x101C
	BTRSS	r0x101C,7
	MGOTO	_02243_DS_
	.line	867, "main.c"; 	P_I2C_SDA_SET;
	BSR	_PORTAbits,3
	MGOTO	_02244_DS_
_02243_DS_:
	.line	871, "main.c"; 	P_I2C_SDA_CLR;
	BCR	_PORTAbits,3
_02244_DS_:
	.line	873, "main.c"; 	sendByte <<= 1;
	BCR	STATUS,0
	BANKSEL	r0x101C
	RLR	r0x101C,F
	.line	874, "main.c"; 	P_I2C_SCL_SET; // 拉高I2C_SCL
	BSR	_PORTAbits,4
	.line	875, "main.c"; 	_dly_us(0);
	MOVIA	0x00
	MCALL	__dly_us
	.line	876, "main.c"; 	NOP();
	nop
	MGOTO	_02245_DS_
_02247_DS_:
	.line	879, "main.c"; 	return i2c_chk_ack();
	MCALL	_i2c_chk_ack
	BANKSEL	r0x101C
	MOVAR	r0x101C
	.line	880, "main.c"; 	}
	RETURN	
; exit point of _i2c_writeByte

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   __dly_us
;   __dly_us
;   __dly_us
;   __dly_us
;; Starting pCode block
.segment "code"; module=main, function=_i2c_send_nack
	.debuginfo subprogram _i2c_send_nack
_i2c_send_nack:
; 2 exit points
	.line	848, "main.c"; 	P_I2C_SCL_CLR;
	BCR	_PORTAbits,4
	.line	849, "main.c"; 	P_I2C_SDA_SET;
	BSR	_PORTAbits,3
	.line	850, "main.c"; 	_dly_us(10);
	MOVIA	0x0a
	MCALL	__dly_us
	.line	851, "main.c"; 	P_I2C_SCL_SET;
	BSR	_PORTAbits,4
	.line	852, "main.c"; 	_dly_us(10);
	MOVIA	0x0a
	MCALL	__dly_us
	.line	853, "main.c"; 	P_I2C_SCL_CLR;
	BCR	_PORTAbits,4
	.line	854, "main.c"; 	P_I2C_SDA_CLR;
	BCR	_PORTAbits,3
	.line	855, "main.c"; 	}
	RETURN	
; exit point of _i2c_send_nack

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   __dly_us
;   __dly_us
;   __dly_us
;   __dly_us
;; Starting pCode block
.segment "code"; module=main, function=_i2c_send_ack
	.debuginfo subprogram _i2c_send_ack
_i2c_send_ack:
; 2 exit points
	.line	837, "main.c"; 	P_I2C_SCL_CLR;
	BCR	_PORTAbits,4
	.line	838, "main.c"; 	P_I2C_SDA_CLR;
	BCR	_PORTAbits,3
	.line	839, "main.c"; 	_dly_us(10);
	MOVIA	0x0a
	MCALL	__dly_us
	.line	840, "main.c"; 	P_I2C_SCL_SET;
	BSR	_PORTAbits,4
	.line	841, "main.c"; 	_dly_us(10);
	MOVIA	0x0a
	MCALL	__dly_us
	.line	842, "main.c"; 	P_I2C_SCL_CLR;
	BCR	_PORTAbits,4
	.line	843, "main.c"; 	P_I2C_SDA_CLR;
	BCR	_PORTAbits,3
	.line	844, "main.c"; 	}
	RETURN	
; exit point of _i2c_send_ack

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   __dly_us
;   __dly_us
;   __dly_us
;   __dly_us
;1 compiler assigned register :
;   r0x101B
;; Starting pCode block
.segment "code"; module=main, function=_i2c_chk_ack
	.debuginfo subprogram _i2c_chk_ack
;local variable name mapping:
	.debuginfo complex-type (local-sym "_getAckTime" 1 "main.c" 816 (basetype 1 unsigned) split "r0x101B")
_i2c_chk_ack:
; 2 exit points
	.line	814, "main.c"; 	P_I2C_SCL_CLR;                                  // slave send ACK
	BCR	_PORTAbits,4
	.line	815, "main.c"; 	P_I2C_SDA_INPUT;                                // Allow slave to send ACK
	IOSTR	_IOSTA
	BANKSEL	r0x101B
	MOVAR	r0x101B
	BSR	r0x101B,3
	MOVR	r0x101B,W
	IOST	_IOSTA
	.line	817, "main.c"; 	_dly_us(0);
	MOVIA	0x00
	MCALL	__dly_us
	.line	818, "main.c"; 	P_I2C_SCL_SET;
	BSR	_PORTAbits,4
	.line	819, "main.c"; 	_dly_us(0);
	MOVIA	0x00
	MCALL	__dly_us
	.line	820, "main.c"; 	while (P_I2C_SDA)
	MOVIA	0xfa
	BANKSEL	r0x101B
	MOVAR	r0x101B
_02226_DS_:
	BTRSS	_PORTAbits,3
	MGOTO	_02228_DS_
	.line	822, "main.c"; 	--getAckTime;
	BANKSEL	r0x101B
	DECRSZ	r0x101B,F
	.line	824, "main.c"; 	if (0 == getAckTime)
	MGOTO	_02226_DS_
	.line	826, "main.c"; 	return 1;
	MOVIA	0x01
	MGOTO	_02229_DS_
_02228_DS_:
	.line	830, "main.c"; 	P_I2C_SCL_CLR;
	BCR	_PORTAbits,4
	.line	831, "main.c"; 	P_I2C_SDA_OUTPUT;
	IOSTR	_IOSTA
	BANKSEL	r0x101B
	MOVAR	r0x101B
	BCR	r0x101B,3
	MOVR	r0x101B,W
	IOST	_IOSTA
	.line	832, "main.c"; 	return 0;
	MOVIA	0x00
_02229_DS_:
	.line	833, "main.c"; 	}
	RETURN	
; exit point of _i2c_chk_ack

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   __dly_us
;   __dly_us
;   __dly_us
;   __dly_us
;; Starting pCode block
.segment "code"; module=main, function=_i2c_stop
	.debuginfo subprogram _i2c_stop
_i2c_stop:
; 2 exit points
	.line	802, "main.c"; 	P_I2C_SCL_CLR;
	BCR	_PORTAbits,4
	.line	803, "main.c"; 	P_I2C_SDA_CLR;
	BCR	_PORTAbits,3
	.line	804, "main.c"; 	_dly_us(10);
	MOVIA	0x0a
	MCALL	__dly_us
	.line	805, "main.c"; 	P_I2C_SCL_SET;
	BSR	_PORTAbits,4
	.line	806, "main.c"; 	_dly_us(10);
	MOVIA	0x0a
	MCALL	__dly_us
	.line	807, "main.c"; 	P_I2C_SDA_SET;
	BSR	_PORTAbits,3
	.line	808, "main.c"; 	}
	RETURN	
; exit point of _i2c_stop

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   __dly_us
;   __dly_us
;   __dly_us
;   __dly_us
;1 compiler assigned register :
;   r0x101B
;; Starting pCode block
.segment "code"; module=main, function=_i2c_start
	.debuginfo subprogram _i2c_start
_i2c_start:
; 2 exit points
	.line	789, "main.c"; 	P_I2C_SDA_SET;
	BSR	_PORTAbits,3
	.line	790, "main.c"; 	P_I2C_SCL_SET;
	BSR	_PORTAbits,4
	.line	791, "main.c"; 	P_I2C_SDA_OUTPUT;
	IOSTR	_IOSTA
	BANKSEL	r0x101B
	MOVAR	r0x101B
	BCR	r0x101B,3
	MOVR	r0x101B,W
	IOST	_IOSTA
	.line	792, "main.c"; 	P_I2C_SCL_OUTPUT;
	IOSTR	_IOSTA
	MOVAR	r0x101B
	BCR	r0x101B,4
	MOVR	r0x101B,W
	IOST	_IOSTA
	.line	793, "main.c"; 	_dly_us(10);
	MOVIA	0x0a
	MCALL	__dly_us
	.line	794, "main.c"; 	P_I2C_SDA_CLR;
	BCR	_PORTAbits,3
	.line	795, "main.c"; 	_dly_us(10);
	MOVIA	0x0a
	MCALL	__dly_us
	.line	796, "main.c"; 	P_I2C_SCL_CLR;
	BCR	_PORTAbits,4
	.line	797, "main.c"; 	}
	RETURN	
; exit point of _i2c_start

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;1 compiler assigned register :
;   r0x101A
;; Starting pCode block
.segment "code"; module=main, function=_gpioKeyScan
	.debuginfo subprogram _gpioKeyScan
;local variable name mapping:
	.debuginfo complex-type (local-sym "_counter" 1 "main.c" 614 (basetype 1 unsigned) link "_gpioKeyScan_counter_65536_51")
_gpioKeyScan:
; 2 exit points
	.line	616, "main.c"; 	if (bFlag_is_key_pressed)
	BANKSEL	_vFlag_1
	BTRSS	_vFlag_1,2
	MGOTO	_02209_DS_
	.line	618, "main.c"; 	if (P_KEY)
	BTRSS	_PORTBbits,0
	MGOTO	_02201_DS_
	.line	620, "main.c"; 	if (++counter > CONST_P_KEY_FILTER)
	BANKSEL	_gpioKeyScan_counter_65536_51
	INCR	_gpioKeyScan_counter_65536_51,F
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0x3=3), size=1
	MOVIA	0x03
	SUBAR	_gpioKeyScan_counter_65536_51,W
	BTRSS	STATUS,0
	MGOTO	_02211_DS_
	.line	622, "main.c"; 	counter = 0;
	CLRR	_gpioKeyScan_counter_65536_51
	.line	623, "main.c"; 	P_KEY_IPS_SET;
	BSR	_PORTBbits,1
	.line	624, "main.c"; 	bFlag_is_key_pressed = 0;
	BANKSEL	_vFlag_1
	BCR	_vFlag_1,2
	.line	626, "main.c"; 	P_KEY_IPS_INPUT;
	IOSTR	_IOSTB
	BANKSEL	r0x101A
	MOVAR	r0x101A
	BSR	r0x101A,1
	MOVR	r0x101A,W
	IOST	_IOSTB
	MGOTO	_02211_DS_
_02201_DS_:
	.line	631, "main.c"; 	counter = 0;
	BANKSEL	_gpioKeyScan_counter_65536_51
	CLRR	_gpioKeyScan_counter_65536_51
	MGOTO	_02211_DS_
_02209_DS_:
	.line	636, "main.c"; 	if (!P_KEY)
	BTRSC	_PORTBbits,0
	MGOTO	_02206_DS_
	.line	638, "main.c"; 	if (++counter > CONST_P_KEY_FILTER)
	BANKSEL	_gpioKeyScan_counter_65536_51
	INCR	_gpioKeyScan_counter_65536_51,F
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0x3=3), size=1
	MOVIA	0x03
	SUBAR	_gpioKeyScan_counter_65536_51,W
	BTRSS	STATUS,0
	MGOTO	_02211_DS_
	.line	640, "main.c"; 	counter = 0;
	CLRR	_gpioKeyScan_counter_65536_51
	.line	641, "main.c"; 	bFlag_is_key_pressed = 1;
	BANKSEL	_vFlag_1
	BSR	_vFlag_1,2
	.line	642, "main.c"; 	P_KEY_IPS_CLR;
	BCR	_PORTBbits,1
	.line	643, "main.c"; 	P_KEY_IPS_OUTPUT;
	IOSTR	_IOSTB
	BANKSEL	r0x101A
	MOVAR	r0x101A
	BCR	r0x101A,1
	MOVR	r0x101A,W
	IOST	_IOSTB
	.line	644, "main.c"; 	skipGetCapTimer = 10;
	MOVIA	0x0a
	BANKSEL	_skipGetCapTimer
	MOVAR	_skipGetCapTimer
	MGOTO	_02211_DS_
_02206_DS_:
	.line	649, "main.c"; 	counter = 0;
	BANKSEL	_gpioKeyScan_counter_65536_51
	CLRR	_gpioKeyScan_counter_65536_51
	.line	651, "main.c"; 	P_KEY_IPS_INPUT;
	IOSTR	_IOSTB
	BANKSEL	r0x101A
	MOVAR	r0x101A
	BSR	r0x101A,1
	MOVR	r0x101A,W
	IOST	_IOSTB
_02211_DS_:
	.line	654, "main.c"; 	}
	RETURN	
; exit point of _gpioKeyScan

;***
;  pBlock Stats: dbName = C
;***
;1 compiler assigned register :
;   r0x1031
;; Starting pCode block
.segment "code"; module=main, function=_io_led_scan
	.debuginfo subprogram _io_led_scan
;local variable name mapping:
	.debuginfo complex-type (local-sym "_indexScan" 1 "main.c" 313 (basetype 1 unsigned) link "_io_led_scan_indexScan_65536_29")
_io_led_scan:
; 0 exit points
	.line	315, "main.c"; 	P_LED_SEG1_INPUT;
	IOSTR	_IOSTB
	BANKSEL	r0x1031
	MOVAR	r0x1031
	BSR	r0x1031,5
	MOVR	r0x1031,W
	IOST	_IOSTB
	.line	316, "main.c"; 	P_LED_SEG2_INPUT;
	IOSTR	_IOSTA
	MOVAR	r0x1031
	BSR	r0x1031,0
	MOVR	r0x1031,W
	IOST	_IOSTA
	.line	317, "main.c"; 	P_LED_SEG3_INPUT;
	IOSTR	_IOSTA
	MOVAR	r0x1031
	BSR	r0x1031,1
	MOVR	r0x1031,W
	IOST	_IOSTA
	.line	318, "main.c"; 	P_LED_SEG4_INPUT;
	IOSTR	_IOSTA
	MOVAR	r0x1031
	BSR	r0x1031,7
	MOVR	r0x1031,W
	IOST	_IOSTA
	.line	319, "main.c"; 	P_LED_SEG5_INPUT;
	IOSTR	_IOSTA
	MOVAR	r0x1031
	BSR	r0x1031,6
	MOVR	r0x1031,W
	IOST	_IOSTA
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0x12=18), size=1
	.line	321, "main.c"; 	switch (indexScan)
	MOVIA	0x12
	BANKSEL	_io_led_scan_indexScan_65536_29
	SUBAR	_io_led_scan_indexScan_65536_29,W
	BTRSC	STATUS,0
	MGOTO	_02108_DS_
	MOVIA	((_02193_DS_ >> 8) & 0xff)
	MOVAR	PCHBUF
	MOVR	_io_led_scan_indexScan_65536_29,W
	ADDIA	_02193_DS_
	BTRSC	STATUS,0
	INCR	PCHBUF,F
	MOVAR	PCL
_02193_DS_:
	MGOTO	_02053_DS_
	MGOTO	_02056_DS_
	MGOTO	_02059_DS_
	MGOTO	_02062_DS_
	MGOTO	_02065_DS_
	MGOTO	_02068_DS_
	MGOTO	_02071_DS_
	MGOTO	_02074_DS_
	MGOTO	_02077_DS_
	MGOTO	_02080_DS_
	MGOTO	_02083_DS_
	MGOTO	_02086_DS_
	MGOTO	_02089_DS_
	MGOTO	_02092_DS_
	MGOTO	_02095_DS_
	MGOTO	_02098_DS_
	MGOTO	_02101_DS_
	MGOTO	_02104_DS_
_02053_DS_:
	.line	324, "main.c"; 	if (displayDecade & SEG_A) // 2A
	BANKSEL	_displayDecade
	BTRSS	_displayDecade,0
	MGOTO	_02108_DS_
	.line	326, "main.c"; 	P_LED_SEG2_SET;
	BSR	_PORTAbits,0
	.line	327, "main.c"; 	P_LED_SEG2_OUTPUT;
	IOSTR	_IOSTA
	BANKSEL	r0x1031
	MOVAR	r0x1031
	BCR	r0x1031,0
	MOVR	r0x1031,W
	IOST	_IOSTA
	.line	328, "main.c"; 	P_LED_SEG3_CLR;
	BCR	_PORTAbits,1
	.line	329, "main.c"; 	P_LED_SEG3_OUTPUT;
	IOSTR	_IOSTA
	MOVAR	r0x1031
	BCR	r0x1031,1
	MOVR	r0x1031,W
	IOST	_IOSTA
	.line	331, "main.c"; 	break;
	MGOTO	_02108_DS_
_02056_DS_:
	.line	334, "main.c"; 	if (displayDecade & SEG_B) // 2B
	BANKSEL	_displayDecade
	BTRSS	_displayDecade,1
	MGOTO	_02108_DS_
	.line	336, "main.c"; 	P_LED_SEG3_SET;
	BSR	_PORTAbits,1
	.line	337, "main.c"; 	P_LED_SEG3_OUTPUT;
	IOSTR	_IOSTA
	BANKSEL	r0x1031
	MOVAR	r0x1031
	BCR	r0x1031,1
	MOVR	r0x1031,W
	IOST	_IOSTA
	.line	338, "main.c"; 	P_LED_SEG2_CLR;
	BCR	_PORTAbits,0
	.line	339, "main.c"; 	P_LED_SEG2_OUTPUT;
	IOSTR	_IOSTA
	MOVAR	r0x1031
	BCR	r0x1031,0
	MOVR	r0x1031,W
	IOST	_IOSTA
	.line	341, "main.c"; 	break;
	MGOTO	_02108_DS_
_02059_DS_:
	.line	344, "main.c"; 	if (displayDecade & SEG_C) // 2C
	BANKSEL	_displayDecade
	BTRSS	_displayDecade,2
	MGOTO	_02108_DS_
	.line	346, "main.c"; 	P_LED_SEG4_SET;
	BSR	_PORTAbits,7
	.line	347, "main.c"; 	P_LED_SEG4_OUTPUT;
	IOSTR	_IOSTA
	BANKSEL	r0x1031
	MOVAR	r0x1031
	BCR	r0x1031,7
	MOVR	r0x1031,W
	IOST	_IOSTA
	.line	348, "main.c"; 	P_LED_SEG3_CLR;
	BCR	_PORTAbits,1
	.line	349, "main.c"; 	P_LED_SEG3_OUTPUT;
	IOSTR	_IOSTA
	MOVAR	r0x1031
	BCR	r0x1031,1
	MOVR	r0x1031,W
	IOST	_IOSTA
	.line	351, "main.c"; 	break;
	MGOTO	_02108_DS_
_02062_DS_:
	.line	354, "main.c"; 	if (displayDecade & SEG_D) // 2D
	BANKSEL	_displayDecade
	BTRSS	_displayDecade,3
	MGOTO	_02108_DS_
	.line	356, "main.c"; 	P_LED_SEG4_SET;
	BSR	_PORTAbits,7
	.line	357, "main.c"; 	P_LED_SEG4_OUTPUT;
	IOSTR	_IOSTA
	BANKSEL	r0x1031
	MOVAR	r0x1031
	BCR	r0x1031,7
	MOVR	r0x1031,W
	IOST	_IOSTA
	.line	358, "main.c"; 	P_LED_SEG2_CLR;
	BCR	_PORTAbits,0
	.line	359, "main.c"; 	P_LED_SEG2_OUTPUT;
	IOSTR	_IOSTA
	MOVAR	r0x1031
	BCR	r0x1031,0
	MOVR	r0x1031,W
	IOST	_IOSTA
	.line	361, "main.c"; 	break;
	MGOTO	_02108_DS_
_02065_DS_:
	.line	364, "main.c"; 	if (displayDecade & SEG_E) // 2E
	BANKSEL	_displayDecade
	BTRSS	_displayDecade,4
	MGOTO	_02108_DS_
	.line	366, "main.c"; 	P_LED_SEG5_SET;
	BSR	_PORTAbits,6
	.line	367, "main.c"; 	P_LED_SEG5_OUTPUT;
	IOSTR	_IOSTA
	BANKSEL	r0x1031
	MOVAR	r0x1031
	BCR	r0x1031,6
	MOVR	r0x1031,W
	IOST	_IOSTA
	.line	368, "main.c"; 	P_LED_SEG2_CLR;
	BCR	_PORTAbits,0
	.line	369, "main.c"; 	P_LED_SEG2_OUTPUT;
	IOSTR	_IOSTA
	MOVAR	r0x1031
	BCR	r0x1031,0
	MOVR	r0x1031,W
	IOST	_IOSTA
	.line	371, "main.c"; 	break;
	MGOTO	_02108_DS_
_02068_DS_:
	.line	374, "main.c"; 	if (displayDecade & SEG_F) // 2F
	BANKSEL	_displayDecade
	BTRSS	_displayDecade,5
	MGOTO	_02108_DS_
	.line	376, "main.c"; 	P_LED_SEG5_SET;
	BSR	_PORTAbits,6
	.line	377, "main.c"; 	P_LED_SEG5_OUTPUT;
	IOSTR	_IOSTA
	BANKSEL	r0x1031
	MOVAR	r0x1031
	BCR	r0x1031,6
	MOVR	r0x1031,W
	IOST	_IOSTA
	.line	378, "main.c"; 	P_LED_SEG3_CLR;
	BCR	_PORTAbits,1
	.line	379, "main.c"; 	P_LED_SEG3_OUTPUT;
	IOSTR	_IOSTA
	MOVAR	r0x1031
	BCR	r0x1031,1
	MOVR	r0x1031,W
	IOST	_IOSTA
	.line	381, "main.c"; 	break;
	MGOTO	_02108_DS_
_02071_DS_:
	.line	384, "main.c"; 	if (displayDecade & SEG_G) // 2G
	BANKSEL	_displayDecade
	BTRSS	_displayDecade,6
	MGOTO	_02108_DS_
	.line	386, "main.c"; 	P_LED_SEG5_SET;
	BSR	_PORTAbits,6
	.line	387, "main.c"; 	P_LED_SEG5_OUTPUT;
	IOSTR	_IOSTA
	BANKSEL	r0x1031
	MOVAR	r0x1031
	BCR	r0x1031,6
	MOVR	r0x1031,W
	IOST	_IOSTA
	.line	388, "main.c"; 	P_LED_SEG4_CLR;
	BCR	_PORTAbits,7
	.line	389, "main.c"; 	P_LED_SEG4_OUTPUT;
	IOSTR	_IOSTA
	MOVAR	r0x1031
	BCR	r0x1031,7
	MOVR	r0x1031,W
	IOST	_IOSTA
	.line	391, "main.c"; 	break;
	MGOTO	_02108_DS_
_02074_DS_:
	.line	394, "main.c"; 	if (displayDigit & SEG_A) // 3A
	BANKSEL	_displayDigit
	BTRSS	_displayDigit,0
	MGOTO	_02108_DS_
	.line	396, "main.c"; 	P_LED_SEG1_SET;
	BSR	_PORTBbits,5
	.line	397, "main.c"; 	P_LED_SEG1_OUTPUT;
	IOSTR	_IOSTB
	BANKSEL	r0x1031
	MOVAR	r0x1031
	BCR	r0x1031,5
	MOVR	r0x1031,W
	IOST	_IOSTB
	.line	398, "main.c"; 	P_LED_SEG2_CLR;
	BCR	_PORTAbits,0
	.line	399, "main.c"; 	P_LED_SEG2_OUTPUT;
	IOSTR	_IOSTA
	MOVAR	r0x1031
	BCR	r0x1031,0
	MOVR	r0x1031,W
	IOST	_IOSTA
	.line	401, "main.c"; 	break;
	MGOTO	_02108_DS_
_02077_DS_:
	.line	404, "main.c"; 	if (displayDigit & SEG_B) // 3B
	BANKSEL	_displayDigit
	BTRSS	_displayDigit,1
	MGOTO	_02108_DS_
	.line	406, "main.c"; 	P_LED_SEG2_SET;
	BSR	_PORTAbits,0
	.line	407, "main.c"; 	P_LED_SEG2_OUTPUT;
	IOSTR	_IOSTA
	BANKSEL	r0x1031
	MOVAR	r0x1031
	BCR	r0x1031,0
	MOVR	r0x1031,W
	IOST	_IOSTA
	.line	408, "main.c"; 	P_LED_SEG1_CLR;
	BCR	_PORTBbits,5
	.line	409, "main.c"; 	P_LED_SEG1_OUTPUT;
	IOSTR	_IOSTB
	MOVAR	r0x1031
	BCR	r0x1031,5
	MOVR	r0x1031,W
	IOST	_IOSTB
	.line	411, "main.c"; 	break;
	MGOTO	_02108_DS_
_02080_DS_:
	.line	414, "main.c"; 	if (displayDigit & SEG_C) // 3C
	BANKSEL	_displayDigit
	BTRSS	_displayDigit,2
	MGOTO	_02108_DS_
	.line	416, "main.c"; 	P_LED_SEG1_SET;
	BSR	_PORTBbits,5
	.line	417, "main.c"; 	P_LED_SEG1_OUTPUT;
	IOSTR	_IOSTB
	BANKSEL	r0x1031
	MOVAR	r0x1031
	BCR	r0x1031,5
	MOVR	r0x1031,W
	IOST	_IOSTB
	.line	418, "main.c"; 	P_LED_SEG3_CLR;
	BCR	_PORTAbits,1
	.line	419, "main.c"; 	P_LED_SEG3_OUTPUT;
	IOSTR	_IOSTA
	MOVAR	r0x1031
	BCR	r0x1031,1
	MOVR	r0x1031,W
	IOST	_IOSTA
	.line	421, "main.c"; 	break;
	MGOTO	_02108_DS_
_02083_DS_:
	.line	424, "main.c"; 	if (displayDigit & SEG_D) // 3D
	BANKSEL	_displayDigit
	BTRSS	_displayDigit,3
	MGOTO	_02108_DS_
	.line	426, "main.c"; 	P_LED_SEG3_SET;
	BSR	_PORTAbits,1
	.line	427, "main.c"; 	P_LED_SEG3_OUTPUT;
	IOSTR	_IOSTA
	BANKSEL	r0x1031
	MOVAR	r0x1031
	BCR	r0x1031,1
	MOVR	r0x1031,W
	IOST	_IOSTA
	.line	428, "main.c"; 	P_LED_SEG1_CLR;
	BCR	_PORTBbits,5
	.line	429, "main.c"; 	P_LED_SEG1_OUTPUT;
	IOSTR	_IOSTB
	MOVAR	r0x1031
	BCR	r0x1031,5
	MOVR	r0x1031,W
	IOST	_IOSTB
	.line	431, "main.c"; 	break;
	MGOTO	_02108_DS_
_02086_DS_:
	.line	434, "main.c"; 	if (displayDigit & SEG_E) // 3E
	BANKSEL	_displayDigit
	BTRSS	_displayDigit,4
	MGOTO	_02108_DS_
	.line	436, "main.c"; 	P_LED_SEG1_SET;
	BSR	_PORTBbits,5
	.line	437, "main.c"; 	P_LED_SEG1_OUTPUT;
	IOSTR	_IOSTB
	BANKSEL	r0x1031
	MOVAR	r0x1031
	BCR	r0x1031,5
	MOVR	r0x1031,W
	IOST	_IOSTB
	.line	438, "main.c"; 	P_LED_SEG4_CLR;
	BCR	_PORTAbits,7
	.line	439, "main.c"; 	P_LED_SEG4_OUTPUT;
	IOSTR	_IOSTA
	MOVAR	r0x1031
	BCR	r0x1031,7
	MOVR	r0x1031,W
	IOST	_IOSTA
	.line	441, "main.c"; 	break;
	MGOTO	_02108_DS_
_02089_DS_:
	.line	444, "main.c"; 	if (displayDigit & SEG_F) // 3F
	BANKSEL	_displayDigit
	BTRSS	_displayDigit,5
	MGOTO	_02108_DS_
	.line	446, "main.c"; 	P_LED_SEG4_SET;
	BSR	_PORTAbits,7
	.line	447, "main.c"; 	P_LED_SEG4_OUTPUT;
	IOSTR	_IOSTA
	BANKSEL	r0x1031
	MOVAR	r0x1031
	BCR	r0x1031,7
	MOVR	r0x1031,W
	IOST	_IOSTA
	.line	448, "main.c"; 	P_LED_SEG1_CLR;
	BCR	_PORTBbits,5
	.line	449, "main.c"; 	P_LED_SEG1_OUTPUT;
	IOSTR	_IOSTB
	MOVAR	r0x1031
	BCR	r0x1031,5
	MOVR	r0x1031,W
	IOST	_IOSTB
	.line	451, "main.c"; 	break;
	MGOTO	_02108_DS_
_02092_DS_:
	.line	454, "main.c"; 	if (displayDigit & SEG_G) // 3G OK
	BANKSEL	_displayDigit
	BTRSS	_displayDigit,6
	MGOTO	_02108_DS_
	.line	456, "main.c"; 	P_LED_SEG5_SET;
	BSR	_PORTAbits,6
	.line	457, "main.c"; 	P_LED_SEG5_OUTPUT;
	IOSTR	_IOSTA
	BANKSEL	r0x1031
	MOVAR	r0x1031
	BCR	r0x1031,6
	MOVR	r0x1031,W
	IOST	_IOSTA
	.line	458, "main.c"; 	P_LED_SEG1_CLR;
	BCR	_PORTBbits,5
	.line	459, "main.c"; 	P_LED_SEG1_OUTPUT;
	IOSTR	_IOSTB
	MOVAR	r0x1031
	BCR	r0x1031,5
	MOVR	r0x1031,W
	IOST	_IOSTB
	.line	461, "main.c"; 	break;
	MGOTO	_02108_DS_
_02095_DS_:
	.line	464, "main.c"; 	if (displayHundred & SEG_B) // 1B OK
	BANKSEL	_displayHundred
	BTRSS	_displayHundred,1
	MGOTO	_02108_DS_
	.line	466, "main.c"; 	P_LED_SEG3_SET;
	BSR	_PORTAbits,1
	.line	467, "main.c"; 	P_LED_SEG3_OUTPUT;
	IOSTR	_IOSTA
	BANKSEL	r0x1031
	MOVAR	r0x1031
	BCR	r0x1031,1
	MOVR	r0x1031,W
	IOST	_IOSTA
	.line	468, "main.c"; 	P_LED_SEG4_CLR;
	BCR	_PORTAbits,7
	.line	469, "main.c"; 	P_LED_SEG4_OUTPUT;
	IOSTR	_IOSTA
	MOVAR	r0x1031
	BCR	r0x1031,7
	MOVR	r0x1031,W
	IOST	_IOSTA
	.line	471, "main.c"; 	break;
	MGOTO	_02108_DS_
_02098_DS_:
	.line	474, "main.c"; 	if (displayHundred & SEG_C) // 1C OK
	BANKSEL	_displayHundred
	BTRSS	_displayHundred,2
	MGOTO	_02108_DS_
	.line	476, "main.c"; 	P_LED_SEG2_SET;
	BSR	_PORTAbits,0
	.line	477, "main.c"; 	P_LED_SEG2_OUTPUT;
	IOSTR	_IOSTA
	BANKSEL	r0x1031
	MOVAR	r0x1031
	BCR	r0x1031,0
	MOVR	r0x1031,W
	IOST	_IOSTA
	.line	478, "main.c"; 	P_LED_SEG4_CLR;
	BCR	_PORTAbits,7
	.line	479, "main.c"; 	P_LED_SEG4_OUTPUT;
	IOSTR	_IOSTA
	MOVAR	r0x1031
	BCR	r0x1031,7
	MOVR	r0x1031,W
	IOST	_IOSTA
	.line	482, "main.c"; 	break;
	MGOTO	_02108_DS_
_02101_DS_:
	.line	497, "main.c"; 	if (displayHundred & SEG_D) // 1D quick
	BANKSEL	_displayHundred
	BTRSS	_displayHundred,3
	MGOTO	_02108_DS_
	.line	499, "main.c"; 	P_LED_SEG3_SET;
	BSR	_PORTAbits,1
	.line	500, "main.c"; 	P_LED_SEG3_OUTPUT;
	IOSTR	_IOSTA
	BANKSEL	r0x1031
	MOVAR	r0x1031
	BCR	r0x1031,1
	MOVR	r0x1031,W
	IOST	_IOSTA
	.line	501, "main.c"; 	P_LED_SEG5_CLR;
	BCR	_PORTAbits,6
	.line	502, "main.c"; 	P_LED_SEG5_OUTPUT;
	IOSTR	_IOSTA
	MOVAR	r0x1031
	BCR	r0x1031,6
	MOVR	r0x1031,W
	IOST	_IOSTA
	.line	504, "main.c"; 	break;
	MGOTO	_02108_DS_
_02104_DS_:
	.line	507, "main.c"; 	if (displayHundred & SEG_E) // 1E %
	BANKSEL	_displayHundred
	BTRSS	_displayHundred,4
	MGOTO	_02108_DS_
	.line	509, "main.c"; 	P_LED_SEG2_SET;
	BSR	_PORTAbits,0
	.line	510, "main.c"; 	P_LED_SEG2_OUTPUT;
	IOSTR	_IOSTA
	BANKSEL	r0x1031
	MOVAR	r0x1031
	BCR	r0x1031,0
	MOVR	r0x1031,W
	IOST	_IOSTA
	.line	511, "main.c"; 	P_LED_SEG5_CLR;
	BCR	_PORTAbits,6
	.line	512, "main.c"; 	P_LED_SEG5_OUTPUT;
	IOSTR	_IOSTA
	MOVAR	r0x1031
	BCR	r0x1031,6
	MOVR	r0x1031,W
	IOST	_IOSTA
_02108_DS_:
	.line	519, "main.c"; 	indexScan++; //! 1ms 调用一次
	BANKSEL	_io_led_scan_indexScan_65536_29
	INCR	_io_led_scan_indexScan_65536_29,F
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0x12=18), size=1
	.line	550, "main.c"; 	if (indexScan > 17) //
	MOVIA	0x12
	SUBAR	_io_led_scan_indexScan_65536_29,W
	BTRSC	STATUS,0
	.line	552, "main.c"; 	indexScan = 0;
	CLRR	_io_led_scan_indexScan_65536_29
	.line	554, "main.c"; 	}
	RETURN	

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;1 compiler assigned register :
;   r0x101A
;; Starting pCode block
.segment "code"; module=main, function=__dly_us
	.debuginfo subprogram __dly_us
__dly_us:
; 2 exit points
	.line	303, "main.c"; 	void _dly_us(unsigned char cnt)
	BANKSEL	r0x101A
	MOVAR	r0x101A
_02045_DS_:
	.line	305, "main.c"; 	while (cnt)
	BANKSEL	r0x101A
	MOVR	r0x101A,W
	BTRSC	STATUS,2
	MGOTO	_02048_DS_
	.line	307, "main.c"; 	cnt--;
	DECR	r0x101A,F
	MGOTO	_02045_DS_
_02048_DS_:
	.line	309, "main.c"; 	}
	RETURN	
; exit point of __dly_us

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;; Starting pCode block
.segment "code"; module=main, function=_disable_breathing_mode
	.debuginfo subprogram _disable_breathing_mode
_disable_breathing_mode:
; 2 exit points
	.line	295, "main.c"; 	bFlag_is_breathing_mode = 0;
	BANKSEL	_vFlag_1
	BCR	_vFlag_1,0
	.line	296, "main.c"; 	indicator_light_mode = 0;
	BANKSEL	_indicator_light_mode
	CLRR	_indicator_light_mode
	.line	297, "main.c"; 	P_LED_R_CLR;
	BCR	_PORTBbits,4
	.line	298, "main.c"; 	P_LED_G_CLR;
	BCR	_PORTBbits,3
	.line	299, "main.c"; 	P_LED_B_CLR;
	BCR	_PORTBbits,2
	.line	300, "main.c"; 	}
	RETURN	
; exit point of _disable_breathing_mode

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;; Starting pCode block
.segment "code"; module=main, function=_enable_breathing_mode
	.debuginfo subprogram _enable_breathing_mode
_enable_breathing_mode:
; 2 exit points
	.line	288, "main.c"; 	bFlag_is_breathing_mode = 1;
	BANKSEL	_vFlag_1
	BSR	_vFlag_1,0
	.line	289, "main.c"; 	bFlag_inc_or_dec = 0;
	BCR	_vFlag_1,1
	.line	290, "main.c"; 	indicator_light_mode = 0;
	BANKSEL	_indicator_light_mode
	CLRR	_indicator_light_mode
	.line	291, "main.c"; 	}
	RETURN	
; exit point of _enable_breathing_mode


;	code size estimation:
;	 1576+  386 =  1962 instructions ( 4696 byte)

	end
