-module(prop_sort_lib).

-include_lib("proper/include/proper.hrl").

prop_same_length() ->
  ?FORALL(L, list(integer()), length(L) =:= length(sort_lib:sort(L))).

prop_ordered() ->
    ?FORALL(L, list(integer()), sort_lib:ordered(sort_lib:sort(L))).
