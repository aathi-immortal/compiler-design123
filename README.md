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
_____________________________________________________________________________________________
for first.l
flex first.l

C:\Users\User\Desktop>gcc lex.yy.c -o lex

C:\Users\User\Desktop>lex pro.text
file not found
C:\Users\User\Desktop>lex pro.txt
preprocessor:#
keyword:include
Operator: <
Identifier: stdio (ID: 1)
dot:.
Identifier: h (ID: 2)

Identifier: int (ID: 3)
Identifier: main (ID: 4)
symbols:  (
symbols:  )

symbols:  {

Identifier: printf (ID: 5)
symbols:  (
string:  "aathi"
symbols:  )
terminator:;

Identifier: int (ID: 3)
Identifier: a (ID: 6)
Operator: =
Constant: 23
terminator:;

Identifier: int (ID: 3)
Identifier: b (ID: 7)
terminator:;

Identifier: printf (ID: 5)
symbols:  (
string:  "value of a: %d"
comma:,
Identifier: a (ID: 6)
symbols:  )
terminator:;

Identifier: printf (ID: 5)
symbols:  (
string:  "enter the number:"
symbols:  )
terminator:;

Identifier: scanf (ID: 8)
symbols:  (
string:  "%d"
comma:,
Identifier: b (ID: 7)
symbols:  )
terminator:;

symbols:  }






for 
