#Even odd checker##

.data
    inputmessage: .asciiz "Enter a number: "
    sad: .asciiz "your input is not even"
    success: .asciiz "your input is even"
    
.text
     main:
           jal inputMessage
           
           jal acceptinput
           
           jal evenOddChecker
           
           jal endProgram
  
      endProgram:
            li $v0 ,10
            syscall
      evenOddChecker:
            rem $t1,$t0,2
            
            bne $t1, 0, printNotEven
            
            li $v0, 4
            la $a0, success
            
            jr $ra
       printNotEven:
            li $v0,4
            la $a0, sad
            syscall
              
            jr $ra
                  
            
    
      acceptinput:
            li $v0, 5
            syscall 
          
            move $t0, $v0  
            jr $ra
      
      
    
       inputMessage:
            li $v0, 4
            la $a0, inputmessage
            syscall 
            
            jr $ra