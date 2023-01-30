function cmd-bg --description 'Runs command in background as child of current process'
  /bin/fish -c (string join -- ' ' (string escape -- $argv)) &
end
