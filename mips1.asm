#print hello world
#.data 
 #    hello: .asciiz "hello world"
#.text
 #   li $v0,4
  #  la $a0, hello
   # syscall

##############################################################################


#substarction 
#.data 
 #   number1: .word  20
  #  number2: .word  8
#.text
 #   lw $t1,number1
  #  lw $t2,number2
    
   # sub $t0, $t1,$t2
   
   
#####################################################################


#multipilication
     # this only multiplies at maximum only 16 bits long integers
     # uses a mul argument


#.data 
 #   number1: .word 12
  #  number2: .word 10
#.text
 #   lw $s0,number1
  #  lw $s1,number2
    
   # mul $s2, $s0, $s1
    
   # li $v0,1
   # add $a0,$zero, $s2
   # syscall 
   
   

    
#multiplication without an input data  
  #only multiplies only 16 bit long integers at maximum
  # used a mul argument here
#.data


#.text
 #   addi $s0, $zero, 10
  #  addi $s1, $zero, 20
    
   
   # mul $t2, $s0, $s1
   # li $v0,1
   # move $a0, $t2
   # syscall
   
  
  



#multiplication
   #to multiply long integers that are more than 16bits long
   #used a mult arguument
   
 #.data
 
 #.text
  #   addi $s0, $zero, 10000000
   #  addi $s1 , $zero, 30
     
    # mult $s0,$s1
     
    # li $v0, 1
     # mflo $a0
     
     #vsyscall
     
     
  
     
 #multipilication 
    #used a ss1 arguument   

#.data

#.text    
 #    addi $s1, $zero , 10
     
     
  #   li $v0,1
   #  sll $a0, $s1 , 3
    # syscall 
    
    
##############################################################################################

#division
   #using div argument with three registers - this divied the numbers with an over-flow
   
# .data 
 
# .text
 #   addi $t0, $zero, 10
 #   addi $t1, $zero, 5
    
 #   div $t2, $t0, $t1
    
 #   li $v0, 1
 #   add $a0, $zero, $t2
 #   syscall
 
 
 
 ##division 
        ## using div argument with only teo register values - this divides and stores the quoitent to li and the remainder to hi
        
        
 #.data

.#text
  #  addi $t1, $zero , 10
  #  addi $t2 , $zero, 3
    
  #  div $t1, $t2
    
  #  li $v0, 1
  #  mflo $a0
  #  syscall 
  # li $v0, 1
  #  mfhi $a0
  # syscall
    
  # li $v0,10
  # syscall
     
##############################################################################  
.data
.text
     addi $t0, $zero, 10
     add $t1, $zero, 58
     
    rem  $s1,$t1,$t0 
     
    
    

   
   
 
    
    
    
