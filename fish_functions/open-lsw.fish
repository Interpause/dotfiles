function open-lsw --description 'Open Linux Subsystem for Windows'
  if not rc-service -q libvirtd status
    up-vm
    sleep 1
  end
  virsh --connect qemu:///system start win11 || true
  nohup looking-glass-client &
end
