#!/bin/bash
read -p"is it morning? Please answer yes or not : " answer;
case "${answer}" in
    yes | y | Y | YES )
        echo "Good morning!";
        echo "Up bright and early this morning";
        ;;
    [nN]* )
        echo "Good Afternoon";
        echo "or night?";
        ;;
    * )
        echo "Wrong Answer, Please write yes or not ";
        exit 1;
        ;;
esac
exit 0;

