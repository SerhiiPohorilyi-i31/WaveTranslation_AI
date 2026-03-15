% Факти: можливі переклади
translation("Я люблю Київ", "I love Kyiv", 0.95, 0.92).
translation("Я люблю Київ", "I likes Kyiv", 0.40, 0.85).
translation("Я люблю Київ", "I adore the capital of Ukraine", 0.88, 0.65).

% Правило: найкращий переклад — той, у якого сума grammar + fluency максимальна
best_translation(Orig, BestTrans, BestGrammar, BestFluency) :-
    translation(Orig, BestTrans, BestGrammar, BestFluency),
    \+ (translation(Orig, _, G, F), G + F > BestGrammar + BestFluency).

