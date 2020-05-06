/*****************************************************************************

		Copyright (c) My Company

 Project:  LAB2
 FileName: LAB2.PRO
 Purpose: No description
 Written by: Visual Prolog
 Comments:
******************************************************************************/

include "lab2.inc"

domains

surname, name, title, country = string.
university = uni(title, country).
person = pers(surname, name).
student = student(person, university).

predicates

student(person, university)

clauses

student(pers("Ovchinnikova", "Anastasia"), uni("HSE", "Russia")).
student(pers("Zueva", "Olga"), uni("HSE", "Russia")).
student(pers("Zueva", "Elena"), uni("HSE", "Russia")).
student(pers("Musaeva", "Irina"), uni("HSE", "Russia")).

student(pers("Ovchinnikova", "Anastasia"), uni("BMSTU", "Russia")).
student(pers("Zorina", "Daria"), uni("BMSTU", "Russia")).
student(pers("Lavrova", "Anastasia"), uni("BMSTU", "Russia")).
student(pers("Kondrashova", "Olga"), uni("BMSTU", "Russia")).

student(pers("House", "Gregory"), uni("JHU", "USA")).
student(pers("Cuddy", "Liza"), uni("JHU", "USA")).

student(pers("Ivanov", "Ivan"), uni("MIPT", "Russia")).
student(pers("Sidorov", "Petya"), uni("MIPT", "Russia")).

student(pers("Volkov", "Pavel"), uni("MEPhI", "Russia")).

student(pers("Zueva", "Olga"), uni("MSU", "Russia")).

goal

student(pers("Zueva", NAME), uni("HSE", "Russia")).

%student(pers("Zueva", "Olga"), uni(UNIVERSITY, "Russia")).
%student(pers(NAME, SURNAME), uni("MSLU", "Russia")).
%student(pers(NAME, SURNAME), uni("HSE", "Russia")).
%student(pers("Zueva", NAME), uni("HSE", "Russia")).
%student(pers("Zueva", SURNAME), uni(UNIVERSITY, COUNRTY)).
%student(pers(NAME, SURNAME), uni(TITLE, COUNTRY)).
%student(STUDENT, UNIVERSITY).
