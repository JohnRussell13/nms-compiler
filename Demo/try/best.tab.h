/* A Bison parser, made by GNU Bison 3.5.1.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015, 2018-2020 Free Software Foundation,
   Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* Undocumented macros, especially those whose name start with YY_,
   are private implementation details.  Do not rely on them.  */

#ifndef YY_YY_BEST_TAB_H_INCLUDED
# define YY_YY_BEST_TAB_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token type.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    _IF = 258,
    _ELSE = 259,
    _SWITCH = 260,
    _BREAK = 261,
    _CONTINUE = 262,
    _RETURN = 263,
    _WHILE = 264,
    _DO = 265,
    _FOR = 266,
    _DEF = 267,
    _CONST = 268,
    _TYPE = 269,
    _LPAREN = 270,
    _RPAREN = 271,
    _LSQBRACK = 272,
    _RSQBRACK = 273,
    _LBRACKET = 274,
    _RBRACKET = 275,
    _SEMICOLON = 276,
    _COMMA = 277,
    _COLON = 278,
    _ASSIGN = 279,
    _AROP = 280,
    _RELOP = 281,
    _ID = 282,
    _INT_NUMBER = 283,
    _UINT_NUMBER = 284,
    ONLY_IF = 285
  };
#endif

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
union YYSTYPE
{
#line 11 "best.y"

    int i;
    char *s;

#line 93 "best.tab.h"

};
typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;

int yyparse (void);

#endif /* !YY_YY_BEST_TAB_H_INCLUDED  */
