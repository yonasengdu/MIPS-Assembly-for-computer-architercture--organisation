.data
    message: .asciiz "Enter a number: "
.text        
     addInput:
            jal printMessage
            jal readInput
            
            move $t1,$t0
            
            jal printMessage
            jal readInput
            
            move $t2,$t0
            
            li $v0,1
            
            
            
            li $v0,10
            syscall
            
        printMessage:
              li $v0,4
              la $a0,message
              syscall
              
              
              
              jr $ra
      
        readInput:
            li $v0,5
            syscall
            
            move $t0, $v0
            
            
            
            jr $ra
            
       
