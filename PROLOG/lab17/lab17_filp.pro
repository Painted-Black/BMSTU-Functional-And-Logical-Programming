/*****************************************************************************

		Copyright (c) My Company

 Project:  LAB17_FILP
 FileName: LAB17_FILP.PRO
 Purpose: No description
 Written by: Visual Prolog
 Comments:
******************************************************************************/

include "lab17_filp.inc"

predicates

max(integer, integer, integer). % firs, second, max
max_cut(integer, integer, integer). %first, second, max
max3(integer, integer, integer, integer). % first, second, third, max
max3_cut(integer, integer, integer, integer). % first, second, third, max
%max(real, real, real).

clauses

max(X, Y, X) :- X > Y. % if first more than second, first is max
max(X, Y, Y) :- X <= Y. % if first less than second or equals second, max is second

max_cut(X, Y, X) :- X > Y,!. % if first more than second, first is max
max_cut(X, Y, Y) :- X <= Y. % green cut
			    % if first less than second or equals second, max is second
%max_cut(_, Y, Y). % red cut

max3(X, Y, Z, Z) :- Z >= X, Z >= Y.
max3(X, Y, Z, Y) :- Y >= X, Y > Z.
max3(X, Y, Z, X) :- X > Y, X > Z.

max3_cut(X, Y, Z, X) :- X > Y, X > Z, !. % first more than second and third
max3_cut(_, Y, Z, Y) :- Y >= Z, !. % else if second more than third or equal
max3_cut(_, _, Z, Z). % else

goal

max3_cut(1, 2, 3, M).
%max3_cut(1, 3, 2, M).
%max3_cut(2, 1, 3, M).
%max3_cut(2, 3, 1, M).
%max3_cut(3, 1, 2, M).
%max3_cut(3, 2, 1, M).

%max3_cut(2, 3, 3, M).
%max3_cut(3, 2, 3, M).
%max3_cut(3, 3, 2, M).

%max3_cut(2, 1, 1, M).
%max3_cut(1, 2, 1, M).
%max3_cut(1, 1, 2, M).
%max3_cut(1, 1, 1, M).

%max3(1, 2, 3, M).
%max3(1, 3, 2, M).
%max3(2, 1, 3, M).
%max3(2, 3, 1, M).
%max3(3, 1, 2, M).
%max3(3, 2, 1, M).

%max3(2, 3, 3, M).
%max3(3, 2, 3, M).
%max3(3, 3, 2, M).

%max3(2, 1, 1, M).
%max3(1, 2, 1, M).
%max3(1, 1, 2, M).
%max3(1, 1, 1, M).

%max_cut(2, 1, M).
%max_cut(2, 2, M).
%max_cut(1, 2, M).

%max(1, 2, M).
%max(2, 1, M).
%max(2, 2, M).
