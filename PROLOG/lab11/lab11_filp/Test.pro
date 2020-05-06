/*****************************************************************************

		Copyright (c) My Company

 Project:  TEST
 FileName: TEST.PRO
 Purpose: No description
 Written by: Visual Prolog
 Comments:
******************************************************************************/

include "test.inc"

predicates 
abonent(string,string, string)
clauses
abonent("Ivanov I. I.","89999999999", "Russia, Moscow, Izm. prosp., h. 2, fl. 1").
abonent("Ivanov I. I.","89999999991", "Russia, Moscow, Izm. prosp., h. 2, fl. 5").
abonent("Petrov P. P.","89991234567", "Russia, Moscow, Izm. prosp., h. 2, fl. 2").
abonent("Sidorov P. I.","89997583844", "Russia, Moscow, Izm. prosp., h. 2, fl. 3").
abonent("Alexandrov A. A.","89998545454", "Russia, Moscow, Izm. prosp., h. 2, fl. 4").
abonent("Alexandrov A. A.","89998545455", "Russia, Moscow, Izm. prosp., h. 2, fl. 4").
abonent("Alexandrova E. E.","89998545443", ADDR) :- abonent("Alexandrov A. A.","89998545454", ADDR).
goal

%abonent(_, _, _).
%abonent(_, PHONE, _).
%abonent(NAME, _, _).
%abonent("Alexandrov A. A.", PHONE, "Russia, Moscow, Izm. prosp., h. 2, fl. 4").
%abonent("Sidorov P. I.","89997583845", "Russia, Moscow, Izm. prosp., h. 2, fl. 3").
%abonent("Alexandrova E. E.","89998545443", "Russia, Moscow, Izm. prosp., h. 2, fl. 4").
%abonent("Alexandrova E. E.","89998545443", ADDRESS).
%abonent(NAME, PHONE, ADDRESS).
