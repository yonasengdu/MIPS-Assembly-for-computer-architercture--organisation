
######### building and printing an array using while loop
.data
   MyArray: .word 100:3
   newLine: .asciiz "\n"
.text
      #addi $t0, $zero,0
      #addi $t1,$zero,3
      #while:
       #  bge $t0, 12, printArray
        # sw $t1 ,MyArray($t0)
        # addi $t0,$t0,4
        # addi $t1,$t1,4
         
        # j while
         
      printArray:
          addi $t0, $zero,0
          while2:
          bge $t0,12,exit
          lw $t2,MyArray($t0)
          addi $t0,$t0,4
          jal printNum
          jal printNewLine
           
           j while2
          
      exit:
       li $v0,10
       syscall
     printNum:
         li $v0,1
         move $a0,$t2
         syscall
         
         jr $ra
    printNewLine:
    	 li $v0, 4
    	 la $a0,newLine
    	 syscall
    	 
    	 jr $ra
       




############# building an array in brute force manner

    #addi $s0,$zero, 4
    #addi $s1,$zero, 5
    #addi $s2,$zero, 6
    
    #addi $t0,$zero,0
    
    #sw $s0, MyArray($t0)
      # addi $t0,$t0,4	
    #sw $s1, MyArray($t0)
      # addi $t0,$t0,4
    #sw $s2, MyArray($t0)
     #  addi $t0,$t0,4