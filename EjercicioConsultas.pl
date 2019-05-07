mujer(ana).
mujer(maria).
mujer(luisa).
mujer(fabiola).
mujer(esther).
mujer(rocio).
mujer(deysi).
mujer(vanessa).
mujer(martha).
mujer(romina).

hombre(hugo).
hombre(paco).
hombre(luis).
hombre(mario).
hombre(marco).
hombre(juan).
hombre(pedro).
hombre(raul).
hombre(gerardo).
hombre(sergio).
hombre(bryan).

madre(ana,rocio).
madre(ana,maria).
madre(ana,luis).
madre(martha,deysi).
madre(fabiola,romina).
madre(romina,bryan).
madre(romina,gerardo).

padre(raul, rocio).
padre(marco, hugo).
padre(pedro, gerardo).
padre(pedro,bryan).
padre(marco, romina).
padre(sergio, paco).
padre(hugo, sergio).
padre(raul,maria).

%Comentarios en Prolog


abuelo(X, Y) :- padre(X, Z) , padre(Z, Y). %Regla para identificar abuelos

abuela(X, Y) :- madre(X, Z) , madre(Z, Y).%Regla para identificar abuelas

persona(X):- hombre(X) ; mujer(X).%Regla para identificar personas

nieto(X) :- hombre(X), abuelo(Y, X) ; abuela(Z, X).%Regla para identificar nietos

nieta(X) :- mujer(X), abuelo(Y, X) ; abuela(Z, X).%Regla para identificar nietas

hermanas(X, Y) :- mujer(X), mujer(Y), padre(Z, X) , padre(Z, Y), madre(J, X), madre(J, Y).%Regla para identificar hermanas

hermanos(X, Y) :- hombre(X), hombre(Y), padre(Z, X) , padre(Z, Y), madre(J, X), madre(J, Y).%Regla para identificar hermanos


%|:-abuelo(X,Y). 
%X = marco,
%Y = sergio :-;
%X = hugo,
%Y = paco |;
%false.

%|abuela(X,Y).
%X = fabiola,
%Y = bryan :-;
%X = fabiola,
%Y = gerardo |;
%false.

%|persona(X).
%X = hugo :-;
%X = paco |;
%X = luis |;
%X = mario |;
%X = marco |;
%X = juan |;
%X = pedro |;
%X = raul |;
%X = gerardo |;
%X = sergio |;
%X = ana |;
%X = maria |;
%X = luisa |;
%X = fabiola |;
%X = esther |;
%X = rocio |;
%X = deysi |;
%X = vanessa |;
%X = martha |;
%X = romina.


%|nieto(X,Y).
%X = paco,
%Y = hugo :-;
%X = sergio,
%Y = marco |;
%X = bryan |;
%X = gerardo |;
%false.

%|hermanas(X,Y).
%X = Y, Y = maria :-;
%X = maria,
%Y = rocio |;
%X = rocio,
%Y = maria |;
%X = Y, Y = rocio |;
%X = Y, Y = romina.


%|:-hermanos(X,Y).
%X = Y, Y = gerardo :-;
%X = gerardo,
%Y = bryan |;
%X = bryan,
%Y = gerardo |;
%X = Y, Y = bryan.
