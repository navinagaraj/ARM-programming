/*****************************************/
/* Author       : Navin kumar.N          */
/* Date         : 25-01-2019             */
/* Filename     : TEQ.s                  */
/* Description  : Explanation of " TEQ"  */
/*****************************************/

						AREA SAMPLE,CODE,READONLY
ENTRY                                                                         ;ENTRY(START) OF THE PROGRAM.
						LDR R0,=ARM_STATE             ;WE STORING ARM_STATE VALUE TO R0 REGISTER.
						LDR R1,=ARM_STATE_2	          ;WE STORING ARM_STATE VALUE TO R1 REGISTER.
						LDR R2,=ARM_STATE_3           ;WE STORING ARM_STATE VALUE TO R1 REGISTER.
						MOV R4,#0X5                   ;LOADING A R4 REGISTER A VALUE OF FIVE FOR LOOP.
LOOP1			                                      ;LOOP1.
						LDR R3,[R0],#4                ;LOAD R0VALUE TO R2 THEN #4 REPRESENT THE NEXT ARRAY ADDRESS.
						LDR R5,[R1],#4                ;LOAD R1 VALUE TO R3 THEN #4 REPRESENT THE NEXT ARRAY ADDRESS.
						TEQ R3,R5                     ;TEQ(TEST EQUAL) IT CHECK R2,R3 VALUES ARE WQUAL.
						BNE LOOP                      ;LOOP2.			
						STR R3,[R2],#4                ;STORE R3 VALUE TO R2 FINALY.
						SUBS R4,#1                    ;SUB R4=R4-1
						BNE LOOP1                     ;LOOP1
LOOP                                                                          ;LOOP 
			
L                       B       L                                             ;WHILE(1) ITS WORKS LIKE THAT.


ARM_STATE     	        DCD     0X10000001,0X20000002,0X30000003,0X40000004,0X50000005  
	                                                                      ;ARRAY VALUES FOR ARM_STATE.
ARM_STATE_2             DCD     0X10000001,0X20000002,0X30000003,0X40000004,0X50000005  
	                                                                      ;AREAY VALUES FOR ARM_STATE_2.
ARM_STATE_3             DCD     0
                        AREA SAMPLE,CODE,READWRITE
				
				
                        END                                                   ;END(STOP) OF THE PROGRAM.
