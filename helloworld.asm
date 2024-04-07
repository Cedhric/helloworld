          BasicUpstart2(start)
          .encoding "petscii_upper"
start:    ldx #$00
loop:     lda htext,x
          beq done
          jsr $ffd2
          inx
          jmp loop
done:     rts

htext:   .text "HELLO WORLD"
          .byte 0