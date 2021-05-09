# -*- mode: sh -*-

# vi mode settings
# Note: if you have EDITOR=vim set
# then the following two settings aren't needed
# Use Vi style key bindings to move around command line mode
set-option -g status-keys vi
# Use Vi style key bindings to move around copy mode
setw -g mode-keys vi
# Remove delay when pressing esc in Vim
set -sg escape-time 0

unbind C-b
set -g prefix C-a

# Quick key for moving back to the previous window
bind-key p last-window

bind Space copy-mode
bind r next-layout

# Vim style bindings for pane movement
bind-key -r h select-pane -L
bind-key -r j select-pane -D
bind-key -r k select-pane -U
bind-key -r l select-pane -R

# vim splits
bind-key | split-window -h
bind-key - split-window -v

# Make resizing panes easier
bind-key Left resize-pane -L 5
bind-key Right resize-pane -R 5
bind-key Up resize-pane -U 5
bind-key Down resize-pane -D 5

# ditched m which had select-pane -m
# this place a stronger visual cue on the selected pane
# add bind for mouse support toggle needs tmux 2.2
bind-key m set -g mouse

# reload tmux config
bind r source ~/.tmux.conf

# rotate through different pre set layouts
bind -n F9 next-layout

# mouse support toggle needs tmux 2.2
bind -n F11 set -g mouse

# toggles tmux bar on/off
bind-key -n F12 set status

# switch panes using <M-arrow> without prefix
bind -n M-Left select-pane -L
bind -n M-Right select-pane -R
bind -n M-Up select-pane -U
bind -n M-Down select-pane -D

# create panes with <C-arrow> prefix
bind -n C-M-Left split-window -h
bind -n C-M-Right split-window -h
bind -n C-M-Up split-window -v
bind -n C-M-Down split-window -v
