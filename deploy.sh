#!/bin/bash

#deploy all dotfiles 

for file in $(ls -Ad $HOME/.dotfiles/.[a-z]*); do  

	if [ -f $file ]; then
		target=$HOME/$(basename $file)
		echo "aliasing file $file to $target" 
		[ -f $target ] && mv $target $target.bak
		ln -sf $file $target
	fi

done
