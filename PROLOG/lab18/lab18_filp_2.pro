/*****************************************************************************

		Copyright (c) My Company

 Project:  LAB18_FILP_2
 FileName: LAB18_FILP_2.PRO
 Purpose: No description
 Written by: Visual Prolog
 Comments:
******************************************************************************/

include "lab18_filp_2.inc"

predicates

fib_inner(integer, integer, integer). % serial number, fib, next fib
fib(integer, integer). % serial number, result

clauses

fib_inner(1, 1, 1) :- !. % first two fib = 1
fib_inner(N, FN, FN1) :-
	N1 = N - 1,
	fib_inner(N1, FN_1, FN), % FN_1 is N-1 fib, FN is N fib
	FN1 = FN + FN_1.  % N+1 fib

fib(N, FN) :-
	fib_inner(N, FN, _).

goal

%fib(1, RES).
%fib(2, RES).
fib(3, RES).
%fib(4, RES).
%fib(5, RES).
%fib(6, RES).
%fib(7, RES).
