function clean-sqlite --description 'Clean all sqlite databases in home folder'
  fd -u . ~ -t f -0 -x file -e ascii | sed -En "s/(.*)\/.*:.*SQLite.*/\1/p" | sort | uniq | xargs profile-cleaner p
end
