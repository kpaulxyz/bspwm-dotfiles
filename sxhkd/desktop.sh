#!/bin/bash
. /home/paul/.config/bspwm/bspwm_env
# mon_count=$(xrandr --query | grep " connected" | awk '{print $1}' | wc -l)

# command="bspc desktop -f ^$(($1 + 10 * i)) &&"

# for i in $(seq 0 $(($MON_COUNT - 1))); do
# 	bspc desktop -f ^$(($1 + 10 * i))
# done

# 	command="${command} bspc desktop -f ^$(($1 + 10 * i)) &&"
# 	echo $(($1 + 10 * i))
# 	echo $command
# done
# eval $(echo $command | cut -d'&' -f-3)

# echo MON_COUNT = $MON_COUNT

# WHY THE FUCK IS MON_COUNT 1 HERE AND 2 WHEN I SOURCE THE SHIT IN MY INTERACTIVE SHELL
# because of bash fuckery (https://unix.stackexchange.com/questions/164508/why-do-newline-characters-get-lost-when-using-command-substitution)
# I had to interpret them using quotes
# same reason $MONS and "$MONS" have different outputs
# echo "$MONS"
# echo $MONS
# echo "$MON_COUNT"
for ((i = 0; i < $MON_COUNT; i++)); do # SUSSY FUCKERY, '<' SHOULD BE ENOUGH # no more sus
	bspc desktop -f ^$(($1 + 10 * i))
done
#     for i in {0..$(xrandr --query | grep " connected" | awk '{print $1}' | wc -l)}; do
#         start=$((1 + i * 10))
#         end=$((10 + i * 10))
#         bspc {desktop -f, node-d}  "^$start:$(($end - 1))"
#     done

# $1: input 1-9,0
# for i in {0..$(($mon_count-1))}; do
