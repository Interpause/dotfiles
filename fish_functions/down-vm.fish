function down-vm --description 'Disables VM services & takes GPU back'
  # Bindings done through qemu hooks now
  #set ID1 "pci_0000_01_00_0"
  #set ID2 "pci_0000_01_00_1"
  #sudo virsh nodedev-reattach --device $ID1
  #sudo virsh nodedev-reattach --device $ID2
  sudo rc-service libvirtd stop
  sudo rc-service virtlogd stop
  #sudo nvidia-smi -pm=1
  # Get max power limit
  #set PL (nvidia-smi -q -d power | grep "Max Power Limit" | sed "s/.*: \([0-9]\+\)\.[0-9]\+ W/\1/")
  # Optionally set back to max power limit
  #sudo nvidia-smi -pl=$PL
end
