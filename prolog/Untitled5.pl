word_count([], Acc, Acc).
word_count([_|T], Acc, Count) :-
    Acc1 is Acc + 1,
    word_count(T, Acc1, Count).   % хвостова
