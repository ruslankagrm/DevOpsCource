#!/bin/bash

touch ./weather.json

curl wttr.in/$1?format=j1 > weather.json

echo -n "Humidity in $1 is "
less  weather.json | jq '.current_condition[0] .humidity'

echo -n "Temperature in $1 is "
less weather.json | jq '.current_condition[0] .temp_C'


