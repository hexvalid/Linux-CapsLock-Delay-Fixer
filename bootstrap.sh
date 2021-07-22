#!/bin/sh
rpl='key <CAPS> \{ repeat=no, type\[group1\]=\"ALPHABETIC\", symbols\[group1\]=\[ Caps_Lock, Caps_Lock \],actions\[group1\]=\[LockMods\(modifiers=Lock\),Private\(type=3,data\[0\]=1,data\[1\]=3,data\[2\]=3\) \] \}'

# Create copy of kb description
xkbcomp -xkb $DISPLAY keyboardmap

# Replace CAPS
sed -i "s/key <CAPS>[^;]*/$rpl/" keyboardmap

# Apply
xkbcomp keyboardmap $DISPLAY

# Remove temp file
rm keyboardmap

# script provided by ben2talk and tprei at https://github.com/hexvalid/Linux-CapsLock-Delay-Fixer/issues/12
