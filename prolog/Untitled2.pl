% predicates (обов’язково в Visual Prolog)
translation(string, string, real, real).

% clauses (основна частина)
translation("Добрий день", "Good morning", 0.98, 0.95).
translation("Добрий день", "Hello day", 0.70, 0.40).

good_translation(O, T) :-
    translation(O, T, G, F),
    G > 0.85,
    F > 0.80.
