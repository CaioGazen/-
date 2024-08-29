# Notação BNF




\<bloco função\> ::= \<bloco comandos\> \<string\>
\<bloco comandos\> ::= \<inicio bloco\> \<comandos\> \<fim bloco\> 
\<inicio bloco\> ::= }
\<fim bloco\> ::= {
\<comandos\> ::= \<comandos\> \<comandos\>| \<comando printf\> | \<comando scanf\> | \<comando iff\> | \<comando else\> | \<comando for\> | \<comando while\> | \<declaracao de variavel\> | \<atribuicao de variavel\>
\<comando printf\> ::= ) \<string\> ( printf \<final linha\>
\<comando scanf\> ::= ) ( scanf \<final linha\>
\<comando iff\> ::= ) \<expressao booleana\> ( iff \<final linha\> \<bloco comandos\> |         ) \<expressao booleana\> ( iff \<final linha\> \<bloco comandos\> else \<final linha\> \<bloco comandos\> 
\<comando for\> ::= )\<declaracao de variavel\>  \<expressao booleana\>  \<final linha\>  \<atribuicao de variavel\> ( for \<final linha\> \<bloco comandos\> |  )\<expressao booleana\>  \<final linha\>  \<atribuicao de variavel\> ( for \<final linha\> \<bloco comandos\>
\<comando while\> ::= ) \<expressao booleana\> ( while  \<final linha\> \<bloco comandos\>
\<declaracao de variavel\> ::=  \<expressao aritmetica\> ; \<string\> \<tipo\> \<final linha\> | \<string\> \<tipo\> \<final linha\> | \<string\> ; \<string\> \<tipo\> \<final linha\>
\<atribuicao de variavel\> ::= \<expressao aritmetica\>  ; \<string\>  \<final linha\> | \<string\> ; \<string\> \<final linha\>
\<expressao aritmetica\> ::= \<expressao simples\> | \<expressao aritmetica\> \<operador aritmetico\> \<expressao aritmetica\>
\<expressao simples\> ::= \<sinal\> \<numero\> | \<sinal\> \<string\>
\<expressao booleana\> ::= \<expressao simples\> | \<expressao aritmetica\> \<operador relacional\> \<expressao aritmetica\>
\<string\> ::= \<letra\> | \<string\> \<letra\> | \<string\> \<digito\>
\<numero\> ::= \<digito\> | \<digito\> \<numero\>
\<numero real\> ::= \<sinal\> \<numero\>.\<numero\>
\<numero inteiro\> ::= \<sinal\> \<numero\>


\<tipo\> ::= number | number number | char | char char 
\<letra\> ::= a | b | c | ... | z | A | B | C | ... | Z
\<operador relacional\> ::= == | != | \< | \<= | \>= | \>
\<operador aritmetico\> ::= + | - | * | / | %
\<digito\> ::= 0 | 1 | ... | 9
\<sinal\> ::= + | - | \<null\> 
\<final linha\> ::= \<eol\> | \<eold\>
\<eol\> ::= \<eol\> ! | ! \<null\>
\<eold\> ::= \<eold\> ? | \<null\> ?

