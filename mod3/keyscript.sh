#!/usr/bin/env bash

# VARIABLES
USRINF=`cat /etc/passwd | cut -d : -f 1`

MESSAGE="
	`basename $0`: 

		-h: help command
		-v: show version
		-s: sort outup
		-m: to uppercase
"

VERSIONSP=1.0

# COMMANDAS CASE

KEYORDER=0
KEYUPPER=0
while test -n "$1"
do
	case "$1" in 
		-v) echo "version: $VERSIONSP";					exit 0 ;;
		-s) KEYORDER=1							;;
		-m) KEYUPPER=1							;;
		-h) echo "$MESSAGE";						exit 0 ;;
		*) echo "$USRINF";						exit 0 ;;
	esac
	shift
done

[ $KEYORDER -eq 1 ] && USRINF=$(echo "$USRINF" | sort)
[ $KEYUPPER -eq 1 ] && USRINF=$(echo "$USRINF" | tr [:lower:] [:upper:])

echo "$USRINF"
