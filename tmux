set -g default-terminal "screen-256color"

unbind C-b
set -g prefix C-a

set-window-option -g xterm-keys on
set-window-option -g mode-keys vi

bind h select-pane -L
bind j select-pane -D
bind k select-pane -U
bind l select-pane -R
set -sg escape-time 0

set -g mouse on
#bind -n WheelUpPane if-shell -F -t = "#{mouse_any_flag}" "send-keys -M" "if -Ft= '#{pane_in_mode}' 'send-keys -M' 'copy-mode -e; send-keys -M'"


set-window-option -g window-status-current-bg cyan
set-window-option -g window-status-current-fg black

set -g status-left-length 52
set -g status-right-length 451
set -g status-fg white
set -g status-bg colour234
set -g window-status-activity-attr bold
set -g pane-border-fg colour245
set -g pane-active-border-fg colour39
set -g message-fg colour16
set -g message-bg colour221
set -g message-attr bold
set -g status-left '#[fg=colour235,bg=colour252,bold] #S #[fg=colour252,bg=colour238,nobold]#[fg=colour245,bg=colour238,bold] #(whoami) #[fg=colour238,bg=colour234,nobold]'
set -g window-status-format "#[fg=white,bg=colour234] #I #W"
set -g window-status-current-format "#[fg=colour234,bg=colour39]#[fg=colour25,bg=colour39,noreverse,bold] #I  #W #[fg=colour39,bg=colour234,nobold]"

set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'nhdaly/tmux-better-mouse-mode'

run -b '~/.tmux/plugins/tpm/tpm'
