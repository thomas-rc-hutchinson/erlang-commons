-module(ec_functions).
-export([apply/2]).

apply(Input, Functions) ->
    lists:foldl(fun(Fun,Value) ->
			Fun(Value)
                end, Input, Functions).
