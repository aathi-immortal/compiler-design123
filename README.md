Microsoft Windows [Version 10.0.19045.2965]
(c) Microsoft Corporation. All rights reserved.

C:\Users\User>cd Desktop

C:\Users\User\Desktop>flex third.l

C:\Users\User\Desktop>bison -d yaac.y

C:\Users\User\Desktop>gcc lex.yy.c yaac.tab.c -o lexer

C:\Users\User\Desktop>lexer
23+34
Parsed: 23
Parsed: 34

valid
C:\Users\User\Desktop>lexer
cdwe

Error: syntax error
not ^C
C:\Users\User\Desktop>
