/*****************************************/
/* Author       : Navin kumar.N          */
/* Date         : 25-01-2019             */
/* Filename     : TEQ.s                  */
/* Description  : Explanation of " TEQ"  */
/*****************************************/

	 	    AREA SAMPLE,CODE,READONLY
		    ENTRY                         ;ENTRY(START) OF THE PROGRAM.
			
			
		    LDR R0,=ARM_STATE             ;WE STORING ARM_STATE VALUE TO R0 REGISTER.
		    LDR R1,=ARM_STATE_2	          ;WE STORING ARM_STATE VALUE TO R1 REGISTER.
		    LDR R6,=ARM_STATE_3
		    MOV R5,#0X5
			
STATE			
		    LDR R2,[R0],#4                ;LOAD R0VALUE TO R2 THEN #4 REPRESENT THE NEXT ARRAY ADDRESS.
		    LDR R3,[R1],#4                ;LOAD R1 VALUE TO R3 THEN #4 REPRESENT THE NEXT ARRAY ADDRESS.
		    TEQ R2,R3                     ;TEQ(TEST EQUAL) IT CHECK R2,R3 VALUES ARE WQUAL.
		    BNE LOOP                      ;LOOP.			
		    STR R6,[R2],#4                ;STORE R3 VALUE TO R2 FINALY.
		    SUBS R5,#1
		    BNE STATE
			
L                   B       L                     ;WHILE(1) ITS WORKS LIKE THAT.


ARM_STATE           DCD     0X00000001,0X00000011,0X00000111,0X00001111,0X00011111  ;ARRAY VALUES FOR ARM_STATE.
ARM_STATE_2         DCD     0X00000001,0X00000011,0X00000111,0X00001111,0X00011111  ;AREAY VALUES FOR ARM_STATE_2.
ARM_STATE_3         DCD     0
                    AREA SAMPLE,CODE,READWRITE
				
				
		    END                           ;END(STOP) OF THE PROGRAM.
