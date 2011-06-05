-module(euler_two).
-export([main/0]).

%% Project Euler problem 2

%% Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:
%% 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
%% By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.

fib(Max) ->
    fib(1, 2, [1], Max).
fib(_, Next, Fibs, Max) when Next >= Max ->
    lists:reverse(Fibs);
fib(Current, Next, Fibs, Max) ->
    fib(Next, Current + Next, [Next | Fibs], Max).

main() ->
    X = fib(3999999),
    Y = lists:filter(fun(Z) -> Z rem 2 == 0 end, X),
    lists:sum(Y).
