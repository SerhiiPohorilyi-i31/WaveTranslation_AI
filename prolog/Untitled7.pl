:- dynamic translation/4.

add_translation(Orig, Trans, G, F) :-
    assertz(translation(Orig, Trans, G, F)).
