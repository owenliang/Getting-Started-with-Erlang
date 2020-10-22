%%%-------------------------------------------------------------------
%%% @author 梁栋
%%% @copyright (C) 2020, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 20. 10月 2020 21:49
%%%-------------------------------------------------------------------
-module(tut6).
-author("梁栋").

%% API
-export([find_min/1,find_min/2]).

find_min([]) ->
  empty;
find_min([Head|Rest]) ->
  find_min(Rest, Head).

find_min([], MinNow) ->
  MinNow;
find_min([Head|Rest], MinNow) when Head < MinNow ->
  find_min(Rest, Head);
find_min([Head|Rest], MinNow) ->
  find_min(Rest, MinNow).