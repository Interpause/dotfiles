function defrag-btrfs --description 'defrag-btrfs [path] <1000>' -a path -a min_frag
  test -n "$min_frag" || set min_frag 1000
  test -n "$path" || return
  sudo fd -u . $path --xdev -t f -X filefrag | sed -En 's/(.+): (\w+) extent.*/\2 \1/p' | awk -F ' ' \$1\>$min_frag | sort -nr | sed -En 's/\w+ (.+)/"\1"/p' | xargs -r sudo btrfs fi de -czstd -t 1G -f -v
end
