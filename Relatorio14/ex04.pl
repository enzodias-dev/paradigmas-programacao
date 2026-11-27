% regra 4: linhagem
linhagem(Mestre, Discipulo) :-
    mestre(Mestre, Discipulo).

linhagem(Mestre, Discipulo) :-
    mestre(Mestre, Intermediario),      % dá um passo, mestre pra intermediario
    linhagem(Intermediario, Discipulo). % repete a pergunta a partir dele

% Query 4: quem faz parte da linhagem do jiraiya?
% ?- linhagem(jiraiya, X).
