#!/bin/sh
#Linux CapsLock Delay Fixer by ErkanMDR /- HELYX

xkbcomp -xkb $DISPLAY xkbmap
fixpatchline=$(cat fixpatch)
perl -i~ -0777 -pe "s/key .CAPS[^}]+};/$fixpatchline/" xkbmap
xkbcomp xkbmap $DISPLAY
clear
echo "Problem fixed ;)"
