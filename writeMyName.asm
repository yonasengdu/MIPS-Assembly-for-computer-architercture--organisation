.data
  file: .asciiz "writeonthis"
  write: .asciiz "yonas Engdu"
 
 .text
   
   li $v0,13
   la $a0,file
   li $a1,1
   li $a2,0
   syscall
   
   move $s0,$v0
   
   li $v0,15
   move $a0,$s0
   la $a1,write
   li $a2,11
   syscall
   
   li $v0,16
   move $a0,$s0
   syscall 
