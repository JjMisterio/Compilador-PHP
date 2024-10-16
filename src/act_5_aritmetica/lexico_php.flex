/* 
VASQUEZ DENIZ ROBERTO
ESTRADA RAMIREZ JESUS ISAAC
PUENTES VEGA ANGEL DANIEL
CORTES UBALDO HAYDEE JOSSELYN
LENGUAJE PHP
*/

package act_5_aritmetica;
import java_cup.runtime.Symbol;

/*Aqui mas importaciones*/

%%

%public
%class LexerPHP
%unicode
%cup
%line
%column
%standalone

%{
            private void description (String token, String mensaje) {
                System.out.println("Linea: " +(yyline+1)+
                                    "Columna: "+(yycolumn+1)+
                                    "token: "+token+" --> "+mensaje);
            }
             
            private Symbol symbol(int type, Object value) {
                return new Symbol (type, (yyline+1), (yycolumn+1),  value); 
            }
%}

%%

/*ESPACIOS*/

[ \t\n\r]+  { /* Ignorar espacios en blanco */ }

/* COMENTARIOS*/

"//".*      {
                description(yytext(),"COMENTARIO UNILINEA"); 
            }

"/*"[^*]*"*/" {
                description (yytext(),"COMENTARIO MULTILINEA");
            }

/* PALABRAS RESERVADAS */

true        {
                description(yytext(), "PALABRA RESERVADA: TRUE");
                return symbol(sym.TRUE, yytext());
            }

false       {
                description(yytext(), "PALABRA RESERVADA: FALSE");
                return symbol(sym.FALSE, yytext());
            }

/* SIMBOLOS */

"{"         { 
                description(yytext(), "LLAVE DE APÉRTURA");
                return symbol(sym.LLAVE_APERTURA, yytext());
            }

"}"         { 
                description(yytext(), "LLAVE DE CIERRE");
                return symbol(sym.LLAVE_CIERRE, yytext());
            }

"("         { 
                description(yytext(), "PARENTESIS DE APERTURA");
                return symbol(sym.PARENTESIS_APERTURA, yytext());
            }

")"         { 
                description(yytext(), "PARENTESIS DE CIERRE");
                return symbol(sym.PARENTESIS_CIERRE, yytext());
            }

"["         { 
                description(yytext(), "CORCHETE DE APERTURA");
                return symbol(sym.CORCHETE_APERTURA, yytext());
            }

"]"         { 
                description(yytext(), "CORCHETE DE CIERRE");
                return symbol(sym.CORCHETE_CIERRE, yytext());
            }

";"         {
                description(yytext(), "DELIMITADOR PUNTO Y COMA");
                return symbol(sym.PUNTO_COMA, yytext());
            }

"."         {
                description(yytext(), "OPERADOR PUNTO");
                return symbol(sym.PUNTO, yytext());
            }

"="         { 
                description(yytext(), "OPERADOR DE ASIGNACION");              
                return symbol(sym.OPERADOR_ASIGNACION, yytext());
            }

"=="        { 
                description(yytext(), "OPERADOR DE IGUALDAD"); 
                return symbol(sym.OPERADOR_IGUALDAD, yytext());
            }

"==="       { 
                description(yytext(), "OPERADOR DE IDENTIDAD");
                return symbol(sym.OPERADOR_IDENTIDAD, yytext());
            }

"!="        { 
                description(yytext(), "OPERADOR DE DESIGUALDAD");
                return symbol(sym.OPERADOR_DESIGUALDAD, yytext());
            }

"+"         { 
                description(yytext(), "OPERADOR DE SUMA");
                return symbol(sym.OPERADOR_SUMA, yytext());
            }

"-"         { 
                description(yytext(), "OPERADOR DE RESTA");
                return symbol(sym.OPERADOR_RESTA, yytext());
            }

"*"         { 
                description(yytext(), "OPERADOR DE MULTIPLICACION");
                return symbol(sym.OPERADOR_MULTIPLICACION, yytext());
            }

"/"         { 
                description(yytext(), "OPERADOR DE DIVISION");
                return symbol(sym.OPERADOR_DIVISION, yytext());
            }

"%"         { 
                description(yytext(), "OPERADOR DE MODULO");
                return symbol(sym.OPERADOR_MODULO, yytext());
            }

"&&"        { 
                description(yytext(), "OPERADOR LOGICO AND");
                return symbol(sym.OPERADOR_LOGICO_AND, yytext());
            }

"||"        { 
                description(yytext(), "OPERADOR LOGICO OR");
                return symbol(sym.OPERADOR_LOGICO_OR, yytext());
            }

"!"         { 
                description(yytext(), "OPERADOR LOGICO NOT");
                return symbol(sym.OPERADOR_LOGICO_NOT, yytext());
            }

">"         { 
                description(yytext(), "SIMBOLO MAYOR");
                return symbol(sym.MAYOR, yytext());
            }

"<"         { 
                description(yytext(), "SIMBOLO MENOR");
                return symbol(sym.MENOR, yytext());
            }

">="        { 
                description(yytext(), "SIMBOLO MAYOR IGUAL");
                return symbol(sym.MAYOR_IGUAL, yytext());
            }

"<="        { 
                description(yytext(), "SIMBOLO MENOR IGUAL");
                return symbol(sym.MENOR_IGUAL, yytext());
            }

/* EXPRESIONES REGULARES */

[A-Za-z] [a-zA-Z0-9] * {
                description (yytext () , "IDENTIFICADOR") ;
                return symbol (sym.IDENTIFICADOR, yytext ()) ;
            }
\$[A-Za-z] [a-zA-Z0-9] * {
                description (yytext () , "DECLARADOR") ;
                return symbol (sym.DECLARADOR, yytext ()) ;
            }

[_$A-Za-z] [a-zA-Z0-9] * {
                description (yytext () , "IDENTIFICADOR INVALIDO") ;
                return symbol (sym.IDENTIFICADOR_INVALIDO, yytext ()) ;
            }

\d+         { 
                description (yytext () , "NUMERO ENTERO") ;
                return symbol (sym.NUMERO_ENTERO, yytext ()) ;
            }

\d+\.\d+    { 
                description (yytext () , "NUMERO DE PUNTO FLOTANTE") ;
                return symbol (sym.NUMERO_FLOTANTE, yytext ()) ;
            }

\/\/.*      { 
                description (yytext () , "COMENTARIO DE LINEA") ;
                return symbol (sym.COMENTARIO_LINEA, yytext ()) ;
            }

\/\*[\s\S]*?\*\/  { 
                description (yytext () , "COMENTARIO DE BLOQUE") ;
                return symbol (sym.COMENTARIO_BLOQUE, yytext ()) ;
            }

\"([^\"\\\r\n]|\\.)*\"   { 
                description (yytext () , "CADENA DE TEXTO") ;
                return symbol (sym.CADENA, yytext ()) ;
            }