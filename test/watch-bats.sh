#!/bin/bash

trap "echo 'Exiting...'; exit 0" SIGINT

while true; do
  ls index.ts test/*.bats |  entr -d sh -c 'clear; bats -t test'
done
