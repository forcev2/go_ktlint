#!/bin/sh

git diff --name-only --relative | grep "\.kt$" | xargs java -jar ktlint --relative .
if [ $? -ne 0 ]; then exit 1; fi