          .encoding "petscii_upper"
          * =$c000
          ldx #$00
loop:     lda htext,x
          beq done
          jsr $ffd2
          inx
          jmp loop
done:     rts

htext:   .text "HELLO WORLD"
          .byte 0