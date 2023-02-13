#functions (procedures) 

######################################################


#### procedure one - just print a message using a procedure 
#.data
 #   message: .asciiz "Hello, GUys my name is yonas \nthis is the first procedure\n"
#.text
 #   main:
 #       jal displaymessage
    
 #  li $v0,10
 #  syscall
    
    
    
    
 #  displaymessage:
 #          li $v0, 4
 #          la $a0,message
 #          syscall 
            
            
 #          jr $ra



###################################################################
##### using procdures to add two numbers by accepting numbers as an argument.


.data

.text 
    main:
       addi $a1 , $zero , 100
       addi $a2 , $zero , 50
       jal addNumbers
       
       li $v0,1
       move $a0 , $t1
       syscall 
       
       
       li $t0, 10
       syscall
    
    
    
    
    
    addNumbers:
             add $t1, $a1,$a2
              
             jr $ra
    
   

   


            
           
