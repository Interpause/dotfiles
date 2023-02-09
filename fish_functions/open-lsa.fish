function open-lsa --description 'Open Linux Subsystem for Android'
  if not rc-service -q waydroid status
    sudo rc-service waydroid start
  end
  dbus-run-session kwin_wayland -- plasmashell &
  waydroid show-full-ui
end
