esta_conectado(vancouver, edmonton,16).
esta_conectado(edmonto, saskaton,12).
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
    tiene_una_conexion(Ciudad1,C,A),
    tiene_una_conexion(C,Ciudad2,B),
    Costototal is A+B.

