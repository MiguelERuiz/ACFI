-module(sort_lib).

%% API exports
-export([sort/1, ordered/1]).

%%====================================================================
%% API functions
%%====================================================================
% Implementation of quicksort algorithm
-spec sort(list(integer())) -> list(integer()).
sort([]) -> [];
sort([P|Xs]) ->
  sort([X || X <- Xs, X < P]) ++ [P] ++ sort([X || X <- Xs, P =< X]).

-spec ordered(list(integer())) -> boolean().
ordered([]) -> true;
ordered([_]) -> true;
ordered([A,B|T]) -> A =< B andalso ordered([B|T]).
%%====================================================================
%% Internal functions
%%====================================================================
