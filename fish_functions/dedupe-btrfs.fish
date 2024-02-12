function dedupe-btrfs --description 'Use duperemove to dedupe'
  sudo duperemove -rqd --hashfile=/backup/duperemove-root.hash --dedupe-options=partial --exclude="/var/lib/docker/btrfs*" /
  sudo duperemove -rqd --hashfile=/backup/duperemove-home.hash --dedupe-options=partial /home
end
