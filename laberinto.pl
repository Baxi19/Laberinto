

% se declara conocimento dinamico
:-  dynamic conectado/2.
:-  dynamic arco/2.

conectado(X,Y):-
    arco(X,Y);
    arco(Y,X).

% grafo en forma de matriz para el laberinto
%

arco(1,7).
arco(7,13).
arco(13,14).
arco(14,15).
arco(15,21).
arco(21,22).
arco(22,16).
arco(16,10).
arco(10,4).
arco(4,3).
arco(3,9).
arco(3,2).
arco(9,8).
arco(8,2).
arco(inicio,2).
arco(14,20).
arco(20,26).
arco(26,27).
arco(27,28).
arco(28,29).
arco(29,23).
arco(23,17).
arco(17,11).
arco(11,5).
arco(5,6).
arco(28,34).
arco(34,35).
arco(35,36).
arco(36,30).
arco(30,24).
arco(24,18).
arco(18,12).
arco(34,33).
arco(33,32).
arco(32,31).
arco(31,25).
arco(25,19).
arco(32,fin).

% 2) Hacer laberinto y montarlo en un grafo y imprimir la solucion y
% cuando se encuentra la solucion, mostrarla ya que es solo una
%

ruta(Inicio,Fin):-
    ruta_temp(Inicio,Fin,[]).

ruta_temp(Fin,Fin,Lista):-
    reverse([Fin|Lista],Resultado),
    imprime_lista(Resultado).

ruta_temp(Inicio, Fin, Vecinos) :-
    conectado(Inicio,Vecino),
    not(member(Vecino, Vecinos)),
    ruta_temp(Vecino,Fin, [Inicio|Vecinos]).


imprime_lista([]).
imprime_lista([X|Xs]):-
    write(" -> "),
    write(X),
    nl,
    imprime_lista(Xs).
