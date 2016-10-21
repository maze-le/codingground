% hello world program
-module(helloworld).
-export([start/0]).

start() ->
    List=["jj", 123, 456],
    String="thisIsAString",
    
    io:fwrite("~p\n", [listCheck(List)]),
    io:fwrite("~p\n", [listCheck(String)]).

listCheck(L) when is_list(L) -> 
    case io_lib:printable_unicode_list(L) of
        false -> true;
        _     -> false
    end.
