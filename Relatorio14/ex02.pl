% regra 2: ninja versátil
ninja_versatil(Ninja) :-
    natureza(Ninja, X),      % pega uma natureza do ninja
    natureza(Ninja, Y),      % pega outra natureza do msm ninja
    X \= Y,                  % as duas precisam ser diferentes
    vila(Ninja, konoha).     % e ele precisa ser de konoha

% Query 2: quem é ou são os ninjas versáteis?
% ?- ninja_versatil(X).
