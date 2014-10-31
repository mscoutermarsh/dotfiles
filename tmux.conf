# Bind escape to copy mode
unbind [
bind Escape copy-mode

# p = paste
unbind p
bind p paste-buffer

# no escape delay
set -sg escape-time 0

# remap prefix to Control + a
set -g prefix C-a
unbind C-b
bind C-a send-prefix

# Start window numbering at 1 (default => 0)
set -g base-index 1

set -g clock-mode-style 12

# Renumber windows after removing one
set -g renumber-windows on

# use 256 colors
set -g default-terminal "screen-256color"

# change tmux bar colors
set -g status-bg '#666666'
set -g status-fg '#aaaaaa'

# Keep plenty of history for scrollback
set -g history-limit 10000

# mouse
set -g mouse-resize-pane on
set -g mouse-select-pane on
set -g mouse-select-window on
setw -g mode-mouse on

bind m split-window -h 'reattach-to-user-namespace mutt'

# Use vim keybindings in copy mode
setw -g mode-keys vi
bind-key -t vi-copy v begin-selection
bind-key -t vi-copy y copy-pipe "reattach-to-user-namespace pbcopy"

unbind -t vi-copy Enter
bind-key -t vi-copy Enter copy-pipe "reattach-to-user-namespace pbcopy"

unbind -t vi-copy Space
bind -t vi-copy Space jump-again

bind y run 'tmux save-buffer - | reattach-to-user-namespace pbcopy '
bind C-y run 'tmux save-buffer - | reattach-to-user-namespace pbcopy '

# Smart pane switching with awareness of vim splits
# See this blog post for additional detail:
# http://robots.thoughtbot.com/post/53022241323/seamlessly-navigate-vim-and-tmux-splits
bind -n C-h run "(tmux display-message -p '#{pane_current_command}' | grep -iqE '(^|\/)vim$' && tmux send-keys C-h) || tmux select-pane -L"
bind -n C-j run "(tmux display-message -p '#{pane_current_command}' | grep -iqE '(^|\/)vim$' && tmux send-keys C-j) || tmux select-pane -D"
bind -n C-k run "(tmux display-message -p '#{pane_current_command}' | grep -iqE '(^|\/)vim$' && tmux send-keys C-k) || tmux select-pane -U"
bind -n C-l run "(tmux display-message -p '#{pane_current_command}' | grep -iqE '(^|\/)vim$' && tmux send-keys C-l) || tmux select-pane -R"
bind -n C-\ run "(tmux display-message -p '#{pane_current_command}' | grep -iqE '(^|\/)vim$' && tmux send-keys 'C-\\') || tmux select-pane -l"

# Secondary binding for C-l to retain redraw
bind C-l send-keys 'C-l'

# Easy rotating of panes
bind C-k swap-pane -U

# increase display time
set -g display-panes-time 1200

# status bar stuff
set -g status-left-length 40

# Simplify status bar display.
set -g status-left '[#S]'
set -g status-right "%I:%M %p "
# set -g status-right "#[fg=red][44%%]#[default]   -  %I:%M %p "

# Dismiss current pane to background window
bind b break-pane -d
bind-key j command-prompt -p "join pane from: "  "join-pane -h -s '%%'"

# more intuitive keybindings for splitting
bind \ split-window -h -c "#{pane_current_path}"
bind - split-window -v -c "#{pane_current_path}"


# Easy return to Vim from tmux runner zoom runner pane
bind C-p run "(tmux display-message -p '#{pane_current_command}' | grep -iqE '(^|\/)vim$' && tmux send-keys ':VtrZoomRunnerPane' 'C-m') || tmux send-keys 'C-c' && tmux select-pane -l"

# Make C-j display a selectable list of sessions
bind C-j choose-tree

# Keep window names as I set them
setw -g automatic-rename off

# The base index for windows and panes to 1 instead of the default 0.
# # Now prefix 1 is the first window instead of a prefix 0 being the first.
set -g base-index 1
# setw -g pane-base-index 1 # not recognized by my tmux

# Reload tmux.conf with prefix-r
bind C-r source-file ~/.tmux.conf \; display "Reloaded ~/.tmux.conf"

# Set the term environment variable when using tmux
set -g default-terminal "screen-256color"

# Provide access to the clipboard for pbpaste, pbcopy (details: http://goo.gl/DN82E)
set-option -g default-command "reattach-to-user-namespace -l zsh -l"
set-window-option -g automatic-rename on

# bind resizing of panes to H,J,K,L (resizes by steps of 10 lines/columns)
# # Note, bindings are repeatable (within the default 500ms time limit) so that
# # you don't have to keep entering the prefix. (Prefix-H-H-H resizes by 15)
bind -n S-Left resize-pane -L 2
bind -n S-Right resize-pane -R 2
bind -n S-Down resize-pane -D 1
bind -n S-Up resize-pane -U 1
unbind -n C-Left
unbind -n C-Down
unbind -n C-Up
unbind -n C-Right
bind -n C-Left resize-pane -L 10
bind -n C-Right resize-pane -R 10
bind -n C-Down resize-pane -D 5
bind -n C-Up resize-pane -U 5
