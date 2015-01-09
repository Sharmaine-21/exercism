% Caculate leap years

-module(leap).
-export([leap_year/1]).

leap_year(Year) when Year rem 4 == 0 ->
    if 
        Year rem 100 /= 0 ->
            true;
        Year rem 400 == 0 ->
            true;
        true  ->
            false
    end;

leap_year(Year) when Year rem 4 /= 0 ->
    false.


