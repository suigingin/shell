#!/bin/bash

check=""

# -z:指定した文字列がEmptyならtrue
while [ -z "$check" ]; do
    echo "Choose your favorite food"
    echo " 1. shushi"
    echo " 2. tempura"
    echo " 710. natto"
    echo -n "Input (1, 2, 710) ? "
    read check

    case $check in
        1)
            echo "Choose 1..."
            ;;
        2)
            echo "Choose 2..."
            ;;
        710)
            echo "Choose 710..."
            ;;
        *)
            echo "*** Bad choise..."
            check=""
            ;;
    esac
done
