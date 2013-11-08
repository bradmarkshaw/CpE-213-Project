cseg at 0            
            
	mov 0x84,#0        
	mov 0x91,#0        
	mov 0xA4,#0              
	mov r0,#00
	mov r1,#00
	INLOOP equ 1	; value to control the speed
	;Initial LED flash
	mov R0, #5	
StrtLEDS: acall LEDS_ON	
	acall DelLED
	acall LEDS_OFF
	acall DelLED
	djnz R0, StrtLEDS
	;Song Intro
	;-------------Measure 1----------------
	mov R0, #2
	clr p2.4
	acall PlyD5S
	setb p2.4
	acall PlyBreath
	mov R0, #2
	clr p0.5
	acall PlyE5
	setb p0.5
	acall PlyBreath
	mov R0, #4
	clr p2.7
	acall PlyF5S
	setb p2.7
	acall PlyBreath
	mov R0, #8
	clr p0.4 
	acall PlyB6
	setb p0.4
	acall PlyBreath
	mov R0, #2
	clr p2.6
	acall PlyD5S
	setb p2.6
	acall PlyBreath
	acall PlyBreath
	mov R0, #2
	clr p0.7 
	acall PlyE5
	setb p0.7
	acall PlyBreath
	acall PlyBreath
	mov R0, #2
	clr p2.5
	acall PlyF5S
	setb p2.5
	acall PlyBreath
	acall PlyBreath
	mov R0, #3
	clr p0.6
	acall PlyB6
	setb p0.6
	acall PlyBreath
	acall PlyBreath
	acall PlyBreath
	mov R0, #3
	clr p2.4
	acall PlyC6S
	setb p2.4
	acall PlyBreath
	acall PlyBreath
	acall PlyBreath
	mov R0, #3
	clr p0.5		
	acall PlyD6S
	setb p0.5
	acall PlyBreath
	acall PlyBreath
	acall PlyBreath
	mov R0, #3
	clr p2.7
	acall PlyC6S
	setb p2.7
	acall PlyBreath
	acall PlyBreath
	acall PlyBreath
	mov R0, #4
	clr p0.4
	acall PlyA6S
	setb p0.4
	acall PlyBreath
	acall PlyBreath
	mov R0, #4
	clr p2.6
	acall PlyB6
	setb p2.6
	acall PlyBreath
	acall PlyBreath
	;-------------Measure 2---------------
	mov R0, #4
	clr p0.7
	acall PlyF5S
	setb p0.7
	acall PlyBreath
	acall PlyBreath
	mov R0, #2
	clr p2.5
	acall PlyD5S
	setb p2.5
	acall PlyBreath
	mov R0, #2
	clr p0.6
	acall PlyE5
	setb p0.6
	acall PlyBreath
	mov R0, #4
	clr p2.4
	acall PlyF5S
	setb p2.4
	acall PlyBreath
	mov R0, #4
	clr p0.5
	acall PlyB6
	setb p0.5
	acall PlyBreath
	acall PlyBreath
	mov R0, #4
	clr p2.7
	acall PlyC6S
	setb p2.7
	acall PlyBreath
	acall PlyBreath
	mov R0, #4
	clr p0.4
	acall PlyD6S
	setb p0.4
	acall PlyBreath
	acall PlyBreath
	mov R0, #4
	clr p2.6
	acall PlyB6
	setb p2.6
	acall PlyBreath
	acall PlyBreath
	mov R0, #4
	clr p0.7
	acall PlyC6S
	setb p0.7
	acall PlyBreath
	acall PlyBreath
	mov R0, #4
	clr p2.5
	acall PlyE6
	setb p2.5
	acall PlyBreath
	acall PlyBreath
	mov R0, #4
	clr p0.6
	acall PlyD6S
	setb p0.6
	acall PlyBreath
	acall PlyBreath
	mov R0, #4
	clr p2.4
	acall PlyE6
	setb p2.4
	acall PlyBreath
	acall PlyBreath
	mov R0, #4
	clr p0.5
	acall PlyC6S
	setb p0.5
	acall PlyBreath
	acall PlyBreath
;----------Measure 3------------
	mov R0, #4 
	acall PlyF5S
	acall PlyBreath
	mov R0, #4
	acall PlyA6S
	acall PlyBreath
	acall PlyBreath
	mov R0, #2
	acall PlyD5S
	acall PlyBreath
	mov R0, #2
	acall PlyE5
	acall PlyBreath
	mov R0, #2
	acall PlyRest
	mov R0, #2
	acall PlyB5
	acall PlyBreath
	mov R0, #2
	acall PlyD5
	acall PlyBreath
	mov R0, #2
	acall PlyC5S
	acall PlyBreath
	mov R0, #2
	acall PlyB5
	acall PlyBreath
	mov R0, #2
	acall PlyRest
	mov R0, #2
	acall PlyB5
	acall PlyBreath
	mov R0, #2
	acall PlyC5S
	acall PlyBreath
	;------------Measure 4---------------
	mov R0, #2
	acall PlyD5
	acall PlyBreath
	mov R0, #2
	acall PlyD5
	acall PlyBreath
	mov R0, #2
	acall PlyC5S
	acall PlyBreath
	mov R0, #2
	acall PlyB5
	acall PlyBreath
	mov R0, #2
	acall PlyC5S
	acall PlyBreath
	mov R0, #2
	acall PlyD5S
	acall PlyBreath
	mov R0, #2
	acall PlyF5S
	acall PlyBreath
	mov R0, #2
	acall Plyg5S
	acall PlyBreath
	mov R0, #2
	acall PlyD5S
	acall PlyBreath
	mov R0, #2
	acall PlyF5S
	acall PlyBreath
	mov R0, #2
	acall PlyC5S
	acall PlyBreath
	mov R0, #2
	acall PlyD5S
	acall PlyBreath
	mov R0, #2
	acall PlyB5
	acall PlyBreath
	mov R0, #2
	acall PlyC5S
	acall PlyBreath
	mov R0, #2
	acall PlyB5
	acall PlyBreath
    ;----------Measure 5-------------
    mov R0, #2
	acall PlyD5S
	acall PlyBreath
    mov R0, #2
	acall PlyF5S
	acall PlyBreath
    mov R0, #2
	acall PlyG5S
	acall PlyBreath
    mov R0, #2
	acall PlyD5S
	acall PlyBreath
    mov R0, #2
	acall PlyF5S
	acall PlyBreath
    mov R0, #2
	acall PlyC5S
	acall PlyBreath
    mov R0, #2
	acall PlyD5S
	acall PlyBreath
    mov R0, #2
	acall PlyB5
	acall PlyBreath
    mov R0, #2
	acall PlyD5
	acall PlyBreath
    mov R0, #2
	acall PlyD5S
	acall PlyBreath
    mov R0, #2
	acall PlyD5
	acall PlyBreath
    mov R0, #2
	acall PlyC5S
	acall PlyBreath
    mov R0, #2
	acall PlyB5
	acall PlyBreath
    mov R0, #2
	acall PlyC5S
	acall PlyBreath
    ;-------------Measure 6----------------
    mov R0, #2
	acall PlyD5
	acall PlyBreath
    mov R0, #2
	acall PlyB5
	acall PlyBreath
    mov R0, #2
	acall PlyC5S
	acall PlyBreath
    mov R0, #2
	acall PlyD5S
	acall PlyBreath
    mov R0, #2
	acall PlyF5S
	acall PlyBreath
    mov R0, #2
	acall PlyC5S
	acall PlyBreath
    mov R0, #2
	acall PlyD5S
	acall PlyBreath
    mov R0, #2
	acall PlyC5S
	acall PlyBreath
    mov R0, #2
	acall PlyB5
	acall PlyBreath
    mov R0, #2
	acall PlyC5S
	acall PlyBreath
    mov R0, #2
	acall PlyB5
	acall PlyBreath
    mov R0, #2
	acall PlyC5S
	acall PlyBreath
    ;-----------Measure 7---------------
    mov R0, #2
	acall PlyB5
	acall PlyBreath
    mov R0, #2
	acall PlyF4S
	acall PlyBreath
    mov R0, #2
	acall PlyG4S
	acall PlyBreath
    mov R0, #2
	acall PlyF4S
	acall PlyBreath
    mov R0, #2
	acall PlyG4S
	acall PlyBreath
    mov R0, #2
	acall PlyB5
	acall PlyBreath
    mov R0, #2
	acall PlyC5S
	acall PlyBreath
    mov R0, #2
	acall PlyD5S
	acall PlyBreath
    mov R0, #2
	acall PlyE5
	acall PlyBreath
	mov R0, #2
	acall PlyD5S
	acall PlyBreath
	mov R0, #2
	acall PlyE5
	acall PlyBreath
	mov R0, #2
	acall PlyF5S
	acall PlyBreath
	;---------Measure 8------------
    mov R0, #2
	acall PlyB5
	acall PlyBreath
	mov R0, #2
	acall PlyB5
	acall PlyBreath
	mov R0, #2
	acall PlyF4S
	acall PlyBreath
	mov R0, #2
	acall PlyG4S
	acall PlyBreath
    mov R0, #2
	acall PlyB5
	acall PlyBreath
    mov R0, #2
	acall PlyF4S
	acall PlyBreath
    mov R0, #2
	acall PlyE5
	acall PlyBreath
    mov R0, #2
	acall PlyD5S
	acall PlyBreath
    mov R0, #2
	acall PlyC5S
	acall PlyBreath
    mov R0, #2
	acall PlyB5
	acall PlyBreath
    mov R0, #2
	acall PlyF4S
	acall PlyBreath
    mov R0, #2
	acall PlyF4S
	acall PlyBreath
    ;----------Measure 9--------------
    mov R0, #2
	acall PlyB5
	acall PlyBreath
    mov R0, #2
	acall PlyF4S
	acall PlyBreath
    mov R0, #2
	acall PlyG4S
	acall PlyBreath
    mov R0, #2
	acall PlyB5
	acall PlyBreath
    mov R0, #2
	acall PlyF4S
	acall PlyBreath
    mov R0, #2
	acall PlyG4S
	acall PlyBreath
    mov R0, #2
	acall PlyB5
	acall PlyBreath
    mov R0, #2
	acall PlyB5
	acall PlyBreath
    mov R0, #2
	acall PlyC5S
	acall PlyBreath
    mov R0, #2
	acall PlyD5S
	acall PlyBreath
    mov R0, #2
	acall PlyB5
	acall PlyBreath
    mov R0, #2
	acall PlyF4S
	acall PlyBreath
    mov R0, #2
	acall PlyG4S
	acall PlyBreath
    mov R0, #2
	acall PlyF4S
	acall PlyBreath
	;----------measure 10-----------
	mov R0, #2
	acall PlyB5
	acall PlyBreath
	mov R0, #2
	acall PlyB5
	acall PlyBreath
	mov R0, #2
	acall PlyG4S
	acall PlyBreath
	mov R0, #2
	acall PlyB5
	acall PlyBreath
	mov R0, #2
	acall PlyF4S
	acall PlyBreath
	mov R0, #2
	acall PlyG4S
	acall PlyBreath
	mov R0, #2
	acall PlyB5
	acall PlyBreath
	mov R0, #2
	acall PlyE5
	acall PlyBreath
	mov R0, #2
	acall PlyD5S
	acall PlyBreath
	mov R0, #2
	acall PlyE5
	acall PlyBreath
	mov R0, #2
	acall PlyF5S
	acall PlyBreath
	mov R0, #4
	acall PlyB5
	acall PlyBreath
    
    mov R0, #00		;sets the current value to 0
    mov R1, #00		;set the secondary value to 0

loop:                
	mov c, p2.0		;moves the top left button to the carry        
	jnc inc_func 	;checks if carry flag is on and calls the increment function if so
	mov c, p2.1   	;moves the bottom left button to the carry 
	jnc dec_func 	;checks to see if the carry flag is on and calls the decrement function if it is on
	mov c, p2.2 	;moves the bottom right button to the carry
	jnc res_func 	;checks to see if the carry flag is on and calls the reset function if it is on
	mov c, p2.3 	;moves the top right button to the carry
	jnc sum_func 	;checks to see if the carry flag is on and calls the summation function if it is on
	sjmp loop   	;calls the loop to check for button presses     


inc_func:
	inc r0 					;increments r0 by 1
	cjne r0, #16, inc_test	;checks if overflow occurred from 15 to 0.  Calls the function otherwise
    acall PlyG4S
	lcall disp_00 			;will display 0 on the board if overflow occurred
	mov r0, #00 				;sets the current value in r0 back to 0 due to overflow
	lcall DELAY				;calls the delay loop
	sjmp loop 				;goes back to the main loop
inc_test:    
	lcall decider 			;calls the function to decide what number needs to be stored and displayed
	lcall DELAY 			;delays the program so the buttons work properly for the user
	sjmp loop 				;goes back to the main loop of the program

dec_func:
    cjne r0, #00, dec_test  ;checks if overflow occurred from 0 to 15.
	mov r0, #5
    acall PlyG4S
    lcall disp_15 			;will diplay 15 on the board if overflow occurred
    mov r0,#15 				;sets the current value in r0 to 15 if overflow occurred
    lcall DELAY 			;delays the program so the buttons work properly for the user
    sjmp loop 				;goes back to the main loop of the program
dec_test:
    dec r0 					;decrements the value in r0 by 1
    lcall decider 			;calls the function to decide what number needs to be stored and displayed
    lcall DELAY 			;delays the program so the buttons work properly for the user
    sjmp loop				;goes back to the main loop of the program

res_func:
    mov A, r0 				;this and next two lines are designed to moves the value from r0 into r1 and reset r0 to 0 
    mov r1, A
    mov r0, #00
    lcall disp_00			;displays 0 onto the board
    lcall DELAY 			;delays the program so the buttons work properly for the user
    sjmp loop 				;goes back to the main loop of the program

sum_func:
    clr c 					;clears the carry just in case it 1 so the cjne work properly
    mov A, r1			    ;this and the next two lines are designed to add r0 and r1 together and store the value back in r0
    add A, r0
    mov r0, A
    cjne r0, #16, checker 	;this function helps to determine if overflow could have occurred, if not, call another function to check for another overflow case
    sjmp overflow 			;getting here means that 15 and 1 were added together and caused overflow.  Go to overflow function
checker:
    jc in_range 			;checks to see if overflow occurred.  If it didn't then it goes to see what in range value it is
overflow:
    mov A, r0 				;the next few lines will subtract 16 if overflow occurred.  This ensures that a new accurate value is in r0
    subb A, #16
    mov r0, A    
	acall PlyG4S
    setb p2.4 				;the next few lines are designed to makes the buzzer go off and flash lights due to overflow
    setb p2.5
    setb p2.6
    setb p2.7
    lcall DELAY
    clr p2.4
    clr p2.5
    clr p2.6
    clr p2.7
    lcall DELAY
    setb p2.4
    setb p2.5
    setb p2.6
    setb p2.7
    lcall DELAY
    clr p2.4
    clr p2.5
    clr p2.6
    clr p2.7
    lcall DELAY
    setb p2.4
    setb p2.5
    setb p2.6
    setb p2.7
    lcall decider ;calls the function that decides what value to display to the board
    ljmp loop ;goes back to the main loop of the program
            

in_range:
    lcall decider ;calls the function that decides what value to display to the board
    lcall DELAY ;delays the program so the user button input works properly
    ljmp loop ;goes back to the main loop of the program

    
            
decider: ;the decider function runs through every value that r0 can be and determines which to diplay to the board
    cjne r0, #00, for1
    lcall disp_00
    ret
    
for1:
    cjne r0, #01, for2
    lcall disp_01
    ret

for2:
    cjne r0, #02, for3
    lcall disp_02
    ret

for3:
    cjne r0,#03,for4
    lcall disp_03
    ret

for4:
    cjne r0,#04,for5
    lcall disp_04
    ret

for5:
    cjne r0,#05,for6
    lcall disp_05
    ret

for6:
    cjne r0,#06,for7
    lcall disp_06
    ret

for7:
    cjne r0,#07,for8
    lcall disp_07
    ret

for8:
    cjne r0,#08,for9
    lcall disp_08
    ret

for9:
    cjne r0, #09, for10
    lcall disp_09
    ret

for10:
    cjne r0, #10, for11
    lcall disp_10
    ret

for11:
    cjne r0, #11, for12
    lcall disp_11
    ret

for12:
    cjne r0, #12, for13
    lcall disp_12
    ret

for13:
    cjne r0, #13, for14
    lcall disp_13
    ret

for14:
    cjne r0, #14, for15
    lcall disp_14
    ret

for15:
    lcall disp_15
    ret

disp_00: ;these diplay sections manually set the lights based on the value of r0
    setb p2.4
    setb p2.5
    setb p2.6
    setb p2.7
    ret

disp_01:
    setb p2.4
    setb p2.5
    setb p2.6
    clr p2.7
    ret

disp_02:
    setb p2.4
    setb p2.5
    clr p2.6
    setb p2.7
    ret

disp_03:
    setb p2.4
    setb p2.5
    clr p2.6
    clr p2.7
    ret

disp_04:
    setb p2.4
    clr p2.5
    setb p2.6
    setb p2.7
    ret

disp_05:
    setb p2.4
    clr p2.5
    setb p2.6
    clr p2.7
    ret

disp_06:
    setb p2.4
    clr p2.5
    clr p2.6
    setb p2.7
    ret

disp_07:
    setb p2.4
    clr p2.5
    clr p2.6
    clr p2.7
    ret

disp_08:
    clr p2.4
    setb p2.5
    setb p2.6
    setb p2.7
    ret

disp_09:
    clr p2.4
    setb p2.5
    setb p2.6
    clr p2.7
    ret

disp_10:
    clr p2.4
    setb p2.5
    clr p2.6
    setb p2.7
    ret

disp_11:
    clr p2.4
    setb p2.5
    clr p2.6
    clr p2.7
    ret

disp_12:
    clr p2.4
    clr p2.5
    setb p2.6
    setb p2.7
    ret

disp_13:
    clr p2.4
    clr p2.5
    setb p2.6
    clr p2.7
    ret

disp_14:
    clr p2.4
    clr p2.5
    clr p2.6
    setb p2.7
    ret

disp_15:
    clr p2.4
    clr p2.5
    clr p2.6
    clr p2.7
    ret

DELAY: mov r5, #255 ;this delay loop is to help delay for the the user's input to the buttons
MY_L: mov r6, #255
MY_L2: nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    djnz r6, MY_L2
    djnz r5, MY_L
    ret	
 
PlyG5S:	mov R2, INLOOP
L1A: clr p2.6
L1:	setb p1.7
    lcall DelG5S
    lcall DelG5S
    clr p1.7
    lcall DelG5S
    djnz R2, L1
    djnz R0, L1A
    setb p2.6
    ret
	
PlyD5S:	mov R2, INLOOP
L21: clr p0.7
L2:	setb p1.7
    lcall DelD5S
    lcall DelD5S
    clr p1.7
    lcall DelD5S
    djnz R2, L2
    djnz R0, L21
    setb p0.7
    ret

PlyB5:  mov R2, INLOOP
L31: clr p2.5
L3:	setb p1.7
    lcall DelB5
    lcall DelB5
    clr p1.7
    lcall DelB5
    djnz R2, L3
    djnz R0, L31
    setb p2.5
    ret	   

PlyD5:  mov R2, INLOOP
L41: clr p0.6
L4:	setb p1.7
    lcall DelB5
    lcall DelB5
    clr p1.7
    lcall DelB5
    djnz R2, L4
    djnz R0, L41
    setb p0.6
    ret
		
PlyE5:	mov R2, INLOOP
L51: clr p2.4
L5:	setb p1.7
    lcall DelE5
    lcall DelE5
    clr p1.7
    lcall DelE5
    djnz R2, L5
    djnz R0, L51
    setb p2.4
    ret

PlyF5S:	mov R2, INLOOP
L61: clr p0.5
L6:	setb p1.7
    lcall DelF5S
    lcall DelF5S
    clr p1.7
    lcall DelF5S
    djnz R2, L6
    djnz R0, L61
    setb p0.5
    ret

PlyG4S: mov R2, INLOOP
L71: clr p1.6
L7:	setb p1.7
    lcall DelG4S
    lcall DelG4S
    clr p1.7
    lcall DelG4S
    djnz R2, L7
    djnz R0, L71
    setb p1.6
    ret

PlyB6:	mov R2, INLOOP
L82: clr p0.4
L81: setb p1.7
    lcall DelB6
    lcall DelB6
    clr p1.7
    lcall DelB6
    djnz R2, L81
    djnz R0, L82
    setb p0.4
    ret			

PlyC5S: mov R2, INLOOP
L8:	clr p2.5
L9:	setb p1.7
    lcall DelC5S
    lcall DelC5S
    clr p1.7
    lcall DelC5S
    djnz R2, L9
    djnz R0, L8
    setb p2.5
    ret

PlyC6S:	mov R2, INLOOP
L91: clr p1.6
L10: setb p1.7
    lcall DelC6S
    lcall DelC6S
    clr p1.7
    lcall DelC6S
    djnz R2, L10
    djnz R0, L91
    setb p1.6
    ret

PlyF4S: mov R2, INLOOP
L101: clr p2.6
L11:  setb p1.7
    lcall DelF4S
    lcall DelF4S
    clr p1.7
    lcall DelF4S
    djnz R2, L11
    djnz R0, L101
    setb p2.6
    ret

PlyD6S:	mov R2, INLOOP
L13: clr p2.7
L12: setb p1.7
    lcall DelD6S
    lcall DelD6S
    clr p1.7
    lcall DelD6S
    djnz R2, L12
    djnz R0, L13
    setb p2.7
    ret

PlyA6S:	mov R2, INLOOP
L15: clr p1.6
L14: setb p1.7
	lcall DelA6S
	lcall DelA6S
	clr p1.7
	lcall DelA6S
	djnz R2, L14
	djnz R0, L15
	setb p1.6
	ret

PlyE6:	mov R2, INLOOP
L17: clr p1.6
L16: setb p1.7
	lcall DelE6
	lcall DelE6
	clr p1.7
	lcall DelE6
	djnz R2, L16
	djnz R0, L17
	setb p1.6
	ret

PlyBreath: mov R2, INLOOP
L18: lcall Breath
	djnz R2, L18
	ret

PlyRest: mov R2, #12	
L19: lcall DelB6
L20: lcall DelB6
	lcall DelB6
	djnz R2, L20
	djnz R0, L19
	ret


DelD4S: mov R3, #246	;frequency delay loop for D4#
LS: 	djnz R3, LS
		ret

DelE4:	mov R3, #232	;frequency delay loop for E4
LR: 	djnz R3, LR
		ret

DelF4S: mov R3, #207	;frequency delay loop for F5#
LV: 	djnz R3, LV
		ret

DelG4S: mov R3, #184	;frequency delay loop for G5#
LU: 	djnz R3, LU
		ret

DelB5: 	mov R3, #155	;frequency delay loop for B5
LY: 	djnz R3, LY
		ret

DelC5S: mov R3, #138	;frequency delay loop for C5#
LW: 	djnz R3, LW
		ret
		
DelD5: 	mov R3, #130	;frequency delay loop for D5
LX: 	djnz R3, LX
		ret

DelD5S: mov R3, #123	;frequency delay loop for D5#
LA:		djnz R3, LA
		ret
	
DelE5:	mov R3, #114	;frequency delay loop for E5
LB:		djnz R3, LB
		ret

DelF5S:	mov R3, #101	;frequency delay loop for F5#
LC: 	djnz R3, LC
		ret

DelG5S: mov R3, #132	;frequency delay loop for
LZ: 	djnz R3, LC
		ret

DelB6:	mov R3, #75		;frequency delay loop for B6
LD:		djnz R3, LD
		setb p2.4
		ret
	
DelC6S:	mov R3, #67		;frequency delay loop for C6#
LF:		djnz R3, LF
		ret

DelD6S:	mov R3, #59		;frequency delay loop for D6#
LG:		djnz R3, LG
		ret
	
DelA6S:	mov R3, #85	 	;frequency delay loop for A6#
LH:		djnz R3, LH
		ret
	
DelE6:	mov R3, #56		;frequency delay loop for E6
LI:		djnz R3, LI
		ret

Breath: mov R3, #60	    ;inner loop for a short pause
LJ: 	djnz R3, LJ
		ret

DelLED: mov R5, #255     ;delay loop for 1/10th of a second to be called 
LN: 	mov R6, #255	 ;five times fo each LED function
LM: 	nop
		nop
		nop
		nop
		nop
		djnz R6, LM
		djnz R5, LN
		ret	 

LEDS_ON:			;when called all LEDs are switched on
		clr p2.4
		clr p0.5
		clr p2.7
		clr p0.6
		clr p1.6
		clr p0.4
		clr p2.5
		clr p0.7
		clr p2.6
		ret

LEDS_OFF:				;when called, all LEDs are switched off
		setb p2.4
		setb p0.5
		setb p2.7
		setb p0.6
		setb p1.6
		setb p0.4
		setb p2.5 
		setb p0.7
		setb p2.6
		ret
					 
end	
