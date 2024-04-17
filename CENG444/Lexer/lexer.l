%option noyywrap
%option yylineno
%option 8bit

%{
#include "Lexer.h"
#include "Error.h"
#include "Logging.h"

#include <cstring>
#include <cstdlib>

extern Lexer *lexer;

char *prev = NULL;

void updatePrev(const char* lexeme) 
{
    if (prev == NULL)
        prev = static_cast<char*>(malloc(strlen(lexeme) + 1));
    else 
        prev = static_cast<char*>(realloc(prev, strlen(lexeme) + 1));
    
    strcpy(prev, lexeme);
}
%}

WSP [ \t \r]*

/* Number */
NDIGIT [1-9] 
DIGIT [0-9]
EXP ("e"|"E")("+"|"-")?{NDIGIT}{DIGIT}*
NUMW (0|{NDIGIT}{DIGIT}*)("."{DIGIT}*{NDIGIT})?{EXP}?
NUMF "."{DIGIT}+{EXP}?
NUM ^{WSP}({NUMW}|{NUMF})
NUM_ERR ^({NUMW}|{NUMF}).*$

RESET ^{WSP}"reset"
RESET_ERR ^"reset".*$

/* IPv4 */
IPV4BYTE (0|{NDIGIT}{DIGIT}?{DIGIT}?)
IPV4ADDR {IPV4BYTE}"."{IPV4BYTE}"."{IPV4BYTE}"."{IPV4BYTE}

ADDR ^{WSP}"address"
GATEWAY ^{WSP}"gateway"
MASK ^{WSP}"mask"

/* Identifier */
GRETR (ğ|ü|ş|ı|ö|ç|Ğ|Ü|Ş|İ|Ö|Ç|Α|α|Β|β|Γ|γ|Δ|δ|Ε|ε|Ζ|ζ|Η|η|Θ|θ|Ι|ι|Κ|κ|Λ|λ|Μ|μ|Ν|ν|Ξ|ξ|Ο|ο|Π|π|Ρ|ρ|Σ|σ|ς|Τ|τ|Υ|υ|Φ|φ|Χ|χ|Ψ|ψ|Ω|ω)
EN [a-zA-Z]
LETTER {GRETR}|{EN}|"_"

IDENTIFIER ^{WSP}{LETTER}({LETTER}|{DIGIT})*

%x AFTER_ADDR
%x AFTER_ADDR_IPV4

%x AFTER_GATEWAY
%x AFTER_GATEWAY_IPV4

%x AFTER_MASK
%x AFTER_MASK_IPV4

%x AFTER_NUM
%x AFTER_ID
%x AFTER_RESET

%%
{NUM}{WSP}          { updatePrev(lexer->YYText()); BEGIN(AFTER_NUM); }
<AFTER_NUM>\n       { lexer->AddNumber(atof(prev)); lexer->NextLine(); BEGIN(INITIAL); }
<AFTER_NUM><<EOF>>  { lexer->AddNumber(atof(prev)); yyterminate(); }
<AFTER_NUM>.       { BEGIN(INITIAL); }

{RESET}{WSP}        { BEGIN(AFTER_RESET); }
<AFTER_RESET>\n     { lexer->ResetSequence(); lexer->NextLine(); BEGIN(INITIAL); std::cout << "RESET" << std::endl; }
<AFTER_RESET><<EOF>> { lexer->ResetSequence(); yyterminate(); std::cout << "RESET" << std::endl; }
<AFTER_RESET>.     { BEGIN(INITIAL); }

<INITIAL>{ADDR}" "   { BEGIN(AFTER_ADDR); }
<AFTER_ADDR>{IPV4ADDR}{WSP}  { updatePrev(lexer->YYText()); BEGIN(AFTER_ADDR_IPV4); }
<AFTER_ADDR_IPV4>\n   { lexer->TestAddress(prev); lexer->NextLine(); BEGIN(INITIAL); }
<AFTER_ADDR_IPV4><<EOF>>   { lexer->TestAddress(prev); yyterminate(); }
<AFTER_ADDR_IPV4>. { lexer->LogError(NO_IPV4_AFTER_ADDR_ERROR); BEGIN(INITIAL); }
<AFTER_ADDR>. {lexer->LogError(NO_IPV4_AFTER_ADDR_ERROR); BEGIN(INITIAL); }

<INITIAL>{GATEWAY}" "   { BEGIN(AFTER_GATEWAY); }
<AFTER_GATEWAY>{IPV4ADDR}{WSP}   { updatePrev(lexer->YYText()); BEGIN(AFTER_GATEWAY_IPV4); }
<AFTER_GATEWAY_IPV4>\n   { lexer->SetGateway(prev); lexer->NextLine(); BEGIN(INITIAL); }
<AFTER_GATEWAY_IPV4><<EOF>>   { lexer->SetGateway(prev); yyterminate(); }
<AFTER_GATEWAY_IPV4>.   { lexer->LogError(NO_IPV4_AFTER_GATEWAY_ERROR); BEGIN(INITIAL); }
<AFTER_GATEWAY>. { lexer->LogError(NO_IPV4_AFTER_GATEWAY_ERROR); BEGIN(INITIAL); }

<INITIAL>{MASK}" "  { BEGIN(AFTER_MASK); }
<AFTER_MASK>{IPV4ADDR}{WSP}   { updatePrev(lexer->YYText()); BEGIN(AFTER_MASK_IPV4); }
<AFTER_MASK_IPV4>\n { lexer->SetMask(prev); lexer->NextLine(); BEGIN(INITIAL); }
<AFTER_MASK_IPV4><<EOF>>   { lexer->SetMask(prev); yyterminate(); }
<AFTER_MASK_IPV4>. { lexer->LogError(NO_IPV4_AFTER_MASK_ERROR); BEGIN(INITIAL); }
<AFTER_MASK>. { lexer->LogError(NO_IPV4_AFTER_MASK_ERROR); BEGIN(INITIAL); }

{IDENTIFIER}{WSP} { updatePrev(lexer->YYText()); BEGIN(AFTER_ID); }
<AFTER_ID>\n { lexer->AddIdentifier(); lexer->NextLine(); BEGIN(INITIAL); std::cout << "ID:" << prev << std::endl; }
<AFTER_ID><<EOF>> { lexer->AddIdentifier(); std::cout << "ID:" << prev << std::endl; yyterminate(); }
<AFTER_ID>. { lexer->LogError(UNRECOGNIZED_TOKEN_ERROR); BEGIN(INITIAL); } 


{WSP}       ;
\n          lexer->NextLine();
.           {lexer->LogError(UNRECOGNIZED_TOKEN_ERROR); std::cout << "[DEBUG]: Unrecognized (" << lexer->YYText() << ")" << std::endl;}
%%