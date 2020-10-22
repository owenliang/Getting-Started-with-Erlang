%%%-------------------------------------------------------------------
%%% @author 梁栋
%%% @copyright (C) 2020, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 22. 10月 2020 20:50
%%%-------------------------------------------------------------------
-module(tut13).
-author("梁栋").

%% API
-export([convert_list_to_c/1]).

convert_to_c({Name, {f, Temp}}) ->
  {Name, {c, trunc((Temp - 32) * 5 / 9)}};
convert_to_c({Name, {c, Temp}}) ->
  {Name, {c, Temp}}.

convert_list_to_c(List) ->
  Ret = lists:map(fun convert_to_c/1, List),
  lists:sort(fun({_,{_,T1}}, {_,{_,T2}}) -> T1 < T2 end, Ret).
