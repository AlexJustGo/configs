# touch ~/.tmux.conf
# copy lines to the file

# Use Alt-arrow keys to switch panes
bind -n M-Left select-pane -L
bind -n M-Right select-pane -R
bind -n M-Up select-pane -U
bind -n M-Down select-pane -D

# Shift arrow to switch windows
bind -n S-Left previous-window
bind -n S-Right next-window

# Mouse mode
set -g mouse on

# Set easier window split keys
bind-key v split-window -h
bind-key h split-window -v

# Easy config reload
bind-key r source-file ~/.tmux.conf \; display-message "tmux.conf reloaded"

set -g default-terminal "screen-256color"
set -g status-style fg=white
set -g status-style bg=black
setw -g window-status-style fg=cyan
setw -g window-status-current-style fg=white
setw -g window-status-current-style bg=magenta

set -g pane-border-style fg=white
set -g pane-active-border-style fg=magenta

set -g message-style fg=colour186
set -g message-style bg=black
set -g message-style bright
set -g status-left "#[fg=green]#S#[fg=yellow]-#I#[fg=cyan]-#P"
set -g status-justify centre
setw -g monitor-activity on
set -g visual-activity on
