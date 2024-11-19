#!/bin/bash

# run test-site 
if [[ $2 == *"test"* ]]
    then
        cursion test-site $3 --api-token=$1
fi

# run run-case 
if [[ $2 == *"case"* ]]
    then
        cursion run-case $3 $4 --api-token=$1 $6
fi

# run run-flow 
if [[ $2 == *"flow"* ]]
    then
        cursion run-flow $3 $5 --api-token=$1
fi