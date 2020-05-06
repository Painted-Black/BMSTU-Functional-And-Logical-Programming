/*****************************************************************************

		Copyright (c) My Company

 Project:  LAB18_FILP
 FileName: LAB18_FILP.PRO
 Purpose: No description
 Written by: Visual Prolog
 Comments:
******************************************************************************/

include "lab18_filp.inc"

predicates

fact_inner(integer, integer, integer, integer). % number, result, current number, current number factorial
fact(integer, integer). % number, result

clauses

	 % base
fact_inner(N, F, N1, F1) :- 
	N2 = N1 + 1, % new (next) current number
	F2 = F1 * N2, % new (next) factorial (of N2)
	fact_inner(N, F, N2, F2). % recursion
	
fact(N, F) :- fact_inner(N, F, 1, 1).

goal

%fact(5, RES).
%fact(4, RES).
fact(3, RES).
%fact(2, RES).
%fact(1, RES).
%fact(0, RES). % error