# Put in ~/.config/fish/conf.d/
if status is-interactive
  bind \b "backward-kill-word"
  bind \e\[3\;5~ "kill-word"
end

set -g fish_greeting ""
set -g fish_handle_reflow 1
