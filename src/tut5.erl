%%%-------------------------------------------------------------------
%%% @author 梁栋
%%% @copyright (C) 2020, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 20. 10月 2020 21:37
%%%-------------------------------------------------------------------
-module(tut5).
-author("梁栋").

%% API
-export([format_temps/1]).

format_temps([]) ->
  ok;
format_temps([First|Rest]) ->
  % 打印First
  print_temps(convert(First)),
  % 递归
  format_temps(Rest).

convert({City, {f,Temp}}) ->
  {City, {c, Temp * 8}};
convert(Info) ->
  Info.

print_temps({City, {c, Temp}}) ->
  io:format("~-15w ~w c~n", [City, Temp]).