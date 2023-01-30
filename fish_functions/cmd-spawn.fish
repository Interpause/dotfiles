function cmd-spawn --description 'Runs command in separate process'
  /bin/sh -c (string join -- ' ' (string escape -- $argv) '&')
end
