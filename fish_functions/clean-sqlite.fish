function clean-sqlite --description 'Clean all sqlite databases'
  sudo fd -u . / /home --xdev --exclude .git -t f -0 -x file -e ascii | sed -En "s/(.*)\/.*:.*SQLite.*/\1/p" | xargs sudo profile-cleaner p
end
