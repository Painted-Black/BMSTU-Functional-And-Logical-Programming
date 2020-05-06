/*****************************************************************************

		Copyright (c) My Company

 Project:  LAB12_FILP_3
 FileName: LAB12_FILP_3.PRO
 Purpose: No description
 Written by: Visual Prolog
 Comments:
******************************************************************************/

include "lab12_filp_3.inc"

domains

spectral_type = char.
visible_color = string.
temperature = integer.

predicates

spec_class(spectral_type, visible_color, temperature).

clauses

spec_class('O', "blue", T) :- T <= 60000, T >= 30000.
spec_class('B', "deep blue white", T) :- T >= 10000, T < 30000.
spec_class('A', "blue white", T) :- T >= 7500, T < 10000.
spec_class('F', "white", T) :- T >= 6000, T < 7500.
spec_class('G', "yellowish white", T) :- T >= 5000, T < 6000.
spec_class('K', "pale yellow orange", T) :- T >= 3500, T < 5000.
spec_class('M', "light orange red", T) :- T >= 2000, T <= 3500.


goal

spec_class(CLASS, _, X).