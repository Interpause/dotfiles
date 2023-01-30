function update-world --description 'Updates all packages then cleans'
  sudo emerge -NDu --with-bdeps=y @world
  #sudo emerge -c
  #sudo emerge @preserved-rebuild
  #sudo lto-rebuild -r
  #sudo revdep-rebuild -v
  #sudo perl-cleaner --all
end
