% regra 3: rivais de treino
rivais(A, B) :-
    mestre(M, A),            % M é o mestre de A
    mestre(M, B),            % M também é o mestre de B
    A \= B,                  % A e B não são a msm pessoa
    cla(A, ClaA),            % descobre o clã de A
    cla(B, ClaB),            % descobre o clã de B
    ClaA \= ClaB.            % os clãs precisam ser diferentes

% Query 3: quem é ou são os rivais de Naruto?
% ?- rivais(naruto, Rival).
