%%%-------------------------------------------------------------------
%%% @author 梁栋
%%% @copyright (C) 2020, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 22. 10月 2020 20:14
%%%-------------------------------------------------------------------
-module(tut8).
-author("梁栋").

%% API
-export([reverse/1,reverse/2]).

reverse(List) ->
  reverse(List, []).

reverse([HEAD | REST], NewList) ->
  reverse(REST, [HEAD|NewList]);
reverse([], NewList) ->
  NewList.
