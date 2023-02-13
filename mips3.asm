#saving to stack pointer


.data 
   newLine: .asciiz  "\n"
.text 
    main:
        addi $s0, $zero, 10
        
        jal increaseMyNumber
        
        
        
        #print a new line 
        jal  printTheValue
        
        
  
        li $v0,10
        syscall
        
        
   increaseMyNumber:
   	addi $sp , $sp , -8
   	sw $s0, 0($sp)
   	sw $ra, 4($sp)
   	
   	addi $s0, $s0,30
   	
   	jal printTheValue
   	
   
  
        lw $ra, 4($sp)
   	lw $s0, 0($sp)
   	
   	jr $ra
   	 
   	
           
    printTheValue:
         li $v0, 1
         move $a0,$s0
         syscall
         
         jr $ra
    
