-module(ec_proplists_test).
-include_lib("eunit/include/eunit.hrl").

get_value_test() ->
   ?assertEqual([gen_server],
        ec_proplists:get_value([attributes,behaviour],supervisor:module_info())).
