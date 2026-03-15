% Знайти переклад з найвищою fluency у списку варіантів
best_fluency([], none, 0).
best_fluency([trans(T,F)|Rest], BestT, BestF) :-
    best_fluency(Rest, BestTRest, BestFRest),
    (F > BestFRest -> BestT = T, BestF = F ; BestT = BestTRest, BestF = BestFRest).






































