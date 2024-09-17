task #1

rangConcat([], List2, List2):-!.
rangConcat(List1, [], List1):-!.
rangConcat([Head1|Tail1], [Head2|Tail2], [Head1|TailResult]):-
   Head1 < Head2, !, rangConcat(Tail1, [Head2|Tail2], TailResult).
  
rangConcat(List1, [Head2|Tail2], [Head2|TailResult]):-
   rangConcat(List1, Tail2, TailResult).


task #2

is_even(X) :- X mod 2 =:= 0.
even_elements([], []).
even_elements([Head|Tail], [Head|Result]) :-
    is_even(Head),
    even_elements(Tail, Result).
even_elements([_Head|Tail], Result) :-
    even_elements(Tail, Result).
