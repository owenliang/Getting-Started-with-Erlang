%%%-------------------------------------------------------------------
%%% @author 梁栋
%%% @copyright (C) 2020, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 20. 10月 2020 20:44
%%%-------------------------------------------------------------------
-module(tut3).
-author("梁栋").

%% API
-export([convert_length/1]).

convert_length({centimeter, X}) ->
  {inch, X / 2.54};
convert_length({inch, X}) ->
  {centimeter, X * 2.54}.


