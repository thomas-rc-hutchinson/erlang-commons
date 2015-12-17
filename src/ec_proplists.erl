-module(ec_proplists).
-export([get_value/2]).

get_value(Keys,List) ->
    lists:foldl(fun(Key,List) ->
			proplists:get_value(Key,List)
                end, List, Keys).
