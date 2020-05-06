/*****************************************************************************

		Copyright (c) My Company

 Project:  LAB13
 FileName: LAB13.PRO
 Purpose: No description
 Written by: Visual Prolog
 Comments:
******************************************************************************/

include "lab13.inc"

domains

address = address(string, string, integer, integer). % city, street, house, flat

predicates

abonent(symbol, string, address). % surname, phone, address
car_owner(symbol, string, string, string). % owner surname, model, color, cost
investor(symbol, string, string, string). % surname, bank, deposit, amount
find_by_phone(string, symbol, string, string). % phone, surname, model, cost
find_model_by_phone(string, string). % phone, model
find_by_city_and_surname(string, symbol, string, string, string). % city, surname, street, phone, bank
%find_by_city_and_surname(string, symbol, string).

clauses

abonent(ivanov, 	"89998693211", 		address("Moscow", "Tamanskaja", 4, 24)).
abonent(ivanov, 	"89998693212", 		address("Vladivostok", "Tamanskaja", 5, 25)).
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
car_owner(korolev, "Land Rover", "Green", "1020000").

investor(ivanov, "Sberbank", "11111111111111111111", "50000").
investor(ivanov, "Alpha Bank", "11111111111111111112", "40000").
investor(petrov, "Sberbank", "21111111111111111111", "10000").
investor(sidorov, "Tochka", "31111111111111111111", "60000").
investor(sidorov, "Tinkoff", "31111111111111111112", "5000").
investor(ovchinnikova, "Sberbank", "41111111111111111111", "5000").
investor(zorina, "Sberbank", "41111111111111111111", "6000").

find_by_phone(PHONE, SURNAME, MODEL, COST) :-
	abonent(SURNAME, PHONE, _), car_owner(SURNAME, MODEL, _, COST).
	
find_model_by_phone(PHONE, MODEL) :-
	find_by_phone(PHONE, _, MODEL, _).
	
find_by_city_and_surname(CITY, SURNAME, STREET, PHONE, BANK) :-
	abonent(SURNAME, PHONE, address(CITY, STREET, _, _)), investor(SURNAME, BANK, _, _).

goal

find_by_city_and_surname("Orekhovo-Zuevo", ovchinnikova, STREET, PHONE, BANK).

%find_by_city_and_surname("Moscow", ivanov, STREET, PHONE, BANK).
%find_model_by_phone("89998693211", MODEL).

%find_by_phone("89998693211", SURNAME, MODEL, COST).
%find_by_phone("89998693211", SURNAME, MODEL, COST).
%find_by_phone("89999999999", SURNAME, MODEL, COST).

%investor(SURNAME, BANK, DEPOSIT, AMOUNT).
%car_owner(SURNAME, MODEL, COLOR, COST).
%abonent(SURNAME, PHONE, ADDRESS).
