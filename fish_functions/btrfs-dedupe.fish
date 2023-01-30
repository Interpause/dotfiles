function btrfs-dedupe --description '(Removed) Dedupes all btrfs filesystems'
  sudo duperemove -dhr --hashfile=/etc/dedupetable.hash /
end
