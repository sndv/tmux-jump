#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source $CURRENT_DIR/scripts/utils.sh
key=$(get_tmux_option "@jump-key" "")
if [ -n "$key" ]; then tmux bind-key -N "Jump to pane location in copy mode" "$key" run-shell -b "$CURRENT_DIR/scripts/tmux-jump.sh"; fi
