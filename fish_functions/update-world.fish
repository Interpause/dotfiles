function update-world --description 'Updates all packages then cleans'
  #export FEATURES="-distcc"
  sudo emerge -NDu --with-bdeps=y @world
  #sudo emerge @golang-rebuild
  #sudo emerge @rust-rebuild
  #sudo emerge @module-rebuild
  #sudo perl-cleaner --all
  #perl-cleaner --reallyall -- -av
  #sudo haskell-updater
  #sudo lto-rebuild -r
  #sudo revdep-rebuild -vi
  #sudo emerge -c
end
