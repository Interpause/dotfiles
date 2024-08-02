function open-lsw --description 'Open Linux Subsystem for Windows'
  if not rc-service -q libvirtd status
    up-vm
    sleep 0.1
  end
  # https://looking-glass.io/docs/B7-rc1/ivshmem_kvmfr
  if not lsmod | grep -q kvmfr
    sudo rm -f /dev/kvmfr0
    sudo modprobe kvmfr
  set user (whoami)
	sudo chown $user:$user /dev/kvmfr0
  end
  virsh --connect qemu:///system start win11 || true
  # Use XWayland for sharpness till Wayland fractional scaling is fixed
  env -u WAYLAND_DISPLAY looking-glass-client >/dev/null 2>&1 &; disown
end
