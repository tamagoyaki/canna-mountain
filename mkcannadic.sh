#!/bin/bash

SRC=MATUDIC.TXT

cat $SRC | iconv -f shift_jis -t euc-jp | awk -F, '{print $1 " #T35 " $2}' | sed 's/"//g'
