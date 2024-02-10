function dedupe-btrfs --description 'Use duperemove to dedupe'
  sudo duperemove -rqd --hashfile=/backup/duperemove.hash --exclude="/var/lib/docker/btrfs*" / /home
end
