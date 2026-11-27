% fatos novos: aqui boruto foi treinado por sasuke e naruto
mestre(sasuke, boruto).
mestre(naruto, boruto).

% regra 1: aprendiz de elite
aprendiz_de_elite(Ninja) :-
    % parte 1: qm foi treinado por kakashi ou sasuke
    (mestre(kakashi, Ninja) ; mestre(sasuke, Ninja)),
    % parte 2: dessas pessoas qm tem chakra de raio ou de fogo
    (natureza(Ninja, raio) ; natureza(Ninja, fogo)).

% Query 1: qm são os aprendizes de elite?
% ?- aprendiz_de_elite(Ninja).
