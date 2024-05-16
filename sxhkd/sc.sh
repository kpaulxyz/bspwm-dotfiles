#!/bin/bash
maim --hidecursor --select | xclip -selection clipboard -t image/png 
xclip -selection clipboard -t image/jpg -o > /home/paul/Pictures/screenshots/sc-$(date +"%F-%H%M%S").png

