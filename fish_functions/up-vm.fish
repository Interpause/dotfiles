function up-vm --description 'Enables VM services & passes GPU over'
  # Binding done through qemu hooks now
  #set ID1 "pci_0000_01_00_0"
  #set ID2 "pci_0000_01_00_1"
  #sudo nvidia-smi -pm=0
  sudo rc-service virtlogd start
  sudo rc-service libvirtd start
  #sudo virsh nodedev-detach --device $ID1 --driver vfio
  #sudo virsh nodedev-detach --device $ID2 --driver vfio
end
