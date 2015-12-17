-module(ec_list).
-export([contains/2]).

contains(Value,List) ->
    lists:any(fun(V) ->
		      V =:= Value
              end, List).

