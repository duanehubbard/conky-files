#!/bin/bash

#### Credits:
## Original script by mobilediesel http://github.com/mobilediesel

#### Change the following:
## To location of your todo.sh script
TODO_SCRIPT=~/todo.sh

#### Do not change anything below
## Unless you know what you are doing
$TODO_SCRIPT -p ls | grep -s \(A\) | fold -sw55 | sed 's/^/${color yellow}/' 
$TODO_SCRIPT -p ls | grep -s \(B\) | fold -sw55 | sed 's/^/${color lightgreen}/'
$TODO_SCRIPT -p ls | grep -s \(C\) | fold -sw55 | sed 's/^/${color lightblue}/' 
$TODO_SCRIPT -p ls | grep -s \([D-Z]\) | fold -sw55 | sed 's/^/${color white}/' 
$TODO_SCRIPT -p ls | grep -s -v \([A-Z]\) | head --lines=-2 | fold -sw55 | sed 's/^/${color}/'

