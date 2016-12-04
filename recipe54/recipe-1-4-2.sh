#!/bin/bash

s=""
echo -n "Please return key to start : "
read

check=""

# -z:指定した文字列がEmptyならtrue
while [ -z "$check" ]; do
    echo -n "Do you like bash (Y/N) ? "
    read check
    case $check in
        [Yy]*)
            check="YES"
            ;;
        [Nn]*)
            check="NO"
            ;;
        *)
            echo '*** Anser with "Yes" or "No"!'
            check=""
            ;;
    esac
done
