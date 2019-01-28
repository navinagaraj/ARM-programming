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
			
			
LOOP                                              ;LOOP.
		    LDR R2,[R0],#4                ;LOAD R0 VALUE TO R2 THEN #4 REPRESENT THE NEXT ARRAY ADDRESS.
		    LDR R3,[R1],#4       		  ;LOAD R1 VALUE TO R3 THEN #4 REPRESENT THE NEXT ARRAY ADDRESS.
		    TEQ R2,R3                     ;TEQ(TEST EQUAL) IT CHECK R2,R3 VALUES ARE WQUAL.
		    BNE LOOP                      ;LOOP.
			
			
		    STR R3,[R2]                   ;STORE R3 VALUE TO R2 FINALY.
			
L           B       L                             ;WHILE(1) ITS WORKS LIKE THAT.


ARM_STATE   DCD 0X00000000,0X00000001,0X00000000,0X00000000,0X00000011  ;ARRAY VALUES FOR ARM_STATE.
ARM_STATE_2 DCD 0X00000001,0X00000000,0X00000100,0X00002000,0X00000011  ;AREAY VALUES FOR ARM_STATE_2.
            AREA SAMPLE,CODE,READWRITE
				
				
		    END                           ;END(STOP) OF THE PROGRAM.