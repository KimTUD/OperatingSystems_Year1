#!/bin/bash

# The bash environment variable $PS3 is the prompt 
# used by select . Set it to a new value and you'll get a new prompt.
PS3="Select your language please: "

# We should use the select command to create a simple menu 
# in the terminal. Then, the command displays a list of options preceded by numbers.

# select NAME [in WORDS ... ;] do COMMANDS; done
# select repeatedly reads a number from standard input. Subsequently, if the number corresponds 
# to a string’s position in WORDS, the command sets NAME to the respective text. Otherwise, nothing is set.
select lng in Bash Java C++ Quit
do
    case $lng in
        "Bash")
            echo "$lng - that's what we're talking about";;
        "Java")
           echo "$lng - is your VM ready?";;
        "C++")
           echo "$lng - let's prepare for a lot of compilation";;
        "Quit")
           echo "We're done"
           break;;
        *)
           echo "Ooops";;
    esac
done
