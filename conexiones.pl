esta_conectado(vancouver, edmonton,16).
esta_conectado(edmonton, saskatoon,12).
esta_conectado(saskatoon, winnipeg,20).
esta_conectado(saskatoon, calgary,9).
esta_conectado(regina, winnipeg,4).
esta_conectado(calgary, edmonton,4).
esta_conectado(vancouver, calgary,13).
esta_conectado(calgary, regina,14).
esta_conectado(regina, saskatoon,7).

verificar_conexion(X,Y) :- 
    esta_conectado(X,Y,_).

esta_conectado_con(X,Ciudades,Costo) :-
    esta_conectado(X,Ciudades,Costo).

tiene_aristas(X) :-
    esta_conectado(X,_,_).

costo_conexion(Ciudad1,Ciudad2,Costototal):-
    esta_conectado(Ciudad1,C,A),
    esta_conectado(C,Ciudad2,B),
    Costototal is A+B.

es_posible_ir_de_a(X,Y) :-
    esta_conectado(X,Z,_),
    esta_conectado(Z,Y,_).

existe_camino_entre(X,Y,Costo) :- esta_conectado(X,Y,Costo).
existe_camino_entre(X,Y,Costo) :- 
    esta_conectado(X,Z,C1),
    existe_camino_entre(Z,Y,C2),
    Costo is C1 + C2.
