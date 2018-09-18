#!/bin/bash
#Little alias for my pre-config tmux

vim_tips=$HOME/.vimTips
#if a command argument is defined
if [ ! -z "$1" ];
then
	tmux new-session -s perso \; \
		split-window -h \; \
		send-keys "$1" C-m \; \
		split-window -v -p 35 \; \
		send-keys "cat $vim_tips" C-m \; 
else
	tmux new-session -s dev \; \
		split-window -h \; \
		send-keys 'ls -la' C-m \; \
		split-window -v -p 35 \; \
		send-keys "cat $vim_tips" C-m \; 
fi
