7 GOTO 30:REM SKIP ALL THE REM STATEMENTS AT THE BEGINNING
8 REM
9 REM  ------------------------------
10 REM A BASIC Password Guessing Game
20 REM By Mr. Pellegrino - 2018 01 31
21 REM ------------------------------
22 REM
30 CLEAR:HOME:SCORE=0
40 ?"Welcome to the Password Game!"
50 ?"By: Mr. Pellegrino 02/02/2018"
60 ?"============================="
70 ?"  PRESS ANY KEY TO CONTINUE"
80 ?"============================="
90 P$="1234"
100 HOME:C=10:A$=""
105 FOR L=C TO 1 STEP -1
110 HOME:?"Welcome to the Password Game!": REM Show TITLE AGAIN
120 ?"By: Mr. Pellegrino 02/02/2018"
130 ?"============================="
135 IF A$<>"" THEN ?:? "Last guess: " GUESS$;:? A$:?
140 ?"You have ";:? L;:? " guesses left and":? "your score is: ";:?SCORE
150 ?:?"Guess my 4 digit password."
160 ?:INPUT "What's your guess?";GUESS$

180 NC=0:NE=0:REM NC is Number of CLOSE digits, NE is Number of Exact digits
190 FOR I=1 TO 4
210 :::FOR J=1 TO 4
220 ::::::IF I=J THEN 240
230 ::::::IF MID$(GUESS$,I,1)=MID$(P$,J,1) THEN NC=NC+1:J=4
240 :::NEXT J
250 :::IF MID$(GUESS$,I,1)=MID$(P$,I,1) THEN NE=NE+1
260 NEXT I

270 A$=CHR$(13)+"You have "+STR$(NC)+" that are close"+CHR$(13)+"You have "+STR$(NE)+" that are exact"

290 if NE=4 THEN 340
300 NEXT L
320 REM THEY DIDN'T GET IT AFTER C Tries
330 ?:? "The password was: ";:? P$:GOTO 350
340 ?:?"You Got It!!!":SCORE=SCORE+L*10:L=0:REM Increase score and set L=0
350 INPUT "Would you like to play again (Y/N)?";YN$:REM Self Explanitory
360 IF (YN$="Y" OR YN$="y") THEN N=INT(RND(1)*100)+1:GOTO 100
370 ?:?"Your Final Score is: ";:? SCORE:END:REM Show final score and End

1000 REM GET A NEW RANDOM NUMBER
1010 N=INT(RND(1)*9999)+1
1020 P$="1230"
1020 RETURN
