;
; traffic-light-simulator.asm
;
; Created: 11/24/2026 11:16:30
; Author : Mike Collison, Lance Vixler, and Sahar Holmes
; Desc   : Two lanes of traffic; red, yellow, and green lights; independent crosswalk signals.
; ----------------------------------------------------------------------


; Vector Table
; ----------------------------------------------------------------------
.org 0x0000                                       ; Reset vector
          jmp       main
.org 0c1Addr                                      ; Timer/Counter1 Compare Match A
          jmp       t1_ctc_isr                    
.org INT_VECTORS_SIZE                             ; End vector table
; ----------------------------------------------------------------------

main:
         call  t1_init

end_main:
          rjmp      end_main

; ----------------------------------------------------------------------
t1_init:
          ; Start counter at zero
          clr       r16
          sts       TCNT1H,r16
          sts       TCNT1L,r16

          ; Count up to match value
          ldi       r16,HIGH(62499)               ; 1s for now, just matching exmaple from class
          sts       OCR1AH,r16
          ldi       r16,low(62499)
          sts       OCR1AL,r16

          clr       r16                           ; ctc mode
          sts       TCCR1A,r16

          ldi       r16,(1<<WGM12)|(1<<CS12)      ; ctc mode with clk/256
          sts       TCCR1B,r16                    ; clock is started
          
          ldi       r16,(1<<OCIE1A)
          sts       TIMSK1,r16                    ; enable CTC interrupts

          ret                                     ; t1_init

; ----------------------------------------------------------------------
t1_ctc_isr:
          reti                                    ; Would do something here based on the timer