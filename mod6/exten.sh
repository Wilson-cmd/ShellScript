#!/usr/bin/env bash

# extended expression
egrep "^.{50,60}$" /etc/passwd # above line 50 to up
egrep "^wnc|root" /etc/passwd # or