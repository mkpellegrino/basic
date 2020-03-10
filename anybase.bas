1 GOTO 11
2 REM Title: AnyBase -> Decimal
3 REM Desc: Converts a number of any base to base 10
4 REM Author: Michael K. Pellegrino
5 REM Date: 2018 02 10
11 CLEAR:HOME:?"Any Base -> Base10 by: Mr. Pellegrino"
20 ?:? "Enter a number (-1) to quit ":INPUT V$:B=0:B$=V$:IF V$="-1" THEN ?:?"Okay.":END
25 ?:? "Enter a base (-1) to quit ":INPUT A:IF A=-1 THEN ?:?"Okay.":END
30 FOR L=1 TO LEN(V$):C$=RIGHT$(V$,1):C=ASC(C$):IF C>57 THEN C=C-7
40 C=C-48:IF ((C<0) OR (C>(A-1))) THEN ?:?"[ERROR - INVALID DIGIT " C$ "]":?:GOTO 20
50 B=B+C*A^(L-1):V$=LEFT$(V$,LEN(V$)-1):NEXT L:?:? B$ " base" A " is " B " base10":?:GOTO 20
