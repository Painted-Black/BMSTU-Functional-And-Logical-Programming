/*****************************************************************************

		Copyright (c) My Company

 Project:  LAB12_FILP_2
 FileName: LAB12_FILP_2.PRO
 Purpose: No description
 Written by: Visual Prolog
 Comments:
******************************************************************************/

include "lab12_filp_2.inc"

domains
surname, name, title, country = string.
university = uni(title, country).
person = pers(surname, name).
student = student(person, university).
predicates
student(person, university)
clauses
student(pers("Zueva", "Elena"), uni("HSE", "Russia")).
student(pers("Ovchinnikova", "Anastasia"), uni(UNIVER, COUNTRY)) :-
		student(pers("Zueva", "Elena"), uni(UNIVER, COUNTRY)).
student(pers("Zueva", "Olga"), uni(UNIVER, COUNTRY)) :-
		student(pers("Zueva", "Elena"), uni(UNIVER, COUNTRY)).
student(pers("Musaeva", "Irina"), uni(UNIVER, COUNTRY)) :-
		student(pers("Zueva", "Elena"), uni(UNIVER, COUNTRY)).

student(pers("Zorina", "Daria"), uni("BMSTU", "Russia")).
student(pers("Ovchinnikova", "Anastasia"), uni(UNIVER, COUNTRY)) :-
		student(pers("Zorina", "Daria"), uni(UNIVER, COUNTRY)).
student(pers("Lavrova", "Anastasia"), uni(UNIVER, COUNTRY)) :-
		student(pers("Zorina", "Daria"), uni(UNIVER, COUNTRY)).
student(pers("Kondrashova", "Olga"), uni(UNIVER, COUNTRY)) :-
		student(pers("Zorina", "Daria"), uni(UNIVER, COUNTRY)).

student(pers("House", "Gregory"), uni("JHU", "USA")).
student(pers("Cuddy", "Liza"), uni(UNIVER, COUNTRY)) :-
		student(pers("House", "Gregory"), uni(UNIVER, COUNTRY)).

student(pers("Ivanov", "Ivan"), uni("MIPT", "Russia")).
student(pers("Sidorov", "Petya"), uni(UNIVER, COUNTRY)) :-
		student(pers("Ivanov", "Ivan"), uni(UNIVER, COUNTRY)).

student(pers("Volkov", "Pavel"), uni("MEPhI", "Russia")).

student(pers("Zueva", "Olga"), uni("MSU", "Russia")).
goal
student(pers(NAME, SURNAME), uni(TITLE, COUNTRY)).

%student(pers("Zueva", "Olga"), uni(UNIVERSITY, "Russia")).
%student(pers("Zueva", NAME), uni("HSE", "Russia")).
%student(pers(NAME, SURNAME), uni("MSLU", _"Russia")).
%student(pers("Zueva", SURNAME), uni(UNIVERSITY, COUNRTY)).
%student(pers(NAME, SURNAME), uni("HSE", "Russia")).
%student(pers(NAME, SURNAME), uni(TITLE, COUNTRY)).
%student(STUDENT, UNIVERSITY).
