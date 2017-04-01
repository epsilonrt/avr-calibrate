# Calibration of the internal RC oscillator

The procedure for calibrating the RC oscillator of an AVR8 microcontroller is described in the application note ATMEL [AVR053](http://www.atmel.com/images/doc2555.pdf). This application note does not explain the implementation of this procedure with an AVR Dragon and does not support recent microcontroller models such as tiny441/841, mega168P/328P and mega328PB. Few information is available on the web.

The purpose of this document is to describe the procedure for calibrating an RC oscillator with AVR Dragon.

## Principle of calibration

The adjustment of the RC oscillator of an AVR8 microcontroller is done by modifying the OSCCAL register. ATMEL performs a calibration at the output of the production line. This calibration value is that which can be read in the OSCCAL register after the RESET of the microcontroller.

To improve accuracy, a new calibration can be performed by calculating a new OSCCAL value. Once calculated, this value will be stored in EEPROM and used by the microcontroller program to adjust the setting.

Two pins are used for calibration: MOSI and MISO for an ISP interface, or TDI and TDO for a JTAG interface. For simplicity, we will use MOSI and MISO in the explanation below but it remains valid for TDI and TDO.

The basic principle is that the AVR Dragon generates a clock (at 32768 Hz) on MOSI and that the microcontroller uses this clock to calibrate its RC oscillator. When the microcontroller has successfully completed its calibration, it stores the calculated OSCCAL value in EEPROM and transmits OK to MISO.

To perform a calibration, you must:

1. Set the microcontroller fuses for an RC internal oscillator configuration, without division by 8. **It is preferable to activate the EEPROM protection fuse**  
2. Program the microcontroller with the calibration firmware (avr053)  
3. Perform calibration using PC software provided by ATMEL  

The calibration value stored in EEPROM will be used by the final program of the microcontroller to initialize OSCCAL.

## Installation

The calibration firmware can be found in the file [AVR053.zip](http://www.atmel.com/images/AVR053.zip). It can be downloaded from the ATMEL website.

Once decompressed, you have to add and modify some files to adapt it to the AVR Dragon and the new models of microcontrollers. To do this, you must copy all the files and folders that are in the folder avr-calibrate / AVR053 to the folder where you extracted [AVR053.zip](http://www.atmel.com/images/AVR053.zip), you will have to confirm the merge and the replacements ...
