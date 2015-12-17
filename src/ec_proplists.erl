-module(ec_proplists).
-export([get_value/2, get_value/3]).

get_value(Keys,List) ->
    get_value_internal(Keys,List,fun proplists:get_value/2).

get_value(Keys,List, Default) ->
    get_value_internal(Keys, List, fun(Key,List) ->
					   proplists:get_value(Key,List,Default)
                                   end).

get_value_internal(Keys,List,GetValueFun) ->
    lists:foldl(fun(Key,List) ->
			GetValueFun(Key,List)
                end, List, Keys).
    
    
