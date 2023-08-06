#!/bin/bash

while true; do
  ls index.ts test.bats | entr -d bats -t test.bats
done
