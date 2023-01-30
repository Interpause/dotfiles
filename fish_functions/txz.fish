function txz --description 'Compresses directory or file using xz'
  set filename (basename -- $argv[1])
  echo "tar c $argv[1] | xz -T0 -v$argv[2] > $filename.txz"
  tar c $argv[1] | nice -n19 xz -T0 -v$argv[2] > $filename.txz
end
