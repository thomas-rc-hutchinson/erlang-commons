-module(ec_guards).
-export([is_behaviour/2]).

is_behaviour(Module, Behaviour) ->
    Behaviours = ec_proplists:get_value([attributes,behaviour], Module:module_info(), []),
    lists:any(fun(B) ->
		      B =:= Behaviour
              end, Behaviours).
