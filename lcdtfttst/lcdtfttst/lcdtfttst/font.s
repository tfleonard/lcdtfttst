
/*
 * font.s
 *
 * Created: 2/20/2018 9:31:11 AM
 *  Author: tleonard
 */ 

	.equ	CWIDTH, 8
	.equ  CHEIGHT, 12
	

	.section .text

FONT:
  .byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
  .byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
  .byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
  .byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
  .byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
  .byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
  .byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
  .byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
  .byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
  .byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
  .byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
  .byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
  .byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
  .byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
  .byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
  .byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
  .byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
  .byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
  .byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
  .byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
  .byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
  .byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
  .byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
  .byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
  .byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
  .byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
  .byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
  .byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
  .byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
  .byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
  .byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
  .byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
  .byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
  .byte 0x00, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x00, 0x08, 0x00, 0x00, 0x00
 .byte 0x00, 0x14, 0x14, 0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
 .byte 0x00, 0x00, 0x14, 0x14, 0x3e, 0x14, 0x3e, 0x14, 0x14, 0x00, 0x00, 0x00
 .byte 0x00, 0x00, 0x08, 0x3c, 0x0a, 0x1c, 0x28, 0x1e, 0x08, 0x00, 0x00, 0x00
 .byte 0x00, 0x00, 0x06, 0x26, 0x10, 0x08, 0x04, 0x32, 0x30, 0x00, 0x00, 0x00
 .byte 0x00, 0x00, 0x1c, 0x02, 0x02, 0x04, 0x2a, 0x12, 0x2c, 0x00, 0x00, 0x00
 .byte 0x00, 0x18, 0x08, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
 .byte 0x20, 0x10, 0x10, 0x08, 0x08, 0x08, 0x08, 0x08, 0x10, 0x10, 0x20, 0x00
 .byte 0x02, 0x04, 0x04, 0x08, 0x08, 0x08, 0x08, 0x08, 0x04, 0x04, 0x02, 0x00
 .byte 0x00, 0x00, 0x00, 0x08, 0x2a, 0x1c, 0x2a, 0x08, 0x00, 0x00, 0x00, 0x00
 .byte 0x00, 0x00, 0x00, 0x08, 0x08, 0x3e, 0x08, 0x08, 0x00, 0x00, 0x00, 0x00
 .byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x18, 0x18, 0x08, 0x04, 0x00
 .byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x3e, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
 .byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x18, 0x18, 0x00, 0x00, 0x00
 .byte 0x20, 0x20, 0x10, 0x10, 0x08, 0x08, 0x04, 0x04, 0x02, 0x02, 0x00, 0x00
 .byte 0x00, 0x1c, 0x22, 0x32, 0x2a, 0x26, 0x22, 0x22, 0x1c, 0x00, 0x00, 0x00
 .byte 0x00, 0x08, 0x0c, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x00, 0x00, 0x00
 .byte 0x00, 0x1c, 0x22, 0x20, 0x10, 0x08, 0x04, 0x02, 0x3e, 0x00, 0x00, 0x00
 .byte 0x00, 0x1c, 0x22, 0x20, 0x18, 0x20, 0x20, 0x22, 0x1c, 0x00, 0x00, 0x00
 .byte 0x00, 0x10, 0x18, 0x18, 0x14, 0x14, 0x3e, 0x10, 0x38, 0x00, 0x00, 0x00
 .byte 0x00, 0x3e, 0x02, 0x02, 0x1e, 0x20, 0x20, 0x22, 0x1c, 0x00, 0x00, 0x00
 .byte 0x00, 0x18, 0x04, 0x02, 0x1e, 0x22, 0x22, 0x22, 0x1c, 0x00, 0x00, 0x00
 .byte 0x00, 0x3e, 0x22, 0x20, 0x20, 0x10, 0x10, 0x08, 0x08, 0x00, 0x00, 0x00
 .byte 0x00, 0x1c, 0x22, 0x22, 0x1c, 0x22, 0x22, 0x22, 0x1c, 0x00, 0x00, 0x00
 .byte 0x00, 0x1c, 0x22, 0x22, 0x22, 0x3c, 0x20, 0x10, 0x0c, 0x00, 0x00, 0x00
 .byte 0x00, 0x00, 0x00, 0x18, 0x18, 0x00, 0x00, 0x18, 0x18, 0x00, 0x00, 0x00
 .byte 0x00, 0x00, 0x00, 0x18, 0x18, 0x00, 0x00, 0x18, 0x18, 0x08, 0x04, 0x00
 .byte 0x00, 0x00, 0x00, 0x30, 0x0c, 0x03, 0x0c, 0x30, 0x00, 0x00, 0x00, 0x00
 .byte 0x00, 0x00, 0x00, 0x00, 0x3e, 0x00, 0x3e, 0x00, 0x00, 0x00, 0x00, 0x00
 .byte 0x00, 0x00, 0x00, 0x03, 0x0c, 0x30, 0x0c, 0x03, 0x00, 0x00, 0x00, 0x00
 .byte 0x00, 0x1c, 0x22, 0x20, 0x10, 0x08, 0x08, 0x00, 0x08, 0x00, 0x00, 0x00
 .byte 0x00, 0x00, 0x1c, 0x22, 0x3a, 0x3a, 0x1a, 0x02, 0x1c, 0x00, 0x00, 0x00
 .byte 0x00, 0x00, 0x08, 0x14, 0x22, 0x22, 0x3e, 0x22, 0x22, 0x00, 0x00, 0x00
 .byte 0x00, 0x00, 0x1e, 0x22, 0x22, 0x1e, 0x22, 0x22, 0x1e, 0x00, 0x00, 0x00
 .byte 0x00, 0x00, 0x1c, 0x22, 0x02, 0x02, 0x02, 0x22, 0x1c, 0x00, 0x00, 0x00
 .byte 0x00, 0x00, 0x0e, 0x12, 0x22, 0x22, 0x22, 0x12, 0x0e, 0x00, 0x00, 0x00
 .byte 0x00, 0x00, 0x3e, 0x02, 0x02, 0x1e, 0x02, 0x02, 0x3e, 0x00, 0x00, 0x00
 .byte 0x00, 0x00, 0x3e, 0x02, 0x02, 0x1e, 0x02, 0x02, 0x02, 0x00, 0x00, 0x00
 .byte 0x00, 0x00, 0x1c, 0x22, 0x02, 0x32, 0x22, 0x22, 0x3c, 0x00, 0x00, 0x00
 .byte 0x00, 0x00, 0x22, 0x22, 0x22, 0x3e, 0x22, 0x22, 0x22, 0x00, 0x00, 0x00
 .byte 0x00, 0x00, 0x3e, 0x08, 0x08, 0x08, 0x08, 0x08, 0x3e, 0x00, 0x00, 0x00
 .byte 0x00, 0x00, 0x38, 0x20, 0x20, 0x20, 0x22, 0x22, 0x1c, 0x00, 0x00, 0x00
 .byte 0x00, 0x00, 0x22, 0x12, 0x0a, 0x06, 0x0a, 0x12, 0x22, 0x00, 0x00, 0x00
 .byte 0x00, 0x00, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x3e, 0x00, 0x00, 0x00
 .byte 0x00, 0x00, 0x22, 0x36, 0x2a, 0x2a, 0x22, 0x22, 0x22, 0x00, 0x00, 0x00
 .byte 0x00, 0x00, 0x22, 0x26, 0x26, 0x2a, 0x32, 0x32, 0x22, 0x00, 0x00, 0x00
 .byte 0x00, 0x00, 0x1c, 0x22, 0x22, 0x22, 0x22, 0x22, 0x1c, 0x00, 0x00, 0x00
 .byte 0x00, 0x00, 0x1e, 0x22, 0x22, 0x1e, 0x02, 0x02, 0x02, 0x00, 0x00, 0x00
 .byte 0x00, 0x00, 0x1c, 0x22, 0x22, 0x22, 0x22, 0x22, 0x1c, 0x30, 0x00, 0x00
 .byte 0x00, 0x00, 0x1e, 0x22, 0x22, 0x1e, 0x0a, 0x12, 0x22, 0x00, 0x00, 0x00
 .byte 0x00, 0x00, 0x1c, 0x22, 0x02, 0x1c, 0x20, 0x22, 0x1c, 0x00, 0x00, 0x00
 .byte 0x00, 0x00, 0x3e, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x00, 0x00, 0x00
 .byte 0x00, 0x00, 0x22, 0x22, 0x22, 0x22, 0x22, 0x22, 0x1c, 0x00, 0x00, 0x00
 .byte 0x00, 0x00, 0x22, 0x22, 0x22, 0x14, 0x14, 0x08, 0x08, 0x00, 0x00, 0x00
 .byte 0x00, 0x00, 0x22, 0x22, 0x22, 0x2a, 0x2a, 0x36, 0x22, 0x00, 0x00, 0x00
 .byte 0x00, 0x00, 0x22, 0x22, 0x14, 0x08, 0x14, 0x22, 0x22, 0x00, 0x00, 0x00
 .byte 0x00, 0x00, 0x22, 0x22, 0x14, 0x08, 0x08, 0x08, 0x08, 0x00, 0x00, 0x00
 .byte 0x00, 0x00, 0x3e, 0x20, 0x10, 0x08, 0x04, 0x02, 0x3e, 0x00, 0x00, 0x00
 .byte 0x38, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x38, 0x00
 .byte 0x02, 0x02, 0x04, 0x04, 0x08, 0x08, 0x10, 0x10, 0x20, 0x20, 0x00, 0x00
 .byte 0x0e, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x0e, 0x00
 .byte 0x00, 0x08, 0x14, 0x22, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
 .byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x3f, 0x00, 0x00
 .byte 0x00, 0x0c, 0x08, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
 .byte 0x00, 0x00, 0x00, 0x00, 0x3c, 0x22, 0x22, 0x32, 0x2c, 0x00, 0x00, 0x00
 .byte 0x00, 0x02, 0x02, 0x02, 0x1e, 0x22, 0x22, 0x22, 0x1e, 0x00, 0x00, 0x00
 .byte 0x00, 0x00, 0x00, 0x00, 0x3c, 0x02, 0x02, 0x02, 0x3c, 0x00, 0x00, 0x00
 .byte 0x00, 0x20, 0x20, 0x20, 0x3c, 0x22, 0x22, 0x22, 0x3c, 0x00, 0x00, 0x00
 .byte 0x00, 0x00, 0x00, 0x00, 0x1c, 0x22, 0x3e, 0x02, 0x1c, 0x00, 0x00, 0x00
 .byte 0x00, 0x38, 0x04, 0x04, 0x1e, 0x04, 0x04, 0x04, 0x04, 0x00, 0x00, 0x00
 .byte 0x00, 0x00, 0x00, 0x00, 0x3c, 0x22, 0x22, 0x22, 0x3c, 0x20, 0x20, 0x1c
 .byte 0x00, 0x02, 0x02, 0x02, 0x1e, 0x22, 0x22, 0x22, 0x22, 0x00, 0x00, 0x00
 .byte 0x00, 0x08, 0x08, 0x00, 0x0c, 0x08, 0x08, 0x08, 0x1c, 0x00, 0x00, 0x00
 .byte 0x00, 0x10, 0x10, 0x00, 0x1c, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x0e
 .byte 0x00, 0x02, 0x02, 0x02, 0x12, 0x0a, 0x06, 0x0a, 0x12, 0x00, 0x00, 0x00
 .byte 0x00, 0x0c, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x1c, 0x00, 0x00, 0x00
 .byte 0x00, 0x00, 0x00, 0x00, 0x16, 0x2a, 0x2a, 0x2a, 0x22, 0x00, 0x00, 0x00
 .byte 0x00, 0x00, 0x00, 0x00, 0x1a, 0x26, 0x22, 0x22, 0x22, 0x00, 0x00, 0x00
 .byte 0x00, 0x00, 0x00, 0x00, 0x1c, 0x22, 0x22, 0x22, 0x1c, 0x00, 0x00, 0x00
 .byte 0x00, 0x00, 0x00, 0x00, 0x1e, 0x22, 0x22, 0x22, 0x1e, 0x02, 0x02, 0x02
 .byte 0x00, 0x00, 0x00, 0x00, 0x3c, 0x22, 0x22, 0x22, 0x3c, 0x20, 0x20, 0x20
 .byte 0x00, 0x00, 0x00, 0x00, 0x1a, 0x06, 0x02, 0x02, 0x02, 0x00, 0x00, 0x00
 .byte 0x00, 0x00, 0x00, 0x00, 0x3c, 0x02, 0x1c, 0x20, 0x1e, 0x00, 0x00, 0x00
 .byte 0x00, 0x08, 0x08, 0x08, 0x3e, 0x08, 0x08, 0x08, 0x30, 0x00, 0x00, 0x00
 .byte 0x00, 0x00, 0x00, 0x00, 0x22, 0x22, 0x22, 0x32, 0x2c, 0x00, 0x00, 0x00
 .byte 0x00, 0x00, 0x00, 0x00, 0x36, 0x14, 0x14, 0x08, 0x08, 0x00, 0x00, 0x00
 .byte 0x00, 0x00, 0x00, 0x00, 0x22, 0x2a, 0x2a, 0x2a, 0x14, 0x00, 0x00, 0x00
 .byte 0x00, 0x00, 0x00, 0x00, 0x22, 0x14, 0x08, 0x14, 0x22, 0x00, 0x00, 0x00
 .byte 0x00, 0x00, 0x00, 0x00, 0x22, 0x22, 0x22, 0x22, 0x3c, 0x20, 0x20, 0x1c
 .byte 0x00, 0x00, 0x00, 0x00, 0x3e, 0x10, 0x08, 0x04, 0x3e, 0x00, 0x00, 0x00
 .byte 0x20, 0x10, 0x10, 0x10, 0x10, 0x08, 0x10, 0x10, 0x10, 0x10, 0x20, 0x00
 .byte 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x00
 .byte 0x02, 0x04, 0x04, 0x04, 0x04, 0x08, 0x04, 0x04, 0x04, 0x04, 0x02, 0x00
 .byte 0x00, 0x04, 0x2a, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
 .byte 0x00, 0x00, 0x00, 0x08, 0x08, 0x14, 0x14, 0x22, 0x3e, 0x00, 0x00, 0x00


 ;
 ;void getPixels(char c, char *buf);
 ;
	.section .text
	.global _getPixels;
; c is in r24, buf in r23:r22
;
_getPixels:
	push	r28
	push	r29								; save y
	
	ldi		r25,CHEIGHT
	mul		r24,r25						; offs = c * CHAR_HEIGHT, in r1:r0

_gp1:
  ldi   r30,pm_lo8(FONT)    ; z gets address of FONT, pm get the relocatable address
  ldi   r31,pm_hi8(FONT)
  lsl	r30										; FONT address is a hword address, convert to byte
  rol	r31
  add   r30,r0             ; z + offs
  adc   r31,r1

  ldi   r24,CHEIGHT				; number of bytes in char
  movw  y,r22								; buf address

gpix1:
  lpm   r25,z+
  st    y+,r25
  dec   r24
  brne   gpix1

	clr		r1									; restore r1 to zero
	pop		r29	pop		r28
	ret

