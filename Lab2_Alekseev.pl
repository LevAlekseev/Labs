rangConcat([], List2, List2):-!.
rangConcat(List1, [], List1):-!.
rangConcat([Head1|Tail1], [Head2|Tail2], [Head1|TailResult]):-
   Head1 < Head2, !, rangConcat(Tail1, [Head2|Tail2], TailResult).
  
rangConcat(List1, [Head2|Tail2], [Head2|TailResult]):-
   rangConcat(List1, Tail2, TailResult).