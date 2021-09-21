%{
#include<stdio.h>
#include <stdlib.h>
#include <string.h>
%}

%option noyywrap
%option yylineno

let let
const const
function function
import import 
as as
from from
match match
data data
default default

type_int Int
type_float Float
type_char Char
type_bool Bool

open_parenthesis "("
close_parenthesis ")"

open_bracket "["
close_bracket "]"

open_brace "{"
close_brace "}"

arrow "=>"
colon ":"
comma ","
semicolon ";"
period "."
definition "="

not "!"
plus "+"
minus "-"
division "/"
multiplication "*"
pow "**"
mod "%"
equal "=="
not_equal "!="
greater ">"
less "<"
greater_or_equal ">="
less_or_equal "<="
and "&"
or "|"

digit [0-9]
number {digit}+
downcase [a-z]
uppercase [A-Z]

value_int ({plus}|{minus})?{number}
value_float ({plus}|{minus})?{number}"."{number}
value_bool False|True
value_char \'(.)\'
value_string \"(.)*\"

lowercase_identifier {downcase}({downcase}|{uppercase}|{digit})*
uppercase_identifier {uppercase}({downcase}|{uppercase}|{digit})*

%%
"#"(.)*\n {}
[ \t\n]+ {}

{let} {printf("Seria gerado um token LET, lexema -> %s\n", yytext);}
{const} {printf("Seria gerado um token CONST, lexema -> %s\n", yytext);}
{function} {printf("Seria gerado um token FUNCTION, lexema -> %s\n", yytext);}
{import} {printf("Seria gerado um token IMPORT, lexema -> %s\n", yytext);}
{as} {printf("Seria gerado um token AS, lexema -> %s\n", yytext);}
{from} {printf("Seria gerado um token FROM, lexema -> %s\n", yytext);}
{match} {printf("Seria gerado um token MATCH, lexema -> %s\n", yytext);}
{data} {printf("Seria gerado um token DATA, lexema -> %s\n", yytext);}
{default} {printf("Seria gerado um token DEFAULT, lexema -> %s\n", yytext);}

{type_int} {printf("Seria gerado um token TYPE_INT, lexema -> %s\n", yytext);}
{type_float} {printf("Seria gerado um token TYPE_FLOAT, lexema -> %s\n", yytext);}
{type_char} {printf("Seria gerado um token TYPE_CHAR, lexema -> %s\n", yytext);}
{type_bool} {printf("Seria gerado um token TYPE_BOOL, lexema -> %s\n", yytext);}

{open_parenthesis} {printf("Seria gerado um token OPEN_PARENTHESIS, lexema -> %s\n", yytext);}
{close_parenthesis} {printf("Seria gerado um token CLOSE_PARENTHESIS, lexema -> %s\n", yytext);}

{open_bracket} {printf("Seria gerado um token OPEN_BRACKET, lexema -> %s\n", yytext);}
{close_bracket} {printf("Seria gerado um token CLOSE_BRACKET, lexema -> %s\n", yytext);}

{open_brace} {printf("Seria gerado um token OPEN_BRACE, lexema -> %s\n", yytext);}
{close_brace} {printf("Seria gerado um token CLOSE_BRACE, lexema -> %s\n", yytext);}

{arrow} {printf("Seria gerado um token ARROW, lexema -> %s\n", yytext);}
{colon} {printf("Seria gerado um token COLON, lexema -> %s\n", yytext);}
{comma} {printf("Seria gerado um token COMMA, lexema -> %s\n", yytext);}
{semicolon} {printf("Seria gerado um token SEMICOLON, lexema -> %s\n", yytext);}
{period} {printf("Seria gerado um token PERIOD, lexema -> %s\n", yytext);}
{definition} {printf("Seria gerado um token DEFINITION, lexema -> %s\n", yytext);}

{not} {printf("Seria gerado um token NOT, lexema -> %s\n", yytext);}
{plus} {printf("Seria gerado um token PLUS, lexema -> %s\n", yytext);}
{minus} {printf("Seria gerado um token MINUS, lexema -> %s\n", yytext);}
{division} {printf("Seria gerado um token DIVISION, lexema -> %s\n", yytext);}
{multiplication} {printf("Seria gerado um token MULTIPLICATION, lexema -> %s\n", yytext);}
{pow} {printf("Seria gerado um token POW, lexema -> %s\n", yytext);}
{mod} {printf("Seria gerado um token MOD, lexema -> %s\n", yytext);}
{equal} {printf("Seria gerado um token EQUAL, lexema -> %s\n", yytext);}
{not_equal} {printf("Seria gerado um token NOT_EQUAL, lexema -> %s\n", yytext);}
{greater} {printf("Seria gerado um token GREATER, lexema -> %s\n", yytext);}
{less} {printf("Seria gerado um token LESS, lexema -> %s\n", yytext);}
{greater_or_equal} {printf("Seria gerado um token GREATER_OR_EQUAL, lexema -> %s\n", yytext);}
{less_or_equal} {printf("Seria gerado um token LESS_OR_EQUAL, lexema -> %s\n", yytext);}
{and} {printf("Seria gerado um token AND, lexema -> %s\n", yytext);}
{or} {printf("Seria gerado um token OR, lexema -> %s\n", yytext);}

{value_int} {printf("Seria gerado um token VALUE_INT, lexema -> %s\n", yytext);}
{value_float} {printf("Seria gerado um token VALUE_FLOAT, lexema -> %s\n", yytext);}
{value_bool} {printf("Seria gerado um token VALUE_BOOL, lexema -> %s\n", yytext);}
{value_char} {printf("Seria gerado um token VALUE_CHAR, lexema -> %s\n", yytext);}
{value_string} {printf("Seria gerado um token VALUE_STRING, lexema -> %s\n", yytext);}

{lowercase_identifier} {printf("Seria gerado um token LOWERCASE_IDENTIFIER, lexema -> %s\n", yytext);}
{uppercase_identifier} {printf("Seria gerado um token UPPERCASE_IDENTIFIER, lexema -> %s\n", yytext);}

. {printf("laplc: Erro lexico na linha %d\n", yylineno); exit(1);}
%%

int main(void){
    return yylex();
}
