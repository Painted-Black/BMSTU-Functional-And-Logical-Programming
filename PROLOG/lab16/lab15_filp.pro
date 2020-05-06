/*****************************************************************************

		Copyright (c) My Company

 Project:  LAB15_FILP
 FileName: LAB15_FILP.PRO
 Purpose: No description
 Written by: Visual Prolog
 Comments:
******************************************************************************/

include "lab15_filp.inc"

domains

address = address(string, string, integer, integer). % city, street, house, flat
abonent = abonent(symbol, string, address). % surname, phone, address
investor = investor(symbol, string, string, integer). % surname, bank, deposit number, amount
property = car(string, string, integer); % model, color, cost
	   water_tr(symbol, integer); %type, price
	   house(string, address, integer); %name, address, price
	   area(string, integer, string, integer). %name, area, cadastral number, cost

predicates

owns(symbol, property). %surname, property
names_and_cost(symbol, string, integer).

clauses

owns(ivanov, car("Land Rover", "Dark blue", 1000000)).
owns(ivanov, water_tr("Yacht", 2000000)).
owns(ivanov, house("Flat", address("Moscow", "Lenina", 1, 3), 300000)).
owns(ivanov, area("Dacha area", 300, "12:34:567890:123", 50000)).
owns(petrov, car("Ford", "Black", 400000)).

names_and_cost(SURNAME, NAME, PRICE) :- owns(SURNAME, car(NAME, _, PRICE)).
names_and_cost(SURNAME, NAME, PRICE) :- owns(SURNAME, water_tr(NAME, PRICE)).
names_and_cost(SURNAME, NAME, PRICE) :- owns(SURNAME, house(NAME, _, PRICE)).
names_and_cost(SURNAME, NAME, PRICE) :- owns(SURNAME, area(NAME, _, _, PRICE)).

goal

%names_and_cost(petrov, Name, Price).
names_and_cost(sidorov, PROPERTY, _).