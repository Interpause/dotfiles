# Put in ~/.config/fish/conf.d/
if status is-interactive
  bind \b "backward-kill-word"
  bind \e\[3\;5~ "kill-word"
end

set -g fish_greeting ""
set -g fish_handle_reflow 1

if command -q fd
  and command -q fzf
  set -gx FZF_CTRL_T_COMMAND "fd --type f -u --strip-cwd-prefix --color=always"
  set -gx FZF_ALT_C_COMMAND "fd --type d -u --strip-cwd-prefix --color=always"
  set -gx FZF_DEFAULT_COMMAND "fd --type f -u --strip-cwd-prefix --color=always"
  set -gx FZF_DEFAULT_OPTS "--ansi --tmux"
  fzf --fish | source
end 

if command -q starship
  starship init fish | source
end

if command -q zoxide
  zoxide init fish | source
end
