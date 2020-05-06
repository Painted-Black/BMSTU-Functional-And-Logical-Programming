/*****************************************************************************

		Copyright (c) My Company

 Project:  LAB16_FILP
 FileName: LAB16_FILP.PRO
 Purpose: No description
 Written by: Visual Prolog
 Comments:
******************************************************************************/

include "lab16_filp.inc"

predicates

mother(symbol, symbol). % mother name, child name
father(symbol, symbol). % father name, child name
ancestors(symbol, symbol, symbol, symbol, symbol). % subject, mom`s mom, mom`s dad, father`s mom, father`s dad

clauses

mother(olga, slava). % slava`s mother is olga
mother(valentina, oleg). %oleg`s mother is valentina
mother(margo, olga). % olga`s mom is margo

father(oleg, slava). % slava`s father is oleg
father(vitya, oleg). %oleg`s father is vitya
father(andrey, olga). % olga`s father is andrey

ancestors(NAME, MOMSMOM, MOMSFATHER, FATHERSMOM, FATHERSFATHER) :-
	mother(MOM, NAME),
	mother(MOMSMOM, MOM),
	father(MOMSFATHER, MOM),
	father(DAD, NAME),
	mother(FATHERSMOM, DAD),
	father(FATHERSFATHER, DAD).

goal

%ancestors(slava, GRANDMA1, _, GRANDMA2, _). % all subject`s grandmas
%ancestors(slava, _, GRANDPA1, _, GRANDPA2). % all subject`s grandpas
%ancestors(slava, MOMSMOM, MOMSFATHER, FATHERSMOM, FATHERSFATHER). % all subject`s grandpas and grandmas
ancestors(slava, GRANDMA1, _, _, _). % subject`s mom`s mom
%ancestors(slava, GRANDMA1, GRANDPA1, _, _). % subject`s mom`s mom and mom`s dad