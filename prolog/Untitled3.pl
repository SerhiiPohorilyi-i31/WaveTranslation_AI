best_translation(O, T, Score) :-
    translation(O, T, G, F),
    Score is G + F,
    Score > 1.7,          % поріг якості
    !.                    % cut — беремо перший кращий
