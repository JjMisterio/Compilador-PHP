/* 
VASQUEZ DENIZ ROBERTO
ESTRADA RAMIREZ JESUS ISAAC
PUENTES VEGA ANGEL DANIEL
CORTES UBALDO HAYDEE JOSSELYN
LENGUAJE PHP
*/

package act_9_semantico;
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

use         {
                description(yytext(), "DECLARADOR USE");
                return symbol(sym.USE, yytext());
            }

"class"       {
                description(yytext(), "PALABRA RESERVADA: CLASS");
                return symbol(sym.CLASES, yytext());
            }

public      {
                description(yytext(), "PALABRA RESERVADA: PUBLIC");
                return symbol(sym.PUBLIC, yytext());
            }

private     {
                description(yytext(), "PALABRA RESERVADA: PRIVATE");
                return symbol(sym.PRIVATE, yytext());
            }

protected   {
                description(yytext(), "PALABRA RESERVADA: PROTECTED");
                return symbol(sym.PROTECTED, yytext());
            }

static      {
                description(yytext(), "PALABRA RESERVADA: STATIC");
                return symbol(sym.STATIC, yytext());
            }

final       {
                description(yytext(), "PALABRA RESERVADA: FINAL");
                return symbol(sym.FINAL, yytext());
            }

function    {
                description(yytext(), "PALABRA RESERVADA: FUNCTION");
                return symbol(sym.FUNCTION, yytext());
            }

"__construct" {
                description(yytext(), "PALABRA RESERVADA: CONSTRUCT");
                return symbol(sym.CONSTRUCT, yytext());
            }

const       {
                description(yytext(), "PALABRA RESERVADA: CONST");
                return symbol(sym.CONST, yytext());
            }

void        {
                description(yytext(), "PALABRA RESERVADA: VOID");
                return symbol(sym.VOID, yytext());
            }

or          {
                description(yytext(), "PALABRA RESERVADA: OR");
                return symbol(sym.OR, yytext());
            }

true        {
                description(yytext(), "PALABRA RESERVADA: TRUE");
                return symbol(sym.TRUE, yytext());
            }

false       {
                description(yytext(), "PALABRA RESERVADA: FALSE");
                return symbol(sym.FALSE, yytext());
            }

if          {
                description(yytext(), "PALABRA RESERVADA: IF");
                return symbol(sym.IF, yytext());
            }

elseif      {
                description(yytext(), "PALABRA RESERVADA: ELSEIF");
                return symbol(sym.ELSEIF, yytext());
            }

else        {
                description(yytext(), "PALABRA RESERVADA: ELSE");
                return symbol(sym.ELSE, yytext());
            }

for         {
                description(yytext(), "PALABRA RESERVADA: FOR");
                return symbol(sym.FOR, yytext());
            }

while       {
                description(yytext(), "PALABRA RESERVADA: WHILE");
                return symbol(sym.WHILE, yytext());
            }

do          {
                description(yytext(), "PALABRA RESERVADA: DO");
                return symbol(sym.DO, yytext());
            }

switch      {
                description(yytext(), "PALABRA RESERVADA: SWITCH");
                return symbol(sym.SWITCH, yytext());
            }

case        {
                description(yytext(), "PALABRA RESERVADA: CASE");
                return symbol(sym.CASE, yytext());
            }

break       {
                description(yytext(), "PALABRA RESERVADA: BREAK");
                return symbol(sym.BREAK, yytext());
            }

default     {
                description(yytext(), "PALABRA RESERVADA: DEFAULT");
                return symbol(sym.DEFAULT, yytext());
            }

echo        {
                description(yytext(), "PALABRA RESERVADA: ECHO");
                return symbol(sym.ECHO, yytext());
            }

print       {
                description(yytext(), "PALABRA RESERVADA: PRINT");
                return symbol(sym.PRINT, yytext());
            }

trim        {
                description(yytext(), "PALABRA RESERVADA: TRIM");
                return symbol(sym.TRIM, yytext());
            }

fgets       {
                description(yytext(), "PALABRA RESERVADA: FGETS");
                return symbol(sym.FGETS, yytext());
            }

"STDIN"     {
                description(yytext(), "PALABRA RESERVADA: STDIN");
                return symbol(sym.STDIN, yytext());
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

","         {
                description(yytext(), "DELIMITADOR COMA");
                return symbol(sym.COMA, yytext());
            }

":"         {
                description(yytext(), "DELIMITADOR DOS PUNTOS");
                return symbol(sym.DOS_PUNTOS, yytext());
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

"\\"         { 
                description(yytext(), "BARRA INVERSA");
                return symbol(sym.BARRA_INVERSA, yytext());
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
\$[a-z] [a-z0-9_]* {
                description(yytext(), "VARIABLE");
                return symbol(sym.VARIABLE, yytext());
            }

[A-Z] [A-Z0-9_]* {
                description(yytext(), "CONSTANTE");
                return symbol(sym.CONSTANTE, yytext());
            }

[_$A-Za-z] [a-zA-Z0-9] * {
                description (yytext () , "VARIABLE INVALIDO") ;
                return symbol (sym.VARIABLE_INVALIDO, yytext ()) ;
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