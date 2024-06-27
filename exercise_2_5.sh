#!/bin/bash

# Write a shell script that displays "man", "bear", "pig", "dog", "cat", and "sheep" to the screen with
# each appearing on a separate line. Try to do this in as few lines as possible.
# Hint: Loops can be used to perform repetitive tasks.

ANIMALS="man bear pig dog cat sheep"

for ANIMAL in $ANIMALS; do echo "$ANIMAL"; done
