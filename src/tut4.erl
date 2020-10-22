%%%-------------------------------------------------------------------
%%% @author 梁栋
%%% @copyright (C) 2020, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 20. 10月 2020 21:22
%%%-------------------------------------------------------------------
-module(tut4).
-author("梁栋").

%% API
-export([list_length/1]).

list_length([]) ->
  0;
list_length([First|Rest]) ->
  1 + list_length(Rest).
