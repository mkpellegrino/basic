0 HOME : REM CLEAR SCREEN
1 REM G is the grade being entered
2 REM T is the sum of all the grades
3 REM C is the number of grades that were entered
4 REM A is the average
5 REM A$ is the users choice (Y/N) to do it again
10 LET G=0:LET T=0:LET C=0:LET A=0:LET A$=""
15 REM
16 REM SHOW THE TITLE SCREEN
20 PRINT "  GRADE AVERAGER - BY: MR. PELLEGRINO"
30 PRINT "     2020 02 25 - APPLE ][ BASIC"
40 PRINT "---------------------------------------"
50 PRINT "ENTER GRADES THAT YOU WANT AVERAGED"
60 PRINT "ENTER A GRADE OF -1 TO FINISH ENTERING"
70 PRINT "---------------------------------------"
71 REM
80 PRINT "ENTER GRADE";:INPUT G
90 IF G=-1 THEN GOTO 130
100 C=C+1:T=T+G
110 GOTO 80
120 REM CALCULATE THE AVERAGE
130 IF C=0 THEN GOTO 180:REM If the user didnt enter any grades then END Prog
140 LET A=T/C
150 PRINT "Average: ";:PRINT A
160 REM 
170 REM ASK USER TO DO ANOTHER SET OF GRADES
180 PRINT "Would you like to do it again (Y/N)";:INPUT A$
190 IF A$="Y" THEN GOTO 0
200 IF A$="y" THEN GOTO 0
210 REM
220 PRINT "OKAY.  Goodbye."
230 END

	
0 HOME:LET G=0:LET T=0:LET C=0:LET A=0:LET A$=""
20 PRINT "  GRADE AVERAGER - BY: MR. PELLEGRINO"
30 PRINT "     2020 02 25 - APPLE ][ BASIC"
40 PRINT "---------------------------------------"
50 PRINT "ENTER GRADES THAT YOU WANT AVERAGED"
60 PRINT "ENTER A GRADE OF -1 TO FINISH ENTERING"
70 PRINT "---------------------------------------"
80 PRINT "ENTER GRADE";:INPUT G:IF G=-1 THEN GOTO 130
100 C=C+1:T=T+G:GOTO 80
130 IF C=0 THEN GOTO 180
140 LET A=T/C:PRINT "Average: ";:PRINT A
180 PRINT "Would you like to do it again (Y/N)";:INPUT A$
190 IF A$="Y" THEN GOTO 0
200 IF A$="y" THEN GOTO 0
220 PRINT "OKAY.  Goodbye."

	
