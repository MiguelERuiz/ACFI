-module(sort_lib).

%% API exports
-export([sort/1, delete/2, ordered/1]).

%%====================================================================
%% API functions
%%====================================================================
% Implementation of quicksort algorithm
-spec sort(list(integer())) -> list(integer()).
sort([]) -> [];
sort([P|Xs]) ->
  sort([X || X <- Xs, X < P]) ++ [P] ++ sort([X || X <- Xs, P < X]).

% A lists delete implementation
-spec delete(integer(), list(integer())) -> list(integer()).
delete(X, L) ->
  delete(X, L, []).
delete(_, [], Acc) ->
  lists:reverse(Acc);
delete(X, [X|Rest], Acc) ->
  lists:reverse(Acc) ++ Rest;
delete(X, [Y|Rest], Acc) ->
  delete(X, Rest, [Y|Acc]).

-spec ordered(list(integer())) -> boolean().
ordered([]) -> true;
ordered([_]) -> true;
ordered([A,B|T]) -> A =< B andalso ordered([B|T]).
%%====================================================================
%% Internal functions
%%====================================================================
