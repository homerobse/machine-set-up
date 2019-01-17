#!/bin/bash

l="1 2 3 4 5"

function f(){
  for x in $l; do 
    echo $1
    > "homero"
    echo hey!
  done
}
f '23'
