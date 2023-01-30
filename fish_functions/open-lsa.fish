function open-lsa --description 'Open Linux Subsystem for Android'
  sudo rc-service waydroid start
  dbus-run-session kwin_wayland -- waydroid show-full-ui
end
