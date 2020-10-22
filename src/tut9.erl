%%%-------------------------------------------------------------------
%%% @author 梁栋
%%% @copyright (C) 2020, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 22. 10月 2020 20:32
%%%-------------------------------------------------------------------
-module(tut9).
-author("梁栋").

%% API
-export([test_if/2]).

test_if(A,B)->
  if
    A == 5 ->
      io:format("A==5~n"),
      a_equals_5;
    B == 6 ->
      io:format("B==6~n"),
      b_equals_6;
    A == 2, B == 3->
      io:format("A==2,B==3~n"),
      a_equals_2_b_equals_3;
    A == 1; B == 7 ->
      io:format("A==1;B==7~n"),
      a_equals_1or_b_equals_7;
    true ->
      not_found
  end.