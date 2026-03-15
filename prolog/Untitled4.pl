high_quality_translations(Orig, List) :-
    findall(T-G-F, (translation(Orig, T, G, F), G+F > 1.7), List).
