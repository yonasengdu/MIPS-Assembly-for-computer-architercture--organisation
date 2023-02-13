.data
    promt:.asciiz "Enter your age: "
    message: .asciiz "\nyou age is: "
.text
       main:
          #write a promt message "enter your age"
           li $v0,4
           la $a0, promt
           syscall
          #get a user integer input  and move it to $t0
           li $v0,5
           syscall
           
           move $t0,$v0
           
           #write a message "your name is"
           li $v0, 4
           la $a0, message
           syscall 
           #print a number from $t0 to the console 
           li $v0,1
           add $a0, $zero, $t0
           syscall   