/* 
VASQUEZ DENIZ ROBERTO
ESTRADA RAMIREZ JESUS ISAAC
PUENTES VEGA ANGEL DANIEL
CORTES UBALDO HAYDEE JOSSELYN
LENGUAJE PHP
*/

package act_3_error_lexico;

/*Aqui mas importaciones*/

%%

%public
%class LexerPalabrasReservadasPHP
%unicode
%line
%column
%standalone

%%

/* ERROR DE LITERALES NUMÉRICOS INCORRECTOS */

([0-9]+[a-zA-Z]+[0-9]*)|([0-9]+[.,][0-9]+[.,]+[0-9]*) {
                System.out.print("Linea:" + (yyline + 1) + ", Columna:" + (yycolumn + 1) + "\\t");
                System.out.println(yytext() + " -> Error: Literal numérico incorrecto.");
                return TokensPHP.ERROR;
            }
([0-9]+[,][0-9]*) {
                System.out.print("Linea:" + (yyline + 1) + ", Columna:" + (yycolumn + 1) + "\\t");
                System.out.println(yytext() + " -> Error: Literal numérico incorrecto.");
                return TokensPHP.ERROR;
            }

/* IDENTIFICADOR MAL FORMADO */

[a-zA-Z_][a-zA-Z0-9_]* {
                System.out.print("Linea:" + (yyline+1) + ", Columna:" + (yycolumn+1) + "\t");
                System.out.println(yytext() + " -> Identificador valido");
                return TokensPHP.IDENTIFICADOR_VALIDO;
            }
[-$+*@/<>=!&:;|%_0-9a-zA-Z][a-zA-Z_*]* {
                System.out.print("Linea:" + (yyline+1) + ", Columna:" + (yycolumn+1) + "\t");
                System.out.println("Error: Identificador mal formado '" + yytext() + "'");
                return TokensPHP.ERROR_IDENTIFICADOR_MAL_FORMADO;
            }

/* CADENAS COMPLETAS E INCOMPLETAS */

\"([^\"\\\r\n]|\\.)*\" {
                System.out.print("Linea:" + (yyline+1) + ", Columna:" + (yycolumn+1) + "\t");
                System.out.println(yytext() + " -> Cadena de texto");
                return TokensPHP.CADENA;
            }
\"([^\"\\\r\n]|\\.)*[^\"\\\r\n\\\"] {
                System.out.print("Linea:" + (yyline+1) + ", Columna:" + (yycolumn+1) + "\t");
                System.out.println("Error: Cadena de texto mal formada '" + yytext() + "'");
                return TokensPHP.ERROR_CADENA_MAL_FORMADA;
            }

/* CADENAS COMPLETAS ENTRE COMILLAS SIMPLES */

\'([^\'\\\r\n]|\\.)*\' {
                System.out.print("Linea:" + (yyline+1) + ", Columna:" + (yycolumn+1) + "\t");
                System.out.println(yytext() + " -> Cadena de texto");
                return TokensPHP.CADENA;
            }

/* CADENAS INCOMPLETAS ENTRE COMILLAS SIMPLES */

\'([^\'\\\r\n]|\\.)*[^\'\\\r\n\\\'] {
                System.out.print("Linea:" + (yyline+1) + ", Columna:" + (yycolumn+1) + "\t");
                System.out.println("Error: Cadena de texto mal formada '" + yytext() + "'");
                return TokensPHP.ERROR_CADENA_MAL_FORMADA;
            }

/* PALABRAS RESERVADAS */

int         {
                System.out.print("Linea:" + (yyline + 1) + ", Columna:" + (yycolumn + 1) + "\t");
                System.out.println(yytext() + " -> Tipo de dato int ");
                return TokensPHP.INT;
            }

float       {
                System.out.print("Linea:" + (yyline + 1) + ", Columna:" + (yycolumn + 1) + "\t");
                System.out.println(yytext() + " -> Tipo de dato float ");
                return TokensPHP.FLOAT;
            }

String      {
                System.out.print("Linea:" + (yyline + 1) + ", Columna:" + (yycolumn + 1) + "\t");
                System.out.println(yytext() + " -> Tipo de dato String ");
                return TokensPHP.STRING;
            }
    
boolean     {
                System.out.print("Linea:" + (yyline + 1) + ", Columna:" + (yycolumn + 1) + "\t");
                System.out.println(yytext() + " -> Tipo de dato boolean ");
                return TokensPHP.BOOLEAN;
            }

array       {
                System.out.print("Linea:" + (yyline + 1) + ", Columna:" + (yycolumn + 1) + "\t");
                System.out.println(yytext() + " -> Tipo de dato array ");
                return TokensPHP.ARRAY;
            }

null        {
                System.out.print("Linea:" + (yyline + 1) + ", Columna:" + (yycolumn + 1) + "\t");
                System.out.println(yytext() + " -> Tipo de dato null ");
                return TokensPHP.NULL;
            }

/* Palabras reservadas */

abstract    {
                System.out.print("Linea:" + (yyline + 1) + ", Columna:" + (yycolumn + 1) + "\t");
                System.out.println(yytext() + " -> Palabra reservada: 'abstract' ");
                return TokensPHP.ABSTRACT;
            }

and         {
                System.out.print("Linea:" + (yyline + 1) + ", Columna:" + (yycolumn + 1) + "\t");
                System.out.println(yytext() + " -> Palabra reservada: 'and' ");
                return TokensPHP.AND;
            }

as          {
                System.out.print("Linea:" + (yyline + 1) + ", Columna:" + (yycolumn + 1) + "\t");
                System.out.println(yytext() + " -> Palabra reservada: 'as' ");
                return TokensPHP.AS;
            }

break       {
                System.out.print("Linea:" + (yyline + 1) + ", Columna:" + (yycolumn + 1) + "\t");
                System.out.println(yytext() + " -> Palabra reservada: 'break' ");
                return TokensPHP.BREAK;
            }

case        {
                System.out.print("Linea:" + (yyline + 1) + ", Columna:" + (yycolumn + 1) + "\t");
                System.out.println(yytext() + " -> Palabra reservada: 'case' ");
                return TokensPHP.CASE;
            }

catch       {
                System.out.print("Linea:" + (yyline + 1) + ", Columna:" + (yycolumn + 1) + "\t");
                System.out.println(yytext() + " -> Palabra reservada: 'catch' ");
                return TokensPHP.CATCH;
            }

class       {
                System.out.print("Linea:" + (yyline + 1) + ", Columna:" + (yycolumn + 1) + "\t");
                System.out.println(yytext() + " -> Palabra reservada: 'class' ");
                return TokensPHP.CLASS;
            }

const       {
                System.out.print("Linea:" + (yyline + 1) + ", Columna:" + (yycolumn + 1) + "\t");
                System.out.println(yytext() + " -> Palabra reservada: 'const' ");
                return TokensPHP.CONST;
            }

continue    {
                System.out.print("Linea:" + (yyline + 1) + ", Columna:" + (yycolumn + 1) + "\t");
                System.out.println(yytext() + " -> Palabra reservada: 'continue' ");
                return TokensPHP.CONTINUE;
            }

declare     {
                System.out.print("Linea:" + (yyline + 1) + ", Columna:" + (yycolumn + 1) + "\t");
                System.out.println(yytext() + " -> Palabra reservada: 'declare' ");
                return TokensPHP.DECLARE;
            }

default     {
                System.out.print("Linea:" + (yyline + 1) + ", Columna:" + (yycolumn + 1) + "\t");
                System.out.println(yytext() + " -> Palabra reservada: 'default' ");
                return TokensPHP.DEFAULT;
            }

do          {
                System.out.print("Linea:" + (yyline + 1) + ", Columna:" + (yycolumn + 1) + "\t");
                System.out.println(yytext() + " -> Palabra reservada: 'do' ");
                return TokensPHP.DO;
            }

echo        {
                System.out.print("Linea:" + (yyline + 1) + ", Columna:" + (yycolumn + 1) + "\t");
                System.out.println(yytext() + " -> Palabra reservada: 'echo' ");
                return TokensPHP.ECHO;
            }

else        {
                System.out.print("Linea:" + (yyline + 1) + ", Columna:" + (yycolumn + 1) + "\t");
                System.out.println(yytext() + " -> Palabra reservada: 'else' ");
                return TokensPHP.ELSE;
            }

elseif      {
                System.out.print("Linea:" + (yyline + 1) + ", Columna:" + (yycolumn + 1) + "\t");
                System.out.println(yytext() + " -> Palabra reservada: 'elseif' ");
                return TokensPHP.ELSEIF;
            }

empty       {
                System.out.print("Linea:" + (yyline + 1) + ", Columna:" + (yycolumn + 1) + "\t");
                System.out.println(yytext() + " -> Palabra reservada: 'empty' ");
                return TokensPHP.EMPTY;
            }

enddeclare  {
                System.out.print("Linea:" + (yyline + 1) + ", Columna:" + (yycolumn + 1) + "\t");
                System.out.println(yytext() + " -> Palabra reservada: 'enddeclare' ");
                return TokensPHP.ENDDECLARE;
            }

endfor      {
                System.out.print("Linea:" + (yyline + 1) + ", Columna:" + (yycolumn + 1) + "\t");
                System.out.println(yytext() + " -> Palabra reservada: 'endfor' ");
                return TokensPHP.ENDFOR;
            }

endforeach  {
                System.out.print("Linea:" + (yyline + 1) + ", Columna:" + (yycolumn + 1) + "\t");
                System.out.println(yytext() + " -> Palabra reservada: 'endforeach' ");
                return TokensPHP.ENDFOREACH;
            }

endif       {
                System.out.print("Linea:" + (yyline + 1) + ", Columna:" + (yycolumn + 1) + "\t");
                System.out.println(yytext() + " -> Palabra reservada: 'endif' ");
                return TokensPHP.ENDIF;
            }

endswitch   {
                System.out.print("Linea:" + (yyline + 1) + ", Columna:" + (yycolumn + 1) + "\t");
                System.out.println(yytext() + " -> Palabra reservada: 'endswitch' ");
                return TokensPHP.ENDSWITCH;
            }

endwhile    {
                System.out.print("Linea:" + (yyline + 1) + ", Columna:" + (yycolumn + 1) + "\t");
                System.out.println(yytext() + " -> Palabra reservada: 'endwhile' ");
                return TokensPHP.ENDWHILE;
            }

eval        {
                System.out.print("Linea:" + (yyline + 1) + ", Columna:" + (yycolumn + 1) + "\t");
                System.out.println(yytext() + " -> Palabra reservada: 'eval' ");
                return TokensPHP.EVAL;
            }

exit        {
                System.out.print("Linea:" + (yyline + 1) + ", Columna:" + (yycolumn + 1) + "\t");
                System.out.println(yytext() + " -> Palabra reservada: 'exit' ");
                return TokensPHP.EXIT;
            }

extends     {
                System.out.print("Linea:" + (yyline + 1) + ", Columna:" + (yycolumn + 1) + "\t");
                System.out.println(yytext() + " -> Palabra reservada: 'extends' ");
                return TokensPHP.EXTENDS;
            }

final       {
                System.out.print("Linea:" + (yyline + 1) + ", Columna:" + (yycolumn + 1) + "\t");
                System.out.println(yytext() + " -> Palabra reservada: 'final' ");
                return TokensPHP.FINAL;
            }

finally     {
                System.out.print("Linea:" + (yyline + 1) + ", Columna:" + (yycolumn + 1) + "\t");
                System.out.println(yytext() + " -> Palabra reservada: 'finally'");
                return TokensPHP.FINALLY;
            }

for         {
                System.out.print("Linea:" + (yyline + 1) + ", Columna:" + (yycolumn + 1) + "\t");
                System.out.println(yytext() + " -> Palabra reservada: 'for' ");
                return TokensPHP.FOR;
            }

foreach     {
                System.out.print("Linea:" + (yyline + 1) + ", Columna:" + (yycolumn + 1) + "\t");
                System.out.println(yytext() + " -> Palabra reservada: 'foreach' ");
                return TokensPHP.FOREACH;
            }

function    {
                System.out.print("Linea:" + (yyline + 1) + ", Columna:" + (yycolumn + 1) + "\t");
                System.out.println(yytext() + " -> Palabra reservada: 'function' ");
                return TokensPHP.FUNCTION;
            }

global      {
                System.out.print("Linea:" + (yyline + 1) + ", Columna:" + (yycolumn + 1) + "\t");
                System.out.println(yytext() + " -> Palabra reservada: 'global' ");
                return TokensPHP.GLOBAL;
            }

goto        {
                System.out.print("Linea:" + (yyline + 1) + ", Columna:" + (yycolumn + 1) + "\t");
                System.out.println(yytext() + " -> Palabra reservada: 'goto' ");
                return TokensPHP.GOTO;
            }

if          {
                System.out.print("Linea:" + (yyline + 1) + ", Columna:" + (yycolumn + 1) + "\t");
                System.out.println(yytext() + " -> Palabra reservada: 'if' ");
                return TokensPHP.IF;
            }

implements  {
                System.out.print("Linea:" + (yyline + 1) + ", Columna:" + (yycolumn + 1) + "\t");
                System.out.println(yytext() + " -> Palabra reservada: 'implements' ");
                return TokensPHP.IMPLEMENTS;
            }

include     {
                System.out.print("Linea:" + (yyline + 1) + ", Columna:" + (yycolumn + 1) + "\t");
                System.out.println(yytext() + " -> Palabra reservada: 'include' ");
                return TokensPHP.INCLUDE;
            }

instanceof  {
                System.out.print("Linea:" + (yyline + 1) + ", Columna:" + (yycolumn + 1) + "\t");
                System.out.println(yytext() + " -> Palabra reservada: 'instanceof' ");
                return TokensPHP.INSTANCEOF;
            }

insteadof   {
                System.out.print("Linea:" + (yyline + 1) + ", Columna:" + (yycolumn + 1) + "\t");
                System.out.println(yytext() + " -> Palabra reservada: 'insteadof' ");
                return TokensPHP.INSTEADOF;
            }

interface   {
                System.out.print("Linea:" + (yyline + 1) + ", Columna:" + (yycolumn + 1) + "\t");
                System.out.println(yytext() + " -> Palabra reservada: 'interface' ");
                return TokensPHP.INTERFACE;
            }

isset       {
                System.out.print("Linea:" + (yyline + 1) + ", Columna:" + (yycolumn + 1) + "\t");
                System.out.println(yytext() + " -> Palabra reservada: 'isset' ");
                return TokensPHP.ISSET;
            }

list        {
                System.out.print("Linea:" + (yyline + 1) + ", Columna:" + (yycolumn + 1) + "\t");
                System.out.println(yytext() + " -> Palabra reservada: 'list' ");
                return TokensPHP.LIST;
            }

namespace   {
                System.out.print("Linea:" + (yyline + 1) + ", Columna:" + (yycolumn + 1) + "\t");
                System.out.println(yytext() + " -> Palabra reservada: 'namespace' ");
                return TokensPHP.NAMESPACE;
            }

new         {
                System.out.print("Linea:" + (yyline + 1) + ", Columna:" + (yycolumn + 1) + "\t");
                System.out.println(yytext() + " -> Palabra reservada: 'new' ");
                return TokensPHP.NEW;
            }

or          {
                System.out.print("Linea:" + (yyline + 1) + ", Columna:" + (yycolumn + 1) + "\t");
                System.out.println(yytext() + " -> Palabra reservada: 'or' ");
                return TokensPHP.OR;
            }

print       {
                System.out.print("Linea:" + (yyline + 1) + ", Columna:" + (yycolumn + 1) + "\t");
                System.out.println(yytext() + " -> Palabra reservada: 'print' ");
                return TokensPHP.PRINT;
            }

private     {
                System.out.print("Linea:" + (yyline + 1) + ", Columna:" + (yycolumn + 1) + "\t");
                System.out.println(yytext() + " -> Palabra reservada: 'private' ");
                return TokensPHP.PRIVATE;
            }

protected   {
                System.out.print("Linea:" + (yyline + 1) + ", Columna:" + (yycolumn + 1) + "\t");
                System.out.println(yytext() + " -> Palabra reservada: 'protected' ");
                return TokensPHP.PROTECTED;
            }

public      {
                System.out.print("Linea:" + (yyline + 1) + ", Columna:" + (yycolumn + 1) + "\t");
                System.out.println(yytext() + " -> Palabra reservada: 'public' ");
                return TokensPHP.PUBLIC;
            }

require     {
                System.out.print("Linea:" + (yyline + 1) + ", Columna:" + (yycolumn + 1) + "\t");
                System.out.println(yytext() + " -> Palabra reservada: 'require' ");
                return TokensPHP.REQUIRE;
            }

return      {
                System.out.print("Linea:" + (yyline + 1) + ", Columna:" + (yycolumn + 1) + "\t");
                System.out.println(yytext() + " -> Palabra reservada: 'return' ");
                return TokensPHP.RETURN;
            }

static      {
                System.out.print("Linea:" + (yyline + 1) + ", Columna:" + (yycolumn + 1) + "\t");
                System.out.println(yytext() + " -> Palabra reservada: 'static' ");
                return TokensPHP.STATIC;
            }

switch      {
                System.out.print("Linea:" + (yyline + 1) + ", Columna:" + (yycolumn + 1) + "\t");
                System.out.println(yytext() + " -> Palabra reservada: 'switch' ");
                return TokensPHP.SWITCH;
            }

throw       {
                System.out.print("Linea:" + (yyline + 1) + ", Columna:" + (yycolumn + 1) + "\t");
                System.out.println(yytext() + " -> Palabra reservada: 'throw' ");
                return TokensPHP.THROW;
            }

trait       {
                System.out.print("Linea:" + (yyline + 1) + ", Columna:" + (yycolumn + 1) + "\t");
                System.out.println(yytext() + " -> Palabra reservada: 'trait' ");
                return TokensPHP.TRAIT;
            }

try         {
                System.out.print("Linea:" + (yyline + 1) + ", Columna:" + (yycolumn + 1) + "\t");
                System.out.println(yytext() + " -> Palabra reservada: 'try' ");
                return TokensPHP.TRY;
            }

unset       {
                System.out.print("Linea:" + (yyline + 1) + ", Columna:" + (yycolumn + 1) + "\t");
                System.out.println(yytext() + " -> Palabra reservada: 'unset' ");
                return TokensPHP.UNSET;
            }

use         {
                System.out.print("Linea:" + (yyline + 1) + ", Columna:" + (yycolumn + 1) + "\t");
                System.out.println(yytext() + " -> Palabra reservada: 'use' ");
                return TokensPHP.USE;
            }

var         {
                System.out.print("Linea:" + (yyline + 1) + ", Columna:" + (yycolumn + 1) + "\t");
                System.out.println(yytext() + " -> Palabra reservada: 'var' ");
                return TokensPHP.VAR;
            }

while       {
                System.out.print("Linea:" + (yyline + 1) + ", Columna:" + (yycolumn + 1) + "\t");
                System.out.println(yytext() + " -> Palabra reservada: 'while' ");
                return TokensPHP.WHILE;
            }
    
xor         {
                System.out.print("Linea:" + (yyline + 1) + ", Columna:" + (yycolumn + 1) + "\t");
                System.out.println(yytext() + " -> Palabra reservada: 'xor' ");
                return TokensPHP.XOR;
            }

yield       {
                System.out.print("Linea:" + (yyline + 1) + ", Columna:" + (yycolumn + 1) + "\t");
                System.out.println(yytext() + "-> Palabra reservada: 'yield' ");
                return TokensPHP.YIELD;
            }



/* SIMBOLOS */

"{"         { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Llave de apertura ");                
                return TokensPHP.LLAVE_APERTURA; 
            }

"}"         { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Llave de cierre ");                
                return TokensPHP.LLAVE_CIERRE; 
            }

"("         { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Parentesis de apertura ");                
                return TokensPHP.PARENTESIS_APERTURA; 
            }

")"         { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Parentesis de cierre ");                
                return TokensPHP.PARENTESIS_CIERRE; 
            }

"["         { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Corchete de apertura ");                
                return TokensPHP.CORCHETE_APERTURA; 
            }

"]"         { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Corchete de cierre ");                
                return TokensPHP.CORCHETE_CIERRE; 
            }

";"         { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Punto y coma ");                
                return TokensPHP.PUNTO_Y_COMA; 
            }

","         { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Coma ");                
                return TokensPHP.COMA; 
            }

"."         { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Punto ");                
                return TokensPHP.PUNTO; 
            }

"="         { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Operador de asignacion ");                
                return TokensPHP.OPERADOR_ASIGNACION; 
            }

"=="        { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Operador de igualdad ");                
                return TokensPHP.OPERADOR_IGUALDAD; 
            }

"==="       { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Operador de identidad ");                
                return TokensPHP.OPERADOR_IDENTIDAD; 
            }

"!="        { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Operador de desigualdad ");                
                return TokensPHP.OPERADOR_DESIGUALDAD; 
            }

"+"         { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Operador de suma ");                
                return TokensPHP.OPERADOR_SUMA; 
            }

"-"         { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Operador de resta ");                
                return TokensPHP.OPERADOR_RESTA; 
            }

"*"         { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Operador de multiplicacion ");                
                return TokensPHP.OPERADOR_MULTIPLICACION; 
            }

"/"         { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Operador de division ");                
                return TokensPHP.OPERADOR_DIVISION; 
            }

"%"         { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Operador de modulo ");                
                return TokensPHP.OPERADOR_MODULO; 
            }

"&&"        { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Operador logico AND ");                
                return TokensPHP.OPERADOR_LOGICO_AND; 
            }

"||"        { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Operador logico OR ");                
                return TokensPHP.OPERADOR_LOGICO_OR; 
            }

"!"         { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Operador logico NOT ");                
                return TokensPHP.OPERADOR_LOGICO_NOT; 
            }

/* EXPRESIONES REGULARES*/

[a-zA-Z_][a-zA-Z0-9_]*  { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Identificador ");                
                return TokensPHP.IDENTIFICADOR; 
            }

\d+         { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Numero entero ");                
                return TokensPHP.NUMERO_ENTERO; 
            }

\d+\.\d+    { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Numero en punto flotante ");                
                return TokensPHP.NUMERO_FLOTANTE; 
            }

\+|\-|\*|\/  { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Operador aritmetico ");                
                return TokensPHP.OPERADOR_ARITMETICO; 
            }

"<"|"="|"<="|">="|"=="|"!=" { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Operador relacional ");                
                return TokensPHP.OPERADOR_RELACIONAL; 
            }

&&|\|\|     { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Operador lógico ");                
                return TokensPHP.OPERADOR_LOGICO; 
            }

\(|\)|\{|\}|\[|\]|\,|\;|\.  { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Símbolo especial ");                
                return TokensPHP.SIMBOLO_ESPECIAL; 
            }

\/\/.*      { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Comentario de linea ");                
                return TokensPHP.COMENTARIO_LINEA; 
            }

\/\*[\s\S]*?\*\/  { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Comentario de bloque ");                
                return TokensPHP.COMENTARIO_BLOQUE; 
            }

"\"([^\"\\\\]|\\\\.)*\""   { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Cadena de texto ");                
                return TokensPHP.CADENA_TEXTO; 
            }

"\""        { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Comillas dobles ");                
                return TokensPHP.COMILLAS_DOBLES; 
            }

true        {
                System.out.print("Linea:" + (yyline + 1) + ", Columna:" + (yycolumn + 1) + "\t");
                System.out.println(yytext() + " -> Palabra Reservada: true ");
                return TokensPHP.TRUE;
            }

false       {
                System.out.print("Linea:" + (yyline + 1) + ", Columna:" + (yycolumn + 1) + "\t");
                System.out.println(yytext() + " -> Palabra Reservada: false ");
                return TokensPHP.FALSE;
            }

[ \t\n\r]+  { /* Ignorar espacios en blanco */ }

/* MANEJO ERRORES */

.           { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> ERROR Token no reconocido");
            }

/* Identificadores mal formados */

[^a-zA-Z0-9_]+ { 
                System.out.print("Linea:" + (yyline + 1) + ", Columna:" + (yycolumn + 1) + "\t"); 
                System.out.println(yytext() + " -> ERROR: Identificador mal formado"); 
                return TokensPHP.ERROR; 
            }