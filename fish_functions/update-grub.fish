function update-grub --description 'Updates grub.cfg'
  sudo grub-mkconfig -o /boot/grub/grub.cfg
end
