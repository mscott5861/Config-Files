#!/bin/bash
tmux new-session -d
tmux split-window -h 'htop'
tmux split-window -v
tmux resize-pane -U 10
tmux select-pane -L
tmux -2 attach-session -d
