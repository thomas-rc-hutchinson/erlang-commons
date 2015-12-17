-module(ec_functions_test).
-include_lib("eunit/include/eunit.hrl").

apply_test() ->
    Increment = fun(X) ->
			X + 1
                end,
    Decrement = fun(X) ->
			X - 1
                end,
    ?assertEqual(2, ec_functions:apply(0,[Increment,Increment,Decrement,Increment])).

       
		   
