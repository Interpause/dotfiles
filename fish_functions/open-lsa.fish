function open-lsa --description 'Open Linux Subsystem for Android'
  if not [ -e /dev/binder ]
  	sudo modprobe binder_linux
  end
  if not rc-service -q waydroid status
    sudo rc-service waydroid start
  end
  waydroid session start &; disown
end
