%%%-------------------------------------------------------------------
%%% @author 梁栋
%%% @copyright (C) 2020, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 22. 10月 2020 20:36
%%%-------------------------------------------------------------------
-module(tut10).
-author("梁栋").

%% API
-export([convert_length/1]).

convert_length(Length)->
  case Length of
    {centimeter, X} ->
      {inch, X/2.54};
    {inch, X} ->
      {centimeter,X*2.54}
  end.