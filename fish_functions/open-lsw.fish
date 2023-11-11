function open-lsw --description 'Open Linux Subsystem for Windows'
  if not rc-service -q libvirtd status
    up-vm
    sleep 0.1
  end
  virsh --connect qemu:///system start win11 || true
  nohup looking-glass-client >/dev/null 2>&1 &
end
