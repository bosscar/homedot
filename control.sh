#!/bin/bash
tmux new-session -d -s control 'htop'
tmux split-window -v -p 75 'nvtop'
tmux split-window -v -p 60
tmux split-window -v -p 12 'cava'
tmux -2 attach-session -d

