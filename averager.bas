10 CLEAR:HOME
20 PRINT &#34;  GRADE AVERAGER&#34;
30 PRINT &#34;BY: MR. PELLEGRINO&#34;
40 PRINT
50 PRINT &#34;FIRST, ENTER FORMATIVE GRADES, -1 TO END&#34;
60 SF=0:SS=0:FC=0:FS=0
100 REM ---- FORMATIVE GRADES HERE ----
110 INPUT F
120 IF F=-1 THEN GOTO 200
130 SF=SF+F:FC=FC+1
140 GOTO 110
200 REM ---- SUMMATIVE GRADES HERE ----
204 PRINT
205 PRINT &#34;NOW, ENTER SUMMATIVE GRADES, -1 TO END&#34;
210 INPUT S
220 IF S=-1 THEN GOTO 300
230 SS=SS+S:SC=SC+1
240 GOTO 210
300 G=0.2*(SF/FC)+0.8*(SS/SC)
310 PRINT
320 PRINT &#34;YOU GRADE: &#34;;
330 PRINT G
340 PRINT
350 PRINT &#34;AGAIN? (Y/N)&#34;
360 INPUT A$
370 IF A$=&#34;Y&#34; THEN GOTO 10
380 END