-module(ec_guards_test).
-include_lib("eunit/include/eunit.hrl").

is_behaviour_test() ->
    ?assertEqual(true, ec_guards:is_behaviour(supervisor,gen_server)),
    ?assertEqual(false, ec_guards:is_behaviour(erlang,gen_server))
