-module(prop_sort_lib).

-include_lib("proper/include/proper.hrl").

%% Properties
prop_same_length() ->
  ?FORALL(L, list(integer()), length(L) =:= length(sort_lib:sort(L))).

prop_same_length_no_dupls() ->
  ?FORALL(L, list_no_dupls(integer()), length(L) =:= length(sort_lib:sort(L))).

prop_ordered() ->
  ?FORALL(L, list(integer()), sort_lib:ordered(sort_lib:sort(L))).

prop_exists_already_sorted() ->
  ?EXISTS(L, list(integer()), L =:= sort_lib:sort(L) ).

prop_not_exists_different_sorted_after_double_sort() ->
  ?NOT_EXISTS(L, list(integer()), sort_lib:sort(L) =/= sort_lib:sort(sort_lib:sort(L))).

prop_dummy() ->
  ?FORALL(Type, term(), boolean(Type)).

list_no_dupls(T) ->
  ?LET(L, list(T), remove_duplicates(L)).

prop_delete() ->
  ?FORALL({X,L}, {integer(),list(integer())},
          not lists:member(X, sort_lib:delete(X, L))).

%% Helpers
boolean(_) -> true.

%% better versions of remove_duplicates/1 exist ...
remove_duplicates([]) -> [];
remove_duplicates([A|T]) ->
    case lists:member(A, T) of
        true -> remove_duplicates(T);
        false -> [A|remove_duplicates(T)]
    end.
