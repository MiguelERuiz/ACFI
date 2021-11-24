-module(sort_lib_eunit).

-include_lib("eunit/include/eunit.hrl").

sort_test_() ->
    [test_zero(), test_two(), test_four()].

test_zero() ->
    ?_assertEqual([], sort_lib:sort([])).
test_two() ->
    [?_assertEqual([17,42], sort_lib:sort([X,Y])) || {X,Y} <- [{17,42}, {42,17}]].
test_four() ->
    [?_assertEqual([1,1,3,4], sort_lib:sort([3,1,4,1]))].