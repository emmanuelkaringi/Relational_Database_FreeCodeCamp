#!/bin/bash

cat $1 | sed -E 's/catnip/dogchow/g; s/cat/dog/g; s/meow|meowzer/woof/g'


# ./translate.sh kitty_ipsum_1.txt > doggy_ipsum_1.txt
# diff --color kitty_ipsum_1.txt doggy_ipsum_1.txt #Check Difference

# ./translate.sh kitty_ipsum_2.txt > doggy_ipsum_2.txt
# diff --color kitty_ipsum_2.txt doggy_ipsum_2.txt #Check Difference