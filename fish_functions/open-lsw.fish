function open-lsw --description 'Open Linux Subsystem for Windows'
  if not rc-service -q libvirtd status
    up-vm
  end
  virsh --connect qemu:///system start win11
  looking-glass-client -F -m KEY_RIGHTCTRL
end
