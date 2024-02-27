function clean-sqlite --description 'Clean all sqlite databases'
  # sudo fd -u . / /home --xdev --exclude .git -t f -0 -x file -e ascii | sed -En "s/(.*)\/.*:.*SQLite.*/\1/p" | sort -u | xargs sudo profile-cleaner p
  profile-cleaner f
  profile-cleaner p ~/.local/share/firefoxpwa/profiles
end
