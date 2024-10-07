/* 
VASQUEZ DENIZ ROBERTO
ESTRADA RAMIREZ JESUS ISAAC
PUENTES VEGA ANGEL DANIEL
CORTES UBALDO HAYDEE JOSSELYN
LENGUAJE PHP
*/

package act_4_demo_cup;
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
            
namespace   {
                description(yytext(), "DECLARADOR NAMESPACE");
                return symbol(sym.NAMESPACE, yytext());
            }

true        {
                description(yytext(), "PALABRA RESERVADA: TRUE");
                return symbol(sym.TRUE, yytext());
            }

false       {
                description(yytext(), "PALABRA RESERVADA: FALSE");
                return symbol(sym.FALSE, yytext());
            }

/* SIMBOLOS */

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