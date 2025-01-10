#!/bin/bash

# test-site 
if [[ $2 == *"test"* ]]
    then
        {
            cursion test-site $3 --api-key=$1 --api-root=$7 --client-root=$8
        } || {
            echo "Test Failed" &&
            exit 1
        }
fi

# run-case 
if [[ $2 == *"case"* ]]
    then
        {
            cursion run-case $3 $4 --api-key=$1 --api-root=$7 --client-root=$8 $6 
        } || {
            echo "Case Failed" &&
            exit 1
        }
        
fi

# run-flow 
if [[ $2 == *"flow"* ]]
    then
        {
            cursion run-flow $3 $5 --api-key=$1 --api-root=$7 --client-root=$8
        } || {
            echo "Flow Failed" &&
            exit 1
        }
       
fi