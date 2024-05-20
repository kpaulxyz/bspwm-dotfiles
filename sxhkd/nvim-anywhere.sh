#!/bin/bash
# bspc rule -a \* -o state=floating && $TERMINAL
FILENAME=/tmp/nvim-anywhere
# if ["$(ls /tmp | grep nvim-anywhere.txt)" -eq ""]; then; echo "doesnt exist"; else; echo "file exists"; fi

# if [ -f /tmp/nvim-anywhere.txt ]; then; echo "doesnt exist"; else; echo "file exists"; fi

# random nr 0-9:
# echo $(( ( RANDOM % 10 ) ))

# f() {
# 	if [ -f "$FILENAME" ]
#   then
# 		bspc rule -a \* -o state=floating && kitty nvim "$FILENAME" && xclip -sel clip "$FILENAME" && rm "$FILENAME"
# 	else
# 		FILENAME="$FILENAME$(((RANDOM % 10)))"
#     f()
# 	fi
# }
#
# f()

bspc rule -a \* -o state=floating && kitty nvim "$FILENAME" +startinsert +"set noeol" +"set binary" && xclip -sel clip "$FILENAME" && rm "$FILENAME"
