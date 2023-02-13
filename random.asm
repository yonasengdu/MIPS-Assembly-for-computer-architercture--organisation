.data
     message: .ascii "Eneter a number: "
     zero:    .float 0.0
     userText: .space 20
.text
    mainFloat:
     lwc1 $f2,zero
     
     #Display message
     li $v0,4
     la $a0,message
     syscall
     
     #Accept a user input float
     li $v0, 6
     syscall
     
     
     #print a float
     li $v0,2
     add.s $f12, $f2,$f0
     syscall
     
     jal mainString
     
     
     mainString:
        li $v0,8
        la $a0,userText
        li $a1,20
        syscall
        
        
        li $v0,4
        la $a0,userText
        syscall
        
        jr $ra
  
     
   