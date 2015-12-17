-module(ec_list_test).
-include_lib("eunit/include/eunit.hrl").

contains_test() ->
    ?assertEqual(true, ec_list:contains(3, [1,2,3,4,5])),
    ?assertEqual(false, ec_list:contains(2, [1,3,4,5])).

