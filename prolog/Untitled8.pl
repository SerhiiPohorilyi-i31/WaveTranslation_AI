% Базовий предикат
acceptable_translation(O, T) :-
    translation(O, T, G, F),
    G > 0.7,
    F > 0.6.

% Наслідування: хороший переклад це прийнятний + вищі оцінки
good_translation(O, T) :-
    acceptable_translation(O, T),
    translation(O, T, G, F),
    G > 0.85,
    F > 0.80.
