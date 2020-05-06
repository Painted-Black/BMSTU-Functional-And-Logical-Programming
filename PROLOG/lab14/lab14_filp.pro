/*****************************************************************************

		Copyright (c) My Company

 Project:  LAB14_FILP
 FileName: LAB14_FILP.PRO
 Purpose: No description
 Written by: Visual Prolog
 Comments:
******************************************************************************/

include "lab14_filp.inc"

domains

address = address(string, string, integer, integer). % city, street, house, flat

predicates

abonent(symbol, string, address). % surname, phone, address
car_owner(symbol, string, string, string). % owner surname, model, color, cost
investor(symbol, string, string, string). % surname, bank, deposit, amount
find_by_model_and_color(string, string, symbol, string, string, string). % model, color, surname, city, phone, bank

clauses


abonent(ivanov, 	"89998693211", 		address("Moscow", "Tamanskaja", 4, 24)).
abonent(petrov, 	"89918553214",		address("Moscow", "Babaevskaja", 1, 5)).
abonent(sidorov, 	"89915593215", 		address("Moscow", "Korennaja", 31, 51)).
abonent(ovchinnikova,	"89998695230", 		address("Orekhovo-Zuevo", "Volodarskogo", 25, 24)).
abonent(zorina, 	"89998695233", 		address("Biisk", "Lenina", 21, 11)).
abonent(vasilev, 	"89998695244", 		address("Saint-Petersburg", "Malaja Sadovaja", 1, 2)).
abonent(stanovaja, 	"89998690000", 		address("Saint-Petersburg", "Paradnaja", 10, 20)).
abonent(korolev, 	"89998690001", 		address("Saint-Petersburg", "Nevsky prospekt", 12, 21)).

car_owner(ivanov, "Ford", "Dark blue", "1000000").
car_owner(ivanov, "Mazda", "Red", "500000").
car_owner(petrov, "Lada", "Light gray", "100000").
car_owner(vasilev, "Peugeot", "White", "700000").
car_owner(zorina, "Land Rover", "Green", "1020000").
car_owner(korolev, "Land Rover", "Green", "1020000").

investor(ivanov, "Sberbank", "11111111111111111111", "50000").
investor(ivanov, "Alpha Bank", "11111111111111111112", "40000").
investor(petrov, "Sberbank", "21111111111111111111", "10000").
investor(sidorov, "Tochka", "31111111111111111111", "60000").
investor(sidorov, "Tinkoff", "31111111111111111112", "5000").
investor(ovchinnikova, "Sberbank", "41111111111111111111", "5000").
investor(zorina, "Sberbank", "41111111111111111111", "6000").
investor(korolev, "VTB", "51111111111111111111", "60000").

find_by_model_and_color(MODEL, COLOR, SURNAME, CITY, PHONE, BANK) :-
	car_owner(SURNAME, MODEL, COLOR, _), abonent(SURNAME, PHONE, address(CITY, _, _, _)),
	investor(SURNAME, BANK, _, _).

goal

%find_by_model_and_color("Ford", "Dark blue", SURNAME, CITY, PHONE, BANK). % one owner
%find_by_model_and_color("BMW", "Dark blue", SURNAME, CITY, PHONE, BANK). % no owners
%find_by_model_and_color("Peugeot", "White", SURNAME, CITY, PHONE, BANK). % one owner without bank
find_by_model_and_color("Land Rover", "Green", SURNAME, CITY, PHONE, BANK). % two owners