function sync-time --description 'Sync system time'
  sudo ntpdate -b -u -p 8 pool.ntp.org
  sudo hwclock -w -u --delay=0 --update-drift
end
